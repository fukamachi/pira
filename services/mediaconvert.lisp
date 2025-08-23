(uiop/package:define-package #:pira/mediaconvert (:use)
                             (:export #:aac-audio-description-broadcaster-mix
                              #:aac-codec-profile #:aac-coding-mode
                              #:aac-loudness-measurement-mode
                              #:aac-rate-control-mode #:aac-raw-format
                              #:aac-settings #:aac-specification
                              #:aac-vbr-quality #:ac3bitstream-mode
                              #:ac3coding-mode
                              #:ac3dynamic-range-compression-line
                              #:ac3dynamic-range-compression-profile
                              #:ac3dynamic-range-compression-rf #:ac3lfe-filter
                              #:ac3metadata-control #:ac3settings
                              #:acceleration-mode #:acceleration-settings
                              #:acceleration-status #:advanced-input-filter
                              #:advanced-input-filter-add-texture
                              #:advanced-input-filter-settings
                              #:advanced-input-filter-sharpen #:afd-signaling
                              #:aiff-settings #:allowed-rendition-size
                              #:alpha-behavior #:ancillary-convert608to708
                              #:ancillary-source-settings
                              #:ancillary-terminate-captions #:anti-alias
                              #:associate-certificate #:audio-channel-tag
                              #:audio-channel-tagging-settings #:audio-codec
                              #:audio-codec-settings #:audio-default-selection
                              #:audio-description #:audio-duration-correction
                              #:audio-language-code-control
                              #:audio-normalization-algorithm
                              #:audio-normalization-algorithm-control
                              #:audio-normalization-loudness-logging
                              #:audio-normalization-peak-calculation
                              #:audio-normalization-settings #:audio-properties
                              #:audio-selector #:audio-selector-group
                              #:audio-selector-type #:audio-type-control
                              #:automated-abr-rule #:automated-abr-settings
                              #:automated-encoding-settings
                              #:av1adaptive-quantization #:av1bit-depth
                              #:av1film-grain-synthesis #:av1framerate-control
                              #:av1framerate-conversion-algorithm
                              #:av1qvbr-settings #:av1rate-control-mode
                              #:av1settings #:av1spatial-adaptive-quantization
                              #:avail-blanking #:avc-intra-class
                              #:avc-intra-framerate-control
                              #:avc-intra-framerate-conversion-algorithm
                              #:avc-intra-interlace-mode
                              #:avc-intra-scan-type-conversion-mode
                              #:avc-intra-settings #:avc-intra-slow-pal
                              #:avc-intra-telecine
                              #:avc-intra-uhd-quality-tuning-level
                              #:avc-intra-uhd-settings
                              #:bandwidth-reduction-filter
                              #:bandwidth-reduction-filter-sharpening
                              #:bandwidth-reduction-filter-strength
                              #:billing-tags-source
                              #:burn-in-subtitle-style-passthrough
                              #:burnin-destination-settings
                              #:burnin-subtitle-alignment
                              #:burnin-subtitle-apply-font-color
                              #:burnin-subtitle-background-color
                              #:burnin-subtitle-fallback-font
                              #:burnin-subtitle-font-color
                              #:burnin-subtitle-outline-color
                              #:burnin-subtitle-shadow-color
                              #:burnin-subtitle-teletext-spacing #:cancel-job
                              #:caption-description
                              #:caption-description-preset
                              #:caption-destination-settings
                              #:caption-destination-type #:caption-selector
                              #:caption-source-byte-rate-limit
                              #:caption-source-convert-paint-on-to-pop-on
                              #:caption-source-framerate
                              #:caption-source-settings #:caption-source-type
                              #:caption-source-upconvert-stlto-teletext
                              #:channel-mapping #:chroma-position-mode
                              #:clip-limits #:cmaf-additional-manifest
                              #:cmaf-client-cache #:cmaf-codec-specification
                              #:cmaf-encryption-settings #:cmaf-encryption-type
                              #:cmaf-group-settings
                              #:cmaf-image-based-trick-play
                              #:cmaf-image-based-trick-play-settings
                              #:cmaf-initialization-vector-in-manifest
                              #:cmaf-interval-cadence #:cmaf-key-provider-type
                              #:cmaf-manifest-compression
                              #:cmaf-manifest-duration-format
                              #:cmaf-mpd-manifest-bandwidth-type
                              #:cmaf-mpd-profile
                              #:cmaf-pts-offset-handling-for-bframes
                              #:cmaf-segment-control
                              #:cmaf-segment-length-control
                              #:cmaf-stream-inf-resolution
                              #:cmaf-target-duration-compatibility-mode
                              #:cmaf-video-composition-offsets
                              #:cmaf-write-dashmanifest
                              #:cmaf-write-hlsmanifest
                              #:cmaf-write-segment-timeline-in-representation
                              #:cmfc-audio-duration #:cmfc-audio-track-type
                              #:cmfc-descriptive-video-service-flag
                              #:cmfc-iframe-only-manifest #:cmfc-klv-metadata
                              #:cmfc-manifest-metadata-signaling
                              #:cmfc-scte35esam #:cmfc-scte35source
                              #:cmfc-settings #:cmfc-timed-metadata
                              #:cmfc-timed-metadata-box-version #:codec
                              #:color-conversion3dlutsetting #:color-corrector
                              #:color-metadata #:color-primaries #:color-space
                              #:color-space-conversion #:color-space-usage
                              #:commitment #:container #:container-settings
                              #:container-type #:copy-protection-action
                              #:create-job #:create-job-template
                              #:create-preset #:create-queue
                              #:dash-additional-manifest
                              #:dash-iso-encryption-settings
                              #:dash-iso-group-audio-channel-config-scheme-id-uri
                              #:dash-iso-group-settings
                              #:dash-iso-hbbtv-compliance
                              #:dash-iso-image-based-trick-play
                              #:dash-iso-image-based-trick-play-settings
                              #:dash-iso-interval-cadence
                              #:dash-iso-mpd-manifest-bandwidth-type
                              #:dash-iso-mpd-profile
                              #:dash-iso-playback-device-compatibility
                              #:dash-iso-pts-offset-handling-for-bframes
                              #:dash-iso-segment-control
                              #:dash-iso-segment-length-control
                              #:dash-iso-video-composition-offsets
                              #:dash-iso-write-segment-timeline-in-representation
                              #:dash-manifest-style #:data-properties
                              #:decryption-mode #:deinterlace-algorithm
                              #:deinterlacer #:deinterlacer-control
                              #:deinterlacer-mode #:delete-job-template
                              #:delete-policy #:delete-preset #:delete-queue
                              #:describe-endpoints #:describe-endpoints-mode
                              #:destination-settings #:disassociate-certificate
                              #:dolby-vision #:dolby-vision-level6metadata
                              #:dolby-vision-level6mode #:dolby-vision-mapping
                              #:dolby-vision-profile #:drop-frame-timecode
                              #:dvb-nit-settings #:dvb-sdt-settings
                              #:dvb-sub-destination-settings
                              #:dvb-sub-source-settings
                              #:dvb-sub-subtitle-fallback-font
                              #:dvb-subtitle-alignment
                              #:dvb-subtitle-apply-font-color
                              #:dvb-subtitle-background-color
                              #:dvb-subtitle-font-color
                              #:dvb-subtitle-outline-color
                              #:dvb-subtitle-shadow-color
                              #:dvb-subtitle-style-passthrough
                              #:dvb-subtitle-teletext-spacing
                              #:dvb-subtitling-type #:dvb-tdt-settings
                              #:dvbdds-handling #:dynamic-audio-selector
                              #:dynamic-audio-selector-type
                              #:eac3atmos-bitstream-mode
                              #:eac3atmos-coding-mode
                              #:eac3atmos-dialogue-intelligence
                              #:eac3atmos-downmix-control
                              #:eac3atmos-dynamic-range-compression-line
                              #:eac3atmos-dynamic-range-compression-rf
                              #:eac3atmos-dynamic-range-control
                              #:eac3atmos-metering-mode #:eac3atmos-settings
                              #:eac3atmos-stereo-downmix
                              #:eac3atmos-surround-ex-mode
                              #:eac3attenuation-control #:eac3bitstream-mode
                              #:eac3coding-mode #:eac3dc-filter
                              #:eac3dynamic-range-compression-line
                              #:eac3dynamic-range-compression-rf
                              #:eac3lfe-control #:eac3lfe-filter
                              #:eac3metadata-control #:eac3passthrough-control
                              #:eac3phase-control #:eac3settings
                              #:eac3stereo-downmix #:eac3surround-ex-mode
                              #:eac3surround-mode #:embedded-convert608to708
                              #:embedded-destination-settings
                              #:embedded-source-settings
                              #:embedded-terminate-captions
                              #:embedded-timecode-override
                              #:encryption-contract-configuration #:endpoint
                              #:esam-manifest-confirm-condition-notification
                              #:esam-settings
                              #:esam-signal-processing-notification
                              #:extended-data-services #:f4v-moov-placement
                              #:f4v-settings #:file-group-settings
                              #:file-source-convert608to708
                              #:file-source-settings
                              #:file-source-time-delta-units #:flac-settings
                              #:font-script #:force-include-rendition-size
                              #:format #:frame-capture-settings
                              #:frame-metric-type #:frame-rate #:get-job
                              #:get-job-template #:get-policy #:get-preset
                              #:get-queue #:gif-framerate-control
                              #:gif-framerate-conversion-algorithm
                              #:gif-settings #:h264adaptive-quantization
                              #:h264codec-level #:h264codec-profile
                              #:h264dynamic-sub-gop #:h264end-of-stream-markers
                              #:h264entropy-encoding #:h264field-encoding
                              #:h264flicker-adaptive-quantization
                              #:h264framerate-control
                              #:h264framerate-conversion-algorithm
                              #:h264gop-breference #:h264gop-size-units
                              #:h264interlace-mode #:h264par-control
                              #:h264quality-tuning-level #:h264qvbr-settings
                              #:h264rate-control-mode #:h264repeat-pps
                              #:h264saliency-aware-encoding
                              #:h264scan-type-conversion-mode
                              #:h264scene-change-detect #:h264settings
                              #:h264slow-pal
                              #:h264spatial-adaptive-quantization #:h264syntax
                              #:h264telecine
                              #:h264temporal-adaptive-quantization
                              #:h264unregistered-sei-timecode
                              #:h264write-mp4packaging-type
                              #:h265adaptive-quantization
                              #:h265alternate-transfer-function-sei
                              #:h265codec-level #:h265codec-profile
                              #:h265deblocking #:h265dynamic-sub-gop
                              #:h265end-of-stream-markers
                              #:h265flicker-adaptive-quantization
                              #:h265framerate-control
                              #:h265framerate-conversion-algorithm
                              #:h265gop-breference #:h265gop-size-units
                              #:h265interlace-mode #:h265par-control
                              #:h265quality-tuning-level #:h265qvbr-settings
                              #:h265rate-control-mode
                              #:h265sample-adaptive-offset-filter-mode
                              #:h265scan-type-conversion-mode
                              #:h265scene-change-detect #:h265settings
                              #:h265slow-pal
                              #:h265spatial-adaptive-quantization
                              #:h265telecine
                              #:h265temporal-adaptive-quantization
                              #:h265temporal-ids #:h265tiles
                              #:h265unregistered-sei-timecode
                              #:h265write-mp4packaging-type
                              #:hdrto-sdrtone-mapper #:hdr10metadata
                              #:hdr10plus #:hls-ad-markers
                              #:hls-additional-manifest
                              #:hls-audio-only-container
                              #:hls-audio-only-header #:hls-audio-track-type
                              #:hls-caption-language-mapping
                              #:hls-caption-language-setting
                              #:hls-caption-segment-length-control
                              #:hls-client-cache #:hls-codec-specification
                              #:hls-descriptive-video-service-flag
                              #:hls-directory-structure
                              #:hls-encryption-settings #:hls-encryption-type
                              #:hls-group-settings #:hls-iframe-only-manifest
                              #:hls-image-based-trick-play
                              #:hls-image-based-trick-play-settings
                              #:hls-initialization-vector-in-manifest
                              #:hls-interval-cadence #:hls-key-provider-type
                              #:hls-manifest-compression
                              #:hls-manifest-duration-format
                              #:hls-offline-encrypted #:hls-output-selection
                              #:hls-program-date-time
                              #:hls-progressive-write-hls-manifest
                              #:hls-rendition-group-settings
                              #:hls-segment-control
                              #:hls-segment-length-control #:hls-settings
                              #:hls-stream-inf-resolution
                              #:hls-target-duration-compatibility-mode
                              #:hls-timed-metadata-id3frame #:hop-destination
                              #:id3insertion #:image-inserter
                              #:imsc-accessibility-subs
                              #:imsc-destination-settings
                              #:imsc-style-passthrough #:input #:input-clipping
                              #:input-deblock-filter
                              #:input-decryption-settings
                              #:input-denoise-filter #:input-filter-enable
                              #:input-policy #:input-psi-control #:input-rotate
                              #:input-sample-range #:input-scan-type
                              #:input-tams-settings #:input-template
                              #:input-timecode-source #:input-video-generator
                              #:insertable-image #:job #:job-engine-version
                              #:job-messages #:job-phase #:job-settings
                              #:job-status #:job-template
                              #:job-template-list-by #:job-template-settings
                              #:kantar-watermark-settings #:language-code
                              #:list-job-templates #:list-jobs #:list-presets
                              #:list-queues #:list-tags-for-resource
                              #:list-versions #:m2ts-audio-buffer-model
                              #:m2ts-audio-duration #:m2ts-buffer-model
                              #:m2ts-data-pts-control #:m2ts-ebp-audio-interval
                              #:m2ts-ebp-placement #:m2ts-es-rate-in-pes
                              #:m2ts-force-ts-video-ebp-order
                              #:m2ts-klv-metadata #:m2ts-nielsen-id3
                              #:m2ts-pcr-control
                              #:m2ts-prevent-buffer-underflow #:m2ts-rate-mode
                              #:m2ts-scte35esam #:m2ts-scte35source
                              #:m2ts-segmentation-markers
                              #:m2ts-segmentation-style #:m2ts-settings
                              #:m3u8audio-duration #:m3u8data-pts-control
                              #:m3u8nielsen-id3 #:m3u8pcr-control
                              #:m3u8scte35source #:m3u8settings
                              #:matrix-coefficients #:media-convert #:metadata
                              #:min-bottom-rendition-size
                              #:min-top-rendition-size #:motion-image-inserter
                              #:motion-image-insertion-framerate
                              #:motion-image-insertion-mode
                              #:motion-image-insertion-offset
                              #:motion-image-playback #:mov-clap-atom
                              #:mov-cslg-atom #:mov-mpeg2four-cccontrol
                              #:mov-padding-control #:mov-reference
                              #:mov-settings #:mp2settings
                              #:mp3rate-control-mode #:mp3settings
                              #:mp4c2pa-manifest #:mp4cslg-atom
                              #:mp4free-space-box #:mp4moov-placement
                              #:mp4settings #:mpd-accessibility-caption-hints
                              #:mpd-audio-duration #:mpd-caption-container-type
                              #:mpd-klv-metadata
                              #:mpd-manifest-metadata-signaling
                              #:mpd-scte35esam #:mpd-scte35source
                              #:mpd-settings #:mpd-timed-metadata
                              #:mpd-timed-metadata-box-version
                              #:mpeg2adaptive-quantization #:mpeg2codec-level
                              #:mpeg2codec-profile #:mpeg2dynamic-sub-gop
                              #:mpeg2framerate-control
                              #:mpeg2framerate-conversion-algorithm
                              #:mpeg2gop-size-units #:mpeg2interlace-mode
                              #:mpeg2intra-dc-precision #:mpeg2par-control
                              #:mpeg2quality-tuning-level
                              #:mpeg2rate-control-mode
                              #:mpeg2scan-type-conversion-mode
                              #:mpeg2scene-change-detect #:mpeg2settings
                              #:mpeg2slow-pal
                              #:mpeg2spatial-adaptive-quantization
                              #:mpeg2syntax #:mpeg2telecine
                              #:mpeg2temporal-adaptive-quantization
                              #:ms-smooth-additional-manifest
                              #:ms-smooth-audio-deduplication
                              #:ms-smooth-encryption-settings
                              #:ms-smooth-fragment-length-control
                              #:ms-smooth-group-settings
                              #:ms-smooth-manifest-encoding #:mxf-afd-signaling
                              #:mxf-profile #:mxf-settings
                              #:mxf-xavc-duration-mode
                              #:mxf-xavc-profile-settings
                              #:nex-guard-file-marker-settings
                              #:nielsen-active-watermark-process-type
                              #:nielsen-configuration
                              #:nielsen-non-linear-watermark-settings
                              #:nielsen-source-watermark-status-type
                              #:nielsen-unique-tic-per-audio-track-type
                              #:noise-filter-post-temporal-sharpening
                              #:noise-filter-post-temporal-sharpening-strength
                              #:noise-reducer #:noise-reducer-filter
                              #:noise-reducer-filter-settings
                              #:noise-reducer-spatial-filter-settings
                              #:noise-reducer-temporal-filter-settings
                              #:opus-settings #:order #:output
                              #:output-channel-mapping #:output-detail
                              #:output-group #:output-group-detail
                              #:output-group-settings #:output-group-type
                              #:output-sdt #:output-settings #:pad-video
                              #:partner-watermarking #:policy #:preset
                              #:preset-list-by #:preset-settings
                              #:preset-speke20audio #:preset-speke20video
                              #:pricing-plan #:probe #:probe-input-file
                              #:probe-result #:prores-chroma-sampling
                              #:prores-codec-profile #:prores-framerate-control
                              #:prores-framerate-conversion-algorithm
                              #:prores-interlace-mode #:prores-par-control
                              #:prores-scan-type-conversion-mode
                              #:prores-settings #:prores-slow-pal
                              #:prores-telecine #:put-policy #:queue
                              #:queue-list-by #:queue-status #:queue-transition
                              #:rectangle #:remix-settings
                              #:remove-ruby-reserve-attributes #:renewal-type
                              #:required-flag #:reservation-plan
                              #:reservation-plan-settings
                              #:reservation-plan-status #:resource-tags
                              #:respond-to-afd #:rule-type
                              #:s3destination-access-control
                              #:s3destination-settings #:s3encryption-settings
                              #:s3object-canned-acl
                              #:s3server-side-encryption-type #:s3storage-class
                              #:sample-range-conversion #:scaling-behavior
                              #:scc-destination-framerate
                              #:scc-destination-settings #:search-jobs
                              #:service-override #:simulate-reserved-queue
                              #:speke-key-provider #:speke-key-provider-cmaf
                              #:srt-destination-settings
                              #:srt-style-passthrough #:static-key-provider
                              #:status-update-interval #:tag-resource
                              #:tams-gap-handling
                              #:teletext-destination-settings
                              #:teletext-page-type #:teletext-source-settings
                              #:timecode-burnin #:timecode-burnin-position
                              #:timecode-config #:timecode-source
                              #:timecode-track #:timed-metadata
                              #:timed-metadata-insertion #:timing #:track
                              #:track-mapping #:track-source-settings
                              #:track-type #:transfer-characteristics
                              #:ts-pts-offset #:ttml-destination-settings
                              #:ttml-style-passthrough #:type
                              #:uncompressed-fourcc
                              #:uncompressed-framerate-control
                              #:uncompressed-framerate-conversion-algorithm
                              #:uncompressed-interlace-mode
                              #:uncompressed-scan-type-conversion-mode
                              #:uncompressed-settings #:uncompressed-slow-pal
                              #:uncompressed-telecine #:untag-resource
                              #:update-job-template #:update-preset
                              #:update-queue #:vc3class #:vc3framerate-control
                              #:vc3framerate-conversion-algorithm
                              #:vc3interlace-mode
                              #:vc3scan-type-conversion-mode #:vc3settings
                              #:vc3slow-pal #:vc3telecine #:vchip-action
                              #:video-codec #:video-codec-settings
                              #:video-description #:video-detail
                              #:video-overlay #:video-overlay-crop
                              #:video-overlay-input
                              #:video-overlay-input-clipping
                              #:video-overlay-play-back-mode
                              #:video-overlay-position
                              #:video-overlay-transition #:video-overlay-unit
                              #:video-preprocessor #:video-properties
                              #:video-selector #:video-timecode-insertion
                              #:vorbis-settings #:vp8framerate-control
                              #:vp8framerate-conversion-algorithm
                              #:vp8par-control #:vp8quality-tuning-level
                              #:vp8rate-control-mode #:vp8settings
                              #:vp9framerate-control
                              #:vp9framerate-conversion-algorithm
                              #:vp9par-control #:vp9quality-tuning-level
                              #:vp9rate-control-mode #:vp9settings
                              #:warning-group #:watermarking-strength
                              #:wav-format #:wav-settings
                              #:webvtt-accessibility-subs
                              #:webvtt-destination-settings
                              #:webvtt-hls-source-settings
                              #:webvtt-style-passthrough
                              #:xavc4k-intra-cbg-profile-class
                              #:xavc4k-intra-cbg-profile-settings
                              #:xavc4k-intra-vbr-profile-class
                              #:xavc4k-intra-vbr-profile-settings
                              #:xavc4k-profile-bitrate-class
                              #:xavc4k-profile-codec-profile
                              #:xavc4k-profile-quality-tuning-level
                              #:xavc4k-profile-settings
                              #:xavc-adaptive-quantization
                              #:xavc-entropy-encoding
                              #:xavc-flicker-adaptive-quantization
                              #:xavc-framerate-control
                              #:xavc-framerate-conversion-algorithm
                              #:xavc-gop-breference
                              #:xavc-hd-intra-cbg-profile-class
                              #:xavc-hd-intra-cbg-profile-settings
                              #:xavc-hd-profile-bitrate-class
                              #:xavc-hd-profile-quality-tuning-level
                              #:xavc-hd-profile-settings
                              #:xavc-hd-profile-telecine #:xavc-interlace-mode
                              #:xavc-profile #:xavc-settings #:xavc-slow-pal
                              #:xavc-spatial-adaptive-quantization
                              #:xavc-temporal-adaptive-quantization #:double
                              #:double-min0 #:double-min0max1
                              #:double-min0max2147483647 #:double-min1max10
                              #:double-min-negative59max0
                              #:double-min-negative60max3
                              #:double-min-negative60max6
                              #:double-min-negative60max-negative1
                              #:double-min-negative6max3
                              #:double-min-negative8max0 #:integer
                              #:integer-min0max0 #:integer-min0max1
                              #:integer-min0max10 #:integer-min0max100
                              #:integer-min0max1000 #:integer-min0max10000
                              #:integer-min0max1152000000 #:integer-min0max128
                              #:integer-min0max1466400000 #:integer-min0max15
                              #:integer-min0max16 #:integer-min0max2147483647
                              #:integer-min0max255 #:integer-min0max3
                              #:integer-min0max30 #:integer-min0max30000
                              #:integer-min0max3600 #:integer-min0max4
                              #:integer-min0max4000 #:integer-min0max4194303
                              #:integer-min0max47185920 #:integer-min0max5
                              #:integer-min0max500 #:integer-min0max50000
                              #:integer-min0max65534 #:integer-min0max65535
                              #:integer-min0max7 #:integer-min0max8
                              #:integer-min0max9 #:integer-min0max96
                              #:integer-min0max99
                              #:integer-min100000max100000000
                              #:integer-min1000max1152000000
                              #:integer-min1000max1466400000
                              #:integer-min1000max288000000
                              #:integer-min1000max30000
                              #:integer-min1000max300000000
                              #:integer-min1000max480000000
                              #:integer-min100max1000 #:integer-min10max48
                              #:integer-min16000max320000
                              #:integer-min16000max48000 #:integer-min16max24
                              #:integer-min1max1 #:integer-min1max10
                              #:integer-min1max100 #:integer-min1max10000000
                              #:integer-min1max1001 #:integer-min1max150
                              #:integer-min1max17895697 #:integer-min1max2
                              #:integer-min1max20 #:integer-min1max2048
                              #:integer-min1max2147483640
                              #:integer-min1max2147483647 #:integer-min1max31
                              #:integer-min1max32 #:integer-min1max4
                              #:integer-min1max4096 #:integer-min1max512
                              #:integer-min1max6 #:integer-min1max60000
                              #:integer-min1max64 #:integer-min1max8
                              #:integer-min2000max30000
                              #:integer-min22050max192000
                              #:integer-min22050max48000
                              #:integer-min24max60000 #:integer-min25max10000
                              #:integer-min25max2000
                              #:integer-min2max2147483647 #:integer-min2max4096
                              #:integer-min32000max192000
                              #:integer-min32000max3024000
                              #:integer-min32000max384000
                              #:integer-min32000max48000 #:integer-min32max8182
                              #:integer-min32max8192
                              #:integer-min384000max1024000 #:integer-min3max15
                              #:integer-min48000max48000 #:integer-min4max12
                              #:integer-min50max86400000
                              #:integer-min6000max1024000
                              #:integer-min64000max640000 #:integer-min6max16
                              #:integer-min8000max192000
                              #:integer-min8000max96000 #:integer-min8max12
                              #:integer-min8max4096 #:integer-min90max105
                              #:integer-min920max1023 #:integer-min96max600
                              #:integer-min-negative10000max10000
                              #:integer-min-negative1000max1000
                              #:integer-min-negative180max180
                              #:integer-min-negative1max10
                              #:integer-min-negative1max2147483647
                              #:integer-min-negative1max3
                              #:integer-min-negative2147483648max2147483647
                              #:integer-min-negative2max3
                              #:integer-min-negative50max50
                              #:integer-min-negative5max10
                              #:integer-min-negative60max6
                              #:integer-min-negative70max0
                              #:list-of-allowed-rendition-size
                              #:list-of-audio-channel-tag
                              #:list-of-audio-description
                              #:list-of-automated-abr-rule
                              #:list-of-caption-description
                              #:list-of-caption-description-preset
                              #:list-of-cmaf-additional-manifest
                              #:list-of-color-conversion3dlutsetting
                              #:list-of-dash-additional-manifest
                              #:list-of-endpoint
                              #:list-of-force-include-rendition-size
                              #:list-of-frame-metric-type
                              #:list-of-hls-ad-markers
                              #:list-of-hls-additional-manifest
                              #:list-of-hls-caption-language-mapping
                              #:list-of-hop-destination #:list-of-id3insertion
                              #:list-of-input #:list-of-input-clipping
                              #:list-of-input-template
                              #:list-of-insertable-image #:list-of-job
                              #:list-of-job-engine-version
                              #:list-of-job-template
                              #:list-of-ms-smooth-additional-manifest
                              #:list-of-output #:list-of-output-channel-mapping
                              #:list-of-output-detail #:list-of-output-group
                              #:list-of-output-group-detail #:list-of-preset
                              #:list-of-probe-input-file #:list-of-probe-result
                              #:list-of-queue #:list-of-queue-transition
                              #:list-of-service-override
                              #:list-of-teletext-page-type #:list-of-track
                              #:list-of-track-mapping #:list-of-video-overlay
                              #:list-of-video-overlay-input-clipping
                              #:list-of-video-overlay-transition
                              #:list-of-warning-group
                              #:list-of-double-min-negative60max6
                              #:list-of-integer
                              #:list-of-integer-min1max2147483647
                              #:list-of-integer-min32max8182
                              #:list-of-integer-min-negative60max6
                              #:list-of-string #:list-of-string-min1
                              #:list-of-string-min36max36pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
                              #:list-of-string-pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
                              #:list-of-string-pattern-s3assetmapxml #:long
                              #:map-of-audio-selector
                              #:map-of-audio-selector-group
                              #:map-of-caption-selector
                              #:map-of-dynamic-audio-selector #:map-of-string
                              #:string #:string-max1000 #:string-max2048
                              #:string-max2048pattern-s3https #:string-max256
                              #:string-min0 #:string-min1
                              #:string-min11max11pattern01d20305d205d
                              #:string-min14pattern-s3bmp-bmppng-pnghttps-bmp-bmppng-png
                              #:string-min14pattern-s3bmp-bmppng-pngtga-tgahttps-bmp-bmppng-pngtga-tga
                              #:string-min14pattern-s3cube-cubehttps-cube-cube
                              #:string-min14pattern-s3mov09png-https-mov09png
                              #:string-min14pattern-s3scc-sccttml-ttmldfxp-dfxpstl-stlsrt-srtxml-xmlsmi-smivtt-vttwebvtt-webvtthttps-scc-sccttml-ttmldfxp-dfxpstl-stlsrt-srtxml-xmlsmi-smivtt-vttwebvtt-webvtt
                              #:string-min14pattern-s3xml-xmlhttps-xml-xml
                              #:string-min16max24pattern-aza-z0922aza-z0916
                              #:string-min1max100000 #:string-min1max20
                              #:string-min1max2048pattern-arn-azsecretsmanager-wd12secret-azaz09
                              #:string-min1max256 #:string-min1max50
                              #:string-min1max50pattern-azaz09
                              #:string-min1pattern-arn-aws-us-gov-cn-kms-az26east-west-central-north-south-east-west1912d12key-afaf098afaf094afaf094afaf094afaf0912mrk-afaf0932
                              #:string-min24max512pattern-aza-z0902
                              #:string-min32max32pattern09a-faf32
                              #:string-min36max36pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
                              #:string-min3max3pattern1809a-faf09a-eae
                              #:string-min3max3pattern-aza-z3
                              #:string-min6max8pattern09a-faf609a-faf2
                              #:string-min9max19pattern-az26east-west-central-north-south-east-west1912
                              #:string-pattern
                              #:string-pattern010920405090509092
                              #:string-pattern010920405090509092090909
                              #:string-pattern019090190908019090190908
                              #:string-pattern01d20305d205d
                              #:string-pattern0940191020191209301
                              #:string-pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
                              #:string-pattern0x-afa-f0908190908
                              #:string-pattern-aza-z0902
                              #:string-pattern-aza-z0932
                              #:string-pattern-aza-z23aza-z
                              #:string-pattern-aza-z23aza-z09
                              #:string-pattern-arn-aws-az09events-az090912connection-azaz09af0936
                              #:string-pattern-arn-aws-us-gov-acm
                              #:string-pattern-arn-aws-us-gov-cn-kms-az26east-west-central-north-south-east-west1912d12key-afaf098afaf094afaf094afaf094afaf0912mrk-afaf0932
                              #:string-pattern-dd #:string-pattern-https
                              #:string-pattern-https-d
                              #:string-pattern-https-kantarmedia
                              #:string-pattern-identity-aza-z26aza-z09163
                              #:string-pattern-s3
                              #:string-pattern-s3assetmapxml
                              #:string-pattern-s3https
                              #:string-pattern-s3ttf-https-ttf
                              #:string-pattern-snmanifest-confirm-condition-notification-ns
                              #:string-pattern-snsignal-processing-notification-ns
                              #:string-pattern-w #:string-pattern-ws
                              #:timestamp-unix))
(common-lisp:in-package #:pira/mediaconvert)

(smithy/sdk/service:define-service media-convert :shape-name "MediaConvert"
                                   :version "2017-08-29" :title
                                   "AWS Elemental MediaConvert" :operations
                                   '(associate-certificate cancel-job
                                     create-job create-job-template
                                     create-preset create-queue
                                     delete-job-template delete-policy
                                     delete-preset delete-queue
                                     describe-endpoints
                                     disassociate-certificate get-job
                                     get-job-template get-policy get-preset
                                     get-queue list-jobs list-job-templates
                                     list-presets list-queues
                                     list-tags-for-resource list-versions probe
                                     put-policy search-jobs tag-resource
                                     untag-resource update-job-template
                                     update-preset update-queue)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MediaConvert")
                                      ("arnNamespace" . "mediaconvert")
                                      ("cloudFormationName" . "MediaConvert")
                                      ("cloudTrailEventSource"
                                       . "mediaconvert.amazonaws.com")
                                      ("endpointPrefix" . "mediaconvert"))
                                     ("aws.auth#sigv4"
                                      ("name" . "mediaconvert"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum aac-audio-description-broadcaster-mix
    common-lisp:nil
  (:broadcaster-mixed-ad "BROADCASTER_MIXED_AD")
  (:normal "NORMAL"))

(smithy/sdk/shapes:define-enum aac-codec-profile
    common-lisp:nil
  (:lc "LC")
  (:hev1 "HEV1")
  (:hev2 "HEV2")
  (:xhe "XHE"))

(smithy/sdk/shapes:define-enum aac-coding-mode
    common-lisp:nil
  (:ad-receiver-mix "AD_RECEIVER_MIX")
  (:coding-mode-1-0 "CODING_MODE_1_0")
  (:coding-mode-1-1 "CODING_MODE_1_1")
  (:coding-mode-2-0 "CODING_MODE_2_0")
  (:coding-mode-5-1 "CODING_MODE_5_1"))

(smithy/sdk/shapes:define-enum aac-loudness-measurement-mode
    common-lisp:nil
  (:program "PROGRAM")
  (:anchor "ANCHOR"))

(smithy/sdk/shapes:define-enum aac-rate-control-mode
    common-lisp:nil
  (:cbr "CBR")
  (:vbr "VBR"))

(smithy/sdk/shapes:define-enum aac-raw-format
    common-lisp:nil
  (:latm-loas "LATM_LOAS")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure aac-settings common-lisp:nil
                                    ((audio-description-broadcaster-mix
                                      :target-type
                                      aac-audio-description-broadcaster-mix
                                      :member-name
                                      "AudioDescriptionBroadcasterMix"
                                      :json-name
                                      "audioDescriptionBroadcasterMix")
                                     (bitrate :target-type
                                      integer-min6000max1024000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (codec-profile :target-type
                                      aac-codec-profile :member-name
                                      "CodecProfile" :json-name "codecProfile")
                                     (coding-mode :target-type aac-coding-mode
                                      :member-name "CodingMode" :json-name
                                      "codingMode")
                                     (loudness-measurement-mode :target-type
                                      aac-loudness-measurement-mode
                                      :member-name "LoudnessMeasurementMode"
                                      :json-name "loudnessMeasurementMode")
                                     (rap-interval :target-type
                                      integer-min2000max30000 :member-name
                                      "RapInterval" :json-name "rapInterval")
                                     (rate-control-mode :target-type
                                      aac-rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode")
                                     (raw-format :target-type aac-raw-format
                                      :member-name "RawFormat" :json-name
                                      "rawFormat")
                                     (sample-rate :target-type
                                      integer-min8000max96000 :member-name
                                      "SampleRate" :json-name "sampleRate")
                                     (specification :target-type
                                      aac-specification :member-name
                                      "Specification" :json-name
                                      "specification")
                                     (target-loudness-range :target-type
                                      integer-min6max16 :member-name
                                      "TargetLoudnessRange" :json-name
                                      "targetLoudnessRange")
                                     (vbr-quality :target-type aac-vbr-quality
                                      :member-name "VbrQuality" :json-name
                                      "vbrQuality"))
                                    (:shape-name "AacSettings"))

(smithy/sdk/shapes:define-enum aac-specification
    common-lisp:nil
  (:mpeg2 "MPEG2")
  (:mpeg4 "MPEG4"))

(smithy/sdk/shapes:define-enum aac-vbr-quality
    common-lisp:nil
  (:low "LOW")
  (:medium-low "MEDIUM_LOW")
  (:medium-high "MEDIUM_HIGH")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum ac3bitstream-mode
    common-lisp:nil
  (:complete-main "COMPLETE_MAIN")
  (:commentary "COMMENTARY")
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

(smithy/sdk/shapes:define-enum ac3dynamic-range-compression-line
    common-lisp:nil
  (:film-standard "FILM_STANDARD")
  (:film-light "FILM_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:speech "SPEECH")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum ac3dynamic-range-compression-profile
    common-lisp:nil
  (:film-standard "FILM_STANDARD")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum ac3dynamic-range-compression-rf
    common-lisp:nil
  (:film-standard "FILM_STANDARD")
  (:film-light "FILM_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:speech "SPEECH")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum ac3lfe-filter
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum ac3metadata-control
    common-lisp:nil
  (:follow-input "FOLLOW_INPUT")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-structure ac3settings common-lisp:nil
                                    ((bitrate :target-type
                                      integer-min64000max640000 :member-name
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
                                     (dynamic-range-compression-line
                                      :target-type
                                      ac3dynamic-range-compression-line
                                      :member-name
                                      "DynamicRangeCompressionLine" :json-name
                                      "dynamicRangeCompressionLine")
                                     (dynamic-range-compression-profile
                                      :target-type
                                      ac3dynamic-range-compression-profile
                                      :member-name
                                      "DynamicRangeCompressionProfile"
                                      :json-name
                                      "dynamicRangeCompressionProfile")
                                     (dynamic-range-compression-rf :target-type
                                      ac3dynamic-range-compression-rf
                                      :member-name "DynamicRangeCompressionRf"
                                      :json-name "dynamicRangeCompressionRf")
                                     (lfe-filter :target-type ac3lfe-filter
                                      :member-name "LfeFilter" :json-name
                                      "lfeFilter")
                                     (metadata-control :target-type
                                      ac3metadata-control :member-name
                                      "MetadataControl" :json-name
                                      "metadataControl")
                                     (sample-rate :target-type
                                      integer-min48000max48000 :member-name
                                      "SampleRate" :json-name "sampleRate"))
                                    (:shape-name "Ac3Settings"))

(smithy/sdk/shapes:define-enum acceleration-mode
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:preferred "PREFERRED"))

(smithy/sdk/shapes:define-structure acceleration-settings common-lisp:nil
                                    ((mode :target-type acceleration-mode
                                      :required common-lisp:t :member-name
                                      "Mode" :json-name "mode"))
                                    (:shape-name "AccelerationSettings"))

(smithy/sdk/shapes:define-enum acceleration-status
    common-lisp:nil
  (:not-applicable "NOT_APPLICABLE")
  (:in-progress "IN_PROGRESS")
  (:accelerated "ACCELERATED")
  (:not-accelerated "NOT_ACCELERATED"))

(smithy/sdk/shapes:define-enum advanced-input-filter
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum advanced-input-filter-add-texture
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure advanced-input-filter-settings
                                    common-lisp:nil
                                    ((add-texture :target-type
                                      advanced-input-filter-add-texture
                                      :member-name "AddTexture" :json-name
                                      "addTexture")
                                     (sharpening :target-type
                                      advanced-input-filter-sharpen
                                      :member-name "Sharpening" :json-name
                                      "sharpening"))
                                    (:shape-name "AdvancedInputFilterSettings"))

(smithy/sdk/shapes:define-enum advanced-input-filter-sharpen
    common-lisp:nil
  (:off "OFF")
  (:low "LOW")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum afd-signaling
    common-lisp:nil
  (:none "NONE")
  (:auto "AUTO")
  (:fixed "FIXED"))

(smithy/sdk/shapes:define-structure aiff-settings common-lisp:nil
                                    ((bit-depth :target-type integer-min16max24
                                      :member-name "BitDepth" :json-name
                                      "bitDepth")
                                     (channels :target-type integer-min1max64
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (sample-rate :target-type
                                      integer-min8000max192000 :member-name
                                      "SampleRate" :json-name "sampleRate"))
                                    (:shape-name "AiffSettings"))

(smithy/sdk/shapes:define-structure allowed-rendition-size common-lisp:nil
                                    ((height :target-type integer-min32max8192
                                      :member-name "Height" :json-name
                                      "height")
                                     (required :target-type required-flag
                                      :member-name "Required" :json-name
                                      "required")
                                     (width :target-type integer-min32max8192
                                      :member-name "Width" :json-name "width"))
                                    (:shape-name "AllowedRenditionSize"))

(smithy/sdk/shapes:define-enum alpha-behavior
    common-lisp:nil
  (:discard "DISCARD")
  (:remap-to-luma "REMAP_TO_LUMA"))

(smithy/sdk/shapes:define-enum ancillary-convert608to708
    common-lisp:nil
  (:upconvert "UPCONVERT")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure ancillary-source-settings common-lisp:nil
                                    ((convert608to708 :target-type
                                      ancillary-convert608to708 :member-name
                                      "Convert608To708" :json-name
                                      "convert608To708")
                                     (source-ancillary-channel-number
                                      :target-type integer-min1max4
                                      :member-name
                                      "SourceAncillaryChannelNumber" :json-name
                                      "sourceAncillaryChannelNumber")
                                     (terminate-captions :target-type
                                      ancillary-terminate-captions :member-name
                                      "TerminateCaptions" :json-name
                                      "terminateCaptions"))
                                    (:shape-name "AncillarySourceSettings"))

(smithy/sdk/shapes:define-enum ancillary-terminate-captions
    common-lisp:nil
  (:end-of-input "END_OF_INPUT")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum anti-alias
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-input associate-certificate-request common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :json-name
                                  "arn"))
                                (:shape-name "AssociateCertificateRequest"))

(smithy/sdk/shapes:define-output associate-certificate-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AssociateCertificateResponse"))

(smithy/sdk/shapes:define-enum audio-channel-tag
    common-lisp:nil
  (:l "L")
  (:r "R")
  (:c "C")
  (:lfe "LFE")
  (:ls "LS")
  (:rs "RS")
  (:lc "LC")
  (:rc "RC")
  (:cs "CS")
  (:lsd "LSD")
  (:rsd "RSD")
  (:tcs "TCS")
  (:vhl "VHL")
  (:vhc "VHC")
  (:vhr "VHR")
  (:tbl "TBL")
  (:tbc "TBC")
  (:tbr "TBR")
  (:rsl "RSL")
  (:rsr "RSR")
  (:lw "LW")
  (:rw "RW")
  (:lfe2 "LFE2")
  (:lt "LT")
  (:rt "RT")
  (:hi "HI")
  (:nar "NAR")
  (:m "M"))

(smithy/sdk/shapes:define-structure audio-channel-tagging-settings
                                    common-lisp:nil
                                    ((channel-tag :target-type
                                      audio-channel-tag :member-name
                                      "ChannelTag" :json-name "channelTag")
                                     (channel-tags :target-type
                                      list-of-audio-channel-tag :member-name
                                      "ChannelTags" :json-name "channelTags"))
                                    (:shape-name "AudioChannelTaggingSettings"))

(smithy/sdk/shapes:define-enum audio-codec
    common-lisp:nil
  (:aac "AAC")
  (:mp2 "MP2")
  (:mp3 "MP3")
  (:wav "WAV")
  (:aiff "AIFF")
  (:ac3 "AC3")
  (:eac3 "EAC3")
  (:eac3-atmos "EAC3_ATMOS")
  (:vorbis "VORBIS")
  (:opus "OPUS")
  (:passthrough "PASSTHROUGH")
  (:flac "FLAC"))

(smithy/sdk/shapes:define-structure audio-codec-settings common-lisp:nil
                                    ((aac-settings :target-type aac-settings
                                      :member-name "AacSettings" :json-name
                                      "aacSettings")
                                     (ac3settings :target-type ac3settings
                                      :member-name "Ac3Settings" :json-name
                                      "ac3Settings")
                                     (aiff-settings :target-type aiff-settings
                                      :member-name "AiffSettings" :json-name
                                      "aiffSettings")
                                     (codec :target-type audio-codec
                                      :member-name "Codec" :json-name "codec")
                                     (eac3atmos-settings :target-type
                                      eac3atmos-settings :member-name
                                      "Eac3AtmosSettings" :json-name
                                      "eac3AtmosSettings")
                                     (eac3settings :target-type eac3settings
                                      :member-name "Eac3Settings" :json-name
                                      "eac3Settings")
                                     (flac-settings :target-type flac-settings
                                      :member-name "FlacSettings" :json-name
                                      "flacSettings")
                                     (mp2settings :target-type mp2settings
                                      :member-name "Mp2Settings" :json-name
                                      "mp2Settings")
                                     (mp3settings :target-type mp3settings
                                      :member-name "Mp3Settings" :json-name
                                      "mp3Settings")
                                     (opus-settings :target-type opus-settings
                                      :member-name "OpusSettings" :json-name
                                      "opusSettings")
                                     (vorbis-settings :target-type
                                      vorbis-settings :member-name
                                      "VorbisSettings" :json-name
                                      "vorbisSettings")
                                     (wav-settings :target-type wav-settings
                                      :member-name "WavSettings" :json-name
                                      "wavSettings"))
                                    (:shape-name "AudioCodecSettings"))

(smithy/sdk/shapes:define-enum audio-default-selection
    common-lisp:nil
  (:default "DEFAULT")
  (:not-default "NOT_DEFAULT"))

(smithy/sdk/shapes:define-structure audio-description common-lisp:nil
                                    ((audio-channel-tagging-settings
                                      :target-type
                                      audio-channel-tagging-settings
                                      :member-name
                                      "AudioChannelTaggingSettings" :json-name
                                      "audioChannelTaggingSettings")
                                     (audio-normalization-settings :target-type
                                      audio-normalization-settings :member-name
                                      "AudioNormalizationSettings" :json-name
                                      "audioNormalizationSettings")
                                     (audio-source-name :target-type
                                      string-max2048 :member-name
                                      "AudioSourceName" :json-name
                                      "audioSourceName")
                                     (audio-type :target-type
                                      integer-min0max255 :member-name
                                      "AudioType" :json-name "audioType")
                                     (audio-type-control :target-type
                                      audio-type-control :member-name
                                      "AudioTypeControl" :json-name
                                      "audioTypeControl")
                                     (codec-settings :target-type
                                      audio-codec-settings :member-name
                                      "CodecSettings" :json-name
                                      "codecSettings")
                                     (custom-language-code :target-type
                                      string-pattern-aza-z23aza-z09
                                      :member-name "CustomLanguageCode"
                                      :json-name "customLanguageCode")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (language-code-control :target-type
                                      audio-language-code-control :member-name
                                      "LanguageCodeControl" :json-name
                                      "languageCodeControl")
                                     (remix-settings :target-type
                                      remix-settings :member-name
                                      "RemixSettings" :json-name
                                      "remixSettings")
                                     (stream-name :target-type
                                      string-pattern-ws :member-name
                                      "StreamName" :json-name "streamName"))
                                    (:shape-name "AudioDescription"))

(smithy/sdk/shapes:define-enum audio-duration-correction
    common-lisp:nil
  (:disabled "DISABLED")
  (:auto "AUTO")
  (:track "TRACK")
  (:frame "FRAME")
  (:force "FORCE"))

(smithy/sdk/shapes:define-enum audio-language-code-control
    common-lisp:nil
  (:follow-input "FOLLOW_INPUT")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-enum audio-normalization-algorithm
    common-lisp:nil
  (:itu-bs-1770-1 "ITU_BS_1770_1")
  (:itu-bs-1770-2 "ITU_BS_1770_2")
  (:itu-bs-1770-3 "ITU_BS_1770_3")
  (:itu-bs-1770-4 "ITU_BS_1770_4"))

(smithy/sdk/shapes:define-enum audio-normalization-algorithm-control
    common-lisp:nil
  (:correct-audio "CORRECT_AUDIO")
  (:measure-only "MEASURE_ONLY"))

(smithy/sdk/shapes:define-enum audio-normalization-loudness-logging
    common-lisp:nil
  (:log "LOG")
  (:dont-log "DONT_LOG"))

(smithy/sdk/shapes:define-enum audio-normalization-peak-calculation
    common-lisp:nil
  (:true-peak "TRUE_PEAK")
  (:none "NONE"))

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
                                     (correction-gate-level :target-type
                                      integer-min-negative70max0 :member-name
                                      "CorrectionGateLevel" :json-name
                                      "correctionGateLevel")
                                     (loudness-logging :target-type
                                      audio-normalization-loudness-logging
                                      :member-name "LoudnessLogging" :json-name
                                      "loudnessLogging")
                                     (peak-calculation :target-type
                                      audio-normalization-peak-calculation
                                      :member-name "PeakCalculation" :json-name
                                      "peakCalculation")
                                     (target-lkfs :target-type
                                      double-min-negative59max0 :member-name
                                      "TargetLkfs" :json-name "targetLkfs")
                                     (true-peak-limiter-threshold :target-type
                                      double-min-negative8max0 :member-name
                                      "TruePeakLimiterThreshold" :json-name
                                      "truePeakLimiterThreshold"))
                                    (:shape-name "AudioNormalizationSettings"))

(smithy/sdk/shapes:define-structure audio-properties common-lisp:nil
                                    ((bit-depth :target-type integer
                                      :member-name "BitDepth" :json-name
                                      "bitDepth")
                                     (bit-rate :target-type long :member-name
                                      "BitRate" :json-name "bitRate")
                                     (channels :target-type integer
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (frame-rate :target-type frame-rate
                                      :member-name "FrameRate" :json-name
                                      "frameRate")
                                     (language-code :target-type string
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (sample-rate :target-type integer
                                      :member-name "SampleRate" :json-name
                                      "sampleRate"))
                                    (:shape-name "AudioProperties"))

(smithy/sdk/shapes:define-structure audio-selector common-lisp:nil
                                    ((audio-duration-correction :target-type
                                      audio-duration-correction :member-name
                                      "AudioDurationCorrection" :json-name
                                      "audioDurationCorrection")
                                     (custom-language-code :target-type
                                      string-min3max3pattern-aza-z3
                                      :member-name "CustomLanguageCode"
                                      :json-name "customLanguageCode")
                                     (default-selection :target-type
                                      audio-default-selection :member-name
                                      "DefaultSelection" :json-name
                                      "defaultSelection")
                                     (external-audio-file-input :target-type
                                      string-pattern-s3https :member-name
                                      "ExternalAudioFileInput" :json-name
                                      "externalAudioFileInput")
                                     (hls-rendition-group-settings :target-type
                                      hls-rendition-group-settings :member-name
                                      "HlsRenditionGroupSettings" :json-name
                                      "hlsRenditionGroupSettings")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (offset :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "Offset" :json-name
                                      "offset")
                                     (pids :target-type
                                      list-of-integer-min1max2147483647
                                      :member-name "Pids" :json-name "pids")
                                     (program-selection :target-type
                                      integer-min0max8 :member-name
                                      "ProgramSelection" :json-name
                                      "programSelection")
                                     (remix-settings :target-type
                                      remix-settings :member-name
                                      "RemixSettings" :json-name
                                      "remixSettings")
                                     (selector-type :target-type
                                      audio-selector-type :member-name
                                      "SelectorType" :json-name "selectorType")
                                     (tracks :target-type
                                      list-of-integer-min1max2147483647
                                      :member-name "Tracks" :json-name
                                      "tracks"))
                                    (:shape-name "AudioSelector"))

(smithy/sdk/shapes:define-structure audio-selector-group common-lisp:nil
                                    ((audio-selector-names :target-type
                                      list-of-string-min1 :member-name
                                      "AudioSelectorNames" :json-name
                                      "audioSelectorNames"))
                                    (:shape-name "AudioSelectorGroup"))

(smithy/sdk/shapes:define-enum audio-selector-type
    common-lisp:nil
  (:pid "PID")
  (:track "TRACK")
  (:language-code "LANGUAGE_CODE")
  (:hls-rendition-group "HLS_RENDITION_GROUP")
  (:all-pcm "ALL_PCM"))

(smithy/sdk/shapes:define-enum audio-type-control
    common-lisp:nil
  (:follow-input "FOLLOW_INPUT")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-structure automated-abr-rule common-lisp:nil
                                    ((allowed-renditions :target-type
                                      list-of-allowed-rendition-size
                                      :member-name "AllowedRenditions"
                                      :json-name "allowedRenditions")
                                     (force-include-renditions :target-type
                                      list-of-force-include-rendition-size
                                      :member-name "ForceIncludeRenditions"
                                      :json-name "forceIncludeRenditions")
                                     (min-bottom-rendition-size :target-type
                                      min-bottom-rendition-size :member-name
                                      "MinBottomRenditionSize" :json-name
                                      "minBottomRenditionSize")
                                     (min-top-rendition-size :target-type
                                      min-top-rendition-size :member-name
                                      "MinTopRenditionSize" :json-name
                                      "minTopRenditionSize")
                                     (type :target-type rule-type :member-name
                                      "Type" :json-name "type"))
                                    (:shape-name "AutomatedAbrRule"))

(smithy/sdk/shapes:define-structure automated-abr-settings common-lisp:nil
                                    ((max-abr-bitrate :target-type
                                      integer-min100000max100000000
                                      :member-name "MaxAbrBitrate" :json-name
                                      "maxAbrBitrate")
                                     (max-quality-level :target-type
                                      double-min1max10 :member-name
                                      "MaxQualityLevel" :json-name
                                      "maxQualityLevel")
                                     (max-renditions :target-type
                                      integer-min3max15 :member-name
                                      "MaxRenditions" :json-name
                                      "maxRenditions")
                                     (min-abr-bitrate :target-type
                                      integer-min100000max100000000
                                      :member-name "MinAbrBitrate" :json-name
                                      "minAbrBitrate")
                                     (rules :target-type
                                      list-of-automated-abr-rule :member-name
                                      "Rules" :json-name "rules"))
                                    (:shape-name "AutomatedAbrSettings"))

(smithy/sdk/shapes:define-structure automated-encoding-settings common-lisp:nil
                                    ((abr-settings :target-type
                                      automated-abr-settings :member-name
                                      "AbrSettings" :json-name "abrSettings"))
                                    (:shape-name "AutomatedEncodingSettings"))

(smithy/sdk/shapes:define-enum av1adaptive-quantization
    common-lisp:nil
  (:off "OFF")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:higher "HIGHER")
  (:max "MAX"))

(smithy/sdk/shapes:define-enum av1bit-depth
    common-lisp:nil
  (:bit-8 "BIT_8")
  (:bit-10 "BIT_10"))

(smithy/sdk/shapes:define-enum av1film-grain-synthesis
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum av1framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum av1framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-structure av1qvbr-settings common-lisp:nil
                                    ((qvbr-quality-level :target-type
                                      integer-min1max10 :member-name
                                      "QvbrQualityLevel" :json-name
                                      "qvbrQualityLevel")
                                     (qvbr-quality-level-fine-tune :target-type
                                      double-min0max1 :member-name
                                      "QvbrQualityLevelFineTune" :json-name
                                      "qvbrQualityLevelFineTune"))
                                    (:shape-name "Av1QvbrSettings"))

(smithy/sdk/shapes:define-enum av1rate-control-mode
    common-lisp:nil
  (:qvbr "QVBR"))

(smithy/sdk/shapes:define-structure av1settings common-lisp:nil
                                    ((adaptive-quantization :target-type
                                      av1adaptive-quantization :member-name
                                      "AdaptiveQuantization" :json-name
                                      "adaptiveQuantization")
                                     (bit-depth :target-type av1bit-depth
                                      :member-name "BitDepth" :json-name
                                      "bitDepth")
                                     (film-grain-synthesis :target-type
                                      av1film-grain-synthesis :member-name
                                      "FilmGrainSynthesis" :json-name
                                      "filmGrainSynthesis")
                                     (framerate-control :target-type
                                      av1framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      av1framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (gop-size :target-type double-min0
                                      :member-name "GopSize" :json-name
                                      "gopSize")
                                     (max-bitrate :target-type
                                      integer-min1000max1152000000 :member-name
                                      "MaxBitrate" :json-name "maxBitrate")
                                     (number-bframes-between-reference-frames
                                      :target-type integer-min0max15
                                      :member-name
                                      "NumberBFramesBetweenReferenceFrames"
                                      :json-name
                                      "numberBFramesBetweenReferenceFrames")
                                     (per-frame-metrics :target-type
                                      list-of-frame-metric-type :member-name
                                      "PerFrameMetrics" :json-name
                                      "perFrameMetrics")
                                     (qvbr-settings :target-type
                                      av1qvbr-settings :member-name
                                      "QvbrSettings" :json-name "qvbrSettings")
                                     (rate-control-mode :target-type
                                      av1rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode")
                                     (slices :target-type integer-min1max32
                                      :member-name "Slices" :json-name
                                      "slices")
                                     (spatial-adaptive-quantization
                                      :target-type
                                      av1spatial-adaptive-quantization
                                      :member-name
                                      "SpatialAdaptiveQuantization" :json-name
                                      "spatialAdaptiveQuantization"))
                                    (:shape-name "Av1Settings"))

(smithy/sdk/shapes:define-enum av1spatial-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure avail-blanking common-lisp:nil
                                    ((avail-blanking-image :target-type
                                      string-min14pattern-s3bmp-bmppng-pnghttps-bmp-bmppng-png
                                      :member-name "AvailBlankingImage"
                                      :json-name "availBlankingImage"))
                                    (:shape-name "AvailBlanking"))

(smithy/sdk/shapes:define-enum avc-intra-class
    common-lisp:nil
  (:class-50 "CLASS_50")
  (:class-100 "CLASS_100")
  (:class-200 "CLASS_200")
  (:class-4k-2k "CLASS_4K_2K"))

(smithy/sdk/shapes:define-enum avc-intra-framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum avc-intra-framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum avc-intra-interlace-mode
    common-lisp:nil
  (:progressive "PROGRESSIVE")
  (:top-field "TOP_FIELD")
  (:bottom-field "BOTTOM_FIELD")
  (:follow-top-field "FOLLOW_TOP_FIELD")
  (:follow-bottom-field "FOLLOW_BOTTOM_FIELD"))

(smithy/sdk/shapes:define-enum avc-intra-scan-type-conversion-mode
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:interlaced-optimize "INTERLACED_OPTIMIZE"))

(smithy/sdk/shapes:define-structure avc-intra-settings common-lisp:nil
                                    ((avc-intra-class :target-type
                                      avc-intra-class :member-name
                                      "AvcIntraClass" :json-name
                                      "avcIntraClass")
                                     (avc-intra-uhd-settings :target-type
                                      avc-intra-uhd-settings :member-name
                                      "AvcIntraUhdSettings" :json-name
                                      "avcIntraUhdSettings")
                                     (framerate-control :target-type
                                      avc-intra-framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      avc-intra-framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max1001 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min24max60000 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (interlace-mode :target-type
                                      avc-intra-interlace-mode :member-name
                                      "InterlaceMode" :json-name
                                      "interlaceMode")
                                     (per-frame-metrics :target-type
                                      list-of-frame-metric-type :member-name
                                      "PerFrameMetrics" :json-name
                                      "perFrameMetrics")
                                     (scan-type-conversion-mode :target-type
                                      avc-intra-scan-type-conversion-mode
                                      :member-name "ScanTypeConversionMode"
                                      :json-name "scanTypeConversionMode")
                                     (slow-pal :target-type avc-intra-slow-pal
                                      :member-name "SlowPal" :json-name
                                      "slowPal")
                                     (telecine :target-type avc-intra-telecine
                                      :member-name "Telecine" :json-name
                                      "telecine"))
                                    (:shape-name "AvcIntraSettings"))

(smithy/sdk/shapes:define-enum avc-intra-slow-pal
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum avc-intra-telecine
    common-lisp:nil
  (:none "NONE")
  (:hard "HARD"))

(smithy/sdk/shapes:define-enum avc-intra-uhd-quality-tuning-level
    common-lisp:nil
  (:single-pass "SINGLE_PASS")
  (:multi-pass "MULTI_PASS"))

(smithy/sdk/shapes:define-structure avc-intra-uhd-settings common-lisp:nil
                                    ((quality-tuning-level :target-type
                                      avc-intra-uhd-quality-tuning-level
                                      :member-name "QualityTuningLevel"
                                      :json-name "qualityTuningLevel"))
                                    (:shape-name "AvcIntraUhdSettings"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure bandwidth-reduction-filter common-lisp:nil
                                    ((sharpening :target-type
                                      bandwidth-reduction-filter-sharpening
                                      :member-name "Sharpening" :json-name
                                      "sharpening")
                                     (strength :target-type
                                      bandwidth-reduction-filter-strength
                                      :member-name "Strength" :json-name
                                      "strength"))
                                    (:shape-name "BandwidthReductionFilter"))

(smithy/sdk/shapes:define-enum bandwidth-reduction-filter-sharpening
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:off "OFF"))

(smithy/sdk/shapes:define-enum bandwidth-reduction-filter-strength
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:auto "AUTO")
  (:off "OFF"))

(smithy/sdk/shapes:define-enum billing-tags-source
    common-lisp:nil
  (:queue "QUEUE")
  (:preset "PRESET")
  (:job-template "JOB_TEMPLATE")
  (:job "JOB"))

(smithy/sdk/shapes:define-enum burn-in-subtitle-style-passthrough
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure burnin-destination-settings common-lisp:nil
                                    ((alignment :target-type
                                      burnin-subtitle-alignment :member-name
                                      "Alignment" :json-name "alignment")
                                     (apply-font-color :target-type
                                      burnin-subtitle-apply-font-color
                                      :member-name "ApplyFontColor" :json-name
                                      "applyFontColor")
                                     (background-color :target-type
                                      burnin-subtitle-background-color
                                      :member-name "BackgroundColor" :json-name
                                      "backgroundColor")
                                     (background-opacity :target-type
                                      integer-min0max255 :member-name
                                      "BackgroundOpacity" :json-name
                                      "backgroundOpacity")
                                     (fallback-font :target-type
                                      burnin-subtitle-fallback-font
                                      :member-name "FallbackFont" :json-name
                                      "fallbackFont")
                                     (font-color :target-type
                                      burnin-subtitle-font-color :member-name
                                      "FontColor" :json-name "fontColor")
                                     (font-file-bold :target-type
                                      string-pattern-s3ttf-https-ttf
                                      :member-name "FontFileBold" :json-name
                                      "fontFileBold")
                                     (font-file-bold-italic :target-type string
                                      :member-name "FontFileBoldItalic"
                                      :json-name "fontFileBoldItalic")
                                     (font-file-italic :target-type
                                      string-pattern-s3ttf-https-ttf
                                      :member-name "FontFileItalic" :json-name
                                      "fontFileItalic")
                                     (font-file-regular :target-type
                                      string-pattern-s3ttf-https-ttf
                                      :member-name "FontFileRegular" :json-name
                                      "fontFileRegular")
                                     (font-opacity :target-type
                                      integer-min0max255 :member-name
                                      "FontOpacity" :json-name "fontOpacity")
                                     (font-resolution :target-type
                                      integer-min96max600 :member-name
                                      "FontResolution" :json-name
                                      "fontResolution")
                                     (font-script :target-type font-script
                                      :member-name "FontScript" :json-name
                                      "fontScript")
                                     (font-size :target-type integer-min0max96
                                      :member-name "FontSize" :json-name
                                      "fontSize")
                                     (hex-font-color :target-type
                                      string-min6max8pattern09a-faf609a-faf2
                                      :member-name "HexFontColor" :json-name
                                      "hexFontColor")
                                     (outline-color :target-type
                                      burnin-subtitle-outline-color
                                      :member-name "OutlineColor" :json-name
                                      "outlineColor")
                                     (outline-size :target-type
                                      integer-min0max10 :member-name
                                      "OutlineSize" :json-name "outlineSize")
                                     (remove-ruby-reserve-attributes
                                      :target-type
                                      remove-ruby-reserve-attributes
                                      :member-name
                                      "RemoveRubyReserveAttributes" :json-name
                                      "removeRubyReserveAttributes")
                                     (shadow-color :target-type
                                      burnin-subtitle-shadow-color :member-name
                                      "ShadowColor" :json-name "shadowColor")
                                     (shadow-opacity :target-type
                                      integer-min0max255 :member-name
                                      "ShadowOpacity" :json-name
                                      "shadowOpacity")
                                     (shadow-xoffset :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "ShadowXOffset" :json-name
                                      "shadowXOffset")
                                     (shadow-yoffset :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "ShadowYOffset" :json-name
                                      "shadowYOffset")
                                     (style-passthrough :target-type
                                      burn-in-subtitle-style-passthrough
                                      :member-name "StylePassthrough"
                                      :json-name "stylePassthrough")
                                     (teletext-spacing :target-type
                                      burnin-subtitle-teletext-spacing
                                      :member-name "TeletextSpacing" :json-name
                                      "teletextSpacing")
                                     (xposition :target-type
                                      integer-min0max2147483647 :member-name
                                      "XPosition" :json-name "xPosition")
                                     (yposition :target-type
                                      integer-min0max2147483647 :member-name
                                      "YPosition" :json-name "yPosition"))
                                    (:shape-name "BurninDestinationSettings"))

(smithy/sdk/shapes:define-enum burnin-subtitle-alignment
    common-lisp:nil
  (:centered "CENTERED")
  (:left "LEFT")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum burnin-subtitle-apply-font-color
    common-lisp:nil
  (:white-text-only "WHITE_TEXT_ONLY")
  (:all-text "ALL_TEXT"))

(smithy/sdk/shapes:define-enum burnin-subtitle-background-color
    common-lisp:nil
  (:none "NONE")
  (:black "BLACK")
  (:white "WHITE")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum burnin-subtitle-fallback-font
    common-lisp:nil
  (:best-match "BEST_MATCH")
  (:monospaced-sansserif "MONOSPACED_SANSSERIF")
  (:monospaced-serif "MONOSPACED_SERIF")
  (:proportional-sansserif "PROPORTIONAL_SANSSERIF")
  (:proportional-serif "PROPORTIONAL_SERIF"))

(smithy/sdk/shapes:define-enum burnin-subtitle-font-color
    common-lisp:nil
  (:white "WHITE")
  (:black "BLACK")
  (:yellow "YELLOW")
  (:red "RED")
  (:green "GREEN")
  (:blue "BLUE")
  (:hex "HEX")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum burnin-subtitle-outline-color
    common-lisp:nil
  (:black "BLACK")
  (:white "WHITE")
  (:yellow "YELLOW")
  (:red "RED")
  (:green "GREEN")
  (:blue "BLUE")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum burnin-subtitle-shadow-color
    common-lisp:nil
  (:none "NONE")
  (:black "BLACK")
  (:white "WHITE")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum burnin-subtitle-teletext-spacing
    common-lisp:nil
  (:fixed-grid "FIXED_GRID")
  (:proportional "PROPORTIONAL")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-input cancel-job-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "CancelJobRequest"))

(smithy/sdk/shapes:define-output cancel-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelJobResponse"))

(smithy/sdk/shapes:define-structure caption-description common-lisp:nil
                                    ((caption-selector-name :target-type
                                      string-min1 :member-name
                                      "CaptionSelectorName" :json-name
                                      "captionSelectorName")
                                     (custom-language-code :target-type
                                      string-pattern-aza-z23aza-z :member-name
                                      "CustomLanguageCode" :json-name
                                      "customLanguageCode")
                                     (destination-settings :target-type
                                      caption-destination-settings :member-name
                                      "DestinationSettings" :json-name
                                      "destinationSettings")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (language-description :target-type string
                                      :member-name "LanguageDescription"
                                      :json-name "languageDescription"))
                                    (:shape-name "CaptionDescription"))

(smithy/sdk/shapes:define-structure caption-description-preset common-lisp:nil
                                    ((custom-language-code :target-type
                                      string-pattern-aza-z23aza-z :member-name
                                      "CustomLanguageCode" :json-name
                                      "customLanguageCode")
                                     (destination-settings :target-type
                                      caption-destination-settings :member-name
                                      "DestinationSettings" :json-name
                                      "destinationSettings")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (language-description :target-type string
                                      :member-name "LanguageDescription"
                                      :json-name "languageDescription"))
                                    (:shape-name "CaptionDescriptionPreset"))

(smithy/sdk/shapes:define-structure caption-destination-settings
                                    common-lisp:nil
                                    ((burnin-destination-settings :target-type
                                      burnin-destination-settings :member-name
                                      "BurninDestinationSettings" :json-name
                                      "burninDestinationSettings")
                                     (destination-type :target-type
                                      caption-destination-type :member-name
                                      "DestinationType" :json-name
                                      "destinationType")
                                     (dvb-sub-destination-settings :target-type
                                      dvb-sub-destination-settings :member-name
                                      "DvbSubDestinationSettings" :json-name
                                      "dvbSubDestinationSettings")
                                     (embedded-destination-settings
                                      :target-type
                                      embedded-destination-settings
                                      :member-name
                                      "EmbeddedDestinationSettings" :json-name
                                      "embeddedDestinationSettings")
                                     (imsc-destination-settings :target-type
                                      imsc-destination-settings :member-name
                                      "ImscDestinationSettings" :json-name
                                      "imscDestinationSettings")
                                     (scc-destination-settings :target-type
                                      scc-destination-settings :member-name
                                      "SccDestinationSettings" :json-name
                                      "sccDestinationSettings")
                                     (srt-destination-settings :target-type
                                      srt-destination-settings :member-name
                                      "SrtDestinationSettings" :json-name
                                      "srtDestinationSettings")
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

(smithy/sdk/shapes:define-enum caption-destination-type
    common-lisp:nil
  (:burn-in "BURN_IN")
  (:dvb-sub "DVB_SUB")
  (:embedded "EMBEDDED")
  (:embedded-plus-scte20 "EMBEDDED_PLUS_SCTE20")
  (:imsc "IMSC")
  (:scte20-plus-embedded "SCTE20_PLUS_EMBEDDED")
  (:scc "SCC")
  (:srt "SRT")
  (:smi "SMI")
  (:teletext "TELETEXT")
  (:ttml "TTML")
  (:webvtt "WEBVTT"))

(smithy/sdk/shapes:define-structure caption-selector common-lisp:nil
                                    ((custom-language-code :target-type
                                      string-min3max3pattern-aza-z3
                                      :member-name "CustomLanguageCode"
                                      :json-name "customLanguageCode")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (source-settings :target-type
                                      caption-source-settings :member-name
                                      "SourceSettings" :json-name
                                      "sourceSettings"))
                                    (:shape-name "CaptionSelector"))

(smithy/sdk/shapes:define-enum caption-source-byte-rate-limit
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum caption-source-convert-paint-on-to-pop-on
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure caption-source-framerate common-lisp:nil
                                    ((framerate-denominator :target-type
                                      integer-min1max1001 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max60000 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator"))
                                    (:shape-name "CaptionSourceFramerate"))

(smithy/sdk/shapes:define-structure caption-source-settings common-lisp:nil
                                    ((ancillary-source-settings :target-type
                                      ancillary-source-settings :member-name
                                      "AncillarySourceSettings" :json-name
                                      "ancillarySourceSettings")
                                     (dvb-sub-source-settings :target-type
                                      dvb-sub-source-settings :member-name
                                      "DvbSubSourceSettings" :json-name
                                      "dvbSubSourceSettings")
                                     (embedded-source-settings :target-type
                                      embedded-source-settings :member-name
                                      "EmbeddedSourceSettings" :json-name
                                      "embeddedSourceSettings")
                                     (file-source-settings :target-type
                                      file-source-settings :member-name
                                      "FileSourceSettings" :json-name
                                      "fileSourceSettings")
                                     (source-type :target-type
                                      caption-source-type :member-name
                                      "SourceType" :json-name "sourceType")
                                     (teletext-source-settings :target-type
                                      teletext-source-settings :member-name
                                      "TeletextSourceSettings" :json-name
                                      "teletextSourceSettings")
                                     (track-source-settings :target-type
                                      track-source-settings :member-name
                                      "TrackSourceSettings" :json-name
                                      "trackSourceSettings")
                                     (webvtt-hls-source-settings :target-type
                                      webvtt-hls-source-settings :member-name
                                      "WebvttHlsSourceSettings" :json-name
                                      "webvttHlsSourceSettings"))
                                    (:shape-name "CaptionSourceSettings"))

(smithy/sdk/shapes:define-enum caption-source-type
    common-lisp:nil
  (:ancillary "ANCILLARY")
  (:dvb-sub "DVB_SUB")
  (:embedded "EMBEDDED")
  (:scte20 "SCTE20")
  (:scc "SCC")
  (:ttml "TTML")
  (:stl "STL")
  (:srt "SRT")
  (:smi "SMI")
  (:smpte-tt "SMPTE_TT")
  (:teletext "TELETEXT")
  (:null-source "NULL_SOURCE")
  (:imsc "IMSC")
  (:webvtt "WEBVTT"))

(smithy/sdk/shapes:define-enum caption-source-upconvert-stlto-teletext
    common-lisp:nil
  (:upconvert "UPCONVERT")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure channel-mapping common-lisp:nil
                                    ((output-channels :target-type
                                      list-of-output-channel-mapping
                                      :member-name "OutputChannels" :json-name
                                      "outputChannels"))
                                    (:shape-name "ChannelMapping"))

(smithy/sdk/shapes:define-enum chroma-position-mode
    common-lisp:nil
  (:auto "AUTO")
  (:force-center "FORCE_CENTER")
  (:force-top-left "FORCE_TOP_LEFT"))

(smithy/sdk/shapes:define-structure clip-limits common-lisp:nil
                                    ((maximum-rgbtolerance :target-type
                                      integer-min90max105 :member-name
                                      "MaximumRGBTolerance" :json-name
                                      "maximumRGBTolerance")
                                     (maximum-yuv :target-type
                                      integer-min920max1023 :member-name
                                      "MaximumYUV" :json-name "maximumYUV")
                                     (minimum-rgbtolerance :target-type
                                      integer-min-negative5max10 :member-name
                                      "MinimumRGBTolerance" :json-name
                                      "minimumRGBTolerance")
                                     (minimum-yuv :target-type
                                      integer-min0max128 :member-name
                                      "MinimumYUV" :json-name "minimumYUV"))
                                    (:shape-name "ClipLimits"))

(smithy/sdk/shapes:define-structure cmaf-additional-manifest common-lisp:nil
                                    ((manifest-name-modifier :target-type
                                      string-min1 :member-name
                                      "ManifestNameModifier" :json-name
                                      "manifestNameModifier")
                                     (selected-outputs :target-type
                                      list-of-string-min1 :member-name
                                      "SelectedOutputs" :json-name
                                      "selectedOutputs"))
                                    (:shape-name "CmafAdditionalManifest"))

(smithy/sdk/shapes:define-enum cmaf-client-cache
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum cmaf-codec-specification
    common-lisp:nil
  (:rfc-6381 "RFC_6381")
  (:rfc-4281 "RFC_4281"))

(smithy/sdk/shapes:define-structure cmaf-encryption-settings common-lisp:nil
                                    ((constant-initialization-vector
                                      :target-type
                                      string-min32max32pattern09a-faf32
                                      :member-name
                                      "ConstantInitializationVector" :json-name
                                      "constantInitializationVector")
                                     (encryption-method :target-type
                                      cmaf-encryption-type :member-name
                                      "EncryptionMethod" :json-name
                                      "encryptionMethod")
                                     (initialization-vector-in-manifest
                                      :target-type
                                      cmaf-initialization-vector-in-manifest
                                      :member-name
                                      "InitializationVectorInManifest"
                                      :json-name
                                      "initializationVectorInManifest")
                                     (speke-key-provider :target-type
                                      speke-key-provider-cmaf :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider")
                                     (static-key-provider :target-type
                                      static-key-provider :member-name
                                      "StaticKeyProvider" :json-name
                                      "staticKeyProvider")
                                     (type :target-type cmaf-key-provider-type
                                      :member-name "Type" :json-name "type"))
                                    (:shape-name "CmafEncryptionSettings"))

(smithy/sdk/shapes:define-enum cmaf-encryption-type
    common-lisp:nil
  (:sample-aes "SAMPLE_AES")
  (:aes-ctr "AES_CTR"))

(smithy/sdk/shapes:define-structure cmaf-group-settings common-lisp:nil
                                    ((additional-manifests :target-type
                                      list-of-cmaf-additional-manifest
                                      :member-name "AdditionalManifests"
                                      :json-name "additionalManifests")
                                     (base-url :target-type string :member-name
                                      "BaseUrl" :json-name "baseUrl")
                                     (client-cache :target-type
                                      cmaf-client-cache :member-name
                                      "ClientCache" :json-name "clientCache")
                                     (codec-specification :target-type
                                      cmaf-codec-specification :member-name
                                      "CodecSpecification" :json-name
                                      "codecSpecification")
                                     (dash-iframe-trick-play-name-modifier
                                      :target-type string-min1max256
                                      :member-name
                                      "DashIFrameTrickPlayNameModifier"
                                      :json-name
                                      "dashIFrameTrickPlayNameModifier")
                                     (dash-manifest-style :target-type
                                      dash-manifest-style :member-name
                                      "DashManifestStyle" :json-name
                                      "dashManifestStyle")
                                     (destination :target-type
                                      string-pattern-s3 :member-name
                                      "Destination" :json-name "destination")
                                     (destination-settings :target-type
                                      destination-settings :member-name
                                      "DestinationSettings" :json-name
                                      "destinationSettings")
                                     (encryption :target-type
                                      cmaf-encryption-settings :member-name
                                      "Encryption" :json-name "encryption")
                                     (fragment-length :target-type
                                      integer-min1max2147483647 :member-name
                                      "FragmentLength" :json-name
                                      "fragmentLength")
                                     (image-based-trick-play :target-type
                                      cmaf-image-based-trick-play :member-name
                                      "ImageBasedTrickPlay" :json-name
                                      "imageBasedTrickPlay")
                                     (image-based-trick-play-settings
                                      :target-type
                                      cmaf-image-based-trick-play-settings
                                      :member-name
                                      "ImageBasedTrickPlaySettings" :json-name
                                      "imageBasedTrickPlaySettings")
                                     (manifest-compression :target-type
                                      cmaf-manifest-compression :member-name
                                      "ManifestCompression" :json-name
                                      "manifestCompression")
                                     (manifest-duration-format :target-type
                                      cmaf-manifest-duration-format
                                      :member-name "ManifestDurationFormat"
                                      :json-name "manifestDurationFormat")
                                     (min-buffer-time :target-type
                                      integer-min0max2147483647 :member-name
                                      "MinBufferTime" :json-name
                                      "minBufferTime")
                                     (min-final-segment-length :target-type
                                      double-min0max2147483647 :member-name
                                      "MinFinalSegmentLength" :json-name
                                      "minFinalSegmentLength")
                                     (mpd-manifest-bandwidth-type :target-type
                                      cmaf-mpd-manifest-bandwidth-type
                                      :member-name "MpdManifestBandwidthType"
                                      :json-name "mpdManifestBandwidthType")
                                     (mpd-profile :target-type cmaf-mpd-profile
                                      :member-name "MpdProfile" :json-name
                                      "mpdProfile")
                                     (pts-offset-handling-for-bframes
                                      :target-type
                                      cmaf-pts-offset-handling-for-bframes
                                      :member-name
                                      "PtsOffsetHandlingForBFrames" :json-name
                                      "ptsOffsetHandlingForBFrames")
                                     (segment-control :target-type
                                      cmaf-segment-control :member-name
                                      "SegmentControl" :json-name
                                      "segmentControl")
                                     (segment-length :target-type
                                      integer-min1max2147483647 :member-name
                                      "SegmentLength" :json-name
                                      "segmentLength")
                                     (segment-length-control :target-type
                                      cmaf-segment-length-control :member-name
                                      "SegmentLengthControl" :json-name
                                      "segmentLengthControl")
                                     (stream-inf-resolution :target-type
                                      cmaf-stream-inf-resolution :member-name
                                      "StreamInfResolution" :json-name
                                      "streamInfResolution")
                                     (target-duration-compatibility-mode
                                      :target-type
                                      cmaf-target-duration-compatibility-mode
                                      :member-name
                                      "TargetDurationCompatibilityMode"
                                      :json-name
                                      "targetDurationCompatibilityMode")
                                     (video-composition-offsets :target-type
                                      cmaf-video-composition-offsets
                                      :member-name "VideoCompositionOffsets"
                                      :json-name "videoCompositionOffsets")
                                     (write-dash-manifest :target-type
                                      cmaf-write-dashmanifest :member-name
                                      "WriteDashManifest" :json-name
                                      "writeDashManifest")
                                     (write-hls-manifest :target-type
                                      cmaf-write-hlsmanifest :member-name
                                      "WriteHlsManifest" :json-name
                                      "writeHlsManifest")
                                     (write-segment-timeline-in-representation
                                      :target-type
                                      cmaf-write-segment-timeline-in-representation
                                      :member-name
                                      "WriteSegmentTimelineInRepresentation"
                                      :json-name
                                      "writeSegmentTimelineInRepresentation"))
                                    (:shape-name "CmafGroupSettings"))

(smithy/sdk/shapes:define-enum cmaf-image-based-trick-play
    common-lisp:nil
  (:none "NONE")
  (:thumbnail "THUMBNAIL")
  (:thumbnail-and-fullframe "THUMBNAIL_AND_FULLFRAME")
  (:advanced "ADVANCED"))

(smithy/sdk/shapes:define-structure cmaf-image-based-trick-play-settings
                                    common-lisp:nil
                                    ((interval-cadence :target-type
                                      cmaf-interval-cadence :member-name
                                      "IntervalCadence" :json-name
                                      "intervalCadence")
                                     (thumbnail-height :target-type
                                      integer-min2max4096 :member-name
                                      "ThumbnailHeight" :json-name
                                      "thumbnailHeight")
                                     (thumbnail-interval :target-type
                                      double-min0max2147483647 :member-name
                                      "ThumbnailInterval" :json-name
                                      "thumbnailInterval")
                                     (thumbnail-width :target-type
                                      integer-min8max4096 :member-name
                                      "ThumbnailWidth" :json-name
                                      "thumbnailWidth")
                                     (tile-height :target-type
                                      integer-min1max2048 :member-name
                                      "TileHeight" :json-name "tileHeight")
                                     (tile-width :target-type
                                      integer-min1max512 :member-name
                                      "TileWidth" :json-name "tileWidth"))
                                    (:shape-name
                                     "CmafImageBasedTrickPlaySettings"))

(smithy/sdk/shapes:define-enum cmaf-initialization-vector-in-manifest
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum cmaf-interval-cadence
    common-lisp:nil
  (:follow-iframe "FOLLOW_IFRAME")
  (:follow-custom "FOLLOW_CUSTOM"))

(smithy/sdk/shapes:define-enum cmaf-key-provider-type
    common-lisp:nil
  (:speke "SPEKE")
  (:static-key "STATIC_KEY"))

(smithy/sdk/shapes:define-enum cmaf-manifest-compression
    common-lisp:nil
  (:gzip "GZIP")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum cmaf-manifest-duration-format
    common-lisp:nil
  (:floating-point "FLOATING_POINT")
  (:integer "INTEGER"))

(smithy/sdk/shapes:define-enum cmaf-mpd-manifest-bandwidth-type
    common-lisp:nil
  (:average "AVERAGE")
  (:max "MAX"))

(smithy/sdk/shapes:define-enum cmaf-mpd-profile
    common-lisp:nil
  (:main-profile "MAIN_PROFILE")
  (:on-demand-profile "ON_DEMAND_PROFILE"))

(smithy/sdk/shapes:define-enum cmaf-pts-offset-handling-for-bframes
    common-lisp:nil
  (:zero-based "ZERO_BASED")
  (:match-initial-pts "MATCH_INITIAL_PTS"))

(smithy/sdk/shapes:define-enum cmaf-segment-control
    common-lisp:nil
  (:single-file "SINGLE_FILE")
  (:segmented-files "SEGMENTED_FILES"))

(smithy/sdk/shapes:define-enum cmaf-segment-length-control
    common-lisp:nil
  (:exact "EXACT")
  (:gop-multiple "GOP_MULTIPLE")
  (:match "MATCH"))

(smithy/sdk/shapes:define-enum cmaf-stream-inf-resolution
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum cmaf-target-duration-compatibility-mode
    common-lisp:nil
  (:legacy "LEGACY")
  (:spec-compliant "SPEC_COMPLIANT"))

(smithy/sdk/shapes:define-enum cmaf-video-composition-offsets
    common-lisp:nil
  (:signed "SIGNED")
  (:unsigned "UNSIGNED"))

(smithy/sdk/shapes:define-enum cmaf-write-dashmanifest
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum cmaf-write-hlsmanifest
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum cmaf-write-segment-timeline-in-representation
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum cmfc-audio-duration
    common-lisp:nil
  (:default-codec-duration "DEFAULT_CODEC_DURATION")
  (:match-video-duration "MATCH_VIDEO_DURATION"))

(smithy/sdk/shapes:define-enum cmfc-audio-track-type
    common-lisp:nil
  (:alternate-audio-auto-select-default "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT")
  (:alternate-audio-auto-select "ALTERNATE_AUDIO_AUTO_SELECT")
  (:alternate-audio-not-auto-select "ALTERNATE_AUDIO_NOT_AUTO_SELECT")
  (:audio-only-variant-stream "AUDIO_ONLY_VARIANT_STREAM"))

(smithy/sdk/shapes:define-enum cmfc-descriptive-video-service-flag
    common-lisp:nil
  (:dont-flag "DONT_FLAG")
  (:flag "FLAG"))

(smithy/sdk/shapes:define-enum cmfc-iframe-only-manifest
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum cmfc-klv-metadata
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum cmfc-manifest-metadata-signaling
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum cmfc-scte35esam
    common-lisp:nil
  (:insert "INSERT")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum cmfc-scte35source
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure cmfc-settings common-lisp:nil
                                    ((audio-duration :target-type
                                      cmfc-audio-duration :member-name
                                      "AudioDuration" :json-name
                                      "audioDuration")
                                     (audio-group-id :target-type string
                                      :member-name "AudioGroupId" :json-name
                                      "audioGroupId")
                                     (audio-rendition-sets :target-type string
                                      :member-name "AudioRenditionSets"
                                      :json-name "audioRenditionSets")
                                     (audio-track-type :target-type
                                      cmfc-audio-track-type :member-name
                                      "AudioTrackType" :json-name
                                      "audioTrackType")
                                     (descriptive-video-service-flag
                                      :target-type
                                      cmfc-descriptive-video-service-flag
                                      :member-name
                                      "DescriptiveVideoServiceFlag" :json-name
                                      "descriptiveVideoServiceFlag")
                                     (iframe-only-manifest :target-type
                                      cmfc-iframe-only-manifest :member-name
                                      "IFrameOnlyManifest" :json-name
                                      "iFrameOnlyManifest")
                                     (klv-metadata :target-type
                                      cmfc-klv-metadata :member-name
                                      "KlvMetadata" :json-name "klvMetadata")
                                     (manifest-metadata-signaling :target-type
                                      cmfc-manifest-metadata-signaling
                                      :member-name "ManifestMetadataSignaling"
                                      :json-name "manifestMetadataSignaling")
                                     (scte35esam :target-type cmfc-scte35esam
                                      :member-name "Scte35Esam" :json-name
                                      "scte35Esam")
                                     (scte35source :target-type
                                      cmfc-scte35source :member-name
                                      "Scte35Source" :json-name "scte35Source")
                                     (timed-metadata :target-type
                                      cmfc-timed-metadata :member-name
                                      "TimedMetadata" :json-name
                                      "timedMetadata")
                                     (timed-metadata-box-version :target-type
                                      cmfc-timed-metadata-box-version
                                      :member-name "TimedMetadataBoxVersion"
                                      :json-name "timedMetadataBoxVersion")
                                     (timed-metadata-scheme-id-uri :target-type
                                      string-max1000 :member-name
                                      "TimedMetadataSchemeIdUri" :json-name
                                      "timedMetadataSchemeIdUri")
                                     (timed-metadata-value :target-type
                                      string-max1000 :member-name
                                      "TimedMetadataValue" :json-name
                                      "timedMetadataValue"))
                                    (:shape-name "CmfcSettings"))

(smithy/sdk/shapes:define-enum cmfc-timed-metadata
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum cmfc-timed-metadata-box-version
    common-lisp:nil
  (:version-0 "VERSION_0")
  (:version-1 "VERSION_1"))

(smithy/sdk/shapes:define-enum codec
    common-lisp:nil
  (:unknown "UNKNOWN")
  (:aac "AAC")
  (:ac3 "AC3")
  (:eac3 "EAC3")
  (:flac "FLAC")
  (:mp3 "MP3")
  (:opus "OPUS")
  (:pcm "PCM")
  (:vorbis "VORBIS")
  (:av1 "AV1")
  (:avc "AVC")
  (:hevc "HEVC")
  (:jpeg2000 "JPEG2000")
  (:mjpeg "MJPEG")
  (:mp4v "MP4V")
  (:mpeg2 "MPEG2")
  (:prores "PRORES")
  (:theora "THEORA")
  (:vp8 "VP8")
  (:vp9 "VP9")
  (:c608 "C608")
  (:c708 "C708")
  (:webvtt "WEBVTT"))

(smithy/sdk/shapes:define-structure color-conversion3dlutsetting
                                    common-lisp:nil
                                    ((file-input :target-type
                                      string-min14pattern-s3cube-cubehttps-cube-cube
                                      :member-name "FileInput" :json-name
                                      "fileInput")
                                     (input-color-space :target-type
                                      color-space :member-name
                                      "InputColorSpace" :json-name
                                      "inputColorSpace")
                                     (input-mastering-luminance :target-type
                                      integer-min0max2147483647 :member-name
                                      "InputMasteringLuminance" :json-name
                                      "inputMasteringLuminance")
                                     (output-color-space :target-type
                                      color-space :member-name
                                      "OutputColorSpace" :json-name
                                      "outputColorSpace")
                                     (output-mastering-luminance :target-type
                                      integer-min0max2147483647 :member-name
                                      "OutputMasteringLuminance" :json-name
                                      "outputMasteringLuminance"))
                                    (:shape-name "ColorConversion3DLUTSetting"))

(smithy/sdk/shapes:define-structure color-corrector common-lisp:nil
                                    ((brightness :target-type
                                      integer-min1max100 :member-name
                                      "Brightness" :json-name "brightness")
                                     (clip-limits :target-type clip-limits
                                      :member-name "ClipLimits" :json-name
                                      "clipLimits")
                                     (color-space-conversion :target-type
                                      color-space-conversion :member-name
                                      "ColorSpaceConversion" :json-name
                                      "colorSpaceConversion")
                                     (contrast :target-type integer-min1max100
                                      :member-name "Contrast" :json-name
                                      "contrast")
                                     (hdr10metadata :target-type hdr10metadata
                                      :member-name "Hdr10Metadata" :json-name
                                      "hdr10Metadata")
                                     (hdr-to-sdr-tone-mapper :target-type
                                      hdrto-sdrtone-mapper :member-name
                                      "HdrToSdrToneMapper" :json-name
                                      "hdrToSdrToneMapper")
                                     (hue :target-type
                                      integer-min-negative180max180
                                      :member-name "Hue" :json-name "hue")
                                     (max-luminance :target-type
                                      integer-min0max2147483647 :member-name
                                      "MaxLuminance" :json-name "maxLuminance")
                                     (sample-range-conversion :target-type
                                      sample-range-conversion :member-name
                                      "SampleRangeConversion" :json-name
                                      "sampleRangeConversion")
                                     (saturation :target-type
                                      integer-min1max100 :member-name
                                      "Saturation" :json-name "saturation")
                                     (sdr-reference-white-level :target-type
                                      integer-min100max1000 :member-name
                                      "SdrReferenceWhiteLevel" :json-name
                                      "sdrReferenceWhiteLevel"))
                                    (:shape-name "ColorCorrector"))

(smithy/sdk/shapes:define-enum color-metadata
    common-lisp:nil
  (:ignore "IGNORE")
  (:insert "INSERT"))

(smithy/sdk/shapes:define-enum color-primaries
    common-lisp:nil
  (:itu-709 "ITU_709")
  (:unspecified "UNSPECIFIED")
  (:reserved "RESERVED")
  (:itu-470m "ITU_470M")
  (:itu-470bg "ITU_470BG")
  (:smpte-170m "SMPTE_170M")
  (:smpte-240m "SMPTE_240M")
  (:generic-film "GENERIC_FILM")
  (:itu-2020 "ITU_2020")
  (:smpte-428-1 "SMPTE_428_1")
  (:smpte-431-2 "SMPTE_431_2")
  (:smpte-eg-432-1 "SMPTE_EG_432_1")
  (:ipt "IPT")
  (:smpte-2067xyz "SMPTE_2067XYZ")
  (:ebu-3213-e "EBU_3213_E")
  (:last "LAST"))

(smithy/sdk/shapes:define-enum color-space
    common-lisp:nil
  (:follow "FOLLOW")
  (:rec-601 "REC_601")
  (:rec-709 "REC_709")
  (:hdr10 "HDR10")
  (:hlg-2020 "HLG_2020")
  (:p3dci "P3DCI")
  (:p3d65-sdr "P3D65_SDR")
  (:p3d65-hdr "P3D65_HDR"))

(smithy/sdk/shapes:define-enum color-space-conversion
    common-lisp:nil
  (:none "NONE")
  (:force-601 "FORCE_601")
  (:force-709 "FORCE_709")
  (:force-hdr10 "FORCE_HDR10")
  (:force-hlg-2020 "FORCE_HLG_2020")
  (:force-p3dci "FORCE_P3DCI")
  (:force-p3d65-sdr "FORCE_P3D65_SDR")
  (:force-p3d65-hdr "FORCE_P3D65_HDR"))

(smithy/sdk/shapes:define-enum color-space-usage
    common-lisp:nil
  (:force "FORCE")
  (:fallback "FALLBACK"))

(smithy/sdk/shapes:define-enum commitment
    common-lisp:nil
  (:one-year "ONE_YEAR"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure container common-lisp:nil
                                    ((duration :target-type double :member-name
                                      "Duration" :json-name "duration")
                                     (format :target-type format :member-name
                                      "Format" :json-name "format")
                                     (tracks :target-type list-of-track
                                      :member-name "Tracks" :json-name
                                      "tracks"))
                                    (:shape-name "Container"))

(smithy/sdk/shapes:define-structure container-settings common-lisp:nil
                                    ((cmfc-settings :target-type cmfc-settings
                                      :member-name "CmfcSettings" :json-name
                                      "cmfcSettings")
                                     (container :target-type container-type
                                      :member-name "Container" :json-name
                                      "container")
                                     (f4v-settings :target-type f4v-settings
                                      :member-name "F4vSettings" :json-name
                                      "f4vSettings")
                                     (m2ts-settings :target-type m2ts-settings
                                      :member-name "M2tsSettings" :json-name
                                      "m2tsSettings")
                                     (m3u8settings :target-type m3u8settings
                                      :member-name "M3u8Settings" :json-name
                                      "m3u8Settings")
                                     (mov-settings :target-type mov-settings
                                      :member-name "MovSettings" :json-name
                                      "movSettings")
                                     (mp4settings :target-type mp4settings
                                      :member-name "Mp4Settings" :json-name
                                      "mp4Settings")
                                     (mpd-settings :target-type mpd-settings
                                      :member-name "MpdSettings" :json-name
                                      "mpdSettings")
                                     (mxf-settings :target-type mxf-settings
                                      :member-name "MxfSettings" :json-name
                                      "mxfSettings"))
                                    (:shape-name "ContainerSettings"))

(smithy/sdk/shapes:define-enum container-type
    common-lisp:nil
  (:f4v "F4V")
  (:gif "GIF")
  (:ismv "ISMV")
  (:m2ts "M2TS")
  (:m3u8 "M3U8")
  (:cmfc "CMFC")
  (:mov "MOV")
  (:mp4 "MP4")
  (:mpd "MPD")
  (:mxf "MXF")
  (:ogg "OGG")
  (:webm "WEBM")
  (:raw "RAW")
  (:y4m "Y4M"))

(smithy/sdk/shapes:define-enum copy-protection-action
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:strip "STRIP"))

(smithy/sdk/shapes:define-input create-job-request common-lisp:nil
                                ((acceleration-settings :target-type
                                  acceleration-settings :member-name
                                  "AccelerationSettings" :json-name
                                  "accelerationSettings")
                                 (billing-tags-source :target-type
                                  billing-tags-source :member-name
                                  "BillingTagsSource" :json-name
                                  "billingTagsSource")
                                 (client-request-token :target-type string
                                  :member-name "ClientRequestToken" :json-name
                                  "clientRequestToken")
                                 (hop-destinations :target-type
                                  list-of-hop-destination :member-name
                                  "HopDestinations" :json-name
                                  "hopDestinations")
                                 (job-engine-version :target-type string
                                  :member-name "JobEngineVersion" :json-name
                                  "jobEngineVersion")
                                 (job-template :target-type string :member-name
                                  "JobTemplate" :json-name "jobTemplate")
                                 (priority :target-type
                                  integer-min-negative50max50 :member-name
                                  "Priority" :json-name "priority")
                                 (queue :target-type string :member-name
                                  "Queue" :json-name "queue")
                                 (role :target-type string :required
                                  common-lisp:t :member-name "Role" :json-name
                                  "role")
                                 (settings :target-type job-settings :required
                                  common-lisp:t :member-name "Settings"
                                  :json-name "settings")
                                 (simulate-reserved-queue :target-type
                                  simulate-reserved-queue :member-name
                                  "SimulateReservedQueue" :json-name
                                  "simulateReservedQueue")
                                 (status-update-interval :target-type
                                  status-update-interval :member-name
                                  "StatusUpdateInterval" :json-name
                                  "statusUpdateInterval")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags")
                                 (user-metadata :target-type map-of-string
                                  :member-name "UserMetadata" :json-name
                                  "userMetadata"))
                                (:shape-name "CreateJobRequest"))

(smithy/sdk/shapes:define-output create-job-response common-lisp:nil
                                 ((job :target-type job :member-name "Job"
                                   :json-name "job"))
                                 (:shape-name "CreateJobResponse"))

(smithy/sdk/shapes:define-input create-job-template-request common-lisp:nil
                                ((acceleration-settings :target-type
                                  acceleration-settings :member-name
                                  "AccelerationSettings" :json-name
                                  "accelerationSettings")
                                 (category :target-type string :member-name
                                  "Category" :json-name "category")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (hop-destinations :target-type
                                  list-of-hop-destination :member-name
                                  "HopDestinations" :json-name
                                  "hopDestinations")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (priority :target-type
                                  integer-min-negative50max50 :member-name
                                  "Priority" :json-name "priority")
                                 (queue :target-type string :member-name
                                  "Queue" :json-name "queue")
                                 (settings :target-type job-template-settings
                                  :required common-lisp:t :member-name
                                  "Settings" :json-name "settings")
                                 (status-update-interval :target-type
                                  status-update-interval :member-name
                                  "StatusUpdateInterval" :json-name
                                  "statusUpdateInterval")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags"))
                                (:shape-name "CreateJobTemplateRequest"))

(smithy/sdk/shapes:define-output create-job-template-response common-lisp:nil
                                 ((job-template :target-type job-template
                                   :member-name "JobTemplate" :json-name
                                   "jobTemplate"))
                                 (:shape-name "CreateJobTemplateResponse"))

(smithy/sdk/shapes:define-input create-preset-request common-lisp:nil
                                ((category :target-type string :member-name
                                  "Category" :json-name "category")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (settings :target-type preset-settings
                                  :required common-lisp:t :member-name
                                  "Settings" :json-name "settings")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags"))
                                (:shape-name "CreatePresetRequest"))

(smithy/sdk/shapes:define-output create-preset-response common-lisp:nil
                                 ((preset :target-type preset :member-name
                                   "Preset" :json-name "preset"))
                                 (:shape-name "CreatePresetResponse"))

(smithy/sdk/shapes:define-input create-queue-request common-lisp:nil
                                ((concurrent-jobs :target-type integer
                                  :member-name "ConcurrentJobs" :json-name
                                  "concurrentJobs")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (pricing-plan :target-type pricing-plan
                                  :member-name "PricingPlan" :json-name
                                  "pricingPlan")
                                 (reservation-plan-settings :target-type
                                  reservation-plan-settings :member-name
                                  "ReservationPlanSettings" :json-name
                                  "reservationPlanSettings")
                                 (status :target-type queue-status :member-name
                                  "Status" :json-name "status")
                                 (tags :target-type map-of-string :member-name
                                  "Tags" :json-name "tags"))
                                (:shape-name "CreateQueueRequest"))

(smithy/sdk/shapes:define-output create-queue-response common-lisp:nil
                                 ((queue :target-type queue :member-name
                                   "Queue" :json-name "queue"))
                                 (:shape-name "CreateQueueResponse"))

(smithy/sdk/shapes:define-structure dash-additional-manifest common-lisp:nil
                                    ((manifest-name-modifier :target-type
                                      string-min1 :member-name
                                      "ManifestNameModifier" :json-name
                                      "manifestNameModifier")
                                     (selected-outputs :target-type
                                      list-of-string-min1 :member-name
                                      "SelectedOutputs" :json-name
                                      "selectedOutputs"))
                                    (:shape-name "DashAdditionalManifest"))

(smithy/sdk/shapes:define-structure dash-iso-encryption-settings
                                    common-lisp:nil
                                    ((playback-device-compatibility
                                      :target-type
                                      dash-iso-playback-device-compatibility
                                      :member-name
                                      "PlaybackDeviceCompatibility" :json-name
                                      "playbackDeviceCompatibility")
                                     (speke-key-provider :target-type
                                      speke-key-provider :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "DashIsoEncryptionSettings"))

(smithy/sdk/shapes:define-enum dash-iso-group-audio-channel-config-scheme-id-uri
    common-lisp:nil
  (:mpeg-channel-configuration "MPEG_CHANNEL_CONFIGURATION")
  (:dolby-channel-configuration "DOLBY_CHANNEL_CONFIGURATION"))

(smithy/sdk/shapes:define-structure dash-iso-group-settings common-lisp:nil
                                    ((additional-manifests :target-type
                                      list-of-dash-additional-manifest
                                      :member-name "AdditionalManifests"
                                      :json-name "additionalManifests")
                                     (audio-channel-config-scheme-id-uri
                                      :target-type
                                      dash-iso-group-audio-channel-config-scheme-id-uri
                                      :member-name
                                      "AudioChannelConfigSchemeIdUri"
                                      :json-name
                                      "audioChannelConfigSchemeIdUri")
                                     (base-url :target-type string :member-name
                                      "BaseUrl" :json-name "baseUrl")
                                     (dash-iframe-trick-play-name-modifier
                                      :target-type string-min1max256
                                      :member-name
                                      "DashIFrameTrickPlayNameModifier"
                                      :json-name
                                      "dashIFrameTrickPlayNameModifier")
                                     (dash-manifest-style :target-type
                                      dash-manifest-style :member-name
                                      "DashManifestStyle" :json-name
                                      "dashManifestStyle")
                                     (destination :target-type
                                      string-pattern-s3 :member-name
                                      "Destination" :json-name "destination")
                                     (destination-settings :target-type
                                      destination-settings :member-name
                                      "DestinationSettings" :json-name
                                      "destinationSettings")
                                     (encryption :target-type
                                      dash-iso-encryption-settings :member-name
                                      "Encryption" :json-name "encryption")
                                     (fragment-length :target-type
                                      integer-min1max2147483647 :member-name
                                      "FragmentLength" :json-name
                                      "fragmentLength")
                                     (hbbtv-compliance :target-type
                                      dash-iso-hbbtv-compliance :member-name
                                      "HbbtvCompliance" :json-name
                                      "hbbtvCompliance")
                                     (image-based-trick-play :target-type
                                      dash-iso-image-based-trick-play
                                      :member-name "ImageBasedTrickPlay"
                                      :json-name "imageBasedTrickPlay")
                                     (image-based-trick-play-settings
                                      :target-type
                                      dash-iso-image-based-trick-play-settings
                                      :member-name
                                      "ImageBasedTrickPlaySettings" :json-name
                                      "imageBasedTrickPlaySettings")
                                     (min-buffer-time :target-type
                                      integer-min0max2147483647 :member-name
                                      "MinBufferTime" :json-name
                                      "minBufferTime")
                                     (min-final-segment-length :target-type
                                      double-min0max2147483647 :member-name
                                      "MinFinalSegmentLength" :json-name
                                      "minFinalSegmentLength")
                                     (mpd-manifest-bandwidth-type :target-type
                                      dash-iso-mpd-manifest-bandwidth-type
                                      :member-name "MpdManifestBandwidthType"
                                      :json-name "mpdManifestBandwidthType")
                                     (mpd-profile :target-type
                                      dash-iso-mpd-profile :member-name
                                      "MpdProfile" :json-name "mpdProfile")
                                     (pts-offset-handling-for-bframes
                                      :target-type
                                      dash-iso-pts-offset-handling-for-bframes
                                      :member-name
                                      "PtsOffsetHandlingForBFrames" :json-name
                                      "ptsOffsetHandlingForBFrames")
                                     (segment-control :target-type
                                      dash-iso-segment-control :member-name
                                      "SegmentControl" :json-name
                                      "segmentControl")
                                     (segment-length :target-type
                                      integer-min1max2147483647 :member-name
                                      "SegmentLength" :json-name
                                      "segmentLength")
                                     (segment-length-control :target-type
                                      dash-iso-segment-length-control
                                      :member-name "SegmentLengthControl"
                                      :json-name "segmentLengthControl")
                                     (video-composition-offsets :target-type
                                      dash-iso-video-composition-offsets
                                      :member-name "VideoCompositionOffsets"
                                      :json-name "videoCompositionOffsets")
                                     (write-segment-timeline-in-representation
                                      :target-type
                                      dash-iso-write-segment-timeline-in-representation
                                      :member-name
                                      "WriteSegmentTimelineInRepresentation"
                                      :json-name
                                      "writeSegmentTimelineInRepresentation"))
                                    (:shape-name "DashIsoGroupSettings"))

(smithy/sdk/shapes:define-enum dash-iso-hbbtv-compliance
    common-lisp:nil
  (:hbbtv-1-5 "HBBTV_1_5")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum dash-iso-image-based-trick-play
    common-lisp:nil
  (:none "NONE")
  (:thumbnail "THUMBNAIL")
  (:thumbnail-and-fullframe "THUMBNAIL_AND_FULLFRAME")
  (:advanced "ADVANCED"))

(smithy/sdk/shapes:define-structure dash-iso-image-based-trick-play-settings
                                    common-lisp:nil
                                    ((interval-cadence :target-type
                                      dash-iso-interval-cadence :member-name
                                      "IntervalCadence" :json-name
                                      "intervalCadence")
                                     (thumbnail-height :target-type
                                      integer-min1max4096 :member-name
                                      "ThumbnailHeight" :json-name
                                      "thumbnailHeight")
                                     (thumbnail-interval :target-type
                                      double-min0max2147483647 :member-name
                                      "ThumbnailInterval" :json-name
                                      "thumbnailInterval")
                                     (thumbnail-width :target-type
                                      integer-min8max4096 :member-name
                                      "ThumbnailWidth" :json-name
                                      "thumbnailWidth")
                                     (tile-height :target-type
                                      integer-min1max2048 :member-name
                                      "TileHeight" :json-name "tileHeight")
                                     (tile-width :target-type
                                      integer-min1max512 :member-name
                                      "TileWidth" :json-name "tileWidth"))
                                    (:shape-name
                                     "DashIsoImageBasedTrickPlaySettings"))

(smithy/sdk/shapes:define-enum dash-iso-interval-cadence
    common-lisp:nil
  (:follow-iframe "FOLLOW_IFRAME")
  (:follow-custom "FOLLOW_CUSTOM"))

(smithy/sdk/shapes:define-enum dash-iso-mpd-manifest-bandwidth-type
    common-lisp:nil
  (:average "AVERAGE")
  (:max "MAX"))

(smithy/sdk/shapes:define-enum dash-iso-mpd-profile
    common-lisp:nil
  (:main-profile "MAIN_PROFILE")
  (:on-demand-profile "ON_DEMAND_PROFILE"))

(smithy/sdk/shapes:define-enum dash-iso-playback-device-compatibility
    common-lisp:nil
  (:cenc-v1 "CENC_V1")
  (:unencrypted-sei "UNENCRYPTED_SEI"))

(smithy/sdk/shapes:define-enum dash-iso-pts-offset-handling-for-bframes
    common-lisp:nil
  (:zero-based "ZERO_BASED")
  (:match-initial-pts "MATCH_INITIAL_PTS"))

(smithy/sdk/shapes:define-enum dash-iso-segment-control
    common-lisp:nil
  (:single-file "SINGLE_FILE")
  (:segmented-files "SEGMENTED_FILES"))

(smithy/sdk/shapes:define-enum dash-iso-segment-length-control
    common-lisp:nil
  (:exact "EXACT")
  (:gop-multiple "GOP_MULTIPLE")
  (:match "MATCH"))

(smithy/sdk/shapes:define-enum dash-iso-video-composition-offsets
    common-lisp:nil
  (:signed "SIGNED")
  (:unsigned "UNSIGNED"))

(smithy/sdk/shapes:define-enum dash-iso-write-segment-timeline-in-representation
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum dash-manifest-style
    common-lisp:nil
  (:basic "BASIC")
  (:compact "COMPACT")
  (:distinct "DISTINCT"))

(smithy/sdk/shapes:define-structure data-properties common-lisp:nil
                                    ((language-code :target-type string
                                      :member-name "LanguageCode" :json-name
                                      "languageCode"))
                                    (:shape-name "DataProperties"))

(smithy/sdk/shapes:define-enum decryption-mode
    common-lisp:nil
  (:aes-ctr "AES_CTR")
  (:aes-cbc "AES_CBC")
  (:aes-gcm "AES_GCM"))

(smithy/sdk/shapes:define-enum deinterlace-algorithm
    common-lisp:nil
  (:interpolate "INTERPOLATE")
  (:interpolate-ticker "INTERPOLATE_TICKER")
  (:blend "BLEND")
  (:blend-ticker "BLEND_TICKER")
  (:linear-interpolation "LINEAR_INTERPOLATION"))

(smithy/sdk/shapes:define-structure deinterlacer common-lisp:nil
                                    ((algorithm :target-type
                                      deinterlace-algorithm :member-name
                                      "Algorithm" :json-name "algorithm")
                                     (control :target-type deinterlacer-control
                                      :member-name "Control" :json-name
                                      "control")
                                     (mode :target-type deinterlacer-mode
                                      :member-name "Mode" :json-name "mode"))
                                    (:shape-name "Deinterlacer"))

(smithy/sdk/shapes:define-enum deinterlacer-control
    common-lisp:nil
  (:force-all-frames "FORCE_ALL_FRAMES")
  (:normal "NORMAL"))

(smithy/sdk/shapes:define-enum deinterlacer-mode
    common-lisp:nil
  (:deinterlace "DEINTERLACE")
  (:inverse-telecine "INVERSE_TELECINE")
  (:adaptive "ADAPTIVE"))

(smithy/sdk/shapes:define-input delete-job-template-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteJobTemplateRequest"))

(smithy/sdk/shapes:define-output delete-job-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteJobTemplateResponse"))

(smithy/sdk/shapes:define-input delete-policy-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DeletePolicyRequest"))

(smithy/sdk/shapes:define-output delete-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePolicyResponse"))

(smithy/sdk/shapes:define-input delete-preset-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeletePresetRequest"))

(smithy/sdk/shapes:define-output delete-preset-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePresetResponse"))

(smithy/sdk/shapes:define-input delete-queue-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteQueueRequest"))

(smithy/sdk/shapes:define-output delete-queue-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteQueueResponse"))

(smithy/sdk/shapes:define-enum describe-endpoints-mode
    common-lisp:nil
  (:default "DEFAULT")
  (:get-only "GET_ONLY"))

(smithy/sdk/shapes:define-input describe-endpoints-request common-lisp:nil
                                ((max-results :target-type integer :member-name
                                  "MaxResults" :json-name "maxResults")
                                 (mode :target-type describe-endpoints-mode
                                  :member-name "Mode" :json-name "mode")
                                 (next-token :target-type string :member-name
                                  "NextToken" :json-name "nextToken"))
                                (:shape-name "DescribeEndpointsRequest"))

(smithy/sdk/shapes:define-output describe-endpoints-response common-lisp:nil
                                 ((endpoints :target-type list-of-endpoint
                                   :member-name "Endpoints" :json-name
                                   "endpoints")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "DescribeEndpointsResponse"))

(smithy/sdk/shapes:define-structure destination-settings common-lisp:nil
                                    ((s3settings :target-type
                                      s3destination-settings :member-name
                                      "S3Settings" :json-name "s3Settings"))
                                    (:shape-name "DestinationSettings"))

(smithy/sdk/shapes:define-input disassociate-certificate-request
                                common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "DisassociateCertificateRequest"))

(smithy/sdk/shapes:define-output disassociate-certificate-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateCertificateResponse"))

(smithy/sdk/shapes:define-structure dolby-vision common-lisp:nil
                                    ((l6metadata :target-type
                                      dolby-vision-level6metadata :member-name
                                      "L6Metadata" :json-name "l6Metadata")
                                     (l6mode :target-type
                                      dolby-vision-level6mode :member-name
                                      "L6Mode" :json-name "l6Mode")
                                     (mapping :target-type dolby-vision-mapping
                                      :member-name "Mapping" :json-name
                                      "mapping")
                                     (profile :target-type dolby-vision-profile
                                      :member-name "Profile" :json-name
                                      "profile"))
                                    (:shape-name "DolbyVision"))

(smithy/sdk/shapes:define-structure dolby-vision-level6metadata common-lisp:nil
                                    ((max-cll :target-type integer-min0max65535
                                      :member-name "MaxCll" :json-name
                                      "maxCll")
                                     (max-fall :target-type
                                      integer-min0max65535 :member-name
                                      "MaxFall" :json-name "maxFall"))
                                    (:shape-name "DolbyVisionLevel6Metadata"))

(smithy/sdk/shapes:define-enum dolby-vision-level6mode
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:recalculate "RECALCULATE")
  (:specify "SPECIFY"))

(smithy/sdk/shapes:define-enum dolby-vision-mapping
    common-lisp:nil
  (:hdr10-nomap "HDR10_NOMAP")
  (:hdr10-1000 "HDR10_1000"))

(smithy/sdk/shapes:define-enum dolby-vision-profile
    common-lisp:nil
  (:profile-5 "PROFILE_5")
  (:profile-8-1 "PROFILE_8_1"))

(smithy/sdk/shapes:define-enum drop-frame-timecode
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure dvb-nit-settings common-lisp:nil
                                    ((network-id :target-type
                                      integer-min0max65535 :member-name
                                      "NetworkId" :json-name "networkId")
                                     (network-name :target-type
                                      string-min1max256 :member-name
                                      "NetworkName" :json-name "networkName")
                                     (nit-interval :target-type
                                      integer-min25max10000 :member-name
                                      "NitInterval" :json-name "nitInterval"))
                                    (:shape-name "DvbNitSettings"))

(smithy/sdk/shapes:define-structure dvb-sdt-settings common-lisp:nil
                                    ((output-sdt :target-type output-sdt
                                      :member-name "OutputSdt" :json-name
                                      "outputSdt")
                                     (sdt-interval :target-type
                                      integer-min25max2000 :member-name
                                      "SdtInterval" :json-name "sdtInterval")
                                     (service-name :target-type
                                      string-min1max256 :member-name
                                      "ServiceName" :json-name "serviceName")
                                     (service-provider-name :target-type
                                      string-min1max256 :member-name
                                      "ServiceProviderName" :json-name
                                      "serviceProviderName"))
                                    (:shape-name "DvbSdtSettings"))

(smithy/sdk/shapes:define-structure dvb-sub-destination-settings
                                    common-lisp:nil
                                    ((alignment :target-type
                                      dvb-subtitle-alignment :member-name
                                      "Alignment" :json-name "alignment")
                                     (apply-font-color :target-type
                                      dvb-subtitle-apply-font-color
                                      :member-name "ApplyFontColor" :json-name
                                      "applyFontColor")
                                     (background-color :target-type
                                      dvb-subtitle-background-color
                                      :member-name "BackgroundColor" :json-name
                                      "backgroundColor")
                                     (background-opacity :target-type
                                      integer-min0max255 :member-name
                                      "BackgroundOpacity" :json-name
                                      "backgroundOpacity")
                                     (dds-handling :target-type dvbdds-handling
                                      :member-name "DdsHandling" :json-name
                                      "ddsHandling")
                                     (dds-xcoordinate :target-type
                                      integer-min0max2147483647 :member-name
                                      "DdsXCoordinate" :json-name
                                      "ddsXCoordinate")
                                     (dds-ycoordinate :target-type
                                      integer-min0max2147483647 :member-name
                                      "DdsYCoordinate" :json-name
                                      "ddsYCoordinate")
                                     (fallback-font :target-type
                                      dvb-sub-subtitle-fallback-font
                                      :member-name "FallbackFont" :json-name
                                      "fallbackFont")
                                     (font-color :target-type
                                      dvb-subtitle-font-color :member-name
                                      "FontColor" :json-name "fontColor")
                                     (font-file-bold :target-type
                                      string-pattern-s3ttf-https-ttf
                                      :member-name "FontFileBold" :json-name
                                      "fontFileBold")
                                     (font-file-bold-italic :target-type
                                      string-pattern-s3ttf-https-ttf
                                      :member-name "FontFileBoldItalic"
                                      :json-name "fontFileBoldItalic")
                                     (font-file-italic :target-type
                                      string-pattern-s3ttf-https-ttf
                                      :member-name "FontFileItalic" :json-name
                                      "fontFileItalic")
                                     (font-file-regular :target-type
                                      string-pattern-s3ttf-https-ttf
                                      :member-name "FontFileRegular" :json-name
                                      "fontFileRegular")
                                     (font-opacity :target-type
                                      integer-min0max255 :member-name
                                      "FontOpacity" :json-name "fontOpacity")
                                     (font-resolution :target-type
                                      integer-min96max600 :member-name
                                      "FontResolution" :json-name
                                      "fontResolution")
                                     (font-script :target-type font-script
                                      :member-name "FontScript" :json-name
                                      "fontScript")
                                     (font-size :target-type integer-min0max96
                                      :member-name "FontSize" :json-name
                                      "fontSize")
                                     (height :target-type
                                      integer-min1max2147483647 :member-name
                                      "Height" :json-name "height")
                                     (hex-font-color :target-type
                                      string-min6max8pattern09a-faf609a-faf2
                                      :member-name "HexFontColor" :json-name
                                      "hexFontColor")
                                     (outline-color :target-type
                                      dvb-subtitle-outline-color :member-name
                                      "OutlineColor" :json-name "outlineColor")
                                     (outline-size :target-type
                                      integer-min0max10 :member-name
                                      "OutlineSize" :json-name "outlineSize")
                                     (shadow-color :target-type
                                      dvb-subtitle-shadow-color :member-name
                                      "ShadowColor" :json-name "shadowColor")
                                     (shadow-opacity :target-type
                                      integer-min0max255 :member-name
                                      "ShadowOpacity" :json-name
                                      "shadowOpacity")
                                     (shadow-xoffset :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "ShadowXOffset" :json-name
                                      "shadowXOffset")
                                     (shadow-yoffset :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "ShadowYOffset" :json-name
                                      "shadowYOffset")
                                     (style-passthrough :target-type
                                      dvb-subtitle-style-passthrough
                                      :member-name "StylePassthrough"
                                      :json-name "stylePassthrough")
                                     (subtitling-type :target-type
                                      dvb-subtitling-type :member-name
                                      "SubtitlingType" :json-name
                                      "subtitlingType")
                                     (teletext-spacing :target-type
                                      dvb-subtitle-teletext-spacing
                                      :member-name "TeletextSpacing" :json-name
                                      "teletextSpacing")
                                     (width :target-type
                                      integer-min1max2147483647 :member-name
                                      "Width" :json-name "width")
                                     (xposition :target-type
                                      integer-min0max2147483647 :member-name
                                      "XPosition" :json-name "xPosition")
                                     (yposition :target-type
                                      integer-min0max2147483647 :member-name
                                      "YPosition" :json-name "yPosition"))
                                    (:shape-name "DvbSubDestinationSettings"))

(smithy/sdk/shapes:define-structure dvb-sub-source-settings common-lisp:nil
                                    ((pid :target-type
                                      integer-min1max2147483647 :member-name
                                      "Pid" :json-name "pid"))
                                    (:shape-name "DvbSubSourceSettings"))

(smithy/sdk/shapes:define-enum dvb-sub-subtitle-fallback-font
    common-lisp:nil
  (:best-match "BEST_MATCH")
  (:monospaced-sansserif "MONOSPACED_SANSSERIF")
  (:monospaced-serif "MONOSPACED_SERIF")
  (:proportional-sansserif "PROPORTIONAL_SANSSERIF")
  (:proportional-serif "PROPORTIONAL_SERIF"))

(smithy/sdk/shapes:define-enum dvb-subtitle-alignment
    common-lisp:nil
  (:centered "CENTERED")
  (:left "LEFT")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum dvb-subtitle-apply-font-color
    common-lisp:nil
  (:white-text-only "WHITE_TEXT_ONLY")
  (:all-text "ALL_TEXT"))

(smithy/sdk/shapes:define-enum dvb-subtitle-background-color
    common-lisp:nil
  (:none "NONE")
  (:black "BLACK")
  (:white "WHITE")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum dvb-subtitle-font-color
    common-lisp:nil
  (:white "WHITE")
  (:black "BLACK")
  (:yellow "YELLOW")
  (:red "RED")
  (:green "GREEN")
  (:blue "BLUE")
  (:hex "HEX")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum dvb-subtitle-outline-color
    common-lisp:nil
  (:black "BLACK")
  (:white "WHITE")
  (:yellow "YELLOW")
  (:red "RED")
  (:green "GREEN")
  (:blue "BLUE")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum dvb-subtitle-shadow-color
    common-lisp:nil
  (:none "NONE")
  (:black "BLACK")
  (:white "WHITE")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum dvb-subtitle-style-passthrough
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum dvb-subtitle-teletext-spacing
    common-lisp:nil
  (:fixed-grid "FIXED_GRID")
  (:proportional "PROPORTIONAL")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum dvb-subtitling-type
    common-lisp:nil
  (:hearing-impaired "HEARING_IMPAIRED")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-structure dvb-tdt-settings common-lisp:nil
                                    ((tdt-interval :target-type
                                      integer-min1000max30000 :member-name
                                      "TdtInterval" :json-name "tdtInterval"))
                                    (:shape-name "DvbTdtSettings"))

(smithy/sdk/shapes:define-enum dvbdds-handling
    common-lisp:nil
  (:none "NONE")
  (:specified "SPECIFIED")
  (:no-display-window "NO_DISPLAY_WINDOW")
  (:specified-optimal "SPECIFIED_OPTIMAL"))

(smithy/sdk/shapes:define-structure dynamic-audio-selector common-lisp:nil
                                    ((audio-duration-correction :target-type
                                      audio-duration-correction :member-name
                                      "AudioDurationCorrection" :json-name
                                      "audioDurationCorrection")
                                     (external-audio-file-input :target-type
                                      string-pattern-s3https :member-name
                                      "ExternalAudioFileInput" :json-name
                                      "externalAudioFileInput")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (offset :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "Offset" :json-name
                                      "offset")
                                     (selector-type :target-type
                                      dynamic-audio-selector-type :member-name
                                      "SelectorType" :json-name
                                      "selectorType"))
                                    (:shape-name "DynamicAudioSelector"))

(smithy/sdk/shapes:define-enum dynamic-audio-selector-type
    common-lisp:nil
  (:all-tracks "ALL_TRACKS")
  (:language-code "LANGUAGE_CODE"))

(smithy/sdk/shapes:define-enum eac3atmos-bitstream-mode
    common-lisp:nil
  (:complete-main "COMPLETE_MAIN"))

(smithy/sdk/shapes:define-enum eac3atmos-coding-mode
    common-lisp:nil
  (:coding-mode-auto "CODING_MODE_AUTO")
  (:coding-mode-5-1-4 "CODING_MODE_5_1_4")
  (:coding-mode-7-1-4 "CODING_MODE_7_1_4")
  (:coding-mode-9-1-6 "CODING_MODE_9_1_6"))

(smithy/sdk/shapes:define-enum eac3atmos-dialogue-intelligence
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum eac3atmos-downmix-control
    common-lisp:nil
  (:specified "SPECIFIED")
  (:initialize-from-source "INITIALIZE_FROM_SOURCE"))

(smithy/sdk/shapes:define-enum eac3atmos-dynamic-range-compression-line
    common-lisp:nil
  (:none "NONE")
  (:film-standard "FILM_STANDARD")
  (:film-light "FILM_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:speech "SPEECH"))

(smithy/sdk/shapes:define-enum eac3atmos-dynamic-range-compression-rf
    common-lisp:nil
  (:none "NONE")
  (:film-standard "FILM_STANDARD")
  (:film-light "FILM_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:speech "SPEECH"))

(smithy/sdk/shapes:define-enum eac3atmos-dynamic-range-control
    common-lisp:nil
  (:specified "SPECIFIED")
  (:initialize-from-source "INITIALIZE_FROM_SOURCE"))

(smithy/sdk/shapes:define-enum eac3atmos-metering-mode
    common-lisp:nil
  (:leq-a "LEQ_A")
  (:itu-bs-1770-1 "ITU_BS_1770_1")
  (:itu-bs-1770-2 "ITU_BS_1770_2")
  (:itu-bs-1770-3 "ITU_BS_1770_3")
  (:itu-bs-1770-4 "ITU_BS_1770_4"))

(smithy/sdk/shapes:define-structure eac3atmos-settings common-lisp:nil
                                    ((bitrate :target-type
                                      integer-min384000max1024000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (bitstream-mode :target-type
                                      eac3atmos-bitstream-mode :member-name
                                      "BitstreamMode" :json-name
                                      "bitstreamMode")
                                     (coding-mode :target-type
                                      eac3atmos-coding-mode :member-name
                                      "CodingMode" :json-name "codingMode")
                                     (dialogue-intelligence :target-type
                                      eac3atmos-dialogue-intelligence
                                      :member-name "DialogueIntelligence"
                                      :json-name "dialogueIntelligence")
                                     (downmix-control :target-type
                                      eac3atmos-downmix-control :member-name
                                      "DownmixControl" :json-name
                                      "downmixControl")
                                     (dynamic-range-compression-line
                                      :target-type
                                      eac3atmos-dynamic-range-compression-line
                                      :member-name
                                      "DynamicRangeCompressionLine" :json-name
                                      "dynamicRangeCompressionLine")
                                     (dynamic-range-compression-rf :target-type
                                      eac3atmos-dynamic-range-compression-rf
                                      :member-name "DynamicRangeCompressionRf"
                                      :json-name "dynamicRangeCompressionRf")
                                     (dynamic-range-control :target-type
                                      eac3atmos-dynamic-range-control
                                      :member-name "DynamicRangeControl"
                                      :json-name "dynamicRangeControl")
                                     (lo-ro-center-mix-level :target-type
                                      double-min-negative6max3 :member-name
                                      "LoRoCenterMixLevel" :json-name
                                      "loRoCenterMixLevel")
                                     (lo-ro-surround-mix-level :target-type
                                      double-min-negative60max-negative1
                                      :member-name "LoRoSurroundMixLevel"
                                      :json-name "loRoSurroundMixLevel")
                                     (lt-rt-center-mix-level :target-type
                                      double-min-negative6max3 :member-name
                                      "LtRtCenterMixLevel" :json-name
                                      "ltRtCenterMixLevel")
                                     (lt-rt-surround-mix-level :target-type
                                      double-min-negative60max-negative1
                                      :member-name "LtRtSurroundMixLevel"
                                      :json-name "ltRtSurroundMixLevel")
                                     (metering-mode :target-type
                                      eac3atmos-metering-mode :member-name
                                      "MeteringMode" :json-name "meteringMode")
                                     (sample-rate :target-type
                                      integer-min48000max48000 :member-name
                                      "SampleRate" :json-name "sampleRate")
                                     (speech-threshold :target-type
                                      integer-min0max100 :member-name
                                      "SpeechThreshold" :json-name
                                      "speechThreshold")
                                     (stereo-downmix :target-type
                                      eac3atmos-stereo-downmix :member-name
                                      "StereoDownmix" :json-name
                                      "stereoDownmix")
                                     (surround-ex-mode :target-type
                                      eac3atmos-surround-ex-mode :member-name
                                      "SurroundExMode" :json-name
                                      "surroundExMode"))
                                    (:shape-name "Eac3AtmosSettings"))

(smithy/sdk/shapes:define-enum eac3atmos-stereo-downmix
    common-lisp:nil
  (:not-indicated "NOT_INDICATED")
  (:stereo "STEREO")
  (:surround "SURROUND")
  (:dpl2 "DPL2"))

(smithy/sdk/shapes:define-enum eac3atmos-surround-ex-mode
    common-lisp:nil
  (:not-indicated "NOT_INDICATED")
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum eac3attenuation-control
    common-lisp:nil
  (:attenuate-3-db "ATTENUATE_3_DB")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum eac3bitstream-mode
    common-lisp:nil
  (:complete-main "COMPLETE_MAIN")
  (:commentary "COMMENTARY")
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
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum eac3dynamic-range-compression-line
    common-lisp:nil
  (:none "NONE")
  (:film-standard "FILM_STANDARD")
  (:film-light "FILM_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:speech "SPEECH"))

(smithy/sdk/shapes:define-enum eac3dynamic-range-compression-rf
    common-lisp:nil
  (:none "NONE")
  (:film-standard "FILM_STANDARD")
  (:film-light "FILM_LIGHT")
  (:music-standard "MUSIC_STANDARD")
  (:music-light "MUSIC_LIGHT")
  (:speech "SPEECH"))

(smithy/sdk/shapes:define-enum eac3lfe-control
    common-lisp:nil
  (:lfe "LFE")
  (:no-lfe "NO_LFE"))

(smithy/sdk/shapes:define-enum eac3lfe-filter
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum eac3metadata-control
    common-lisp:nil
  (:follow-input "FOLLOW_INPUT")
  (:use-configured "USE_CONFIGURED"))

(smithy/sdk/shapes:define-enum eac3passthrough-control
    common-lisp:nil
  (:when-possible "WHEN_POSSIBLE")
  (:no-passthrough "NO_PASSTHROUGH"))

(smithy/sdk/shapes:define-enum eac3phase-control
    common-lisp:nil
  (:shift-90-degrees "SHIFT_90_DEGREES")
  (:no-shift "NO_SHIFT"))

(smithy/sdk/shapes:define-structure eac3settings common-lisp:nil
                                    ((attenuation-control :target-type
                                      eac3attenuation-control :member-name
                                      "AttenuationControl" :json-name
                                      "attenuationControl")
                                     (bitrate :target-type
                                      integer-min32000max3024000 :member-name
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
                                     (dynamic-range-compression-line
                                      :target-type
                                      eac3dynamic-range-compression-line
                                      :member-name
                                      "DynamicRangeCompressionLine" :json-name
                                      "dynamicRangeCompressionLine")
                                     (dynamic-range-compression-rf :target-type
                                      eac3dynamic-range-compression-rf
                                      :member-name "DynamicRangeCompressionRf"
                                      :json-name "dynamicRangeCompressionRf")
                                     (lfe-control :target-type eac3lfe-control
                                      :member-name "LfeControl" :json-name
                                      "lfeControl")
                                     (lfe-filter :target-type eac3lfe-filter
                                      :member-name "LfeFilter" :json-name
                                      "lfeFilter")
                                     (lo-ro-center-mix-level :target-type
                                      double-min-negative60max3 :member-name
                                      "LoRoCenterMixLevel" :json-name
                                      "loRoCenterMixLevel")
                                     (lo-ro-surround-mix-level :target-type
                                      double-min-negative60max-negative1
                                      :member-name "LoRoSurroundMixLevel"
                                      :json-name "loRoSurroundMixLevel")
                                     (lt-rt-center-mix-level :target-type
                                      double-min-negative60max3 :member-name
                                      "LtRtCenterMixLevel" :json-name
                                      "ltRtCenterMixLevel")
                                     (lt-rt-surround-mix-level :target-type
                                      double-min-negative60max-negative1
                                      :member-name "LtRtSurroundMixLevel"
                                      :json-name "ltRtSurroundMixLevel")
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
                                     (sample-rate :target-type
                                      integer-min48000max48000 :member-name
                                      "SampleRate" :json-name "sampleRate")
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
  (:not-indicated "NOT_INDICATED")
  (:lo-ro "LO_RO")
  (:lt-rt "LT_RT")
  (:dpl2 "DPL2"))

(smithy/sdk/shapes:define-enum eac3surround-ex-mode
    common-lisp:nil
  (:not-indicated "NOT_INDICATED")
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum eac3surround-mode
    common-lisp:nil
  (:not-indicated "NOT_INDICATED")
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum embedded-convert608to708
    common-lisp:nil
  (:upconvert "UPCONVERT")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure embedded-destination-settings
                                    common-lisp:nil
                                    ((destination608channel-number :target-type
                                      integer-min1max4 :member-name
                                      "Destination608ChannelNumber" :json-name
                                      "destination608ChannelNumber")
                                     (destination708service-number :target-type
                                      integer-min1max6 :member-name
                                      "Destination708ServiceNumber" :json-name
                                      "destination708ServiceNumber"))
                                    (:shape-name "EmbeddedDestinationSettings"))

(smithy/sdk/shapes:define-structure embedded-source-settings common-lisp:nil
                                    ((convert608to708 :target-type
                                      embedded-convert608to708 :member-name
                                      "Convert608To708" :json-name
                                      "convert608To708")
                                     (source608channel-number :target-type
                                      integer-min1max4 :member-name
                                      "Source608ChannelNumber" :json-name
                                      "source608ChannelNumber")
                                     (source608track-number :target-type
                                      integer-min1max1 :member-name
                                      "Source608TrackNumber" :json-name
                                      "source608TrackNumber")
                                     (terminate-captions :target-type
                                      embedded-terminate-captions :member-name
                                      "TerminateCaptions" :json-name
                                      "terminateCaptions"))
                                    (:shape-name "EmbeddedSourceSettings"))

(smithy/sdk/shapes:define-enum embedded-terminate-captions
    common-lisp:nil
  (:end-of-input "END_OF_INPUT")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum embedded-timecode-override
    common-lisp:nil
  (:none "NONE")
  (:use-mdpm "USE_MDPM"))

(smithy/sdk/shapes:define-structure encryption-contract-configuration
                                    common-lisp:nil
                                    ((speke-audio-preset :target-type
                                      preset-speke20audio :member-name
                                      "SpekeAudioPreset" :json-name
                                      "spekeAudioPreset")
                                     (speke-video-preset :target-type
                                      preset-speke20video :member-name
                                      "SpekeVideoPreset" :json-name
                                      "spekeVideoPreset"))
                                    (:shape-name
                                     "EncryptionContractConfiguration"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((url :target-type string :member-name
                                      "Url" :json-name "url"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-structure
 esam-manifest-confirm-condition-notification common-lisp:nil
 ((mcc-xml :target-type
   string-pattern-snmanifest-confirm-condition-notification-ns :member-name
   "MccXml" :json-name "mccXml"))
 (:shape-name "EsamManifestConfirmConditionNotification"))

(smithy/sdk/shapes:define-structure esam-settings common-lisp:nil
                                    ((manifest-confirm-condition-notification
                                      :target-type
                                      esam-manifest-confirm-condition-notification
                                      :member-name
                                      "ManifestConfirmConditionNotification"
                                      :json-name
                                      "manifestConfirmConditionNotification")
                                     (response-signal-preroll :target-type
                                      integer-min0max30000 :member-name
                                      "ResponseSignalPreroll" :json-name
                                      "responseSignalPreroll")
                                     (signal-processing-notification
                                      :target-type
                                      esam-signal-processing-notification
                                      :member-name
                                      "SignalProcessingNotification" :json-name
                                      "signalProcessingNotification"))
                                    (:shape-name "EsamSettings"))

(smithy/sdk/shapes:define-structure esam-signal-processing-notification
                                    common-lisp:nil
                                    ((scc-xml :target-type
                                      string-pattern-snsignal-processing-notification-ns
                                      :member-name "SccXml" :json-name
                                      "sccXml"))
                                    (:shape-name
                                     "EsamSignalProcessingNotification"))

(smithy/sdk/shapes:define-structure extended-data-services common-lisp:nil
                                    ((copy-protection-action :target-type
                                      copy-protection-action :member-name
                                      "CopyProtectionAction" :json-name
                                      "copyProtectionAction")
                                     (vchip-action :target-type vchip-action
                                      :member-name "VchipAction" :json-name
                                      "vchipAction"))
                                    (:shape-name "ExtendedDataServices"))

(smithy/sdk/shapes:define-enum f4v-moov-placement
    common-lisp:nil
  (:progressive-download "PROGRESSIVE_DOWNLOAD")
  (:normal "NORMAL"))

(smithy/sdk/shapes:define-structure f4v-settings common-lisp:nil
                                    ((moov-placement :target-type
                                      f4v-moov-placement :member-name
                                      "MoovPlacement" :json-name
                                      "moovPlacement"))
                                    (:shape-name "F4vSettings"))

(smithy/sdk/shapes:define-structure file-group-settings common-lisp:nil
                                    ((destination :target-type
                                      string-pattern-s3 :member-name
                                      "Destination" :json-name "destination")
                                     (destination-settings :target-type
                                      destination-settings :member-name
                                      "DestinationSettings" :json-name
                                      "destinationSettings"))
                                    (:shape-name "FileGroupSettings"))

(smithy/sdk/shapes:define-enum file-source-convert608to708
    common-lisp:nil
  (:upconvert "UPCONVERT")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure file-source-settings common-lisp:nil
                                    ((byte-rate-limit :target-type
                                      caption-source-byte-rate-limit
                                      :member-name "ByteRateLimit" :json-name
                                      "byteRateLimit")
                                     (convert608to708 :target-type
                                      file-source-convert608to708 :member-name
                                      "Convert608To708" :json-name
                                      "convert608To708")
                                     (convert-paint-to-pop :target-type
                                      caption-source-convert-paint-on-to-pop-on
                                      :member-name "ConvertPaintToPop"
                                      :json-name "convertPaintToPop")
                                     (framerate :target-type
                                      caption-source-framerate :member-name
                                      "Framerate" :json-name "framerate")
                                     (source-file :target-type
                                      string-min14pattern-s3scc-sccttml-ttmldfxp-dfxpstl-stlsrt-srtxml-xmlsmi-smivtt-vttwebvtt-webvtthttps-scc-sccttml-ttmldfxp-dfxpstl-stlsrt-srtxml-xmlsmi-smivtt-vttwebvtt-webvtt
                                      :member-name "SourceFile" :json-name
                                      "sourceFile")
                                     (time-delta :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "TimeDelta" :json-name
                                      "timeDelta")
                                     (time-delta-units :target-type
                                      file-source-time-delta-units :member-name
                                      "TimeDeltaUnits" :json-name
                                      "timeDeltaUnits")
                                     (upconvert-stlto-teletext :target-type
                                      caption-source-upconvert-stlto-teletext
                                      :member-name "UpconvertSTLToTeletext"
                                      :json-name "upconvertSTLToTeletext"))
                                    (:shape-name "FileSourceSettings"))

(smithy/sdk/shapes:define-enum file-source-time-delta-units
    common-lisp:nil
  (:seconds "SECONDS")
  (:milliseconds "MILLISECONDS"))

(smithy/sdk/shapes:define-structure flac-settings common-lisp:nil
                                    ((bit-depth :target-type integer-min16max24
                                      :member-name "BitDepth" :json-name
                                      "bitDepth")
                                     (channels :target-type integer-min1max8
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (sample-rate :target-type
                                      integer-min22050max192000 :member-name
                                      "SampleRate" :json-name "sampleRate"))
                                    (:shape-name "FlacSettings"))

(smithy/sdk/shapes:define-enum font-script
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:hans "HANS")
  (:hant "HANT"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure force-include-rendition-size
                                    common-lisp:nil
                                    ((height :target-type integer-min32max8192
                                      :member-name "Height" :json-name
                                      "height")
                                     (width :target-type integer-min32max8192
                                      :member-name "Width" :json-name "width"))
                                    (:shape-name "ForceIncludeRenditionSize"))

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:mp4 "mp4")
  (:quicktime "quicktime")
  (:matroska "matroska")
  (:webm "webm")
  (:mxf "mxf"))

(smithy/sdk/shapes:define-structure frame-capture-settings common-lisp:nil
                                    ((framerate-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (max-captures :target-type
                                      integer-min1max10000000 :member-name
                                      "MaxCaptures" :json-name "maxCaptures")
                                     (quality :target-type integer-min1max100
                                      :member-name "Quality" :json-name
                                      "quality"))
                                    (:shape-name "FrameCaptureSettings"))

(smithy/sdk/shapes:define-enum frame-metric-type
    common-lisp:nil
  (:psnr "PSNR")
  (:ssim "SSIM")
  (:ms-ssim "MS_SSIM")
  (:psnr-hvs "PSNR_HVS")
  (:vmaf "VMAF")
  (:qvbr "QVBR"))

(smithy/sdk/shapes:define-structure frame-rate common-lisp:nil
                                    ((denominator :target-type integer
                                      :member-name "Denominator" :json-name
                                      "denominator")
                                     (numerator :target-type integer
                                      :member-name "Numerator" :json-name
                                      "numerator"))
                                    (:shape-name "FrameRate"))

(smithy/sdk/shapes:define-input get-job-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetJobRequest"))

(smithy/sdk/shapes:define-output get-job-response common-lisp:nil
                                 ((job :target-type job :member-name "Job"
                                   :json-name "job"))
                                 (:shape-name "GetJobResponse"))

(smithy/sdk/shapes:define-input get-job-template-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetJobTemplateRequest"))

(smithy/sdk/shapes:define-output get-job-template-response common-lisp:nil
                                 ((job-template :target-type job-template
                                   :member-name "JobTemplate" :json-name
                                   "jobTemplate"))
                                 (:shape-name "GetJobTemplateResponse"))

(smithy/sdk/shapes:define-input get-policy-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetPolicyRequest"))

(smithy/sdk/shapes:define-output get-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy" :json-name "policy"))
                                 (:shape-name "GetPolicyResponse"))

(smithy/sdk/shapes:define-input get-preset-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPresetRequest"))

(smithy/sdk/shapes:define-output get-preset-response common-lisp:nil
                                 ((preset :target-type preset :member-name
                                   "Preset" :json-name "preset"))
                                 (:shape-name "GetPresetResponse"))

(smithy/sdk/shapes:define-input get-queue-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetQueueRequest"))

(smithy/sdk/shapes:define-output get-queue-response common-lisp:nil
                                 ((queue :target-type queue :member-name
                                   "Queue" :json-name "queue"))
                                 (:shape-name "GetQueueResponse"))

(smithy/sdk/shapes:define-enum gif-framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum gif-framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE"))

(smithy/sdk/shapes:define-structure gif-settings common-lisp:nil
                                    ((framerate-control :target-type
                                      gif-framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      gif-framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator"))
                                    (:shape-name "GifSettings"))

(smithy/sdk/shapes:define-enum h264adaptive-quantization
    common-lisp:nil
  (:off "OFF")
  (:auto "AUTO")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:higher "HIGHER")
  (:max "MAX"))

(smithy/sdk/shapes:define-enum h264codec-level
    common-lisp:nil
  (:auto "AUTO")
  (:level-1 "LEVEL_1")
  (:level-1-1 "LEVEL_1_1")
  (:level-1-2 "LEVEL_1_2")
  (:level-1-3 "LEVEL_1_3")
  (:level-2 "LEVEL_2")
  (:level-2-1 "LEVEL_2_1")
  (:level-2-2 "LEVEL_2_2")
  (:level-3 "LEVEL_3")
  (:level-3-1 "LEVEL_3_1")
  (:level-3-2 "LEVEL_3_2")
  (:level-4 "LEVEL_4")
  (:level-4-1 "LEVEL_4_1")
  (:level-4-2 "LEVEL_4_2")
  (:level-5 "LEVEL_5")
  (:level-5-1 "LEVEL_5_1")
  (:level-5-2 "LEVEL_5_2"))

(smithy/sdk/shapes:define-enum h264codec-profile
    common-lisp:nil
  (:baseline "BASELINE")
  (:high "HIGH")
  (:high-10bit "HIGH_10BIT")
  (:high-422 "HIGH_422")
  (:high-422-10bit "HIGH_422_10BIT")
  (:main "MAIN"))

(smithy/sdk/shapes:define-enum h264dynamic-sub-gop
    common-lisp:nil
  (:adaptive "ADAPTIVE")
  (:static "STATIC"))

(smithy/sdk/shapes:define-enum h264end-of-stream-markers
    common-lisp:nil
  (:include "INCLUDE")
  (:suppress "SUPPRESS"))

(smithy/sdk/shapes:define-enum h264entropy-encoding
    common-lisp:nil
  (:cabac "CABAC")
  (:cavlc "CAVLC"))

(smithy/sdk/shapes:define-enum h264field-encoding
    common-lisp:nil
  (:paff "PAFF")
  (:force-field "FORCE_FIELD")
  (:mbaff "MBAFF"))

(smithy/sdk/shapes:define-enum h264flicker-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum h264framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum h264gop-breference
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264gop-size-units
    common-lisp:nil
  (:frames "FRAMES")
  (:seconds "SECONDS")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum h264interlace-mode
    common-lisp:nil
  (:progressive "PROGRESSIVE")
  (:top-field "TOP_FIELD")
  (:bottom-field "BOTTOM_FIELD")
  (:follow-top-field "FOLLOW_TOP_FIELD")
  (:follow-bottom-field "FOLLOW_BOTTOM_FIELD"))

(smithy/sdk/shapes:define-enum h264par-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum h264quality-tuning-level
    common-lisp:nil
  (:single-pass "SINGLE_PASS")
  (:single-pass-hq "SINGLE_PASS_HQ")
  (:multi-pass-hq "MULTI_PASS_HQ"))

(smithy/sdk/shapes:define-structure h264qvbr-settings common-lisp:nil
                                    ((max-average-bitrate :target-type
                                      integer-min1000max1152000000 :member-name
                                      "MaxAverageBitrate" :json-name
                                      "maxAverageBitrate")
                                     (qvbr-quality-level :target-type
                                      integer-min1max10 :member-name
                                      "QvbrQualityLevel" :json-name
                                      "qvbrQualityLevel")
                                     (qvbr-quality-level-fine-tune :target-type
                                      double-min0max1 :member-name
                                      "QvbrQualityLevelFineTune" :json-name
                                      "qvbrQualityLevelFineTune"))
                                    (:shape-name "H264QvbrSettings"))

(smithy/sdk/shapes:define-enum h264rate-control-mode
    common-lisp:nil
  (:vbr "VBR")
  (:cbr "CBR")
  (:qvbr "QVBR"))

(smithy/sdk/shapes:define-enum h264repeat-pps
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264saliency-aware-encoding
    common-lisp:nil
  (:disabled "DISABLED")
  (:preferred "PREFERRED"))

(smithy/sdk/shapes:define-enum h264scan-type-conversion-mode
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:interlaced-optimize "INTERLACED_OPTIMIZE"))

(smithy/sdk/shapes:define-enum h264scene-change-detect
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:transition-detection "TRANSITION_DETECTION"))

(smithy/sdk/shapes:define-structure h264settings common-lisp:nil
                                    ((adaptive-quantization :target-type
                                      h264adaptive-quantization :member-name
                                      "AdaptiveQuantization" :json-name
                                      "adaptiveQuantization")
                                     (bandwidth-reduction-filter :target-type
                                      bandwidth-reduction-filter :member-name
                                      "BandwidthReductionFilter" :json-name
                                      "bandwidthReductionFilter")
                                     (bitrate :target-type
                                      integer-min1000max1152000000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (codec-level :target-type h264codec-level
                                      :member-name "CodecLevel" :json-name
                                      "codecLevel")
                                     (codec-profile :target-type
                                      h264codec-profile :member-name
                                      "CodecProfile" :json-name "codecProfile")
                                     (dynamic-sub-gop :target-type
                                      h264dynamic-sub-gop :member-name
                                      "DynamicSubGop" :json-name
                                      "dynamicSubGop")
                                     (end-of-stream-markers :target-type
                                      h264end-of-stream-markers :member-name
                                      "EndOfStreamMarkers" :json-name
                                      "endOfStreamMarkers")
                                     (entropy-encoding :target-type
                                      h264entropy-encoding :member-name
                                      "EntropyEncoding" :json-name
                                      "entropyEncoding")
                                     (field-encoding :target-type
                                      h264field-encoding :member-name
                                      "FieldEncoding" :json-name
                                      "fieldEncoding")
                                     (flicker-adaptive-quantization
                                      :target-type
                                      h264flicker-adaptive-quantization
                                      :member-name
                                      "FlickerAdaptiveQuantization" :json-name
                                      "flickerAdaptiveQuantization")
                                     (framerate-control :target-type
                                      h264framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      h264framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (gop-breference :target-type
                                      h264gop-breference :member-name
                                      "GopBReference" :json-name
                                      "gopBReference")
                                     (gop-closed-cadence :target-type
                                      integer-min0max2147483647 :member-name
                                      "GopClosedCadence" :json-name
                                      "gopClosedCadence")
                                     (gop-size :target-type double-min0
                                      :member-name "GopSize" :json-name
                                      "gopSize")
                                     (gop-size-units :target-type
                                      h264gop-size-units :member-name
                                      "GopSizeUnits" :json-name "gopSizeUnits")
                                     (hrd-buffer-final-fill-percentage
                                      :target-type integer-min0max100
                                      :member-name
                                      "HrdBufferFinalFillPercentage" :json-name
                                      "hrdBufferFinalFillPercentage")
                                     (hrd-buffer-initial-fill-percentage
                                      :target-type integer-min0max100
                                      :member-name
                                      "HrdBufferInitialFillPercentage"
                                      :json-name
                                      "hrdBufferInitialFillPercentage")
                                     (hrd-buffer-size :target-type
                                      integer-min0max1152000000 :member-name
                                      "HrdBufferSize" :json-name
                                      "hrdBufferSize")
                                     (interlace-mode :target-type
                                      h264interlace-mode :member-name
                                      "InterlaceMode" :json-name
                                      "interlaceMode")
                                     (max-bitrate :target-type
                                      integer-min1000max1152000000 :member-name
                                      "MaxBitrate" :json-name "maxBitrate")
                                     (min-iinterval :target-type
                                      integer-min0max30 :member-name
                                      "MinIInterval" :json-name "minIInterval")
                                     (number-bframes-between-reference-frames
                                      :target-type integer-min0max7
                                      :member-name
                                      "NumberBFramesBetweenReferenceFrames"
                                      :json-name
                                      "numberBFramesBetweenReferenceFrames")
                                     (number-reference-frames :target-type
                                      integer-min1max6 :member-name
                                      "NumberReferenceFrames" :json-name
                                      "numberReferenceFrames")
                                     (par-control :target-type h264par-control
                                      :member-name "ParControl" :json-name
                                      "parControl")
                                     (par-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParDenominator" :json-name
                                      "parDenominator")
                                     (par-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParNumerator" :json-name "parNumerator")
                                     (per-frame-metrics :target-type
                                      list-of-frame-metric-type :member-name
                                      "PerFrameMetrics" :json-name
                                      "perFrameMetrics")
                                     (quality-tuning-level :target-type
                                      h264quality-tuning-level :member-name
                                      "QualityTuningLevel" :json-name
                                      "qualityTuningLevel")
                                     (qvbr-settings :target-type
                                      h264qvbr-settings :member-name
                                      "QvbrSettings" :json-name "qvbrSettings")
                                     (rate-control-mode :target-type
                                      h264rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode")
                                     (repeat-pps :target-type h264repeat-pps
                                      :member-name "RepeatPps" :json-name
                                      "repeatPps")
                                     (saliency-aware-encoding :target-type
                                      h264saliency-aware-encoding :member-name
                                      "SaliencyAwareEncoding" :json-name
                                      "saliencyAwareEncoding")
                                     (scan-type-conversion-mode :target-type
                                      h264scan-type-conversion-mode
                                      :member-name "ScanTypeConversionMode"
                                      :json-name "scanTypeConversionMode")
                                     (scene-change-detect :target-type
                                      h264scene-change-detect :member-name
                                      "SceneChangeDetect" :json-name
                                      "sceneChangeDetect")
                                     (slices :target-type integer-min1max32
                                      :member-name "Slices" :json-name
                                      "slices")
                                     (slow-pal :target-type h264slow-pal
                                      :member-name "SlowPal" :json-name
                                      "slowPal")
                                     (softness :target-type integer-min0max128
                                      :member-name "Softness" :json-name
                                      "softness")
                                     (spatial-adaptive-quantization
                                      :target-type
                                      h264spatial-adaptive-quantization
                                      :member-name
                                      "SpatialAdaptiveQuantization" :json-name
                                      "spatialAdaptiveQuantization")
                                     (syntax :target-type h264syntax
                                      :member-name "Syntax" :json-name
                                      "syntax")
                                     (telecine :target-type h264telecine
                                      :member-name "Telecine" :json-name
                                      "telecine")
                                     (temporal-adaptive-quantization
                                      :target-type
                                      h264temporal-adaptive-quantization
                                      :member-name
                                      "TemporalAdaptiveQuantization" :json-name
                                      "temporalAdaptiveQuantization")
                                     (unregistered-sei-timecode :target-type
                                      h264unregistered-sei-timecode
                                      :member-name "UnregisteredSeiTimecode"
                                      :json-name "unregisteredSeiTimecode")
                                     (write-mp4packaging-type :target-type
                                      h264write-mp4packaging-type :member-name
                                      "WriteMp4PackagingType" :json-name
                                      "writeMp4PackagingType"))
                                    (:shape-name "H264Settings"))

(smithy/sdk/shapes:define-enum h264slow-pal
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264spatial-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264syntax
    common-lisp:nil
  (:default "DEFAULT")
  (:rp2027 "RP2027"))

(smithy/sdk/shapes:define-enum h264telecine
    common-lisp:nil
  (:none "NONE")
  (:soft "SOFT")
  (:hard "HARD"))

(smithy/sdk/shapes:define-enum h264temporal-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264unregistered-sei-timecode
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h264write-mp4packaging-type
    common-lisp:nil
  (:avc1 "AVC1")
  (:avc3 "AVC3"))

(smithy/sdk/shapes:define-enum h265adaptive-quantization
    common-lisp:nil
  (:off "OFF")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:higher "HIGHER")
  (:max "MAX")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum h265alternate-transfer-function-sei
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265codec-level
    common-lisp:nil
  (:auto "AUTO")
  (:level-1 "LEVEL_1")
  (:level-2 "LEVEL_2")
  (:level-2-1 "LEVEL_2_1")
  (:level-3 "LEVEL_3")
  (:level-3-1 "LEVEL_3_1")
  (:level-4 "LEVEL_4")
  (:level-4-1 "LEVEL_4_1")
  (:level-5 "LEVEL_5")
  (:level-5-1 "LEVEL_5_1")
  (:level-5-2 "LEVEL_5_2")
  (:level-6 "LEVEL_6")
  (:level-6-1 "LEVEL_6_1")
  (:level-6-2 "LEVEL_6_2"))

(smithy/sdk/shapes:define-enum h265codec-profile
    common-lisp:nil
  (:main-main "MAIN_MAIN")
  (:main-high "MAIN_HIGH")
  (:main10-main "MAIN10_MAIN")
  (:main10-high "MAIN10_HIGH")
  (:main-422-8bit-main "MAIN_422_8BIT_MAIN")
  (:main-422-8bit-high "MAIN_422_8BIT_HIGH")
  (:main-422-10bit-main "MAIN_422_10BIT_MAIN")
  (:main-422-10bit-high "MAIN_422_10BIT_HIGH"))

(smithy/sdk/shapes:define-enum h265deblocking
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum h265dynamic-sub-gop
    common-lisp:nil
  (:adaptive "ADAPTIVE")
  (:static "STATIC"))

(smithy/sdk/shapes:define-enum h265end-of-stream-markers
    common-lisp:nil
  (:include "INCLUDE")
  (:suppress "SUPPRESS"))

(smithy/sdk/shapes:define-enum h265flicker-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum h265framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum h265gop-breference
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265gop-size-units
    common-lisp:nil
  (:frames "FRAMES")
  (:seconds "SECONDS")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum h265interlace-mode
    common-lisp:nil
  (:progressive "PROGRESSIVE")
  (:top-field "TOP_FIELD")
  (:bottom-field "BOTTOM_FIELD")
  (:follow-top-field "FOLLOW_TOP_FIELD")
  (:follow-bottom-field "FOLLOW_BOTTOM_FIELD"))

(smithy/sdk/shapes:define-enum h265par-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum h265quality-tuning-level
    common-lisp:nil
  (:single-pass "SINGLE_PASS")
  (:single-pass-hq "SINGLE_PASS_HQ")
  (:multi-pass-hq "MULTI_PASS_HQ"))

(smithy/sdk/shapes:define-structure h265qvbr-settings common-lisp:nil
                                    ((max-average-bitrate :target-type
                                      integer-min1000max1466400000 :member-name
                                      "MaxAverageBitrate" :json-name
                                      "maxAverageBitrate")
                                     (qvbr-quality-level :target-type
                                      integer-min1max10 :member-name
                                      "QvbrQualityLevel" :json-name
                                      "qvbrQualityLevel")
                                     (qvbr-quality-level-fine-tune :target-type
                                      double-min0max1 :member-name
                                      "QvbrQualityLevelFineTune" :json-name
                                      "qvbrQualityLevelFineTune"))
                                    (:shape-name "H265QvbrSettings"))

(smithy/sdk/shapes:define-enum h265rate-control-mode
    common-lisp:nil
  (:vbr "VBR")
  (:cbr "CBR")
  (:qvbr "QVBR"))

(smithy/sdk/shapes:define-enum h265sample-adaptive-offset-filter-mode
    common-lisp:nil
  (:default "DEFAULT")
  (:adaptive "ADAPTIVE")
  (:off "OFF"))

(smithy/sdk/shapes:define-enum h265scan-type-conversion-mode
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:interlaced-optimize "INTERLACED_OPTIMIZE"))

(smithy/sdk/shapes:define-enum h265scene-change-detect
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:transition-detection "TRANSITION_DETECTION"))

(smithy/sdk/shapes:define-structure h265settings common-lisp:nil
                                    ((adaptive-quantization :target-type
                                      h265adaptive-quantization :member-name
                                      "AdaptiveQuantization" :json-name
                                      "adaptiveQuantization")
                                     (alternate-transfer-function-sei
                                      :target-type
                                      h265alternate-transfer-function-sei
                                      :member-name
                                      "AlternateTransferFunctionSei" :json-name
                                      "alternateTransferFunctionSei")
                                     (bandwidth-reduction-filter :target-type
                                      bandwidth-reduction-filter :member-name
                                      "BandwidthReductionFilter" :json-name
                                      "bandwidthReductionFilter")
                                     (bitrate :target-type
                                      integer-min1000max1466400000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (codec-level :target-type h265codec-level
                                      :member-name "CodecLevel" :json-name
                                      "codecLevel")
                                     (codec-profile :target-type
                                      h265codec-profile :member-name
                                      "CodecProfile" :json-name "codecProfile")
                                     (deblocking :target-type h265deblocking
                                      :member-name "Deblocking" :json-name
                                      "deblocking")
                                     (dynamic-sub-gop :target-type
                                      h265dynamic-sub-gop :member-name
                                      "DynamicSubGop" :json-name
                                      "dynamicSubGop")
                                     (end-of-stream-markers :target-type
                                      h265end-of-stream-markers :member-name
                                      "EndOfStreamMarkers" :json-name
                                      "endOfStreamMarkers")
                                     (flicker-adaptive-quantization
                                      :target-type
                                      h265flicker-adaptive-quantization
                                      :member-name
                                      "FlickerAdaptiveQuantization" :json-name
                                      "flickerAdaptiveQuantization")
                                     (framerate-control :target-type
                                      h265framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      h265framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (gop-breference :target-type
                                      h265gop-breference :member-name
                                      "GopBReference" :json-name
                                      "gopBReference")
                                     (gop-closed-cadence :target-type
                                      integer-min0max2147483647 :member-name
                                      "GopClosedCadence" :json-name
                                      "gopClosedCadence")
                                     (gop-size :target-type double-min0
                                      :member-name "GopSize" :json-name
                                      "gopSize")
                                     (gop-size-units :target-type
                                      h265gop-size-units :member-name
                                      "GopSizeUnits" :json-name "gopSizeUnits")
                                     (hrd-buffer-final-fill-percentage
                                      :target-type integer-min0max100
                                      :member-name
                                      "HrdBufferFinalFillPercentage" :json-name
                                      "hrdBufferFinalFillPercentage")
                                     (hrd-buffer-initial-fill-percentage
                                      :target-type integer-min0max100
                                      :member-name
                                      "HrdBufferInitialFillPercentage"
                                      :json-name
                                      "hrdBufferInitialFillPercentage")
                                     (hrd-buffer-size :target-type
                                      integer-min0max1466400000 :member-name
                                      "HrdBufferSize" :json-name
                                      "hrdBufferSize")
                                     (interlace-mode :target-type
                                      h265interlace-mode :member-name
                                      "InterlaceMode" :json-name
                                      "interlaceMode")
                                     (max-bitrate :target-type
                                      integer-min1000max1466400000 :member-name
                                      "MaxBitrate" :json-name "maxBitrate")
                                     (min-iinterval :target-type
                                      integer-min0max30 :member-name
                                      "MinIInterval" :json-name "minIInterval")
                                     (number-bframes-between-reference-frames
                                      :target-type integer-min0max7
                                      :member-name
                                      "NumberBFramesBetweenReferenceFrames"
                                      :json-name
                                      "numberBFramesBetweenReferenceFrames")
                                     (number-reference-frames :target-type
                                      integer-min1max6 :member-name
                                      "NumberReferenceFrames" :json-name
                                      "numberReferenceFrames")
                                     (par-control :target-type h265par-control
                                      :member-name "ParControl" :json-name
                                      "parControl")
                                     (par-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParDenominator" :json-name
                                      "parDenominator")
                                     (par-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParNumerator" :json-name "parNumerator")
                                     (per-frame-metrics :target-type
                                      list-of-frame-metric-type :member-name
                                      "PerFrameMetrics" :json-name
                                      "perFrameMetrics")
                                     (quality-tuning-level :target-type
                                      h265quality-tuning-level :member-name
                                      "QualityTuningLevel" :json-name
                                      "qualityTuningLevel")
                                     (qvbr-settings :target-type
                                      h265qvbr-settings :member-name
                                      "QvbrSettings" :json-name "qvbrSettings")
                                     (rate-control-mode :target-type
                                      h265rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode")
                                     (sample-adaptive-offset-filter-mode
                                      :target-type
                                      h265sample-adaptive-offset-filter-mode
                                      :member-name
                                      "SampleAdaptiveOffsetFilterMode"
                                      :json-name
                                      "sampleAdaptiveOffsetFilterMode")
                                     (scan-type-conversion-mode :target-type
                                      h265scan-type-conversion-mode
                                      :member-name "ScanTypeConversionMode"
                                      :json-name "scanTypeConversionMode")
                                     (scene-change-detect :target-type
                                      h265scene-change-detect :member-name
                                      "SceneChangeDetect" :json-name
                                      "sceneChangeDetect")
                                     (slices :target-type integer-min1max32
                                      :member-name "Slices" :json-name
                                      "slices")
                                     (slow-pal :target-type h265slow-pal
                                      :member-name "SlowPal" :json-name
                                      "slowPal")
                                     (spatial-adaptive-quantization
                                      :target-type
                                      h265spatial-adaptive-quantization
                                      :member-name
                                      "SpatialAdaptiveQuantization" :json-name
                                      "spatialAdaptiveQuantization")
                                     (telecine :target-type h265telecine
                                      :member-name "Telecine" :json-name
                                      "telecine")
                                     (temporal-adaptive-quantization
                                      :target-type
                                      h265temporal-adaptive-quantization
                                      :member-name
                                      "TemporalAdaptiveQuantization" :json-name
                                      "temporalAdaptiveQuantization")
                                     (temporal-ids :target-type
                                      h265temporal-ids :member-name
                                      "TemporalIds" :json-name "temporalIds")
                                     (tiles :target-type h265tiles :member-name
                                      "Tiles" :json-name "tiles")
                                     (unregistered-sei-timecode :target-type
                                      h265unregistered-sei-timecode
                                      :member-name "UnregisteredSeiTimecode"
                                      :json-name "unregisteredSeiTimecode")
                                     (write-mp4packaging-type :target-type
                                      h265write-mp4packaging-type :member-name
                                      "WriteMp4PackagingType" :json-name
                                      "writeMp4PackagingType"))
                                    (:shape-name "H265Settings"))

(smithy/sdk/shapes:define-enum h265slow-pal
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265spatial-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265telecine
    common-lisp:nil
  (:none "NONE")
  (:soft "SOFT")
  (:hard "HARD"))

(smithy/sdk/shapes:define-enum h265temporal-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265temporal-ids
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265tiles
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265unregistered-sei-timecode
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum h265write-mp4packaging-type
    common-lisp:nil
  (:hvc1 "HVC1")
  (:hev1 "HEV1"))

(smithy/sdk/shapes:define-enum hdrto-sdrtone-mapper
    common-lisp:nil
  (:preserve-details "PRESERVE_DETAILS")
  (:vibrant "VIBRANT"))

(smithy/sdk/shapes:define-structure hdr10metadata common-lisp:nil
                                    ((blue-primary-x :target-type
                                      integer-min0max50000 :member-name
                                      "BluePrimaryX" :json-name "bluePrimaryX")
                                     (blue-primary-y :target-type
                                      integer-min0max50000 :member-name
                                      "BluePrimaryY" :json-name "bluePrimaryY")
                                     (green-primary-x :target-type
                                      integer-min0max50000 :member-name
                                      "GreenPrimaryX" :json-name
                                      "greenPrimaryX")
                                     (green-primary-y :target-type
                                      integer-min0max50000 :member-name
                                      "GreenPrimaryY" :json-name
                                      "greenPrimaryY")
                                     (max-content-light-level :target-type
                                      integer-min0max65535 :member-name
                                      "MaxContentLightLevel" :json-name
                                      "maxContentLightLevel")
                                     (max-frame-average-light-level
                                      :target-type integer-min0max65535
                                      :member-name "MaxFrameAverageLightLevel"
                                      :json-name "maxFrameAverageLightLevel")
                                     (max-luminance :target-type
                                      integer-min0max2147483647 :member-name
                                      "MaxLuminance" :json-name "maxLuminance")
                                     (min-luminance :target-type
                                      integer-min0max2147483647 :member-name
                                      "MinLuminance" :json-name "minLuminance")
                                     (red-primary-x :target-type
                                      integer-min0max50000 :member-name
                                      "RedPrimaryX" :json-name "redPrimaryX")
                                     (red-primary-y :target-type
                                      integer-min0max50000 :member-name
                                      "RedPrimaryY" :json-name "redPrimaryY")
                                     (white-point-x :target-type
                                      integer-min0max50000 :member-name
                                      "WhitePointX" :json-name "whitePointX")
                                     (white-point-y :target-type
                                      integer-min0max50000 :member-name
                                      "WhitePointY" :json-name "whitePointY"))
                                    (:shape-name "Hdr10Metadata"))

(smithy/sdk/shapes:define-structure hdr10plus common-lisp:nil
                                    ((mastering-monitor-nits :target-type
                                      integer-min0max4000 :member-name
                                      "MasteringMonitorNits" :json-name
                                      "masteringMonitorNits")
                                     (target-monitor-nits :target-type
                                      integer-min0max4000 :member-name
                                      "TargetMonitorNits" :json-name
                                      "targetMonitorNits"))
                                    (:shape-name "Hdr10Plus"))

(smithy/sdk/shapes:define-enum hls-ad-markers
    common-lisp:nil
  (:elemental "ELEMENTAL")
  (:elemental-scte35 "ELEMENTAL_SCTE35"))

(smithy/sdk/shapes:define-structure hls-additional-manifest common-lisp:nil
                                    ((manifest-name-modifier :target-type
                                      string-min1 :member-name
                                      "ManifestNameModifier" :json-name
                                      "manifestNameModifier")
                                     (selected-outputs :target-type
                                      list-of-string-min1 :member-name
                                      "SelectedOutputs" :json-name
                                      "selectedOutputs"))
                                    (:shape-name "HlsAdditionalManifest"))

(smithy/sdk/shapes:define-enum hls-audio-only-container
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:m2ts "M2TS"))

(smithy/sdk/shapes:define-enum hls-audio-only-header
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum hls-audio-track-type
    common-lisp:nil
  (:alternate-audio-auto-select-default "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT")
  (:alternate-audio-auto-select "ALTERNATE_AUDIO_AUTO_SELECT")
  (:alternate-audio-not-auto-select "ALTERNATE_AUDIO_NOT_AUTO_SELECT")
  (:audio-only-variant-stream "AUDIO_ONLY_VARIANT_STREAM"))

(smithy/sdk/shapes:define-structure hls-caption-language-mapping
                                    common-lisp:nil
                                    ((caption-channel :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "CaptionChannel" :json-name
                                      "captionChannel")
                                     (custom-language-code :target-type
                                      string-min3max3pattern-aza-z3
                                      :member-name "CustomLanguageCode"
                                      :json-name "customLanguageCode")
                                     (language-code :target-type language-code
                                      :member-name "LanguageCode" :json-name
                                      "languageCode")
                                     (language-description :target-type string
                                      :member-name "LanguageDescription"
                                      :json-name "languageDescription"))
                                    (:shape-name "HlsCaptionLanguageMapping"))

(smithy/sdk/shapes:define-enum hls-caption-language-setting
    common-lisp:nil
  (:insert "INSERT")
  (:omit "OMIT")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum hls-caption-segment-length-control
    common-lisp:nil
  (:large-segments "LARGE_SEGMENTS")
  (:match-video "MATCH_VIDEO"))

(smithy/sdk/shapes:define-enum hls-client-cache
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum hls-codec-specification
    common-lisp:nil
  (:rfc-6381 "RFC_6381")
  (:rfc-4281 "RFC_4281"))

(smithy/sdk/shapes:define-enum hls-descriptive-video-service-flag
    common-lisp:nil
  (:dont-flag "DONT_FLAG")
  (:flag "FLAG"))

(smithy/sdk/shapes:define-enum hls-directory-structure
    common-lisp:nil
  (:single-directory "SINGLE_DIRECTORY")
  (:subdirectory-per-stream "SUBDIRECTORY_PER_STREAM"))

(smithy/sdk/shapes:define-structure hls-encryption-settings common-lisp:nil
                                    ((constant-initialization-vector
                                      :target-type
                                      string-min32max32pattern09a-faf32
                                      :member-name
                                      "ConstantInitializationVector" :json-name
                                      "constantInitializationVector")
                                     (encryption-method :target-type
                                      hls-encryption-type :member-name
                                      "EncryptionMethod" :json-name
                                      "encryptionMethod")
                                     (initialization-vector-in-manifest
                                      :target-type
                                      hls-initialization-vector-in-manifest
                                      :member-name
                                      "InitializationVectorInManifest"
                                      :json-name
                                      "initializationVectorInManifest")
                                     (offline-encrypted :target-type
                                      hls-offline-encrypted :member-name
                                      "OfflineEncrypted" :json-name
                                      "offlineEncrypted")
                                     (speke-key-provider :target-type
                                      speke-key-provider :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider")
                                     (static-key-provider :target-type
                                      static-key-provider :member-name
                                      "StaticKeyProvider" :json-name
                                      "staticKeyProvider")
                                     (type :target-type hls-key-provider-type
                                      :member-name "Type" :json-name "type"))
                                    (:shape-name "HlsEncryptionSettings"))

(smithy/sdk/shapes:define-enum hls-encryption-type
    common-lisp:nil
  (:aes128 "AES128")
  (:sample-aes "SAMPLE_AES"))

(smithy/sdk/shapes:define-structure hls-group-settings common-lisp:nil
                                    ((ad-markers :target-type
                                      list-of-hls-ad-markers :member-name
                                      "AdMarkers" :json-name "adMarkers")
                                     (additional-manifests :target-type
                                      list-of-hls-additional-manifest
                                      :member-name "AdditionalManifests"
                                      :json-name "additionalManifests")
                                     (audio-only-header :target-type
                                      hls-audio-only-header :member-name
                                      "AudioOnlyHeader" :json-name
                                      "audioOnlyHeader")
                                     (base-url :target-type string :member-name
                                      "BaseUrl" :json-name "baseUrl")
                                     (caption-language-mappings :target-type
                                      list-of-hls-caption-language-mapping
                                      :member-name "CaptionLanguageMappings"
                                      :json-name "captionLanguageMappings")
                                     (caption-language-setting :target-type
                                      hls-caption-language-setting :member-name
                                      "CaptionLanguageSetting" :json-name
                                      "captionLanguageSetting")
                                     (caption-segment-length-control
                                      :target-type
                                      hls-caption-segment-length-control
                                      :member-name
                                      "CaptionSegmentLengthControl" :json-name
                                      "captionSegmentLengthControl")
                                     (client-cache :target-type
                                      hls-client-cache :member-name
                                      "ClientCache" :json-name "clientCache")
                                     (codec-specification :target-type
                                      hls-codec-specification :member-name
                                      "CodecSpecification" :json-name
                                      "codecSpecification")
                                     (destination :target-type
                                      string-pattern-s3 :member-name
                                      "Destination" :json-name "destination")
                                     (destination-settings :target-type
                                      destination-settings :member-name
                                      "DestinationSettings" :json-name
                                      "destinationSettings")
                                     (directory-structure :target-type
                                      hls-directory-structure :member-name
                                      "DirectoryStructure" :json-name
                                      "directoryStructure")
                                     (encryption :target-type
                                      hls-encryption-settings :member-name
                                      "Encryption" :json-name "encryption")
                                     (image-based-trick-play :target-type
                                      hls-image-based-trick-play :member-name
                                      "ImageBasedTrickPlay" :json-name
                                      "imageBasedTrickPlay")
                                     (image-based-trick-play-settings
                                      :target-type
                                      hls-image-based-trick-play-settings
                                      :member-name
                                      "ImageBasedTrickPlaySettings" :json-name
                                      "imageBasedTrickPlaySettings")
                                     (manifest-compression :target-type
                                      hls-manifest-compression :member-name
                                      "ManifestCompression" :json-name
                                      "manifestCompression")
                                     (manifest-duration-format :target-type
                                      hls-manifest-duration-format :member-name
                                      "ManifestDurationFormat" :json-name
                                      "manifestDurationFormat")
                                     (min-final-segment-length :target-type
                                      double-min0max2147483647 :member-name
                                      "MinFinalSegmentLength" :json-name
                                      "minFinalSegmentLength")
                                     (min-segment-length :target-type
                                      integer-min0max2147483647 :member-name
                                      "MinSegmentLength" :json-name
                                      "minSegmentLength")
                                     (output-selection :target-type
                                      hls-output-selection :member-name
                                      "OutputSelection" :json-name
                                      "outputSelection")
                                     (program-date-time :target-type
                                      hls-program-date-time :member-name
                                      "ProgramDateTime" :json-name
                                      "programDateTime")
                                     (program-date-time-period :target-type
                                      integer-min0max3600 :member-name
                                      "ProgramDateTimePeriod" :json-name
                                      "programDateTimePeriod")
                                     (progressive-write-hls-manifest
                                      :target-type
                                      hls-progressive-write-hls-manifest
                                      :member-name
                                      "ProgressiveWriteHlsManifest" :json-name
                                      "progressiveWriteHlsManifest")
                                     (segment-control :target-type
                                      hls-segment-control :member-name
                                      "SegmentControl" :json-name
                                      "segmentControl")
                                     (segment-length :target-type
                                      integer-min1max2147483647 :member-name
                                      "SegmentLength" :json-name
                                      "segmentLength")
                                     (segment-length-control :target-type
                                      hls-segment-length-control :member-name
                                      "SegmentLengthControl" :json-name
                                      "segmentLengthControl")
                                     (segments-per-subdirectory :target-type
                                      integer-min1max2147483647 :member-name
                                      "SegmentsPerSubdirectory" :json-name
                                      "segmentsPerSubdirectory")
                                     (stream-inf-resolution :target-type
                                      hls-stream-inf-resolution :member-name
                                      "StreamInfResolution" :json-name
                                      "streamInfResolution")
                                     (target-duration-compatibility-mode
                                      :target-type
                                      hls-target-duration-compatibility-mode
                                      :member-name
                                      "TargetDurationCompatibilityMode"
                                      :json-name
                                      "targetDurationCompatibilityMode")
                                     (timed-metadata-id3frame :target-type
                                      hls-timed-metadata-id3frame :member-name
                                      "TimedMetadataId3Frame" :json-name
                                      "timedMetadataId3Frame")
                                     (timed-metadata-id3period :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "TimedMetadataId3Period"
                                      :json-name "timedMetadataId3Period")
                                     (timestamp-delta-milliseconds :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "TimestampDeltaMilliseconds"
                                      :json-name "timestampDeltaMilliseconds"))
                                    (:shape-name "HlsGroupSettings"))

(smithy/sdk/shapes:define-enum hls-iframe-only-manifest
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum hls-image-based-trick-play
    common-lisp:nil
  (:none "NONE")
  (:thumbnail "THUMBNAIL")
  (:thumbnail-and-fullframe "THUMBNAIL_AND_FULLFRAME")
  (:advanced "ADVANCED"))

(smithy/sdk/shapes:define-structure hls-image-based-trick-play-settings
                                    common-lisp:nil
                                    ((interval-cadence :target-type
                                      hls-interval-cadence :member-name
                                      "IntervalCadence" :json-name
                                      "intervalCadence")
                                     (thumbnail-height :target-type
                                      integer-min2max4096 :member-name
                                      "ThumbnailHeight" :json-name
                                      "thumbnailHeight")
                                     (thumbnail-interval :target-type
                                      double-min0max2147483647 :member-name
                                      "ThumbnailInterval" :json-name
                                      "thumbnailInterval")
                                     (thumbnail-width :target-type
                                      integer-min8max4096 :member-name
                                      "ThumbnailWidth" :json-name
                                      "thumbnailWidth")
                                     (tile-height :target-type
                                      integer-min1max2048 :member-name
                                      "TileHeight" :json-name "tileHeight")
                                     (tile-width :target-type
                                      integer-min1max512 :member-name
                                      "TileWidth" :json-name "tileWidth"))
                                    (:shape-name
                                     "HlsImageBasedTrickPlaySettings"))

(smithy/sdk/shapes:define-enum hls-initialization-vector-in-manifest
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum hls-interval-cadence
    common-lisp:nil
  (:follow-iframe "FOLLOW_IFRAME")
  (:follow-custom "FOLLOW_CUSTOM"))

(smithy/sdk/shapes:define-enum hls-key-provider-type
    common-lisp:nil
  (:speke "SPEKE")
  (:static-key "STATIC_KEY"))

(smithy/sdk/shapes:define-enum hls-manifest-compression
    common-lisp:nil
  (:gzip "GZIP")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum hls-manifest-duration-format
    common-lisp:nil
  (:floating-point "FLOATING_POINT")
  (:integer "INTEGER"))

(smithy/sdk/shapes:define-enum hls-offline-encrypted
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum hls-output-selection
    common-lisp:nil
  (:manifests-and-segments "MANIFESTS_AND_SEGMENTS")
  (:segments-only "SEGMENTS_ONLY"))

(smithy/sdk/shapes:define-enum hls-program-date-time
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum hls-progressive-write-hls-manifest
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure hls-rendition-group-settings
                                    common-lisp:nil
                                    ((rendition-group-id :target-type string
                                      :member-name "RenditionGroupId"
                                      :json-name "renditionGroupId")
                                     (rendition-language-code :target-type
                                      language-code :member-name
                                      "RenditionLanguageCode" :json-name
                                      "renditionLanguageCode")
                                     (rendition-name :target-type string
                                      :member-name "RenditionName" :json-name
                                      "renditionName"))
                                    (:shape-name "HlsRenditionGroupSettings"))

(smithy/sdk/shapes:define-enum hls-segment-control
    common-lisp:nil
  (:single-file "SINGLE_FILE")
  (:segmented-files "SEGMENTED_FILES"))

(smithy/sdk/shapes:define-enum hls-segment-length-control
    common-lisp:nil
  (:exact "EXACT")
  (:gop-multiple "GOP_MULTIPLE")
  (:match "MATCH"))

(smithy/sdk/shapes:define-structure hls-settings common-lisp:nil
                                    ((audio-group-id :target-type string
                                      :member-name "AudioGroupId" :json-name
                                      "audioGroupId")
                                     (audio-only-container :target-type
                                      hls-audio-only-container :member-name
                                      "AudioOnlyContainer" :json-name
                                      "audioOnlyContainer")
                                     (audio-rendition-sets :target-type string
                                      :member-name "AudioRenditionSets"
                                      :json-name "audioRenditionSets")
                                     (audio-track-type :target-type
                                      hls-audio-track-type :member-name
                                      "AudioTrackType" :json-name
                                      "audioTrackType")
                                     (descriptive-video-service-flag
                                      :target-type
                                      hls-descriptive-video-service-flag
                                      :member-name
                                      "DescriptiveVideoServiceFlag" :json-name
                                      "descriptiveVideoServiceFlag")
                                     (iframe-only-manifest :target-type
                                      hls-iframe-only-manifest :member-name
                                      "IFrameOnlyManifest" :json-name
                                      "iFrameOnlyManifest")
                                     (segment-modifier :target-type string
                                      :member-name "SegmentModifier" :json-name
                                      "segmentModifier"))
                                    (:shape-name "HlsSettings"))

(smithy/sdk/shapes:define-enum hls-stream-inf-resolution
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum hls-target-duration-compatibility-mode
    common-lisp:nil
  (:legacy "LEGACY")
  (:spec-compliant "SPEC_COMPLIANT"))

(smithy/sdk/shapes:define-enum hls-timed-metadata-id3frame
    common-lisp:nil
  (:none "NONE")
  (:priv "PRIV")
  (:tdrl "TDRL"))

(smithy/sdk/shapes:define-structure hop-destination common-lisp:nil
                                    ((priority :target-type
                                      integer-min-negative50max50 :member-name
                                      "Priority" :json-name "priority")
                                     (queue :target-type string :member-name
                                      "Queue" :json-name "queue")
                                     (wait-minutes :target-type integer
                                      :member-name "WaitMinutes" :json-name
                                      "waitMinutes"))
                                    (:shape-name "HopDestination"))

(smithy/sdk/shapes:define-structure id3insertion common-lisp:nil
                                    ((id3 :target-type string-pattern-aza-z0902
                                      :member-name "Id3" :json-name "id3")
                                     (timecode :target-type
                                      string-pattern010920405090509092
                                      :member-name "Timecode" :json-name
                                      "timecode"))
                                    (:shape-name "Id3Insertion"))

(smithy/sdk/shapes:define-structure image-inserter common-lisp:nil
                                    ((insertable-images :target-type
                                      list-of-insertable-image :member-name
                                      "InsertableImages" :json-name
                                      "insertableImages")
                                     (sdr-reference-white-level :target-type
                                      integer-min100max1000 :member-name
                                      "SdrReferenceWhiteLevel" :json-name
                                      "sdrReferenceWhiteLevel"))
                                    (:shape-name "ImageInserter"))

(smithy/sdk/shapes:define-enum imsc-accessibility-subs
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure imsc-destination-settings common-lisp:nil
                                    ((accessibility :target-type
                                      imsc-accessibility-subs :member-name
                                      "Accessibility" :json-name
                                      "accessibility")
                                     (style-passthrough :target-type
                                      imsc-style-passthrough :member-name
                                      "StylePassthrough" :json-name
                                      "stylePassthrough"))
                                    (:shape-name "ImscDestinationSettings"))

(smithy/sdk/shapes:define-enum imsc-style-passthrough
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure input common-lisp:nil
                                    ((advanced-input-filter :target-type
                                      advanced-input-filter :member-name
                                      "AdvancedInputFilter" :json-name
                                      "advancedInputFilter")
                                     (advanced-input-filter-settings
                                      :target-type
                                      advanced-input-filter-settings
                                      :member-name
                                      "AdvancedInputFilterSettings" :json-name
                                      "advancedInputFilterSettings")
                                     (audio-selector-groups :target-type
                                      map-of-audio-selector-group :member-name
                                      "AudioSelectorGroups" :json-name
                                      "audioSelectorGroups")
                                     (audio-selectors :target-type
                                      map-of-audio-selector :member-name
                                      "AudioSelectors" :json-name
                                      "audioSelectors")
                                     (caption-selectors :target-type
                                      map-of-caption-selector :member-name
                                      "CaptionSelectors" :json-name
                                      "captionSelectors")
                                     (crop :target-type rectangle :member-name
                                      "Crop" :json-name "crop")
                                     (deblock-filter :target-type
                                      input-deblock-filter :member-name
                                      "DeblockFilter" :json-name
                                      "deblockFilter")
                                     (decryption-settings :target-type
                                      input-decryption-settings :member-name
                                      "DecryptionSettings" :json-name
                                      "decryptionSettings")
                                     (denoise-filter :target-type
                                      input-denoise-filter :member-name
                                      "DenoiseFilter" :json-name
                                      "denoiseFilter")
                                     (dolby-vision-metadata-xml :target-type
                                      string-min14pattern-s3xml-xmlhttps-xml-xml
                                      :member-name "DolbyVisionMetadataXml"
                                      :json-name "dolbyVisionMetadataXml")
                                     (dynamic-audio-selectors :target-type
                                      map-of-dynamic-audio-selector
                                      :member-name "DynamicAudioSelectors"
                                      :json-name "dynamicAudioSelectors")
                                     (file-input :target-type
                                      string-max2048pattern-s3https
                                      :member-name "FileInput" :json-name
                                      "fileInput")
                                     (filter-enable :target-type
                                      input-filter-enable :member-name
                                      "FilterEnable" :json-name "filterEnable")
                                     (filter-strength :target-type
                                      integer-min0max5 :member-name
                                      "FilterStrength" :json-name
                                      "filterStrength")
                                     (image-inserter :target-type
                                      image-inserter :member-name
                                      "ImageInserter" :json-name
                                      "imageInserter")
                                     (input-clippings :target-type
                                      list-of-input-clipping :member-name
                                      "InputClippings" :json-name
                                      "inputClippings")
                                     (input-scan-type :target-type
                                      input-scan-type :member-name
                                      "InputScanType" :json-name
                                      "inputScanType")
                                     (position :target-type rectangle
                                      :member-name "Position" :json-name
                                      "position")
                                     (program-number :target-type
                                      integer-min1max2147483647 :member-name
                                      "ProgramNumber" :json-name
                                      "programNumber")
                                     (psi-control :target-type
                                      input-psi-control :member-name
                                      "PsiControl" :json-name "psiControl")
                                     (supplemental-imps :target-type
                                      list-of-string-pattern-s3assetmapxml
                                      :member-name "SupplementalImps"
                                      :json-name "supplementalImps")
                                     (tams-settings :target-type
                                      input-tams-settings :member-name
                                      "TamsSettings" :json-name "tamsSettings")
                                     (timecode-source :target-type
                                      input-timecode-source :member-name
                                      "TimecodeSource" :json-name
                                      "timecodeSource")
                                     (timecode-start :target-type
                                      string-min11max11pattern01d20305d205d
                                      :member-name "TimecodeStart" :json-name
                                      "timecodeStart")
                                     (video-generator :target-type
                                      input-video-generator :member-name
                                      "VideoGenerator" :json-name
                                      "videoGenerator")
                                     (video-overlays :target-type
                                      list-of-video-overlay :member-name
                                      "VideoOverlays" :json-name
                                      "videoOverlays")
                                     (video-selector :target-type
                                      video-selector :member-name
                                      "VideoSelector" :json-name
                                      "videoSelector"))
                                    (:shape-name "Input"))

(smithy/sdk/shapes:define-structure input-clipping common-lisp:nil
                                    ((end-timecode :target-type
                                      string-pattern010920405090509092090909
                                      :member-name "EndTimecode" :json-name
                                      "endTimecode")
                                     (start-timecode :target-type
                                      string-pattern010920405090509092090909
                                      :member-name "StartTimecode" :json-name
                                      "startTimecode"))
                                    (:shape-name "InputClipping"))

(smithy/sdk/shapes:define-enum input-deblock-filter
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure input-decryption-settings common-lisp:nil
                                    ((decryption-mode :target-type
                                      decryption-mode :member-name
                                      "DecryptionMode" :json-name
                                      "decryptionMode")
                                     (encrypted-decryption-key :target-type
                                      string-min24max512pattern-aza-z0902
                                      :member-name "EncryptedDecryptionKey"
                                      :json-name "encryptedDecryptionKey")
                                     (initialization-vector :target-type
                                      string-min16max24pattern-aza-z0922aza-z0916
                                      :member-name "InitializationVector"
                                      :json-name "initializationVector")
                                     (kms-key-region :target-type
                                      string-min9max19pattern-az26east-west-central-north-south-east-west1912
                                      :member-name "KmsKeyRegion" :json-name
                                      "kmsKeyRegion"))
                                    (:shape-name "InputDecryptionSettings"))

(smithy/sdk/shapes:define-enum input-denoise-filter
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum input-filter-enable
    common-lisp:nil
  (:auto "AUTO")
  (:disable "DISABLE")
  (:force "FORCE"))

(smithy/sdk/shapes:define-enum input-policy
    common-lisp:nil
  (:allowed "ALLOWED")
  (:disallowed "DISALLOWED"))

(smithy/sdk/shapes:define-enum input-psi-control
    common-lisp:nil
  (:ignore-psi "IGNORE_PSI")
  (:use-psi "USE_PSI"))

(smithy/sdk/shapes:define-enum input-rotate
    common-lisp:nil
  (:degree-0 "DEGREE_0")
  (:degrees-90 "DEGREES_90")
  (:degrees-180 "DEGREES_180")
  (:degrees-270 "DEGREES_270")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum input-sample-range
    common-lisp:nil
  (:follow "FOLLOW")
  (:full-range "FULL_RANGE")
  (:limited-range "LIMITED_RANGE"))

(smithy/sdk/shapes:define-enum input-scan-type
    common-lisp:nil
  (:auto "AUTO")
  (:psf "PSF"))

(smithy/sdk/shapes:define-structure input-tams-settings common-lisp:nil
                                    ((auth-connection-arn :target-type
                                      string-pattern-arn-aws-az09events-az090912connection-azaz09af0936
                                      :member-name "AuthConnectionArn"
                                      :json-name "authConnectionArn")
                                     (gap-handling :target-type
                                      tams-gap-handling :member-name
                                      "GapHandling" :json-name "gapHandling")
                                     (source-id :target-type string
                                      :member-name "SourceId" :json-name
                                      "sourceId")
                                     (timerange :target-type
                                      string-pattern019090190908019090190908
                                      :member-name "Timerange" :json-name
                                      "timerange"))
                                    (:shape-name "InputTamsSettings"))

(smithy/sdk/shapes:define-structure input-template common-lisp:nil
                                    ((advanced-input-filter :target-type
                                      advanced-input-filter :member-name
                                      "AdvancedInputFilter" :json-name
                                      "advancedInputFilter")
                                     (advanced-input-filter-settings
                                      :target-type
                                      advanced-input-filter-settings
                                      :member-name
                                      "AdvancedInputFilterSettings" :json-name
                                      "advancedInputFilterSettings")
                                     (audio-selector-groups :target-type
                                      map-of-audio-selector-group :member-name
                                      "AudioSelectorGroups" :json-name
                                      "audioSelectorGroups")
                                     (audio-selectors :target-type
                                      map-of-audio-selector :member-name
                                      "AudioSelectors" :json-name
                                      "audioSelectors")
                                     (caption-selectors :target-type
                                      map-of-caption-selector :member-name
                                      "CaptionSelectors" :json-name
                                      "captionSelectors")
                                     (crop :target-type rectangle :member-name
                                      "Crop" :json-name "crop")
                                     (deblock-filter :target-type
                                      input-deblock-filter :member-name
                                      "DeblockFilter" :json-name
                                      "deblockFilter")
                                     (denoise-filter :target-type
                                      input-denoise-filter :member-name
                                      "DenoiseFilter" :json-name
                                      "denoiseFilter")
                                     (dolby-vision-metadata-xml :target-type
                                      string-min14pattern-s3xml-xmlhttps-xml-xml
                                      :member-name "DolbyVisionMetadataXml"
                                      :json-name "dolbyVisionMetadataXml")
                                     (dynamic-audio-selectors :target-type
                                      map-of-dynamic-audio-selector
                                      :member-name "DynamicAudioSelectors"
                                      :json-name "dynamicAudioSelectors")
                                     (filter-enable :target-type
                                      input-filter-enable :member-name
                                      "FilterEnable" :json-name "filterEnable")
                                     (filter-strength :target-type
                                      integer-min0max5 :member-name
                                      "FilterStrength" :json-name
                                      "filterStrength")
                                     (image-inserter :target-type
                                      image-inserter :member-name
                                      "ImageInserter" :json-name
                                      "imageInserter")
                                     (input-clippings :target-type
                                      list-of-input-clipping :member-name
                                      "InputClippings" :json-name
                                      "inputClippings")
                                     (input-scan-type :target-type
                                      input-scan-type :member-name
                                      "InputScanType" :json-name
                                      "inputScanType")
                                     (position :target-type rectangle
                                      :member-name "Position" :json-name
                                      "position")
                                     (program-number :target-type
                                      integer-min1max2147483647 :member-name
                                      "ProgramNumber" :json-name
                                      "programNumber")
                                     (psi-control :target-type
                                      input-psi-control :member-name
                                      "PsiControl" :json-name "psiControl")
                                     (timecode-source :target-type
                                      input-timecode-source :member-name
                                      "TimecodeSource" :json-name
                                      "timecodeSource")
                                     (timecode-start :target-type
                                      string-min11max11pattern01d20305d205d
                                      :member-name "TimecodeStart" :json-name
                                      "timecodeStart")
                                     (video-overlays :target-type
                                      list-of-video-overlay :member-name
                                      "VideoOverlays" :json-name
                                      "videoOverlays")
                                     (video-selector :target-type
                                      video-selector :member-name
                                      "VideoSelector" :json-name
                                      "videoSelector"))
                                    (:shape-name "InputTemplate"))

(smithy/sdk/shapes:define-enum input-timecode-source
    common-lisp:nil
  (:embedded "EMBEDDED")
  (:zerobased "ZEROBASED")
  (:specifiedstart "SPECIFIEDSTART"))

(smithy/sdk/shapes:define-structure input-video-generator common-lisp:nil
                                    ((channels :target-type integer-min1max32
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (duration :target-type
                                      integer-min50max86400000 :member-name
                                      "Duration" :json-name "duration")
                                     (framerate-denominator :target-type
                                      integer-min1max1001 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max60000 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (sample-rate :target-type
                                      integer-min32000max48000 :member-name
                                      "SampleRate" :json-name "sampleRate"))
                                    (:shape-name "InputVideoGenerator"))

(smithy/sdk/shapes:define-structure insertable-image common-lisp:nil
                                    ((duration :target-type
                                      integer-min0max2147483647 :member-name
                                      "Duration" :json-name "duration")
                                     (fade-in :target-type
                                      integer-min0max2147483647 :member-name
                                      "FadeIn" :json-name "fadeIn")
                                     (fade-out :target-type
                                      integer-min0max2147483647 :member-name
                                      "FadeOut" :json-name "fadeOut")
                                     (height :target-type
                                      integer-min0max2147483647 :member-name
                                      "Height" :json-name "height")
                                     (image-inserter-input :target-type
                                      string-min14pattern-s3bmp-bmppng-pngtga-tgahttps-bmp-bmppng-pngtga-tga
                                      :member-name "ImageInserterInput"
                                      :json-name "imageInserterInput")
                                     (image-x :target-type
                                      integer-min0max2147483647 :member-name
                                      "ImageX" :json-name "imageX")
                                     (image-y :target-type
                                      integer-min0max2147483647 :member-name
                                      "ImageY" :json-name "imageY")
                                     (layer :target-type integer-min0max99
                                      :member-name "Layer" :json-name "layer")
                                     (opacity :target-type integer-min0max100
                                      :member-name "Opacity" :json-name
                                      "opacity")
                                     (start-time :target-type
                                      string-pattern01d20305d205d :member-name
                                      "StartTime" :json-name "startTime")
                                     (width :target-type
                                      integer-min0max2147483647 :member-name
                                      "Width" :json-name "width"))
                                    (:shape-name "InsertableImage"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((acceleration-settings :target-type
                                      acceleration-settings :member-name
                                      "AccelerationSettings" :json-name
                                      "accelerationSettings")
                                     (acceleration-status :target-type
                                      acceleration-status :member-name
                                      "AccelerationStatus" :json-name
                                      "accelerationStatus")
                                     (arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (billing-tags-source :target-type
                                      billing-tags-source :member-name
                                      "BillingTagsSource" :json-name
                                      "billingTagsSource")
                                     (client-request-token :target-type string
                                      :member-name "ClientRequestToken"
                                      :json-name "clientRequestToken")
                                     (created-at :target-type timestamp-unix
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (current-phase :target-type job-phase
                                      :member-name "CurrentPhase" :json-name
                                      "currentPhase")
                                     (error-code :target-type integer
                                      :member-name "ErrorCode" :json-name
                                      "errorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage" :json-name
                                      "errorMessage")
                                     (hop-destinations :target-type
                                      list-of-hop-destination :member-name
                                      "HopDestinations" :json-name
                                      "hopDestinations")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (job-engine-version-requested :target-type
                                      string :member-name
                                      "JobEngineVersionRequested" :json-name
                                      "jobEngineVersionRequested")
                                     (job-engine-version-used :target-type
                                      string :member-name
                                      "JobEngineVersionUsed" :json-name
                                      "jobEngineVersionUsed")
                                     (job-percent-complete :target-type integer
                                      :member-name "JobPercentComplete"
                                      :json-name "jobPercentComplete")
                                     (job-template :target-type string
                                      :member-name "JobTemplate" :json-name
                                      "jobTemplate")
                                     (messages :target-type job-messages
                                      :member-name "Messages" :json-name
                                      "messages")
                                     (output-group-details :target-type
                                      list-of-output-group-detail :member-name
                                      "OutputGroupDetails" :json-name
                                      "outputGroupDetails")
                                     (priority :target-type
                                      integer-min-negative50max50 :member-name
                                      "Priority" :json-name "priority")
                                     (queue :target-type string :member-name
                                      "Queue" :json-name "queue")
                                     (queue-transitions :target-type
                                      list-of-queue-transition :member-name
                                      "QueueTransitions" :json-name
                                      "queueTransitions")
                                     (retry-count :target-type integer
                                      :member-name "RetryCount" :json-name
                                      "retryCount")
                                     (role :target-type string :required
                                      common-lisp:t :member-name "Role"
                                      :json-name "role")
                                     (settings :target-type job-settings
                                      :required common-lisp:t :member-name
                                      "Settings" :json-name "settings")
                                     (simulate-reserved-queue :target-type
                                      simulate-reserved-queue :member-name
                                      "SimulateReservedQueue" :json-name
                                      "simulateReservedQueue")
                                     (status :target-type job-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (status-update-interval :target-type
                                      status-update-interval :member-name
                                      "StatusUpdateInterval" :json-name
                                      "statusUpdateInterval")
                                     (timing :target-type timing :member-name
                                      "Timing" :json-name "timing")
                                     (user-metadata :target-type map-of-string
                                      :member-name "UserMetadata" :json-name
                                      "userMetadata")
                                     (warnings :target-type
                                      list-of-warning-group :member-name
                                      "Warnings" :json-name "warnings"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-structure job-engine-version common-lisp:nil
                                    ((expiration-date :target-type
                                      timestamp-unix :member-name
                                      "ExpirationDate" :json-name
                                      "expirationDate")
                                     (version :target-type string :member-name
                                      "Version" :json-name "version"))
                                    (:shape-name "JobEngineVersion"))

(smithy/sdk/shapes:define-structure job-messages common-lisp:nil
                                    ((info :target-type list-of-string
                                      :member-name "Info" :json-name "info")
                                     (warning :target-type list-of-string
                                      :member-name "Warning" :json-name
                                      "warning"))
                                    (:shape-name "JobMessages"))

(smithy/sdk/shapes:define-enum job-phase
    common-lisp:nil
  (:probing "PROBING")
  (:transcoding "TRANSCODING")
  (:uploading "UPLOADING"))

(smithy/sdk/shapes:define-structure job-settings common-lisp:nil
                                    ((ad-avail-offset :target-type
                                      integer-min-negative1000max1000
                                      :member-name "AdAvailOffset" :json-name
                                      "adAvailOffset")
                                     (avail-blanking :target-type
                                      avail-blanking :member-name
                                      "AvailBlanking" :json-name
                                      "availBlanking")
                                     (color-conversion3dlutsettings
                                      :target-type
                                      list-of-color-conversion3dlutsetting
                                      :member-name
                                      "ColorConversion3DLUTSettings" :json-name
                                      "colorConversion3DLUTSettings")
                                     (esam :target-type esam-settings
                                      :member-name "Esam" :json-name "esam")
                                     (extended-data-services :target-type
                                      extended-data-services :member-name
                                      "ExtendedDataServices" :json-name
                                      "extendedDataServices")
                                     (follow-source :target-type
                                      integer-min1max150 :member-name
                                      "FollowSource" :json-name "followSource")
                                     (inputs :target-type list-of-input
                                      :member-name "Inputs" :json-name
                                      "inputs")
                                     (kantar-watermark :target-type
                                      kantar-watermark-settings :member-name
                                      "KantarWatermark" :json-name
                                      "kantarWatermark")
                                     (motion-image-inserter :target-type
                                      motion-image-inserter :member-name
                                      "MotionImageInserter" :json-name
                                      "motionImageInserter")
                                     (nielsen-configuration :target-type
                                      nielsen-configuration :member-name
                                      "NielsenConfiguration" :json-name
                                      "nielsenConfiguration")
                                     (nielsen-non-linear-watermark :target-type
                                      nielsen-non-linear-watermark-settings
                                      :member-name "NielsenNonLinearWatermark"
                                      :json-name "nielsenNonLinearWatermark")
                                     (output-groups :target-type
                                      list-of-output-group :member-name
                                      "OutputGroups" :json-name "outputGroups")
                                     (timecode-config :target-type
                                      timecode-config :member-name
                                      "TimecodeConfig" :json-name
                                      "timecodeConfig")
                                     (timed-metadata-insertion :target-type
                                      timed-metadata-insertion :member-name
                                      "TimedMetadataInsertion" :json-name
                                      "timedMetadataInsertion"))
                                    (:shape-name "JobSettings"))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:progressing "PROGRESSING")
  (:complete "COMPLETE")
  (:canceled "CANCELED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure job-template common-lisp:nil
                                    ((acceleration-settings :target-type
                                      acceleration-settings :member-name
                                      "AccelerationSettings" :json-name
                                      "accelerationSettings")
                                     (arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (category :target-type string :member-name
                                      "Category" :json-name "category")
                                     (created-at :target-type timestamp-unix
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (hop-destinations :target-type
                                      list-of-hop-destination :member-name
                                      "HopDestinations" :json-name
                                      "hopDestinations")
                                     (last-updated :target-type timestamp-unix
                                      :member-name "LastUpdated" :json-name
                                      "lastUpdated")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (priority :target-type
                                      integer-min-negative50max50 :member-name
                                      "Priority" :json-name "priority")
                                     (queue :target-type string :member-name
                                      "Queue" :json-name "queue")
                                     (settings :target-type
                                      job-template-settings :required
                                      common-lisp:t :member-name "Settings"
                                      :json-name "settings")
                                     (status-update-interval :target-type
                                      status-update-interval :member-name
                                      "StatusUpdateInterval" :json-name
                                      "statusUpdateInterval")
                                     (type :target-type type :member-name
                                      "Type" :json-name "type"))
                                    (:shape-name "JobTemplate"))

(smithy/sdk/shapes:define-enum job-template-list-by
    common-lisp:nil
  (:name "NAME")
  (:creation-date "CREATION_DATE")
  (:system "SYSTEM"))

(smithy/sdk/shapes:define-structure job-template-settings common-lisp:nil
                                    ((ad-avail-offset :target-type
                                      integer-min-negative1000max1000
                                      :member-name "AdAvailOffset" :json-name
                                      "adAvailOffset")
                                     (avail-blanking :target-type
                                      avail-blanking :member-name
                                      "AvailBlanking" :json-name
                                      "availBlanking")
                                     (color-conversion3dlutsettings
                                      :target-type
                                      list-of-color-conversion3dlutsetting
                                      :member-name
                                      "ColorConversion3DLUTSettings" :json-name
                                      "colorConversion3DLUTSettings")
                                     (esam :target-type esam-settings
                                      :member-name "Esam" :json-name "esam")
                                     (extended-data-services :target-type
                                      extended-data-services :member-name
                                      "ExtendedDataServices" :json-name
                                      "extendedDataServices")
                                     (follow-source :target-type
                                      integer-min1max150 :member-name
                                      "FollowSource" :json-name "followSource")
                                     (inputs :target-type
                                      list-of-input-template :member-name
                                      "Inputs" :json-name "inputs")
                                     (kantar-watermark :target-type
                                      kantar-watermark-settings :member-name
                                      "KantarWatermark" :json-name
                                      "kantarWatermark")
                                     (motion-image-inserter :target-type
                                      motion-image-inserter :member-name
                                      "MotionImageInserter" :json-name
                                      "motionImageInserter")
                                     (nielsen-configuration :target-type
                                      nielsen-configuration :member-name
                                      "NielsenConfiguration" :json-name
                                      "nielsenConfiguration")
                                     (nielsen-non-linear-watermark :target-type
                                      nielsen-non-linear-watermark-settings
                                      :member-name "NielsenNonLinearWatermark"
                                      :json-name "nielsenNonLinearWatermark")
                                     (output-groups :target-type
                                      list-of-output-group :member-name
                                      "OutputGroups" :json-name "outputGroups")
                                     (timecode-config :target-type
                                      timecode-config :member-name
                                      "TimecodeConfig" :json-name
                                      "timecodeConfig")
                                     (timed-metadata-insertion :target-type
                                      timed-metadata-insertion :member-name
                                      "TimedMetadataInsertion" :json-name
                                      "timedMetadataInsertion"))
                                    (:shape-name "JobTemplateSettings"))

(smithy/sdk/shapes:define-structure kantar-watermark-settings common-lisp:nil
                                    ((channel-name :target-type
                                      string-min1max20 :member-name
                                      "ChannelName" :json-name "channelName")
                                     (content-reference :target-type
                                      string-min1max50pattern-azaz09
                                      :member-name "ContentReference"
                                      :json-name "contentReference")
                                     (credentials-secret-name :target-type
                                      string-min1max2048pattern-arn-azsecretsmanager-wd12secret-azaz09
                                      :member-name "CredentialsSecretName"
                                      :json-name "credentialsSecretName")
                                     (file-offset :target-type double-min0
                                      :member-name "FileOffset" :json-name
                                      "fileOffset")
                                     (kantar-license-id :target-type
                                      integer-min0max2147483647 :member-name
                                      "KantarLicenseId" :json-name
                                      "kantarLicenseId")
                                     (kantar-server-url :target-type
                                      string-pattern-https-kantarmedia
                                      :member-name "KantarServerUrl" :json-name
                                      "kantarServerUrl")
                                     (log-destination :target-type
                                      string-pattern-s3 :member-name
                                      "LogDestination" :json-name
                                      "logDestination")
                                     (metadata3 :target-type string-min1max50
                                      :member-name "Metadata3" :json-name
                                      "metadata3")
                                     (metadata4 :target-type string-min1max50
                                      :member-name "Metadata4" :json-name
                                      "metadata4")
                                     (metadata5 :target-type string-min1max50
                                      :member-name "Metadata5" :json-name
                                      "metadata5")
                                     (metadata6 :target-type string-min1max50
                                      :member-name "Metadata6" :json-name
                                      "metadata6")
                                     (metadata7 :target-type string-min1max50
                                      :member-name "Metadata7" :json-name
                                      "metadata7")
                                     (metadata8 :target-type string-min1max50
                                      :member-name "Metadata8" :json-name
                                      "metadata8"))
                                    (:shape-name "KantarWatermarkSettings"))

(smithy/sdk/shapes:define-enum language-code
    common-lisp:nil
  (:eng "ENG")
  (:spa "SPA")
  (:fra "FRA")
  (:deu "DEU")
  (:ger "GER")
  (:zho "ZHO")
  (:ara "ARA")
  (:hin "HIN")
  (:jpn "JPN")
  (:rus "RUS")
  (:por "POR")
  (:ita "ITA")
  (:urd "URD")
  (:vie "VIE")
  (:kor "KOR")
  (:pan "PAN")
  (:abk "ABK")
  (:aar "AAR")
  (:afr "AFR")
  (:aka "AKA")
  (:sqi "SQI")
  (:amh "AMH")
  (:arg "ARG")
  (:hye "HYE")
  (:asm "ASM")
  (:ava "AVA")
  (:ave "AVE")
  (:aym "AYM")
  (:aze "AZE")
  (:bam "BAM")
  (:bak "BAK")
  (:eus "EUS")
  (:bel "BEL")
  (:ben "BEN")
  (:bih "BIH")
  (:bis "BIS")
  (:bos "BOS")
  (:bre "BRE")
  (:bul "BUL")
  (:mya "MYA")
  (:cat "CAT")
  (:khm "KHM")
  (:cha "CHA")
  (:che "CHE")
  (:nya "NYA")
  (:chu "CHU")
  (:chv "CHV")
  (:cor "COR")
  (:cos "COS")
  (:cre "CRE")
  (:hrv "HRV")
  (:ces "CES")
  (:dan "DAN")
  (:div "DIV")
  (:nld "NLD")
  (:dzo "DZO")
  (:enm "ENM")
  (:epo "EPO")
  (:est "EST")
  (:ewe "EWE")
  (:fao "FAO")
  (:fij "FIJ")
  (:fin "FIN")
  (:frm "FRM")
  (:ful "FUL")
  (:gla "GLA")
  (:glg "GLG")
  (:lug "LUG")
  (:kat "KAT")
  (:ell "ELL")
  (:grn "GRN")
  (:guj "GUJ")
  (:hat "HAT")
  (:hau "HAU")
  (:heb "HEB")
  (:her "HER")
  (:hmo "HMO")
  (:hun "HUN")
  (:isl "ISL")
  (:ido "IDO")
  (:ibo "IBO")
  (:ind "IND")
  (:ina "INA")
  (:ile "ILE")
  (:iku "IKU")
  (:ipk "IPK")
  (:gle "GLE")
  (:jav "JAV")
  (:kal "KAL")
  (:kan "KAN")
  (:kau "KAU")
  (:kas "KAS")
  (:kaz "KAZ")
  (:kik "KIK")
  (:kin "KIN")
  (:kir "KIR")
  (:kom "KOM")
  (:kon "KON")
  (:kua "KUA")
  (:kur "KUR")
  (:lao "LAO")
  (:lat "LAT")
  (:lav "LAV")
  (:lim "LIM")
  (:lin "LIN")
  (:lit "LIT")
  (:lub "LUB")
  (:ltz "LTZ")
  (:mkd "MKD")
  (:mlg "MLG")
  (:msa "MSA")
  (:mal "MAL")
  (:mlt "MLT")
  (:glv "GLV")
  (:mri "MRI")
  (:mar "MAR")
  (:mah "MAH")
  (:mon "MON")
  (:nau "NAU")
  (:nav "NAV")
  (:nde "NDE")
  (:nbl "NBL")
  (:ndo "NDO")
  (:nep "NEP")
  (:sme "SME")
  (:nor "NOR")
  (:nob "NOB")
  (:nno "NNO")
  (:oci "OCI")
  (:oji "OJI")
  (:ori "ORI")
  (:orm "ORM")
  (:oss "OSS")
  (:pli "PLI")
  (:fas "FAS")
  (:pol "POL")
  (:pus "PUS")
  (:que "QUE")
  (:qaa "QAA")
  (:ron "RON")
  (:roh "ROH")
  (:run "RUN")
  (:smo "SMO")
  (:sag "SAG")
  (:san "SAN")
  (:srd "SRD")
  (:srb "SRB")
  (:sna "SNA")
  (:iii "III")
  (:snd "SND")
  (:sin "SIN")
  (:slk "SLK")
  (:slv "SLV")
  (:som "SOM")
  (:sot "SOT")
  (:sun "SUN")
  (:swa "SWA")
  (:ssw "SSW")
  (:swe "SWE")
  (:tgl "TGL")
  (:tah "TAH")
  (:tgk "TGK")
  (:tam "TAM")
  (:tat "TAT")
  (:tel "TEL")
  (:tha "THA")
  (:bod "BOD")
  (:tir "TIR")
  (:ton "TON")
  (:tso "TSO")
  (:tsn "TSN")
  (:tur "TUR")
  (:tuk "TUK")
  (:twi "TWI")
  (:uig "UIG")
  (:ukr "UKR")
  (:uzb "UZB")
  (:ven "VEN")
  (:vol "VOL")
  (:wln "WLN")
  (:cym "CYM")
  (:fry "FRY")
  (:wol "WOL")
  (:xho "XHO")
  (:yid "YID")
  (:yor "YOR")
  (:zha "ZHA")
  (:zul "ZUL")
  (:orj "ORJ")
  (:qpc "QPC")
  (:tng "TNG")
  (:srp "SRP"))

(smithy/sdk/shapes:define-input list-job-templates-request common-lisp:nil
                                ((category :target-type string :member-name
                                  "Category" :http-query "category")
                                 (list-by :target-type job-template-list-by
                                  :member-name "ListBy" :http-query "listBy")
                                 (max-results :target-type integer-min1max20
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (order :target-type order :member-name "Order"
                                  :http-query "order"))
                                (:shape-name "ListJobTemplatesRequest"))

(smithy/sdk/shapes:define-output list-job-templates-response common-lisp:nil
                                 ((job-templates :target-type
                                   list-of-job-template :member-name
                                   "JobTemplates" :json-name "jobTemplates")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListJobTemplatesResponse"))

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((max-results :target-type integer-min1max20
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (order :target-type order :member-name "Order"
                                  :http-query "order")
                                 (queue :target-type string :member-name
                                  "Queue" :http-query "queue")
                                 (status :target-type job-status :member-name
                                  "Status" :http-query "status"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-output list-jobs-response common-lisp:nil
                                 ((jobs :target-type list-of-job :member-name
                                   "Jobs" :json-name "jobs")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListJobsResponse"))

(smithy/sdk/shapes:define-input list-presets-request common-lisp:nil
                                ((category :target-type string :member-name
                                  "Category" :http-query "category")
                                 (list-by :target-type preset-list-by
                                  :member-name "ListBy" :http-query "listBy")
                                 (max-results :target-type integer-min1max20
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (order :target-type order :member-name "Order"
                                  :http-query "order"))
                                (:shape-name "ListPresetsRequest"))

(smithy/sdk/shapes:define-output list-presets-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (presets :target-type list-of-preset
                                   :member-name "Presets" :json-name
                                   "presets"))
                                 (:shape-name "ListPresetsResponse"))

(smithy/sdk/shapes:define-input list-queues-request common-lisp:nil
                                ((list-by :target-type queue-list-by
                                  :member-name "ListBy" :http-query "listBy")
                                 (max-results :target-type integer-min1max20
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (order :target-type order :member-name "Order"
                                  :http-query "order"))
                                (:shape-name "ListQueuesRequest"))

(smithy/sdk/shapes:define-output list-queues-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (queues :target-type list-of-queue
                                   :member-name "Queues" :json-name "queues")
                                  (total-concurrent-jobs :target-type integer
                                   :member-name "TotalConcurrentJobs"
                                   :json-name "totalConcurrentJobs")
                                  (unallocated-concurrent-jobs :target-type
                                   integer :member-name
                                   "UnallocatedConcurrentJobs" :json-name
                                   "unallocatedConcurrentJobs"))
                                 (:shape-name "ListQueuesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-tags :target-type resource-tags
                                   :member-name "ResourceTags" :json-name
                                   "resourceTags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-versions-request common-lisp:nil
                                ((max-results :target-type integer-min1max20
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListVersionsRequest"))

(smithy/sdk/shapes:define-output list-versions-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (versions :target-type
                                   list-of-job-engine-version :member-name
                                   "Versions" :json-name "versions"))
                                 (:shape-name "ListVersionsResponse"))

(smithy/sdk/shapes:define-enum m2ts-audio-buffer-model
    common-lisp:nil
  (:dvb "DVB")
  (:atsc "ATSC"))

(smithy/sdk/shapes:define-enum m2ts-audio-duration
    common-lisp:nil
  (:default-codec-duration "DEFAULT_CODEC_DURATION")
  (:match-video-duration "MATCH_VIDEO_DURATION"))

(smithy/sdk/shapes:define-enum m2ts-buffer-model
    common-lisp:nil
  (:multiplex "MULTIPLEX")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum m2ts-data-pts-control
    common-lisp:nil
  (:auto "AUTO")
  (:align-to-video "ALIGN_TO_VIDEO"))

(smithy/sdk/shapes:define-enum m2ts-ebp-audio-interval
    common-lisp:nil
  (:video-and-fixed-intervals "VIDEO_AND_FIXED_INTERVALS")
  (:video-interval "VIDEO_INTERVAL"))

(smithy/sdk/shapes:define-enum m2ts-ebp-placement
    common-lisp:nil
  (:video-and-audio-pids "VIDEO_AND_AUDIO_PIDS")
  (:video-pid "VIDEO_PID"))

(smithy/sdk/shapes:define-enum m2ts-es-rate-in-pes
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum m2ts-force-ts-video-ebp-order
    common-lisp:nil
  (:force "FORCE")
  (:default "DEFAULT"))

(smithy/sdk/shapes:define-enum m2ts-klv-metadata
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum m2ts-nielsen-id3
    common-lisp:nil
  (:insert "INSERT")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum m2ts-pcr-control
    common-lisp:nil
  (:pcr-every-pes-packet "PCR_EVERY_PES_PACKET")
  (:configured-pcr-period "CONFIGURED_PCR_PERIOD"))

(smithy/sdk/shapes:define-enum m2ts-prevent-buffer-underflow
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum m2ts-rate-mode
    common-lisp:nil
  (:vbr "VBR")
  (:cbr "CBR"))

(smithy/sdk/shapes:define-structure m2ts-scte35esam common-lisp:nil
                                    ((scte35esam-pid :target-type
                                      integer-min32max8182 :member-name
                                      "Scte35EsamPid" :json-name
                                      "scte35EsamPid"))
                                    (:shape-name "M2tsScte35Esam"))

(smithy/sdk/shapes:define-enum m2ts-scte35source
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum m2ts-segmentation-markers
    common-lisp:nil
  (:none "NONE")
  (:rai-segstart "RAI_SEGSTART")
  (:rai-adapt "RAI_ADAPT")
  (:psi-segstart "PSI_SEGSTART")
  (:ebp "EBP")
  (:ebp-legacy "EBP_LEGACY"))

(smithy/sdk/shapes:define-enum m2ts-segmentation-style
    common-lisp:nil
  (:maintain-cadence "MAINTAIN_CADENCE")
  (:reset-cadence "RESET_CADENCE"))

(smithy/sdk/shapes:define-structure m2ts-settings common-lisp:nil
                                    ((audio-buffer-model :target-type
                                      m2ts-audio-buffer-model :member-name
                                      "AudioBufferModel" :json-name
                                      "audioBufferModel")
                                     (audio-duration :target-type
                                      m2ts-audio-duration :member-name
                                      "AudioDuration" :json-name
                                      "audioDuration")
                                     (audio-frames-per-pes :target-type
                                      integer-min0max2147483647 :member-name
                                      "AudioFramesPerPes" :json-name
                                      "audioFramesPerPes")
                                     (audio-pids :target-type
                                      list-of-integer-min32max8182 :member-name
                                      "AudioPids" :json-name "audioPids")
                                     (audio-pts-offset-delta :target-type
                                      integer-min-negative10000max10000
                                      :member-name "AudioPtsOffsetDelta"
                                      :json-name "audioPtsOffsetDelta")
                                     (bitrate :target-type
                                      integer-min0max2147483647 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (buffer-model :target-type
                                      m2ts-buffer-model :member-name
                                      "BufferModel" :json-name "bufferModel")
                                     (data-ptscontrol :target-type
                                      m2ts-data-pts-control :member-name
                                      "DataPTSControl" :json-name
                                      "dataPTSControl")
                                     (dvb-nit-settings :target-type
                                      dvb-nit-settings :member-name
                                      "DvbNitSettings" :json-name
                                      "dvbNitSettings")
                                     (dvb-sdt-settings :target-type
                                      dvb-sdt-settings :member-name
                                      "DvbSdtSettings" :json-name
                                      "dvbSdtSettings")
                                     (dvb-sub-pids :target-type
                                      list-of-integer-min32max8182 :member-name
                                      "DvbSubPids" :json-name "dvbSubPids")
                                     (dvb-tdt-settings :target-type
                                      dvb-tdt-settings :member-name
                                      "DvbTdtSettings" :json-name
                                      "dvbTdtSettings")
                                     (dvb-teletext-pid :target-type
                                      integer-min32max8182 :member-name
                                      "DvbTeletextPid" :json-name
                                      "dvbTeletextPid")
                                     (ebp-audio-interval :target-type
                                      m2ts-ebp-audio-interval :member-name
                                      "EbpAudioInterval" :json-name
                                      "ebpAudioInterval")
                                     (ebp-placement :target-type
                                      m2ts-ebp-placement :member-name
                                      "EbpPlacement" :json-name "ebpPlacement")
                                     (es-rate-in-pes :target-type
                                      m2ts-es-rate-in-pes :member-name
                                      "EsRateInPes" :json-name "esRateInPes")
                                     (force-ts-video-ebp-order :target-type
                                      m2ts-force-ts-video-ebp-order
                                      :member-name "ForceTsVideoEbpOrder"
                                      :json-name "forceTsVideoEbpOrder")
                                     (fragment-time :target-type double-min0
                                      :member-name "FragmentTime" :json-name
                                      "fragmentTime")
                                     (klv-metadata :target-type
                                      m2ts-klv-metadata :member-name
                                      "KlvMetadata" :json-name "klvMetadata")
                                     (max-pcr-interval :target-type
                                      integer-min0max500 :member-name
                                      "MaxPcrInterval" :json-name
                                      "maxPcrInterval")
                                     (min-ebp-interval :target-type
                                      integer-min0max10000 :member-name
                                      "MinEbpInterval" :json-name
                                      "minEbpInterval")
                                     (nielsen-id3 :target-type m2ts-nielsen-id3
                                      :member-name "NielsenId3" :json-name
                                      "nielsenId3")
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
                                     (pcr-pid :target-type integer-min32max8182
                                      :member-name "PcrPid" :json-name
                                      "pcrPid")
                                     (pmt-interval :target-type
                                      integer-min0max1000 :member-name
                                      "PmtInterval" :json-name "pmtInterval")
                                     (pmt-pid :target-type integer-min32max8182
                                      :member-name "PmtPid" :json-name
                                      "pmtPid")
                                     (prevent-buffer-underflow :target-type
                                      m2ts-prevent-buffer-underflow
                                      :member-name "PreventBufferUnderflow"
                                      :json-name "preventBufferUnderflow")
                                     (private-metadata-pid :target-type
                                      integer-min32max8182 :member-name
                                      "PrivateMetadataPid" :json-name
                                      "privateMetadataPid")
                                     (program-number :target-type
                                      integer-min0max65535 :member-name
                                      "ProgramNumber" :json-name
                                      "programNumber")
                                     (pts-offset :target-type
                                      integer-min0max3600 :member-name
                                      "PtsOffset" :json-name "ptsOffset")
                                     (pts-offset-mode :target-type
                                      ts-pts-offset :member-name
                                      "PtsOffsetMode" :json-name
                                      "ptsOffsetMode")
                                     (rate-mode :target-type m2ts-rate-mode
                                      :member-name "RateMode" :json-name
                                      "rateMode")
                                     (scte35esam :target-type m2ts-scte35esam
                                      :member-name "Scte35Esam" :json-name
                                      "scte35Esam")
                                     (scte35pid :target-type
                                      integer-min32max8182 :member-name
                                      "Scte35Pid" :json-name "scte35Pid")
                                     (scte35source :target-type
                                      m2ts-scte35source :member-name
                                      "Scte35Source" :json-name "scte35Source")
                                     (segmentation-markers :target-type
                                      m2ts-segmentation-markers :member-name
                                      "SegmentationMarkers" :json-name
                                      "segmentationMarkers")
                                     (segmentation-style :target-type
                                      m2ts-segmentation-style :member-name
                                      "SegmentationStyle" :json-name
                                      "segmentationStyle")
                                     (segmentation-time :target-type
                                      double-min0 :member-name
                                      "SegmentationTime" :json-name
                                      "segmentationTime")
                                     (timed-metadata-pid :target-type
                                      integer-min32max8182 :member-name
                                      "TimedMetadataPid" :json-name
                                      "timedMetadataPid")
                                     (transport-stream-id :target-type
                                      integer-min0max65535 :member-name
                                      "TransportStreamId" :json-name
                                      "transportStreamId")
                                     (video-pid :target-type
                                      integer-min32max8182 :member-name
                                      "VideoPid" :json-name "videoPid"))
                                    (:shape-name "M2tsSettings"))

(smithy/sdk/shapes:define-enum m3u8audio-duration
    common-lisp:nil
  (:default-codec-duration "DEFAULT_CODEC_DURATION")
  (:match-video-duration "MATCH_VIDEO_DURATION"))

(smithy/sdk/shapes:define-enum m3u8data-pts-control
    common-lisp:nil
  (:auto "AUTO")
  (:align-to-video "ALIGN_TO_VIDEO"))

(smithy/sdk/shapes:define-enum m3u8nielsen-id3
    common-lisp:nil
  (:insert "INSERT")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum m3u8pcr-control
    common-lisp:nil
  (:pcr-every-pes-packet "PCR_EVERY_PES_PACKET")
  (:configured-pcr-period "CONFIGURED_PCR_PERIOD"))

(smithy/sdk/shapes:define-enum m3u8scte35source
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure m3u8settings common-lisp:nil
                                    ((audio-duration :target-type
                                      m3u8audio-duration :member-name
                                      "AudioDuration" :json-name
                                      "audioDuration")
                                     (audio-frames-per-pes :target-type
                                      integer-min0max2147483647 :member-name
                                      "AudioFramesPerPes" :json-name
                                      "audioFramesPerPes")
                                     (audio-pids :target-type
                                      list-of-integer-min32max8182 :member-name
                                      "AudioPids" :json-name "audioPids")
                                     (audio-pts-offset-delta :target-type
                                      integer-min-negative10000max10000
                                      :member-name "AudioPtsOffsetDelta"
                                      :json-name "audioPtsOffsetDelta")
                                     (data-ptscontrol :target-type
                                      m3u8data-pts-control :member-name
                                      "DataPTSControl" :json-name
                                      "dataPTSControl")
                                     (max-pcr-interval :target-type
                                      integer-min0max500 :member-name
                                      "MaxPcrInterval" :json-name
                                      "maxPcrInterval")
                                     (nielsen-id3 :target-type m3u8nielsen-id3
                                      :member-name "NielsenId3" :json-name
                                      "nielsenId3")
                                     (pat-interval :target-type
                                      integer-min0max1000 :member-name
                                      "PatInterval" :json-name "patInterval")
                                     (pcr-control :target-type m3u8pcr-control
                                      :member-name "PcrControl" :json-name
                                      "pcrControl")
                                     (pcr-pid :target-type integer-min32max8182
                                      :member-name "PcrPid" :json-name
                                      "pcrPid")
                                     (pmt-interval :target-type
                                      integer-min0max1000 :member-name
                                      "PmtInterval" :json-name "pmtInterval")
                                     (pmt-pid :target-type integer-min32max8182
                                      :member-name "PmtPid" :json-name
                                      "pmtPid")
                                     (private-metadata-pid :target-type
                                      integer-min32max8182 :member-name
                                      "PrivateMetadataPid" :json-name
                                      "privateMetadataPid")
                                     (program-number :target-type
                                      integer-min0max65535 :member-name
                                      "ProgramNumber" :json-name
                                      "programNumber")
                                     (pts-offset :target-type
                                      integer-min0max3600 :member-name
                                      "PtsOffset" :json-name "ptsOffset")
                                     (pts-offset-mode :target-type
                                      ts-pts-offset :member-name
                                      "PtsOffsetMode" :json-name
                                      "ptsOffsetMode")
                                     (scte35pid :target-type
                                      integer-min32max8182 :member-name
                                      "Scte35Pid" :json-name "scte35Pid")
                                     (scte35source :target-type
                                      m3u8scte35source :member-name
                                      "Scte35Source" :json-name "scte35Source")
                                     (timed-metadata :target-type
                                      timed-metadata :member-name
                                      "TimedMetadata" :json-name
                                      "timedMetadata")
                                     (timed-metadata-pid :target-type
                                      integer-min32max8182 :member-name
                                      "TimedMetadataPid" :json-name
                                      "timedMetadataPid")
                                     (transport-stream-id :target-type
                                      integer-min0max65535 :member-name
                                      "TransportStreamId" :json-name
                                      "transportStreamId")
                                     (video-pid :target-type
                                      integer-min32max8182 :member-name
                                      "VideoPid" :json-name "videoPid"))
                                    (:shape-name "M3u8Settings"))

(smithy/sdk/shapes:define-enum matrix-coefficients
    common-lisp:nil
  (:rgb "RGB")
  (:itu-709 "ITU_709")
  (:unspecified "UNSPECIFIED")
  (:reserved "RESERVED")
  (:fcc "FCC")
  (:itu-470bg "ITU_470BG")
  (:smpte-170m "SMPTE_170M")
  (:smpte-240m "SMPTE_240M")
  (:ycg-co "YCgCo")
  (:itu-2020-ncl "ITU_2020_NCL")
  (:itu-2020-cl "ITU_2020_CL")
  (:smpte-2085 "SMPTE_2085")
  (:cd-ncl "CD_NCL")
  (:cd-cl "CD_CL")
  (:itu-2100ict-cp "ITU_2100ICtCp")
  (:ipt "IPT")
  (:ebu3213 "EBU3213")
  (:last "LAST"))

(smithy/sdk/shapes:define-structure metadata common-lisp:nil
                                    ((etag :target-type string :member-name
                                      "ETag" :json-name "eTag")
                                     (file-size :target-type long :member-name
                                      "FileSize" :json-name "fileSize")
                                     (last-modified :target-type timestamp-unix
                                      :member-name "LastModified" :json-name
                                      "lastModified")
                                     (mime-type :target-type string
                                      :member-name "MimeType" :json-name
                                      "mimeType"))
                                    (:shape-name "Metadata"))

(smithy/sdk/shapes:define-structure min-bottom-rendition-size common-lisp:nil
                                    ((height :target-type integer-min32max8192
                                      :member-name "Height" :json-name
                                      "height")
                                     (width :target-type integer-min32max8192
                                      :member-name "Width" :json-name "width"))
                                    (:shape-name "MinBottomRenditionSize"))

(smithy/sdk/shapes:define-structure min-top-rendition-size common-lisp:nil
                                    ((height :target-type integer-min32max8192
                                      :member-name "Height" :json-name
                                      "height")
                                     (width :target-type integer-min32max8192
                                      :member-name "Width" :json-name "width"))
                                    (:shape-name "MinTopRenditionSize"))

(smithy/sdk/shapes:define-structure motion-image-inserter common-lisp:nil
                                    ((framerate :target-type
                                      motion-image-insertion-framerate
                                      :member-name "Framerate" :json-name
                                      "framerate")
                                     (input :target-type
                                      string-min14pattern-s3mov09png-https-mov09png
                                      :member-name "Input" :json-name "input")
                                     (insertion-mode :target-type
                                      motion-image-insertion-mode :member-name
                                      "InsertionMode" :json-name
                                      "insertionMode")
                                     (offset :target-type
                                      motion-image-insertion-offset
                                      :member-name "Offset" :json-name
                                      "offset")
                                     (playback :target-type
                                      motion-image-playback :member-name
                                      "Playback" :json-name "playback")
                                     (start-time :target-type
                                      string-min11max11pattern01d20305d205d
                                      :member-name "StartTime" :json-name
                                      "startTime"))
                                    (:shape-name "MotionImageInserter"))

(smithy/sdk/shapes:define-structure motion-image-insertion-framerate
                                    common-lisp:nil
                                    ((framerate-denominator :target-type
                                      integer-min1max17895697 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483640 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator"))
                                    (:shape-name
                                     "MotionImageInsertionFramerate"))

(smithy/sdk/shapes:define-enum motion-image-insertion-mode
    common-lisp:nil
  (:mov "MOV")
  (:png "PNG"))

(smithy/sdk/shapes:define-structure motion-image-insertion-offset
                                    common-lisp:nil
                                    ((image-x :target-type
                                      integer-min0max2147483647 :member-name
                                      "ImageX" :json-name "imageX")
                                     (image-y :target-type
                                      integer-min0max2147483647 :member-name
                                      "ImageY" :json-name "imageY"))
                                    (:shape-name "MotionImageInsertionOffset"))

(smithy/sdk/shapes:define-enum motion-image-playback
    common-lisp:nil
  (:once "ONCE")
  (:repeat "REPEAT"))

(smithy/sdk/shapes:define-enum mov-clap-atom
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum mov-cslg-atom
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum mov-mpeg2four-cccontrol
    common-lisp:nil
  (:xdcam "XDCAM")
  (:mpeg "MPEG"))

(smithy/sdk/shapes:define-enum mov-padding-control
    common-lisp:nil
  (:omneon "OMNEON")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum mov-reference
    common-lisp:nil
  (:self-contained "SELF_CONTAINED")
  (:external "EXTERNAL"))

(smithy/sdk/shapes:define-structure mov-settings common-lisp:nil
                                    ((clap-atom :target-type mov-clap-atom
                                      :member-name "ClapAtom" :json-name
                                      "clapAtom")
                                     (cslg-atom :target-type mov-cslg-atom
                                      :member-name "CslgAtom" :json-name
                                      "cslgAtom")
                                     (mpeg2four-cccontrol :target-type
                                      mov-mpeg2four-cccontrol :member-name
                                      "Mpeg2FourCCControl" :json-name
                                      "mpeg2FourCCControl")
                                     (padding-control :target-type
                                      mov-padding-control :member-name
                                      "PaddingControl" :json-name
                                      "paddingControl")
                                     (reference :target-type mov-reference
                                      :member-name "Reference" :json-name
                                      "reference"))
                                    (:shape-name "MovSettings"))

(smithy/sdk/shapes:define-structure mp2settings common-lisp:nil
                                    ((bitrate :target-type
                                      integer-min32000max384000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (channels :target-type integer-min1max2
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (sample-rate :target-type
                                      integer-min32000max48000 :member-name
                                      "SampleRate" :json-name "sampleRate"))
                                    (:shape-name "Mp2Settings"))

(smithy/sdk/shapes:define-enum mp3rate-control-mode
    common-lisp:nil
  (:cbr "CBR")
  (:vbr "VBR"))

(smithy/sdk/shapes:define-structure mp3settings common-lisp:nil
                                    ((bitrate :target-type
                                      integer-min16000max320000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (channels :target-type integer-min1max2
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (rate-control-mode :target-type
                                      mp3rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode")
                                     (sample-rate :target-type
                                      integer-min22050max48000 :member-name
                                      "SampleRate" :json-name "sampleRate")
                                     (vbr-quality :target-type integer-min0max9
                                      :member-name "VbrQuality" :json-name
                                      "vbrQuality"))
                                    (:shape-name "Mp3Settings"))

(smithy/sdk/shapes:define-enum mp4c2pa-manifest
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum mp4cslg-atom
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum mp4free-space-box
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum mp4moov-placement
    common-lisp:nil
  (:progressive-download "PROGRESSIVE_DOWNLOAD")
  (:normal "NORMAL"))

(smithy/sdk/shapes:define-structure mp4settings common-lisp:nil
                                    ((audio-duration :target-type
                                      cmfc-audio-duration :member-name
                                      "AudioDuration" :json-name
                                      "audioDuration")
                                     (c2pa-manifest :target-type
                                      mp4c2pa-manifest :member-name
                                      "C2paManifest" :json-name "c2paManifest")
                                     (certificate-secret :target-type
                                      string-min1max2048pattern-arn-azsecretsmanager-wd12secret-azaz09
                                      :member-name "CertificateSecret"
                                      :json-name "certificateSecret")
                                     (cslg-atom :target-type mp4cslg-atom
                                      :member-name "CslgAtom" :json-name
                                      "cslgAtom")
                                     (ctts-version :target-type
                                      integer-min0max1 :member-name
                                      "CttsVersion" :json-name "cttsVersion")
                                     (free-space-box :target-type
                                      mp4free-space-box :member-name
                                      "FreeSpaceBox" :json-name "freeSpaceBox")
                                     (moov-placement :target-type
                                      mp4moov-placement :member-name
                                      "MoovPlacement" :json-name
                                      "moovPlacement")
                                     (mp4major-brand :target-type string
                                      :member-name "Mp4MajorBrand" :json-name
                                      "mp4MajorBrand")
                                     (signing-kms-key :target-type
                                      string-min1pattern-arn-aws-us-gov-cn-kms-az26east-west-central-north-south-east-west1912d12key-afaf098afaf094afaf094afaf094afaf0912mrk-afaf0932
                                      :member-name "SigningKmsKey" :json-name
                                      "signingKmsKey"))
                                    (:shape-name "Mp4Settings"))

(smithy/sdk/shapes:define-enum mpd-accessibility-caption-hints
    common-lisp:nil
  (:include "INCLUDE")
  (:exclude "EXCLUDE"))

(smithy/sdk/shapes:define-enum mpd-audio-duration
    common-lisp:nil
  (:default-codec-duration "DEFAULT_CODEC_DURATION")
  (:match-video-duration "MATCH_VIDEO_DURATION"))

(smithy/sdk/shapes:define-enum mpd-caption-container-type
    common-lisp:nil
  (:raw "RAW")
  (:fragmented-mp4 "FRAGMENTED_MP4"))

(smithy/sdk/shapes:define-enum mpd-klv-metadata
    common-lisp:nil
  (:none "NONE")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum mpd-manifest-metadata-signaling
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum mpd-scte35esam
    common-lisp:nil
  (:insert "INSERT")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum mpd-scte35source
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure mpd-settings common-lisp:nil
                                    ((accessibility-caption-hints :target-type
                                      mpd-accessibility-caption-hints
                                      :member-name "AccessibilityCaptionHints"
                                      :json-name "accessibilityCaptionHints")
                                     (audio-duration :target-type
                                      mpd-audio-duration :member-name
                                      "AudioDuration" :json-name
                                      "audioDuration")
                                     (caption-container-type :target-type
                                      mpd-caption-container-type :member-name
                                      "CaptionContainerType" :json-name
                                      "captionContainerType")
                                     (klv-metadata :target-type
                                      mpd-klv-metadata :member-name
                                      "KlvMetadata" :json-name "klvMetadata")
                                     (manifest-metadata-signaling :target-type
                                      mpd-manifest-metadata-signaling
                                      :member-name "ManifestMetadataSignaling"
                                      :json-name "manifestMetadataSignaling")
                                     (scte35esam :target-type mpd-scte35esam
                                      :member-name "Scte35Esam" :json-name
                                      "scte35Esam")
                                     (scte35source :target-type
                                      mpd-scte35source :member-name
                                      "Scte35Source" :json-name "scte35Source")
                                     (timed-metadata :target-type
                                      mpd-timed-metadata :member-name
                                      "TimedMetadata" :json-name
                                      "timedMetadata")
                                     (timed-metadata-box-version :target-type
                                      mpd-timed-metadata-box-version
                                      :member-name "TimedMetadataBoxVersion"
                                      :json-name "timedMetadataBoxVersion")
                                     (timed-metadata-scheme-id-uri :target-type
                                      string-max1000 :member-name
                                      "TimedMetadataSchemeIdUri" :json-name
                                      "timedMetadataSchemeIdUri")
                                     (timed-metadata-value :target-type
                                      string-max1000 :member-name
                                      "TimedMetadataValue" :json-name
                                      "timedMetadataValue"))
                                    (:shape-name "MpdSettings"))

(smithy/sdk/shapes:define-enum mpd-timed-metadata
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum mpd-timed-metadata-box-version
    common-lisp:nil
  (:version-0 "VERSION_0")
  (:version-1 "VERSION_1"))

(smithy/sdk/shapes:define-enum mpeg2adaptive-quantization
    common-lisp:nil
  (:off "OFF")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum mpeg2codec-level
    common-lisp:nil
  (:auto "AUTO")
  (:low "LOW")
  (:main "MAIN")
  (:high1440 "HIGH1440")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum mpeg2codec-profile
    common-lisp:nil
  (:main "MAIN")
  (:profile-422 "PROFILE_422"))

(smithy/sdk/shapes:define-enum mpeg2dynamic-sub-gop
    common-lisp:nil
  (:adaptive "ADAPTIVE")
  (:static "STATIC"))

(smithy/sdk/shapes:define-enum mpeg2framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum mpeg2framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum mpeg2gop-size-units
    common-lisp:nil
  (:frames "FRAMES")
  (:seconds "SECONDS"))

(smithy/sdk/shapes:define-enum mpeg2interlace-mode
    common-lisp:nil
  (:progressive "PROGRESSIVE")
  (:top-field "TOP_FIELD")
  (:bottom-field "BOTTOM_FIELD")
  (:follow-top-field "FOLLOW_TOP_FIELD")
  (:follow-bottom-field "FOLLOW_BOTTOM_FIELD"))

(smithy/sdk/shapes:define-enum mpeg2intra-dc-precision
    common-lisp:nil
  (:auto "AUTO")
  (:intra-dc-precision-8 "INTRA_DC_PRECISION_8")
  (:intra-dc-precision-9 "INTRA_DC_PRECISION_9")
  (:intra-dc-precision-10 "INTRA_DC_PRECISION_10")
  (:intra-dc-precision-11 "INTRA_DC_PRECISION_11"))

(smithy/sdk/shapes:define-enum mpeg2par-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum mpeg2quality-tuning-level
    common-lisp:nil
  (:single-pass "SINGLE_PASS")
  (:multi-pass "MULTI_PASS"))

(smithy/sdk/shapes:define-enum mpeg2rate-control-mode
    common-lisp:nil
  (:vbr "VBR")
  (:cbr "CBR"))

(smithy/sdk/shapes:define-enum mpeg2scan-type-conversion-mode
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:interlaced-optimize "INTERLACED_OPTIMIZE"))

(smithy/sdk/shapes:define-enum mpeg2scene-change-detect
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure mpeg2settings common-lisp:nil
                                    ((adaptive-quantization :target-type
                                      mpeg2adaptive-quantization :member-name
                                      "AdaptiveQuantization" :json-name
                                      "adaptiveQuantization")
                                     (bitrate :target-type
                                      integer-min1000max288000000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (codec-level :target-type mpeg2codec-level
                                      :member-name "CodecLevel" :json-name
                                      "codecLevel")
                                     (codec-profile :target-type
                                      mpeg2codec-profile :member-name
                                      "CodecProfile" :json-name "codecProfile")
                                     (dynamic-sub-gop :target-type
                                      mpeg2dynamic-sub-gop :member-name
                                      "DynamicSubGop" :json-name
                                      "dynamicSubGop")
                                     (framerate-control :target-type
                                      mpeg2framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      mpeg2framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max1001 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min24max60000 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (gop-closed-cadence :target-type
                                      integer-min0max2147483647 :member-name
                                      "GopClosedCadence" :json-name
                                      "gopClosedCadence")
                                     (gop-size :target-type double-min0
                                      :member-name "GopSize" :json-name
                                      "gopSize")
                                     (gop-size-units :target-type
                                      mpeg2gop-size-units :member-name
                                      "GopSizeUnits" :json-name "gopSizeUnits")
                                     (hrd-buffer-final-fill-percentage
                                      :target-type integer-min0max100
                                      :member-name
                                      "HrdBufferFinalFillPercentage" :json-name
                                      "hrdBufferFinalFillPercentage")
                                     (hrd-buffer-initial-fill-percentage
                                      :target-type integer-min0max100
                                      :member-name
                                      "HrdBufferInitialFillPercentage"
                                      :json-name
                                      "hrdBufferInitialFillPercentage")
                                     (hrd-buffer-size :target-type
                                      integer-min0max47185920 :member-name
                                      "HrdBufferSize" :json-name
                                      "hrdBufferSize")
                                     (interlace-mode :target-type
                                      mpeg2interlace-mode :member-name
                                      "InterlaceMode" :json-name
                                      "interlaceMode")
                                     (intra-dc-precision :target-type
                                      mpeg2intra-dc-precision :member-name
                                      "IntraDcPrecision" :json-name
                                      "intraDcPrecision")
                                     (max-bitrate :target-type
                                      integer-min1000max300000000 :member-name
                                      "MaxBitrate" :json-name "maxBitrate")
                                     (min-iinterval :target-type
                                      integer-min0max30 :member-name
                                      "MinIInterval" :json-name "minIInterval")
                                     (number-bframes-between-reference-frames
                                      :target-type integer-min0max7
                                      :member-name
                                      "NumberBFramesBetweenReferenceFrames"
                                      :json-name
                                      "numberBFramesBetweenReferenceFrames")
                                     (par-control :target-type mpeg2par-control
                                      :member-name "ParControl" :json-name
                                      "parControl")
                                     (par-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParDenominator" :json-name
                                      "parDenominator")
                                     (par-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParNumerator" :json-name "parNumerator")
                                     (per-frame-metrics :target-type
                                      list-of-frame-metric-type :member-name
                                      "PerFrameMetrics" :json-name
                                      "perFrameMetrics")
                                     (quality-tuning-level :target-type
                                      mpeg2quality-tuning-level :member-name
                                      "QualityTuningLevel" :json-name
                                      "qualityTuningLevel")
                                     (rate-control-mode :target-type
                                      mpeg2rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode")
                                     (scan-type-conversion-mode :target-type
                                      mpeg2scan-type-conversion-mode
                                      :member-name "ScanTypeConversionMode"
                                      :json-name "scanTypeConversionMode")
                                     (scene-change-detect :target-type
                                      mpeg2scene-change-detect :member-name
                                      "SceneChangeDetect" :json-name
                                      "sceneChangeDetect")
                                     (slow-pal :target-type mpeg2slow-pal
                                      :member-name "SlowPal" :json-name
                                      "slowPal")
                                     (softness :target-type integer-min0max128
                                      :member-name "Softness" :json-name
                                      "softness")
                                     (spatial-adaptive-quantization
                                      :target-type
                                      mpeg2spatial-adaptive-quantization
                                      :member-name
                                      "SpatialAdaptiveQuantization" :json-name
                                      "spatialAdaptiveQuantization")
                                     (syntax :target-type mpeg2syntax
                                      :member-name "Syntax" :json-name
                                      "syntax")
                                     (telecine :target-type mpeg2telecine
                                      :member-name "Telecine" :json-name
                                      "telecine")
                                     (temporal-adaptive-quantization
                                      :target-type
                                      mpeg2temporal-adaptive-quantization
                                      :member-name
                                      "TemporalAdaptiveQuantization" :json-name
                                      "temporalAdaptiveQuantization"))
                                    (:shape-name "Mpeg2Settings"))

(smithy/sdk/shapes:define-enum mpeg2slow-pal
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum mpeg2spatial-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum mpeg2syntax
    common-lisp:nil
  (:default "DEFAULT")
  (:d-10 "D_10"))

(smithy/sdk/shapes:define-enum mpeg2telecine
    common-lisp:nil
  (:none "NONE")
  (:soft "SOFT")
  (:hard "HARD"))

(smithy/sdk/shapes:define-enum mpeg2temporal-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure ms-smooth-additional-manifest
                                    common-lisp:nil
                                    ((manifest-name-modifier :target-type
                                      string-min1 :member-name
                                      "ManifestNameModifier" :json-name
                                      "manifestNameModifier")
                                     (selected-outputs :target-type
                                      list-of-string-min1 :member-name
                                      "SelectedOutputs" :json-name
                                      "selectedOutputs"))
                                    (:shape-name "MsSmoothAdditionalManifest"))

(smithy/sdk/shapes:define-enum ms-smooth-audio-deduplication
    common-lisp:nil
  (:combine-duplicate-streams "COMBINE_DUPLICATE_STREAMS")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure ms-smooth-encryption-settings
                                    common-lisp:nil
                                    ((speke-key-provider :target-type
                                      speke-key-provider :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "MsSmoothEncryptionSettings"))

(smithy/sdk/shapes:define-enum ms-smooth-fragment-length-control
    common-lisp:nil
  (:exact "EXACT")
  (:gop-multiple "GOP_MULTIPLE"))

(smithy/sdk/shapes:define-structure ms-smooth-group-settings common-lisp:nil
                                    ((additional-manifests :target-type
                                      list-of-ms-smooth-additional-manifest
                                      :member-name "AdditionalManifests"
                                      :json-name "additionalManifests")
                                     (audio-deduplication :target-type
                                      ms-smooth-audio-deduplication
                                      :member-name "AudioDeduplication"
                                      :json-name "audioDeduplication")
                                     (destination :target-type
                                      string-pattern-s3 :member-name
                                      "Destination" :json-name "destination")
                                     (destination-settings :target-type
                                      destination-settings :member-name
                                      "DestinationSettings" :json-name
                                      "destinationSettings")
                                     (encryption :target-type
                                      ms-smooth-encryption-settings
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (fragment-length :target-type
                                      integer-min1max2147483647 :member-name
                                      "FragmentLength" :json-name
                                      "fragmentLength")
                                     (fragment-length-control :target-type
                                      ms-smooth-fragment-length-control
                                      :member-name "FragmentLengthControl"
                                      :json-name "fragmentLengthControl")
                                     (manifest-encoding :target-type
                                      ms-smooth-manifest-encoding :member-name
                                      "ManifestEncoding" :json-name
                                      "manifestEncoding"))
                                    (:shape-name "MsSmoothGroupSettings"))

(smithy/sdk/shapes:define-enum ms-smooth-manifest-encoding
    common-lisp:nil
  (:utf8 "UTF8")
  (:utf16 "UTF16"))

(smithy/sdk/shapes:define-enum mxf-afd-signaling
    common-lisp:nil
  (:no-copy "NO_COPY")
  (:copy-from-video "COPY_FROM_VIDEO"))

(smithy/sdk/shapes:define-enum mxf-profile
    common-lisp:nil
  (:d-10 "D_10")
  (:xdcam "XDCAM")
  (:op1a "OP1A")
  (:xavc "XAVC")
  (:xdcam-rdd9 "XDCAM_RDD9"))

(smithy/sdk/shapes:define-structure mxf-settings common-lisp:nil
                                    ((afd-signaling :target-type
                                      mxf-afd-signaling :member-name
                                      "AfdSignaling" :json-name "afdSignaling")
                                     (profile :target-type mxf-profile
                                      :member-name "Profile" :json-name
                                      "profile")
                                     (xavc-profile-settings :target-type
                                      mxf-xavc-profile-settings :member-name
                                      "XavcProfileSettings" :json-name
                                      "xavcProfileSettings"))
                                    (:shape-name "MxfSettings"))

(smithy/sdk/shapes:define-enum mxf-xavc-duration-mode
    common-lisp:nil
  (:allow-any-duration "ALLOW_ANY_DURATION")
  (:drop-frames-for-compliance "DROP_FRAMES_FOR_COMPLIANCE"))

(smithy/sdk/shapes:define-structure mxf-xavc-profile-settings common-lisp:nil
                                    ((duration-mode :target-type
                                      mxf-xavc-duration-mode :member-name
                                      "DurationMode" :json-name "durationMode")
                                     (max-anc-data-size :target-type
                                      integer-min0max2147483647 :member-name
                                      "MaxAncDataSize" :json-name
                                      "maxAncDataSize"))
                                    (:shape-name "MxfXavcProfileSettings"))

(smithy/sdk/shapes:define-structure nex-guard-file-marker-settings
                                    common-lisp:nil
                                    ((license :target-type string-min1max100000
                                      :member-name "License" :json-name
                                      "license")
                                     (payload :target-type
                                      integer-min0max4194303 :member-name
                                      "Payload" :json-name "payload")
                                     (preset :target-type string-min1max256
                                      :member-name "Preset" :json-name
                                      "preset")
                                     (strength :target-type
                                      watermarking-strength :member-name
                                      "Strength" :json-name "strength"))
                                    (:shape-name "NexGuardFileMarkerSettings"))

(smithy/sdk/shapes:define-enum nielsen-active-watermark-process-type
    common-lisp:nil
  (:naes2-and-nw "NAES2_AND_NW")
  (:cbet "CBET")
  (:naes2-and-nw-and-cbet "NAES2_AND_NW_AND_CBET"))

(smithy/sdk/shapes:define-structure nielsen-configuration common-lisp:nil
                                    ((breakout-code :target-type
                                      integer-min0max0 :member-name
                                      "BreakoutCode" :json-name "breakoutCode")
                                     (distributor-id :target-type string
                                      :member-name "DistributorId" :json-name
                                      "distributorId"))
                                    (:shape-name "NielsenConfiguration"))

(smithy/sdk/shapes:define-structure nielsen-non-linear-watermark-settings
                                    common-lisp:nil
                                    ((active-watermark-process :target-type
                                      nielsen-active-watermark-process-type
                                      :member-name "ActiveWatermarkProcess"
                                      :json-name "activeWatermarkProcess")
                                     (adi-filename :target-type
                                      string-pattern-s3 :member-name
                                      "AdiFilename" :json-name "adiFilename")
                                     (asset-id :target-type string-min1max20
                                      :member-name "AssetId" :json-name
                                      "assetId")
                                     (asset-name :target-type string-min1max50
                                      :member-name "AssetName" :json-name
                                      "assetName")
                                     (cbet-source-id :target-type
                                      string-pattern0x-afa-f0908190908
                                      :member-name "CbetSourceId" :json-name
                                      "cbetSourceId")
                                     (episode-id :target-type string-min1max20
                                      :member-name "EpisodeId" :json-name
                                      "episodeId")
                                     (metadata-destination :target-type
                                      string-pattern-s3 :member-name
                                      "MetadataDestination" :json-name
                                      "metadataDestination")
                                     (source-id :target-type
                                      integer-min0max65534 :member-name
                                      "SourceId" :json-name "sourceId")
                                     (source-watermark-status :target-type
                                      nielsen-source-watermark-status-type
                                      :member-name "SourceWatermarkStatus"
                                      :json-name "sourceWatermarkStatus")
                                     (tic-server-url :target-type
                                      string-pattern-https :member-name
                                      "TicServerUrl" :json-name "ticServerUrl")
                                     (unique-tic-per-audio-track :target-type
                                      nielsen-unique-tic-per-audio-track-type
                                      :member-name "UniqueTicPerAudioTrack"
                                      :json-name "uniqueTicPerAudioTrack"))
                                    (:shape-name
                                     "NielsenNonLinearWatermarkSettings"))

(smithy/sdk/shapes:define-enum nielsen-source-watermark-status-type
    common-lisp:nil
  (:clean "CLEAN")
  (:watermarked "WATERMARKED"))

(smithy/sdk/shapes:define-enum nielsen-unique-tic-per-audio-track-type
    common-lisp:nil
  (:reserve-unique-tics-per-track "RESERVE_UNIQUE_TICS_PER_TRACK")
  (:same-tics-per-track "SAME_TICS_PER_TRACK"))

(smithy/sdk/shapes:define-enum noise-filter-post-temporal-sharpening
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-enum noise-filter-post-temporal-sharpening-strength
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-structure noise-reducer common-lisp:nil
                                    ((filter :target-type noise-reducer-filter
                                      :member-name "Filter" :json-name
                                      "filter")
                                     (filter-settings :target-type
                                      noise-reducer-filter-settings
                                      :member-name "FilterSettings" :json-name
                                      "filterSettings")
                                     (spatial-filter-settings :target-type
                                      noise-reducer-spatial-filter-settings
                                      :member-name "SpatialFilterSettings"
                                      :json-name "spatialFilterSettings")
                                     (temporal-filter-settings :target-type
                                      noise-reducer-temporal-filter-settings
                                      :member-name "TemporalFilterSettings"
                                      :json-name "temporalFilterSettings"))
                                    (:shape-name "NoiseReducer"))

(smithy/sdk/shapes:define-enum noise-reducer-filter
    common-lisp:nil
  (:bilateral "BILATERAL")
  (:mean "MEAN")
  (:gaussian "GAUSSIAN")
  (:lanczos "LANCZOS")
  (:sharpen "SHARPEN")
  (:conserve "CONSERVE")
  (:spatial "SPATIAL")
  (:temporal "TEMPORAL"))

(smithy/sdk/shapes:define-structure noise-reducer-filter-settings
                                    common-lisp:nil
                                    ((strength :target-type integer-min0max3
                                      :member-name "Strength" :json-name
                                      "strength"))
                                    (:shape-name "NoiseReducerFilterSettings"))

(smithy/sdk/shapes:define-structure noise-reducer-spatial-filter-settings
                                    common-lisp:nil
                                    ((post-filter-sharpen-strength :target-type
                                      integer-min0max3 :member-name
                                      "PostFilterSharpenStrength" :json-name
                                      "postFilterSharpenStrength")
                                     (speed :target-type
                                      integer-min-negative2max3 :member-name
                                      "Speed" :json-name "speed")
                                     (strength :target-type integer-min0max16
                                      :member-name "Strength" :json-name
                                      "strength"))
                                    (:shape-name
                                     "NoiseReducerSpatialFilterSettings"))

(smithy/sdk/shapes:define-structure noise-reducer-temporal-filter-settings
                                    common-lisp:nil
                                    ((aggressive-mode :target-type
                                      integer-min0max4 :member-name
                                      "AggressiveMode" :json-name
                                      "aggressiveMode")
                                     (post-temporal-sharpening :target-type
                                      noise-filter-post-temporal-sharpening
                                      :member-name "PostTemporalSharpening"
                                      :json-name "postTemporalSharpening")
                                     (post-temporal-sharpening-strength
                                      :target-type
                                      noise-filter-post-temporal-sharpening-strength
                                      :member-name
                                      "PostTemporalSharpeningStrength"
                                      :json-name
                                      "postTemporalSharpeningStrength")
                                     (speed :target-type
                                      integer-min-negative1max3 :member-name
                                      "Speed" :json-name "speed")
                                     (strength :target-type integer-min0max16
                                      :member-name "Strength" :json-name
                                      "strength"))
                                    (:shape-name
                                     "NoiseReducerTemporalFilterSettings"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure opus-settings common-lisp:nil
                                    ((bitrate :target-type
                                      integer-min32000max192000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (channels :target-type integer-min1max2
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (sample-rate :target-type
                                      integer-min16000max48000 :member-name
                                      "SampleRate" :json-name "sampleRate"))
                                    (:shape-name "OpusSettings"))

(smithy/sdk/shapes:define-enum order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-structure output common-lisp:nil
                                    ((audio-descriptions :target-type
                                      list-of-audio-description :member-name
                                      "AudioDescriptions" :json-name
                                      "audioDescriptions")
                                     (caption-descriptions :target-type
                                      list-of-caption-description :member-name
                                      "CaptionDescriptions" :json-name
                                      "captionDescriptions")
                                     (container-settings :target-type
                                      container-settings :member-name
                                      "ContainerSettings" :json-name
                                      "containerSettings")
                                     (extension :target-type string-max256
                                      :member-name "Extension" :json-name
                                      "extension")
                                     (name-modifier :target-type
                                      string-min1max256 :member-name
                                      "NameModifier" :json-name "nameModifier")
                                     (output-settings :target-type
                                      output-settings :member-name
                                      "OutputSettings" :json-name
                                      "outputSettings")
                                     (preset :target-type string-min0
                                      :member-name "Preset" :json-name
                                      "preset")
                                     (video-description :target-type
                                      video-description :member-name
                                      "VideoDescription" :json-name
                                      "videoDescription"))
                                    (:shape-name "Output"))

(smithy/sdk/shapes:define-structure output-channel-mapping common-lisp:nil
                                    ((input-channels :target-type
                                      list-of-integer-min-negative60max6
                                      :member-name "InputChannels" :json-name
                                      "inputChannels")
                                     (input-channels-fine-tune :target-type
                                      list-of-double-min-negative60max6
                                      :member-name "InputChannelsFineTune"
                                      :json-name "inputChannelsFineTune"))
                                    (:shape-name "OutputChannelMapping"))

(smithy/sdk/shapes:define-structure output-detail common-lisp:nil
                                    ((duration-in-ms :target-type integer
                                      :member-name "DurationInMs" :json-name
                                      "durationInMs")
                                     (video-details :target-type video-detail
                                      :member-name "VideoDetails" :json-name
                                      "videoDetails"))
                                    (:shape-name "OutputDetail"))

(smithy/sdk/shapes:define-structure output-group common-lisp:nil
                                    ((automated-encoding-settings :target-type
                                      automated-encoding-settings :member-name
                                      "AutomatedEncodingSettings" :json-name
                                      "automatedEncodingSettings")
                                     (custom-name :target-type string
                                      :member-name "CustomName" :json-name
                                      "customName")
                                     (name :target-type string-max2048
                                      :member-name "Name" :json-name "name")
                                     (output-group-settings :target-type
                                      output-group-settings :member-name
                                      "OutputGroupSettings" :json-name
                                      "outputGroupSettings")
                                     (outputs :target-type list-of-output
                                      :member-name "Outputs" :json-name
                                      "outputs"))
                                    (:shape-name "OutputGroup"))

(smithy/sdk/shapes:define-structure output-group-detail common-lisp:nil
                                    ((output-details :target-type
                                      list-of-output-detail :member-name
                                      "OutputDetails" :json-name
                                      "outputDetails"))
                                    (:shape-name "OutputGroupDetail"))

(smithy/sdk/shapes:define-structure output-group-settings common-lisp:nil
                                    ((cmaf-group-settings :target-type
                                      cmaf-group-settings :member-name
                                      "CmafGroupSettings" :json-name
                                      "cmafGroupSettings")
                                     (dash-iso-group-settings :target-type
                                      dash-iso-group-settings :member-name
                                      "DashIsoGroupSettings" :json-name
                                      "dashIsoGroupSettings")
                                     (file-group-settings :target-type
                                      file-group-settings :member-name
                                      "FileGroupSettings" :json-name
                                      "fileGroupSettings")
                                     (hls-group-settings :target-type
                                      hls-group-settings :member-name
                                      "HlsGroupSettings" :json-name
                                      "hlsGroupSettings")
                                     (ms-smooth-group-settings :target-type
                                      ms-smooth-group-settings :member-name
                                      "MsSmoothGroupSettings" :json-name
                                      "msSmoothGroupSettings")
                                     (per-frame-metrics :target-type
                                      list-of-frame-metric-type :member-name
                                      "PerFrameMetrics" :json-name
                                      "perFrameMetrics")
                                     (type :target-type output-group-type
                                      :member-name "Type" :json-name "type"))
                                    (:shape-name "OutputGroupSettings"))

(smithy/sdk/shapes:define-enum output-group-type
    common-lisp:nil
  (:hls-group-settings "HLS_GROUP_SETTINGS")
  (:dash-iso-group-settings "DASH_ISO_GROUP_SETTINGS")
  (:file-group-settings "FILE_GROUP_SETTINGS")
  (:ms-smooth-group-settings "MS_SMOOTH_GROUP_SETTINGS")
  (:cmaf-group-settings "CMAF_GROUP_SETTINGS"))

(smithy/sdk/shapes:define-enum output-sdt
    common-lisp:nil
  (:sdt-follow "SDT_FOLLOW")
  (:sdt-follow-if-present "SDT_FOLLOW_IF_PRESENT")
  (:sdt-manual "SDT_MANUAL")
  (:sdt-none "SDT_NONE"))

(smithy/sdk/shapes:define-structure output-settings common-lisp:nil
                                    ((hls-settings :target-type hls-settings
                                      :member-name "HlsSettings" :json-name
                                      "hlsSettings"))
                                    (:shape-name "OutputSettings"))

(smithy/sdk/shapes:define-enum pad-video
    common-lisp:nil
  (:disabled "DISABLED")
  (:black "BLACK"))

(smithy/sdk/shapes:define-structure partner-watermarking common-lisp:nil
                                    ((nexguard-file-marker-settings
                                      :target-type
                                      nex-guard-file-marker-settings
                                      :member-name "NexguardFileMarkerSettings"
                                      :json-name "nexguardFileMarkerSettings"))
                                    (:shape-name "PartnerWatermarking"))

(smithy/sdk/shapes:define-structure policy common-lisp:nil
                                    ((http-inputs :target-type input-policy
                                      :member-name "HttpInputs" :json-name
                                      "httpInputs")
                                     (https-inputs :target-type input-policy
                                      :member-name "HttpsInputs" :json-name
                                      "httpsInputs")
                                     (s3inputs :target-type input-policy
                                      :member-name "S3Inputs" :json-name
                                      "s3Inputs"))
                                    (:shape-name "Policy"))

(smithy/sdk/shapes:define-structure preset common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (category :target-type string :member-name
                                      "Category" :json-name "category")
                                     (created-at :target-type timestamp-unix
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (last-updated :target-type timestamp-unix
                                      :member-name "LastUpdated" :json-name
                                      "lastUpdated")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (settings :target-type preset-settings
                                      :required common-lisp:t :member-name
                                      "Settings" :json-name "settings")
                                     (type :target-type type :member-name
                                      "Type" :json-name "type"))
                                    (:shape-name "Preset"))

(smithy/sdk/shapes:define-enum preset-list-by
    common-lisp:nil
  (:name "NAME")
  (:creation-date "CREATION_DATE")
  (:system "SYSTEM"))

(smithy/sdk/shapes:define-structure preset-settings common-lisp:nil
                                    ((audio-descriptions :target-type
                                      list-of-audio-description :member-name
                                      "AudioDescriptions" :json-name
                                      "audioDescriptions")
                                     (caption-descriptions :target-type
                                      list-of-caption-description-preset
                                      :member-name "CaptionDescriptions"
                                      :json-name "captionDescriptions")
                                     (container-settings :target-type
                                      container-settings :member-name
                                      "ContainerSettings" :json-name
                                      "containerSettings")
                                     (video-description :target-type
                                      video-description :member-name
                                      "VideoDescription" :json-name
                                      "videoDescription"))
                                    (:shape-name "PresetSettings"))

(smithy/sdk/shapes:define-enum preset-speke20audio
    common-lisp:nil
  (:preset-audio-1 "PRESET_AUDIO_1")
  (:preset-audio-2 "PRESET_AUDIO_2")
  (:preset-audio-3 "PRESET_AUDIO_3")
  (:shared "SHARED")
  (:unencrypted "UNENCRYPTED"))

(smithy/sdk/shapes:define-enum preset-speke20video
    common-lisp:nil
  (:preset-video-1 "PRESET_VIDEO_1")
  (:preset-video-2 "PRESET_VIDEO_2")
  (:preset-video-3 "PRESET_VIDEO_3")
  (:preset-video-4 "PRESET_VIDEO_4")
  (:preset-video-5 "PRESET_VIDEO_5")
  (:preset-video-6 "PRESET_VIDEO_6")
  (:preset-video-7 "PRESET_VIDEO_7")
  (:preset-video-8 "PRESET_VIDEO_8")
  (:shared "SHARED")
  (:unencrypted "UNENCRYPTED"))

(smithy/sdk/shapes:define-enum pricing-plan
    common-lisp:nil
  (:on-demand "ON_DEMAND")
  (:reserved "RESERVED"))

(smithy/sdk/shapes:define-structure probe-input-file common-lisp:nil
                                    ((file-url :target-type string :member-name
                                      "FileUrl" :json-name "fileUrl"))
                                    (:shape-name "ProbeInputFile"))

(smithy/sdk/shapes:define-input probe-request common-lisp:nil
                                ((input-files :target-type
                                  list-of-probe-input-file :member-name
                                  "InputFiles" :json-name "inputFiles"))
                                (:shape-name "ProbeRequest"))

(smithy/sdk/shapes:define-output probe-response common-lisp:nil
                                 ((probe-results :target-type
                                   list-of-probe-result :member-name
                                   "ProbeResults" :json-name "probeResults"))
                                 (:shape-name "ProbeResponse"))

(smithy/sdk/shapes:define-structure probe-result common-lisp:nil
                                    ((container :target-type container
                                      :member-name "Container" :json-name
                                      "container")
                                     (metadata :target-type metadata
                                      :member-name "Metadata" :json-name
                                      "metadata")
                                     (track-mappings :target-type
                                      list-of-track-mapping :member-name
                                      "TrackMappings" :json-name
                                      "trackMappings"))
                                    (:shape-name "ProbeResult"))

(smithy/sdk/shapes:define-enum prores-chroma-sampling
    common-lisp:nil
  (:preserve-444-sampling "PRESERVE_444_SAMPLING")
  (:subsample-to-422 "SUBSAMPLE_TO_422"))

(smithy/sdk/shapes:define-enum prores-codec-profile
    common-lisp:nil
  (:apple-prores-422 "APPLE_PRORES_422")
  (:apple-prores-422-hq "APPLE_PRORES_422_HQ")
  (:apple-prores-422-lt "APPLE_PRORES_422_LT")
  (:apple-prores-422-proxy "APPLE_PRORES_422_PROXY")
  (:apple-prores-4444 "APPLE_PRORES_4444")
  (:apple-prores-4444-xq "APPLE_PRORES_4444_XQ"))

(smithy/sdk/shapes:define-enum prores-framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum prores-framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum prores-interlace-mode
    common-lisp:nil
  (:progressive "PROGRESSIVE")
  (:top-field "TOP_FIELD")
  (:bottom-field "BOTTOM_FIELD")
  (:follow-top-field "FOLLOW_TOP_FIELD")
  (:follow-bottom-field "FOLLOW_BOTTOM_FIELD"))

(smithy/sdk/shapes:define-enum prores-par-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum prores-scan-type-conversion-mode
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:interlaced-optimize "INTERLACED_OPTIMIZE"))

(smithy/sdk/shapes:define-structure prores-settings common-lisp:nil
                                    ((chroma-sampling :target-type
                                      prores-chroma-sampling :member-name
                                      "ChromaSampling" :json-name
                                      "chromaSampling")
                                     (codec-profile :target-type
                                      prores-codec-profile :member-name
                                      "CodecProfile" :json-name "codecProfile")
                                     (framerate-control :target-type
                                      prores-framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      prores-framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (interlace-mode :target-type
                                      prores-interlace-mode :member-name
                                      "InterlaceMode" :json-name
                                      "interlaceMode")
                                     (par-control :target-type
                                      prores-par-control :member-name
                                      "ParControl" :json-name "parControl")
                                     (par-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParDenominator" :json-name
                                      "parDenominator")
                                     (par-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParNumerator" :json-name "parNumerator")
                                     (per-frame-metrics :target-type
                                      list-of-frame-metric-type :member-name
                                      "PerFrameMetrics" :json-name
                                      "perFrameMetrics")
                                     (scan-type-conversion-mode :target-type
                                      prores-scan-type-conversion-mode
                                      :member-name "ScanTypeConversionMode"
                                      :json-name "scanTypeConversionMode")
                                     (slow-pal :target-type prores-slow-pal
                                      :member-name "SlowPal" :json-name
                                      "slowPal")
                                     (telecine :target-type prores-telecine
                                      :member-name "Telecine" :json-name
                                      "telecine"))
                                    (:shape-name "ProresSettings"))

(smithy/sdk/shapes:define-enum prores-slow-pal
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum prores-telecine
    common-lisp:nil
  (:none "NONE")
  (:hard "HARD"))

(smithy/sdk/shapes:define-input put-policy-request common-lisp:nil
                                ((policy :target-type policy :required
                                  common-lisp:t :member-name "Policy"
                                  :json-name "policy"))
                                (:shape-name "PutPolicyRequest"))

(smithy/sdk/shapes:define-output put-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy" :json-name "policy"))
                                 (:shape-name "PutPolicyResponse"))

(smithy/sdk/shapes:define-structure queue common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (concurrent-jobs :target-type integer
                                      :member-name "ConcurrentJobs" :json-name
                                      "concurrentJobs")
                                     (created-at :target-type timestamp-unix
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (last-updated :target-type timestamp-unix
                                      :member-name "LastUpdated" :json-name
                                      "lastUpdated")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan" :json-name
                                      "pricingPlan")
                                     (progressing-jobs-count :target-type
                                      integer :member-name
                                      "ProgressingJobsCount" :json-name
                                      "progressingJobsCount")
                                     (reservation-plan :target-type
                                      reservation-plan :member-name
                                      "ReservationPlan" :json-name
                                      "reservationPlan")
                                     (service-overrides :target-type
                                      list-of-service-override :member-name
                                      "ServiceOverrides" :json-name
                                      "serviceOverrides")
                                     (status :target-type queue-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (submitted-jobs-count :target-type integer
                                      :member-name "SubmittedJobsCount"
                                      :json-name "submittedJobsCount")
                                     (type :target-type type :member-name
                                      "Type" :json-name "type"))
                                    (:shape-name "Queue"))

(smithy/sdk/shapes:define-enum queue-list-by
    common-lisp:nil
  (:name "NAME")
  (:creation-date "CREATION_DATE"))

(smithy/sdk/shapes:define-enum queue-status
    common-lisp:nil
  (:active "ACTIVE")
  (:paused "PAUSED"))

(smithy/sdk/shapes:define-structure queue-transition common-lisp:nil
                                    ((destination-queue :target-type string
                                      :member-name "DestinationQueue"
                                      :json-name "destinationQueue")
                                     (source-queue :target-type string
                                      :member-name "SourceQueue" :json-name
                                      "sourceQueue")
                                     (timestamp :target-type timestamp-unix
                                      :member-name "Timestamp" :json-name
                                      "timestamp"))
                                    (:shape-name "QueueTransition"))

(smithy/sdk/shapes:define-structure rectangle common-lisp:nil
                                    ((height :target-type
                                      integer-min2max2147483647 :member-name
                                      "Height" :json-name "height")
                                     (width :target-type
                                      integer-min2max2147483647 :member-name
                                      "Width" :json-name "width")
                                     (x :target-type integer-min0max2147483647
                                      :member-name "X" :json-name "x")
                                     (y :target-type integer-min0max2147483647
                                      :member-name "Y" :json-name "y"))
                                    (:shape-name "Rectangle"))

(smithy/sdk/shapes:define-structure remix-settings common-lisp:nil
                                    ((audio-description-audio-channel
                                      :target-type integer-min1max64
                                      :member-name
                                      "AudioDescriptionAudioChannel" :json-name
                                      "audioDescriptionAudioChannel")
                                     (audio-description-data-channel
                                      :target-type integer-min1max64
                                      :member-name
                                      "AudioDescriptionDataChannel" :json-name
                                      "audioDescriptionDataChannel")
                                     (channel-mapping :target-type
                                      channel-mapping :member-name
                                      "ChannelMapping" :json-name
                                      "channelMapping")
                                     (channels-in :target-type
                                      integer-min1max64 :member-name
                                      "ChannelsIn" :json-name "channelsIn")
                                     (channels-out :target-type
                                      integer-min1max64 :member-name
                                      "ChannelsOut" :json-name "channelsOut"))
                                    (:shape-name "RemixSettings"))

(smithy/sdk/shapes:define-enum remove-ruby-reserve-attributes
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum renewal-type
    common-lisp:nil
  (:auto-renew "AUTO_RENEW")
  (:expire "EXPIRE"))

(smithy/sdk/shapes:define-enum required-flag
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure reservation-plan common-lisp:nil
                                    ((commitment :target-type commitment
                                      :member-name "Commitment" :json-name
                                      "commitment")
                                     (expires-at :target-type timestamp-unix
                                      :member-name "ExpiresAt" :json-name
                                      "expiresAt")
                                     (purchased-at :target-type timestamp-unix
                                      :member-name "PurchasedAt" :json-name
                                      "purchasedAt")
                                     (renewal-type :target-type renewal-type
                                      :member-name "RenewalType" :json-name
                                      "renewalType")
                                     (reserved-slots :target-type integer
                                      :member-name "ReservedSlots" :json-name
                                      "reservedSlots")
                                     (status :target-type
                                      reservation-plan-status :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name "ReservationPlan"))

(smithy/sdk/shapes:define-structure reservation-plan-settings common-lisp:nil
                                    ((commitment :target-type commitment
                                      :required common-lisp:t :member-name
                                      "Commitment" :json-name "commitment")
                                     (renewal-type :target-type renewal-type
                                      :required common-lisp:t :member-name
                                      "RenewalType" :json-name "renewalType")
                                     (reserved-slots :target-type integer
                                      :required common-lisp:t :member-name
                                      "ReservedSlots" :json-name
                                      "reservedSlots"))
                                    (:shape-name "ReservationPlanSettings"))

(smithy/sdk/shapes:define-enum reservation-plan-status
    common-lisp:nil
  (:active "ACTIVE")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-structure resource-tags common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (tags :target-type map-of-string
                                      :member-name "Tags" :json-name "tags"))
                                    (:shape-name "ResourceTags"))

(smithy/sdk/shapes:define-enum respond-to-afd
    common-lisp:nil
  (:none "NONE")
  (:respond "RESPOND")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-enum rule-type
    common-lisp:nil
  (:min-top-rendition-size "MIN_TOP_RENDITION_SIZE")
  (:min-bottom-rendition-size "MIN_BOTTOM_RENDITION_SIZE")
  (:force-include-renditions "FORCE_INCLUDE_RENDITIONS")
  (:allowed-renditions "ALLOWED_RENDITIONS"))

(smithy/sdk/shapes:define-structure s3destination-access-control
                                    common-lisp:nil
                                    ((canned-acl :target-type
                                      s3object-canned-acl :member-name
                                      "CannedAcl" :json-name "cannedAcl"))
                                    (:shape-name "S3DestinationAccessControl"))

(smithy/sdk/shapes:define-structure s3destination-settings common-lisp:nil
                                    ((access-control :target-type
                                      s3destination-access-control :member-name
                                      "AccessControl" :json-name
                                      "accessControl")
                                     (encryption :target-type
                                      s3encryption-settings :member-name
                                      "Encryption" :json-name "encryption")
                                     (storage-class :target-type
                                      s3storage-class :member-name
                                      "StorageClass" :json-name
                                      "storageClass"))
                                    (:shape-name "S3DestinationSettings"))

(smithy/sdk/shapes:define-structure s3encryption-settings common-lisp:nil
                                    ((encryption-type :target-type
                                      s3server-side-encryption-type
                                      :member-name "EncryptionType" :json-name
                                      "encryptionType")
                                     (kms-encryption-context :target-type
                                      string-pattern-aza-z0902 :member-name
                                      "KmsEncryptionContext" :json-name
                                      "kmsEncryptionContext")
                                     (kms-key-arn :target-type
                                      string-pattern-arn-aws-us-gov-cn-kms-az26east-west-central-north-south-east-west1912d12key-afaf098afaf094afaf094afaf094afaf0912mrk-afaf0932
                                      :member-name "KmsKeyArn" :json-name
                                      "kmsKeyArn"))
                                    (:shape-name "S3EncryptionSettings"))

(smithy/sdk/shapes:define-enum s3object-canned-acl
    common-lisp:nil
  (:public-read "PUBLIC_READ")
  (:authenticated-read "AUTHENTICATED_READ")
  (:bucket-owner-read "BUCKET_OWNER_READ")
  (:bucket-owner-full-control "BUCKET_OWNER_FULL_CONTROL"))

(smithy/sdk/shapes:define-enum s3server-side-encryption-type
    common-lisp:nil
  (:server-side-encryption-s3 "SERVER_SIDE_ENCRYPTION_S3")
  (:server-side-encryption-kms "SERVER_SIDE_ENCRYPTION_KMS"))

(smithy/sdk/shapes:define-enum s3storage-class
    common-lisp:nil
  (:standard "STANDARD")
  (:reduced-redundancy "REDUCED_REDUNDANCY")
  (:standard-ia "STANDARD_IA")
  (:onezone-ia "ONEZONE_IA")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:glacier "GLACIER")
  (:deep-archive "DEEP_ARCHIVE"))

(smithy/sdk/shapes:define-enum sample-range-conversion
    common-lisp:nil
  (:limited-range-squeeze "LIMITED_RANGE_SQUEEZE")
  (:none "NONE")
  (:limited-range-clip "LIMITED_RANGE_CLIP"))

(smithy/sdk/shapes:define-enum scaling-behavior
    common-lisp:nil
  (:default "DEFAULT")
  (:stretch-to-output "STRETCH_TO_OUTPUT")
  (:fit "FIT")
  (:fit-no-upscale "FIT_NO_UPSCALE")
  (:fill "FILL"))

(smithy/sdk/shapes:define-enum scc-destination-framerate
    common-lisp:nil
  (:framerate-23-97 "FRAMERATE_23_97")
  (:framerate-24 "FRAMERATE_24")
  (:framerate-25 "FRAMERATE_25")
  (:framerate-29-97-dropframe "FRAMERATE_29_97_DROPFRAME")
  (:framerate-29-97-non-dropframe "FRAMERATE_29_97_NON_DROPFRAME"))

(smithy/sdk/shapes:define-structure scc-destination-settings common-lisp:nil
                                    ((framerate :target-type
                                      scc-destination-framerate :member-name
                                      "Framerate" :json-name "framerate"))
                                    (:shape-name "SccDestinationSettings"))

(smithy/sdk/shapes:define-input search-jobs-request common-lisp:nil
                                ((input-file :target-type string :member-name
                                  "InputFile" :http-query "inputFile")
                                 (max-results :target-type integer-min1max20
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (order :target-type order :member-name "Order"
                                  :http-query "order")
                                 (queue :target-type string :member-name
                                  "Queue" :http-query "queue")
                                 (status :target-type job-status :member-name
                                  "Status" :http-query "status"))
                                (:shape-name "SearchJobsRequest"))

(smithy/sdk/shapes:define-output search-jobs-response common-lisp:nil
                                 ((jobs :target-type list-of-job :member-name
                                   "Jobs" :json-name "jobs")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "SearchJobsResponse"))

(smithy/sdk/shapes:define-structure service-override common-lisp:nil
                                    ((message :target-type string :member-name
                                      "Message" :json-name "message")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (override-value :target-type string
                                      :member-name "OverrideValue" :json-name
                                      "overrideValue")
                                     (value :target-type string :member-name
                                      "Value" :json-name "value"))
                                    (:shape-name "ServiceOverride"))

(smithy/sdk/shapes:define-enum simulate-reserved-queue
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure speke-key-provider common-lisp:nil
                                    ((certificate-arn :target-type
                                      string-pattern-arn-aws-us-gov-acm
                                      :member-name "CertificateArn" :json-name
                                      "certificateArn")
                                     (encryption-contract-configuration
                                      :target-type
                                      encryption-contract-configuration
                                      :member-name
                                      "EncryptionContractConfiguration"
                                      :json-name
                                      "encryptionContractConfiguration")
                                     (resource-id :target-type string
                                      :member-name "ResourceId" :json-name
                                      "resourceId")
                                     (system-ids :target-type
                                      list-of-string-pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
                                      :member-name "SystemIds" :json-name
                                      "systemIds")
                                     (url :target-type string-pattern-https-d
                                      :member-name "Url" :json-name "url"))
                                    (:shape-name "SpekeKeyProvider"))

(smithy/sdk/shapes:define-structure speke-key-provider-cmaf common-lisp:nil
                                    ((certificate-arn :target-type
                                      string-pattern-arn-aws-us-gov-acm
                                      :member-name "CertificateArn" :json-name
                                      "certificateArn")
                                     (dash-signaled-system-ids :target-type
                                      list-of-string-min36max36pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
                                      :member-name "DashSignaledSystemIds"
                                      :json-name "dashSignaledSystemIds")
                                     (encryption-contract-configuration
                                      :target-type
                                      encryption-contract-configuration
                                      :member-name
                                      "EncryptionContractConfiguration"
                                      :json-name
                                      "encryptionContractConfiguration")
                                     (hls-signaled-system-ids :target-type
                                      list-of-string-min36max36pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
                                      :member-name "HlsSignaledSystemIds"
                                      :json-name "hlsSignaledSystemIds")
                                     (resource-id :target-type string-pattern-w
                                      :member-name "ResourceId" :json-name
                                      "resourceId")
                                     (url :target-type string-pattern-https-d
                                      :member-name "Url" :json-name "url"))
                                    (:shape-name "SpekeKeyProviderCmaf"))

(smithy/sdk/shapes:define-structure srt-destination-settings common-lisp:nil
                                    ((style-passthrough :target-type
                                      srt-style-passthrough :member-name
                                      "StylePassthrough" :json-name
                                      "stylePassthrough"))
                                    (:shape-name "SrtDestinationSettings"))

(smithy/sdk/shapes:define-enum srt-style-passthrough
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure static-key-provider common-lisp:nil
                                    ((key-format :target-type
                                      string-pattern-identity-aza-z26aza-z09163
                                      :member-name "KeyFormat" :json-name
                                      "keyFormat")
                                     (key-format-versions :target-type
                                      string-pattern-dd :member-name
                                      "KeyFormatVersions" :json-name
                                      "keyFormatVersions")
                                     (static-key-value :target-type
                                      string-pattern-aza-z0932 :member-name
                                      "StaticKeyValue" :json-name
                                      "staticKeyValue")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url"))
                                    (:shape-name "StaticKeyProvider"))

(smithy/sdk/shapes:define-enum status-update-interval
    common-lisp:nil
  (:seconds-10 "SECONDS_10")
  (:seconds-12 "SECONDS_12")
  (:seconds-15 "SECONDS_15")
  (:seconds-20 "SECONDS_20")
  (:seconds-30 "SECONDS_30")
  (:seconds-60 "SECONDS_60")
  (:seconds-120 "SECONDS_120")
  (:seconds-180 "SECONDS_180")
  (:seconds-240 "SECONDS_240")
  (:seconds-300 "SECONDS_300")
  (:seconds-360 "SECONDS_360")
  (:seconds-420 "SECONDS_420")
  (:seconds-480 "SECONDS_480")
  (:seconds-540 "SECONDS_540")
  (:seconds-600 "SECONDS_600"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :json-name
                                  "arn")
                                 (tags :target-type map-of-string :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-enum tams-gap-handling
    common-lisp:nil
  (:skip-gaps "SKIP_GAPS")
  (:fill-with-black "FILL_WITH_BLACK")
  (:hold-last-frame "HOLD_LAST_FRAME"))

(smithy/sdk/shapes:define-structure teletext-destination-settings
                                    common-lisp:nil
                                    ((page-number :target-type
                                      string-min3max3pattern1809a-faf09a-eae
                                      :member-name "PageNumber" :json-name
                                      "pageNumber")
                                     (page-types :target-type
                                      list-of-teletext-page-type :member-name
                                      "PageTypes" :json-name "pageTypes"))
                                    (:shape-name "TeletextDestinationSettings"))

(smithy/sdk/shapes:define-enum teletext-page-type
    common-lisp:nil
  (:page-type-initial "PAGE_TYPE_INITIAL")
  (:page-type-subtitle "PAGE_TYPE_SUBTITLE")
  (:page-type-addl-info "PAGE_TYPE_ADDL_INFO")
  (:page-type-program-schedule "PAGE_TYPE_PROGRAM_SCHEDULE")
  (:page-type-hearing-impaired-subtitle "PAGE_TYPE_HEARING_IMPAIRED_SUBTITLE"))

(smithy/sdk/shapes:define-structure teletext-source-settings common-lisp:nil
                                    ((page-number :target-type
                                      string-min3max3pattern1809a-faf09a-eae
                                      :member-name "PageNumber" :json-name
                                      "pageNumber"))
                                    (:shape-name "TeletextSourceSettings"))

(smithy/sdk/shapes:define-structure timecode-burnin common-lisp:nil
                                    ((font-size :target-type integer-min10max48
                                      :member-name "FontSize" :json-name
                                      "fontSize")
                                     (position :target-type
                                      timecode-burnin-position :member-name
                                      "Position" :json-name "position")
                                     (prefix :target-type string-pattern
                                      :member-name "Prefix" :json-name
                                      "prefix"))
                                    (:shape-name "TimecodeBurnin"))

(smithy/sdk/shapes:define-enum timecode-burnin-position
    common-lisp:nil
  (:top-center "TOP_CENTER")
  (:top-left "TOP_LEFT")
  (:top-right "TOP_RIGHT")
  (:middle-left "MIDDLE_LEFT")
  (:middle-center "MIDDLE_CENTER")
  (:middle-right "MIDDLE_RIGHT")
  (:bottom-left "BOTTOM_LEFT")
  (:bottom-center "BOTTOM_CENTER")
  (:bottom-right "BOTTOM_RIGHT"))

(smithy/sdk/shapes:define-structure timecode-config common-lisp:nil
                                    ((anchor :target-type
                                      string-pattern010920405090509092
                                      :member-name "Anchor" :json-name
                                      "anchor")
                                     (source :target-type timecode-source
                                      :member-name "Source" :json-name
                                      "source")
                                     (start :target-type
                                      string-pattern010920405090509092
                                      :member-name "Start" :json-name "start")
                                     (timestamp-offset :target-type
                                      string-pattern0940191020191209301
                                      :member-name "TimestampOffset" :json-name
                                      "timestampOffset"))
                                    (:shape-name "TimecodeConfig"))

(smithy/sdk/shapes:define-enum timecode-source
    common-lisp:nil
  (:embedded "EMBEDDED")
  (:zerobased "ZEROBASED")
  (:specifiedstart "SPECIFIEDSTART"))

(smithy/sdk/shapes:define-enum timecode-track
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum timed-metadata
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure timed-metadata-insertion common-lisp:nil
                                    ((id3insertions :target-type
                                      list-of-id3insertion :member-name
                                      "Id3Insertions" :json-name
                                      "id3Insertions"))
                                    (:shape-name "TimedMetadataInsertion"))

(smithy/sdk/shapes:define-structure timing common-lisp:nil
                                    ((finish-time :target-type timestamp-unix
                                      :member-name "FinishTime" :json-name
                                      "finishTime")
                                     (start-time :target-type timestamp-unix
                                      :member-name "StartTime" :json-name
                                      "startTime")
                                     (submit-time :target-type timestamp-unix
                                      :member-name "SubmitTime" :json-name
                                      "submitTime"))
                                    (:shape-name "Timing"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure track common-lisp:nil
                                    ((audio-properties :target-type
                                      audio-properties :member-name
                                      "AudioProperties" :json-name
                                      "audioProperties")
                                     (codec :target-type codec :member-name
                                      "Codec" :json-name "codec")
                                     (data-properties :target-type
                                      data-properties :member-name
                                      "DataProperties" :json-name
                                      "dataProperties")
                                     (duration :target-type double :member-name
                                      "Duration" :json-name "duration")
                                     (index :target-type integer :member-name
                                      "Index" :json-name "index")
                                     (track-type :target-type track-type
                                      :member-name "TrackType" :json-name
                                      "trackType")
                                     (video-properties :target-type
                                      video-properties :member-name
                                      "VideoProperties" :json-name
                                      "videoProperties"))
                                    (:shape-name "Track"))

(smithy/sdk/shapes:define-structure track-mapping common-lisp:nil
                                    ((audio-track-indexes :target-type
                                      list-of-integer :member-name
                                      "AudioTrackIndexes" :json-name
                                      "audioTrackIndexes")
                                     (data-track-indexes :target-type
                                      list-of-integer :member-name
                                      "DataTrackIndexes" :json-name
                                      "dataTrackIndexes")
                                     (video-track-indexes :target-type
                                      list-of-integer :member-name
                                      "VideoTrackIndexes" :json-name
                                      "videoTrackIndexes"))
                                    (:shape-name "TrackMapping"))

(smithy/sdk/shapes:define-structure track-source-settings common-lisp:nil
                                    ((track-number :target-type
                                      integer-min1max2147483647 :member-name
                                      "TrackNumber" :json-name "trackNumber"))
                                    (:shape-name "TrackSourceSettings"))

(smithy/sdk/shapes:define-enum track-type
    common-lisp:nil
  (:video "video")
  (:audio "audio")
  (:data "data"))

(smithy/sdk/shapes:define-enum transfer-characteristics
    common-lisp:nil
  (:itu-709 "ITU_709")
  (:unspecified "UNSPECIFIED")
  (:reserved "RESERVED")
  (:itu-470m "ITU_470M")
  (:itu-470bg "ITU_470BG")
  (:smpte-170m "SMPTE_170M")
  (:smpte-240m "SMPTE_240M")
  (:linear "LINEAR")
  (:log10-2 "LOG10_2")
  (:loc10-2-5 "LOC10_2_5")
  (:iec-61966-2-4 "IEC_61966_2_4")
  (:itu-1361 "ITU_1361")
  (:iec-61966-2-1 "IEC_61966_2_1")
  (:itu-2020-10bit "ITU_2020_10bit")
  (:itu-2020-12bit "ITU_2020_12bit")
  (:smpte-2084 "SMPTE_2084")
  (:smpte-428-1 "SMPTE_428_1")
  (:arib-b67 "ARIB_B67")
  (:last "LAST"))

(smithy/sdk/shapes:define-enum ts-pts-offset
    common-lisp:nil
  (:auto "AUTO")
  (:seconds "SECONDS")
  (:milliseconds "MILLISECONDS"))

(smithy/sdk/shapes:define-structure ttml-destination-settings common-lisp:nil
                                    ((style-passthrough :target-type
                                      ttml-style-passthrough :member-name
                                      "StylePassthrough" :json-name
                                      "stylePassthrough"))
                                    (:shape-name "TtmlDestinationSettings"))

(smithy/sdk/shapes:define-enum ttml-style-passthrough
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:system "SYSTEM")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-enum uncompressed-fourcc
    common-lisp:nil
  (:i420 "I420")
  (:i422 "I422")
  (:i444 "I444"))

(smithy/sdk/shapes:define-enum uncompressed-framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum uncompressed-framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum uncompressed-interlace-mode
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:progressive "PROGRESSIVE"))

(smithy/sdk/shapes:define-enum uncompressed-scan-type-conversion-mode
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:interlaced-optimize "INTERLACED_OPTIMIZE"))

(smithy/sdk/shapes:define-structure uncompressed-settings common-lisp:nil
                                    ((fourcc :target-type uncompressed-fourcc
                                      :member-name "Fourcc" :json-name
                                      "fourcc")
                                     (framerate-control :target-type
                                      uncompressed-framerate-control
                                      :member-name "FramerateControl"
                                      :json-name "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      uncompressed-framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (interlace-mode :target-type
                                      uncompressed-interlace-mode :member-name
                                      "InterlaceMode" :json-name
                                      "interlaceMode")
                                     (scan-type-conversion-mode :target-type
                                      uncompressed-scan-type-conversion-mode
                                      :member-name "ScanTypeConversionMode"
                                      :json-name "scanTypeConversionMode")
                                     (slow-pal :target-type
                                      uncompressed-slow-pal :member-name
                                      "SlowPal" :json-name "slowPal")
                                     (telecine :target-type
                                      uncompressed-telecine :member-name
                                      "Telecine" :json-name "telecine"))
                                    (:shape-name "UncompressedSettings"))

(smithy/sdk/shapes:define-enum uncompressed-slow-pal
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum uncompressed-telecine
    common-lisp:nil
  (:none "NONE")
  (:hard "HARD"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type string :required
                                  common-lisp:t :member-name "Arn" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :member-name "TagKeys" :json-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-job-template-request common-lisp:nil
                                ((acceleration-settings :target-type
                                  acceleration-settings :member-name
                                  "AccelerationSettings" :json-name
                                  "accelerationSettings")
                                 (category :target-type string :member-name
                                  "Category" :json-name "category")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (hop-destinations :target-type
                                  list-of-hop-destination :member-name
                                  "HopDestinations" :json-name
                                  "hopDestinations")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (priority :target-type
                                  integer-min-negative50max50 :member-name
                                  "Priority" :json-name "priority")
                                 (queue :target-type string :member-name
                                  "Queue" :json-name "queue")
                                 (settings :target-type job-template-settings
                                  :member-name "Settings" :json-name
                                  "settings")
                                 (status-update-interval :target-type
                                  status-update-interval :member-name
                                  "StatusUpdateInterval" :json-name
                                  "statusUpdateInterval"))
                                (:shape-name "UpdateJobTemplateRequest"))

(smithy/sdk/shapes:define-output update-job-template-response common-lisp:nil
                                 ((job-template :target-type job-template
                                   :member-name "JobTemplate" :json-name
                                   "jobTemplate"))
                                 (:shape-name "UpdateJobTemplateResponse"))

(smithy/sdk/shapes:define-input update-preset-request common-lisp:nil
                                ((category :target-type string :member-name
                                  "Category" :json-name "category")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (settings :target-type preset-settings
                                  :member-name "Settings" :json-name
                                  "settings"))
                                (:shape-name "UpdatePresetRequest"))

(smithy/sdk/shapes:define-output update-preset-response common-lisp:nil
                                 ((preset :target-type preset :member-name
                                   "Preset" :json-name "preset"))
                                 (:shape-name "UpdatePresetResponse"))

(smithy/sdk/shapes:define-input update-queue-request common-lisp:nil
                                ((concurrent-jobs :target-type integer
                                  :member-name "ConcurrentJobs" :json-name
                                  "concurrentJobs")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (reservation-plan-settings :target-type
                                  reservation-plan-settings :member-name
                                  "ReservationPlanSettings" :json-name
                                  "reservationPlanSettings")
                                 (status :target-type queue-status :member-name
                                  "Status" :json-name "status"))
                                (:shape-name "UpdateQueueRequest"))

(smithy/sdk/shapes:define-output update-queue-response common-lisp:nil
                                 ((queue :target-type queue :member-name
                                   "Queue" :json-name "queue"))
                                 (:shape-name "UpdateQueueResponse"))

(smithy/sdk/shapes:define-enum vc3class
    common-lisp:nil
  (:class-145-8bit "CLASS_145_8BIT")
  (:class-220-8bit "CLASS_220_8BIT")
  (:class-220-10bit "CLASS_220_10BIT"))

(smithy/sdk/shapes:define-enum vc3framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum vc3framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum vc3interlace-mode
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:progressive "PROGRESSIVE"))

(smithy/sdk/shapes:define-enum vc3scan-type-conversion-mode
    common-lisp:nil
  (:interlaced "INTERLACED")
  (:interlaced-optimize "INTERLACED_OPTIMIZE"))

(smithy/sdk/shapes:define-structure vc3settings common-lisp:nil
                                    ((framerate-control :target-type
                                      vc3framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      vc3framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max1001 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min24max60000 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (interlace-mode :target-type
                                      vc3interlace-mode :member-name
                                      "InterlaceMode" :json-name
                                      "interlaceMode")
                                     (scan-type-conversion-mode :target-type
                                      vc3scan-type-conversion-mode :member-name
                                      "ScanTypeConversionMode" :json-name
                                      "scanTypeConversionMode")
                                     (slow-pal :target-type vc3slow-pal
                                      :member-name "SlowPal" :json-name
                                      "slowPal")
                                     (telecine :target-type vc3telecine
                                      :member-name "Telecine" :json-name
                                      "telecine")
                                     (vc3class :target-type vc3class
                                      :member-name "Vc3Class" :json-name
                                      "vc3Class"))
                                    (:shape-name "Vc3Settings"))

(smithy/sdk/shapes:define-enum vc3slow-pal
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum vc3telecine
    common-lisp:nil
  (:none "NONE")
  (:hard "HARD"))

(smithy/sdk/shapes:define-enum vchip-action
    common-lisp:nil
  (:passthrough "PASSTHROUGH")
  (:strip "STRIP"))

(smithy/sdk/shapes:define-enum video-codec
    common-lisp:nil
  (:av1 "AV1")
  (:avc-intra "AVC_INTRA")
  (:frame-capture "FRAME_CAPTURE")
  (:gif "GIF")
  (:h-264 "H_264")
  (:h-265 "H_265")
  (:mpeg2 "MPEG2")
  (:passthrough "PASSTHROUGH")
  (:prores "PRORES")
  (:uncompressed "UNCOMPRESSED")
  (:vc3 "VC3")
  (:vp8 "VP8")
  (:vp9 "VP9")
  (:xavc "XAVC"))

(smithy/sdk/shapes:define-structure video-codec-settings common-lisp:nil
                                    ((av1settings :target-type av1settings
                                      :member-name "Av1Settings" :json-name
                                      "av1Settings")
                                     (avc-intra-settings :target-type
                                      avc-intra-settings :member-name
                                      "AvcIntraSettings" :json-name
                                      "avcIntraSettings")
                                     (codec :target-type video-codec
                                      :member-name "Codec" :json-name "codec")
                                     (frame-capture-settings :target-type
                                      frame-capture-settings :member-name
                                      "FrameCaptureSettings" :json-name
                                      "frameCaptureSettings")
                                     (gif-settings :target-type gif-settings
                                      :member-name "GifSettings" :json-name
                                      "gifSettings")
                                     (h264settings :target-type h264settings
                                      :member-name "H264Settings" :json-name
                                      "h264Settings")
                                     (h265settings :target-type h265settings
                                      :member-name "H265Settings" :json-name
                                      "h265Settings")
                                     (mpeg2settings :target-type mpeg2settings
                                      :member-name "Mpeg2Settings" :json-name
                                      "mpeg2Settings")
                                     (prores-settings :target-type
                                      prores-settings :member-name
                                      "ProresSettings" :json-name
                                      "proresSettings")
                                     (uncompressed-settings :target-type
                                      uncompressed-settings :member-name
                                      "UncompressedSettings" :json-name
                                      "uncompressedSettings")
                                     (vc3settings :target-type vc3settings
                                      :member-name "Vc3Settings" :json-name
                                      "vc3Settings")
                                     (vp8settings :target-type vp8settings
                                      :member-name "Vp8Settings" :json-name
                                      "vp8Settings")
                                     (vp9settings :target-type vp9settings
                                      :member-name "Vp9Settings" :json-name
                                      "vp9Settings")
                                     (xavc-settings :target-type xavc-settings
                                      :member-name "XavcSettings" :json-name
                                      "xavcSettings"))
                                    (:shape-name "VideoCodecSettings"))

(smithy/sdk/shapes:define-structure video-description common-lisp:nil
                                    ((afd-signaling :target-type afd-signaling
                                      :member-name "AfdSignaling" :json-name
                                      "afdSignaling")
                                     (anti-alias :target-type anti-alias
                                      :member-name "AntiAlias" :json-name
                                      "antiAlias")
                                     (chroma-position-mode :target-type
                                      chroma-position-mode :member-name
                                      "ChromaPositionMode" :json-name
                                      "chromaPositionMode")
                                     (codec-settings :target-type
                                      video-codec-settings :member-name
                                      "CodecSettings" :json-name
                                      "codecSettings")
                                     (color-metadata :target-type
                                      color-metadata :member-name
                                      "ColorMetadata" :json-name
                                      "colorMetadata")
                                     (crop :target-type rectangle :member-name
                                      "Crop" :json-name "crop")
                                     (drop-frame-timecode :target-type
                                      drop-frame-timecode :member-name
                                      "DropFrameTimecode" :json-name
                                      "dropFrameTimecode")
                                     (fixed-afd :target-type integer-min0max15
                                      :member-name "FixedAfd" :json-name
                                      "fixedAfd")
                                     (height :target-type integer-min32max8192
                                      :member-name "Height" :json-name
                                      "height")
                                     (position :target-type rectangle
                                      :member-name "Position" :json-name
                                      "position")
                                     (respond-to-afd :target-type
                                      respond-to-afd :member-name
                                      "RespondToAfd" :json-name "respondToAfd")
                                     (scaling-behavior :target-type
                                      scaling-behavior :member-name
                                      "ScalingBehavior" :json-name
                                      "scalingBehavior")
                                     (sharpness :target-type integer-min0max100
                                      :member-name "Sharpness" :json-name
                                      "sharpness")
                                     (timecode-insertion :target-type
                                      video-timecode-insertion :member-name
                                      "TimecodeInsertion" :json-name
                                      "timecodeInsertion")
                                     (timecode-track :target-type
                                      timecode-track :member-name
                                      "TimecodeTrack" :json-name
                                      "timecodeTrack")
                                     (video-preprocessors :target-type
                                      video-preprocessor :member-name
                                      "VideoPreprocessors" :json-name
                                      "videoPreprocessors")
                                     (width :target-type integer-min32max8192
                                      :member-name "Width" :json-name "width"))
                                    (:shape-name "VideoDescription"))

(smithy/sdk/shapes:define-structure video-detail common-lisp:nil
                                    ((height-in-px :target-type integer
                                      :member-name "HeightInPx" :json-name
                                      "heightInPx")
                                     (width-in-px :target-type integer
                                      :member-name "WidthInPx" :json-name
                                      "widthInPx"))
                                    (:shape-name "VideoDetail"))

(smithy/sdk/shapes:define-structure video-overlay common-lisp:nil
                                    ((crop :target-type video-overlay-crop
                                      :member-name "Crop" :json-name "crop")
                                     (end-timecode :target-type
                                      string-pattern010920405090509092
                                      :member-name "EndTimecode" :json-name
                                      "endTimecode")
                                     (initial-position :target-type
                                      video-overlay-position :member-name
                                      "InitialPosition" :json-name
                                      "initialPosition")
                                     (input :target-type video-overlay-input
                                      :member-name "Input" :json-name "input")
                                     (playback :target-type
                                      video-overlay-play-back-mode :member-name
                                      "Playback" :json-name "playback")
                                     (start-timecode :target-type
                                      string-pattern010920405090509092
                                      :member-name "StartTimecode" :json-name
                                      "startTimecode")
                                     (transitions :target-type
                                      list-of-video-overlay-transition
                                      :member-name "Transitions" :json-name
                                      "transitions"))
                                    (:shape-name "VideoOverlay"))

(smithy/sdk/shapes:define-structure video-overlay-crop common-lisp:nil
                                    ((height :target-type
                                      integer-min0max2147483647 :member-name
                                      "Height" :json-name "height")
                                     (unit :target-type video-overlay-unit
                                      :member-name "Unit" :json-name "unit")
                                     (width :target-type
                                      integer-min0max2147483647 :member-name
                                      "Width" :json-name "width")
                                     (x :target-type integer-min0max2147483647
                                      :member-name "X" :json-name "x")
                                     (y :target-type integer-min0max2147483647
                                      :member-name "Y" :json-name "y"))
                                    (:shape-name "VideoOverlayCrop"))

(smithy/sdk/shapes:define-structure video-overlay-input common-lisp:nil
                                    ((file-input :target-type
                                      string-pattern-s3https :member-name
                                      "FileInput" :json-name "fileInput")
                                     (input-clippings :target-type
                                      list-of-video-overlay-input-clipping
                                      :member-name "InputClippings" :json-name
                                      "inputClippings")
                                     (timecode-source :target-type
                                      input-timecode-source :member-name
                                      "TimecodeSource" :json-name
                                      "timecodeSource")
                                     (timecode-start :target-type
                                      string-min11max11pattern01d20305d205d
                                      :member-name "TimecodeStart" :json-name
                                      "timecodeStart"))
                                    (:shape-name "VideoOverlayInput"))

(smithy/sdk/shapes:define-structure video-overlay-input-clipping
                                    common-lisp:nil
                                    ((end-timecode :target-type
                                      string-pattern010920405090509092090909
                                      :member-name "EndTimecode" :json-name
                                      "endTimecode")
                                     (start-timecode :target-type
                                      string-pattern010920405090509092090909
                                      :member-name "StartTimecode" :json-name
                                      "startTimecode"))
                                    (:shape-name "VideoOverlayInputClipping"))

(smithy/sdk/shapes:define-enum video-overlay-play-back-mode
    common-lisp:nil
  (:once "ONCE")
  (:repeat "REPEAT"))

(smithy/sdk/shapes:define-structure video-overlay-position common-lisp:nil
                                    ((height :target-type
                                      integer-min-negative1max2147483647
                                      :member-name "Height" :json-name
                                      "height")
                                     (unit :target-type video-overlay-unit
                                      :member-name "Unit" :json-name "unit")
                                     (width :target-type
                                      integer-min-negative1max2147483647
                                      :member-name "Width" :json-name "width")
                                     (xposition :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "XPosition" :json-name
                                      "xPosition")
                                     (yposition :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "YPosition" :json-name
                                      "yPosition"))
                                    (:shape-name "VideoOverlayPosition"))

(smithy/sdk/shapes:define-structure video-overlay-transition common-lisp:nil
                                    ((end-position :target-type
                                      video-overlay-position :member-name
                                      "EndPosition" :json-name "endPosition")
                                     (end-timecode :target-type
                                      string-pattern010920405090509092
                                      :member-name "EndTimecode" :json-name
                                      "endTimecode")
                                     (start-timecode :target-type
                                      string-pattern010920405090509092
                                      :member-name "StartTimecode" :json-name
                                      "startTimecode"))
                                    (:shape-name "VideoOverlayTransition"))

(smithy/sdk/shapes:define-enum video-overlay-unit
    common-lisp:nil
  (:pixels "PIXELS")
  (:percentage "PERCENTAGE"))

(smithy/sdk/shapes:define-structure video-preprocessor common-lisp:nil
                                    ((color-corrector :target-type
                                      color-corrector :member-name
                                      "ColorCorrector" :json-name
                                      "colorCorrector")
                                     (deinterlacer :target-type deinterlacer
                                      :member-name "Deinterlacer" :json-name
                                      "deinterlacer")
                                     (dolby-vision :target-type dolby-vision
                                      :member-name "DolbyVision" :json-name
                                      "dolbyVision")
                                     (hdr10plus :target-type hdr10plus
                                      :member-name "Hdr10Plus" :json-name
                                      "hdr10Plus")
                                     (image-inserter :target-type
                                      image-inserter :member-name
                                      "ImageInserter" :json-name
                                      "imageInserter")
                                     (noise-reducer :target-type noise-reducer
                                      :member-name "NoiseReducer" :json-name
                                      "noiseReducer")
                                     (partner-watermarking :target-type
                                      partner-watermarking :member-name
                                      "PartnerWatermarking" :json-name
                                      "partnerWatermarking")
                                     (timecode-burnin :target-type
                                      timecode-burnin :member-name
                                      "TimecodeBurnin" :json-name
                                      "timecodeBurnin"))
                                    (:shape-name "VideoPreprocessor"))

(smithy/sdk/shapes:define-structure video-properties common-lisp:nil
                                    ((bit-depth :target-type integer
                                      :member-name "BitDepth" :json-name
                                      "bitDepth")
                                     (bit-rate :target-type long :member-name
                                      "BitRate" :json-name "bitRate")
                                     (color-primaries :target-type
                                      color-primaries :member-name
                                      "ColorPrimaries" :json-name
                                      "colorPrimaries")
                                     (frame-rate :target-type frame-rate
                                      :member-name "FrameRate" :json-name
                                      "frameRate")
                                     (height :target-type integer :member-name
                                      "Height" :json-name "height")
                                     (matrix-coefficients :target-type
                                      matrix-coefficients :member-name
                                      "MatrixCoefficients" :json-name
                                      "matrixCoefficients")
                                     (transfer-characteristics :target-type
                                      transfer-characteristics :member-name
                                      "TransferCharacteristics" :json-name
                                      "transferCharacteristics")
                                     (width :target-type integer :member-name
                                      "Width" :json-name "width"))
                                    (:shape-name "VideoProperties"))

(smithy/sdk/shapes:define-structure video-selector common-lisp:nil
                                    ((alpha-behavior :target-type
                                      alpha-behavior :member-name
                                      "AlphaBehavior" :json-name
                                      "alphaBehavior")
                                     (color-space :target-type color-space
                                      :member-name "ColorSpace" :json-name
                                      "colorSpace")
                                     (color-space-usage :target-type
                                      color-space-usage :member-name
                                      "ColorSpaceUsage" :json-name
                                      "colorSpaceUsage")
                                     (embedded-timecode-override :target-type
                                      embedded-timecode-override :member-name
                                      "EmbeddedTimecodeOverride" :json-name
                                      "embeddedTimecodeOverride")
                                     (hdr10metadata :target-type hdr10metadata
                                      :member-name "Hdr10Metadata" :json-name
                                      "hdr10Metadata")
                                     (max-luminance :target-type
                                      integer-min0max2147483647 :member-name
                                      "MaxLuminance" :json-name "maxLuminance")
                                     (pad-video :target-type pad-video
                                      :member-name "PadVideo" :json-name
                                      "padVideo")
                                     (pid :target-type
                                      integer-min1max2147483647 :member-name
                                      "Pid" :json-name "pid")
                                     (program-number :target-type
                                      integer-min-negative2147483648max2147483647
                                      :member-name "ProgramNumber" :json-name
                                      "programNumber")
                                     (rotate :target-type input-rotate
                                      :member-name "Rotate" :json-name
                                      "rotate")
                                     (sample-range :target-type
                                      input-sample-range :member-name
                                      "SampleRange" :json-name "sampleRange"))
                                    (:shape-name "VideoSelector"))

(smithy/sdk/shapes:define-enum video-timecode-insertion
    common-lisp:nil
  (:disabled "DISABLED")
  (:pic-timing-sei "PIC_TIMING_SEI"))

(smithy/sdk/shapes:define-structure vorbis-settings common-lisp:nil
                                    ((channels :target-type integer-min1max2
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (sample-rate :target-type
                                      integer-min22050max48000 :member-name
                                      "SampleRate" :json-name "sampleRate")
                                     (vbr-quality :target-type
                                      integer-min-negative1max10 :member-name
                                      "VbrQuality" :json-name "vbrQuality"))
                                    (:shape-name "VorbisSettings"))

(smithy/sdk/shapes:define-enum vp8framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum vp8framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum vp8par-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum vp8quality-tuning-level
    common-lisp:nil
  (:multi-pass "MULTI_PASS")
  (:multi-pass-hq "MULTI_PASS_HQ"))

(smithy/sdk/shapes:define-enum vp8rate-control-mode
    common-lisp:nil
  (:vbr "VBR"))

(smithy/sdk/shapes:define-structure vp8settings common-lisp:nil
                                    ((bitrate :target-type
                                      integer-min1000max1152000000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (framerate-control :target-type
                                      vp8framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      vp8framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (gop-size :target-type double-min0
                                      :member-name "GopSize" :json-name
                                      "gopSize")
                                     (hrd-buffer-size :target-type
                                      integer-min0max47185920 :member-name
                                      "HrdBufferSize" :json-name
                                      "hrdBufferSize")
                                     (max-bitrate :target-type
                                      integer-min1000max1152000000 :member-name
                                      "MaxBitrate" :json-name "maxBitrate")
                                     (par-control :target-type vp8par-control
                                      :member-name "ParControl" :json-name
                                      "parControl")
                                     (par-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParDenominator" :json-name
                                      "parDenominator")
                                     (par-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParNumerator" :json-name "parNumerator")
                                     (quality-tuning-level :target-type
                                      vp8quality-tuning-level :member-name
                                      "QualityTuningLevel" :json-name
                                      "qualityTuningLevel")
                                     (rate-control-mode :target-type
                                      vp8rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode"))
                                    (:shape-name "Vp8Settings"))

(smithy/sdk/shapes:define-enum vp9framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum vp9framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum vp9par-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum vp9quality-tuning-level
    common-lisp:nil
  (:multi-pass "MULTI_PASS")
  (:multi-pass-hq "MULTI_PASS_HQ"))

(smithy/sdk/shapes:define-enum vp9rate-control-mode
    common-lisp:nil
  (:vbr "VBR"))

(smithy/sdk/shapes:define-structure vp9settings common-lisp:nil
                                    ((bitrate :target-type
                                      integer-min1000max480000000 :member-name
                                      "Bitrate" :json-name "bitrate")
                                     (framerate-control :target-type
                                      vp9framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      vp9framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (gop-size :target-type double-min0
                                      :member-name "GopSize" :json-name
                                      "gopSize")
                                     (hrd-buffer-size :target-type
                                      integer-min0max47185920 :member-name
                                      "HrdBufferSize" :json-name
                                      "hrdBufferSize")
                                     (max-bitrate :target-type
                                      integer-min1000max480000000 :member-name
                                      "MaxBitrate" :json-name "maxBitrate")
                                     (par-control :target-type vp9par-control
                                      :member-name "ParControl" :json-name
                                      "parControl")
                                     (par-denominator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParDenominator" :json-name
                                      "parDenominator")
                                     (par-numerator :target-type
                                      integer-min1max2147483647 :member-name
                                      "ParNumerator" :json-name "parNumerator")
                                     (quality-tuning-level :target-type
                                      vp9quality-tuning-level :member-name
                                      "QualityTuningLevel" :json-name
                                      "qualityTuningLevel")
                                     (rate-control-mode :target-type
                                      vp9rate-control-mode :member-name
                                      "RateControlMode" :json-name
                                      "rateControlMode"))
                                    (:shape-name "Vp9Settings"))

(smithy/sdk/shapes:define-structure warning-group common-lisp:nil
                                    ((code :target-type integer :required
                                      common-lisp:t :member-name "Code"
                                      :json-name "code")
                                     (count :target-type integer :required
                                      common-lisp:t :member-name "Count"
                                      :json-name "count"))
                                    (:shape-name "WarningGroup"))

(smithy/sdk/shapes:define-enum watermarking-strength
    common-lisp:nil
  (:lightest "LIGHTEST")
  (:lighter "LIGHTER")
  (:default "DEFAULT")
  (:stronger "STRONGER")
  (:strongest "STRONGEST"))

(smithy/sdk/shapes:define-enum wav-format
    common-lisp:nil
  (:riff "RIFF")
  (:rf64 "RF64")
  (:extensible "EXTENSIBLE"))

(smithy/sdk/shapes:define-structure wav-settings common-lisp:nil
                                    ((bit-depth :target-type integer-min16max24
                                      :member-name "BitDepth" :json-name
                                      "bitDepth")
                                     (channels :target-type integer-min1max64
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (format :target-type wav-format
                                      :member-name "Format" :json-name
                                      "format")
                                     (sample-rate :target-type
                                      integer-min8000max192000 :member-name
                                      "SampleRate" :json-name "sampleRate"))
                                    (:shape-name "WavSettings"))

(smithy/sdk/shapes:define-enum webvtt-accessibility-subs
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure webvtt-destination-settings common-lisp:nil
                                    ((accessibility :target-type
                                      webvtt-accessibility-subs :member-name
                                      "Accessibility" :json-name
                                      "accessibility")
                                     (style-passthrough :target-type
                                      webvtt-style-passthrough :member-name
                                      "StylePassthrough" :json-name
                                      "stylePassthrough"))
                                    (:shape-name "WebvttDestinationSettings"))

(smithy/sdk/shapes:define-structure webvtt-hls-source-settings common-lisp:nil
                                    ((rendition-group-id :target-type string
                                      :member-name "RenditionGroupId"
                                      :json-name "renditionGroupId")
                                     (rendition-language-code :target-type
                                      language-code :member-name
                                      "RenditionLanguageCode" :json-name
                                      "renditionLanguageCode")
                                     (rendition-name :target-type string
                                      :member-name "RenditionName" :json-name
                                      "renditionName"))
                                    (:shape-name "WebvttHlsSourceSettings"))

(smithy/sdk/shapes:define-enum webvtt-style-passthrough
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:strict "STRICT")
  (:merge "MERGE"))

(smithy/sdk/shapes:define-enum xavc4k-intra-cbg-profile-class
    common-lisp:nil
  (:class-100 "CLASS_100")
  (:class-300 "CLASS_300")
  (:class-480 "CLASS_480"))

(smithy/sdk/shapes:define-structure xavc4k-intra-cbg-profile-settings
                                    common-lisp:nil
                                    ((xavc-class :target-type
                                      xavc4k-intra-cbg-profile-class
                                      :member-name "XavcClass" :json-name
                                      "xavcClass"))
                                    (:shape-name
                                     "Xavc4kIntraCbgProfileSettings"))

(smithy/sdk/shapes:define-enum xavc4k-intra-vbr-profile-class
    common-lisp:nil
  (:class-100 "CLASS_100")
  (:class-300 "CLASS_300")
  (:class-480 "CLASS_480"))

(smithy/sdk/shapes:define-structure xavc4k-intra-vbr-profile-settings
                                    common-lisp:nil
                                    ((xavc-class :target-type
                                      xavc4k-intra-vbr-profile-class
                                      :member-name "XavcClass" :json-name
                                      "xavcClass"))
                                    (:shape-name
                                     "Xavc4kIntraVbrProfileSettings"))

(smithy/sdk/shapes:define-enum xavc4k-profile-bitrate-class
    common-lisp:nil
  (:bitrate-class-100 "BITRATE_CLASS_100")
  (:bitrate-class-140 "BITRATE_CLASS_140")
  (:bitrate-class-200 "BITRATE_CLASS_200"))

(smithy/sdk/shapes:define-enum xavc4k-profile-codec-profile
    common-lisp:nil
  (:high "HIGH")
  (:high-422 "HIGH_422"))

(smithy/sdk/shapes:define-enum xavc4k-profile-quality-tuning-level
    common-lisp:nil
  (:single-pass "SINGLE_PASS")
  (:single-pass-hq "SINGLE_PASS_HQ")
  (:multi-pass-hq "MULTI_PASS_HQ"))

(smithy/sdk/shapes:define-structure xavc4k-profile-settings common-lisp:nil
                                    ((bitrate-class :target-type
                                      xavc4k-profile-bitrate-class :member-name
                                      "BitrateClass" :json-name "bitrateClass")
                                     (codec-profile :target-type
                                      xavc4k-profile-codec-profile :member-name
                                      "CodecProfile" :json-name "codecProfile")
                                     (flicker-adaptive-quantization
                                      :target-type
                                      xavc-flicker-adaptive-quantization
                                      :member-name
                                      "FlickerAdaptiveQuantization" :json-name
                                      "flickerAdaptiveQuantization")
                                     (gop-breference :target-type
                                      xavc-gop-breference :member-name
                                      "GopBReference" :json-name
                                      "gopBReference")
                                     (gop-closed-cadence :target-type
                                      integer-min0max2147483647 :member-name
                                      "GopClosedCadence" :json-name
                                      "gopClosedCadence")
                                     (hrd-buffer-size :target-type
                                      integer-min0max1152000000 :member-name
                                      "HrdBufferSize" :json-name
                                      "hrdBufferSize")
                                     (quality-tuning-level :target-type
                                      xavc4k-profile-quality-tuning-level
                                      :member-name "QualityTuningLevel"
                                      :json-name "qualityTuningLevel")
                                     (slices :target-type integer-min8max12
                                      :member-name "Slices" :json-name
                                      "slices"))
                                    (:shape-name "Xavc4kProfileSettings"))

(smithy/sdk/shapes:define-enum xavc-adaptive-quantization
    common-lisp:nil
  (:off "OFF")
  (:auto "AUTO")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:higher "HIGHER")
  (:max "MAX"))

(smithy/sdk/shapes:define-enum xavc-entropy-encoding
    common-lisp:nil
  (:auto "AUTO")
  (:cabac "CABAC")
  (:cavlc "CAVLC"))

(smithy/sdk/shapes:define-enum xavc-flicker-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum xavc-framerate-control
    common-lisp:nil
  (:initialize-from-source "INITIALIZE_FROM_SOURCE")
  (:specified "SPECIFIED"))

(smithy/sdk/shapes:define-enum xavc-framerate-conversion-algorithm
    common-lisp:nil
  (:duplicate-drop "DUPLICATE_DROP")
  (:interpolate "INTERPOLATE")
  (:frameformer "FRAMEFORMER")
  (:maintain-frame-count "MAINTAIN_FRAME_COUNT"))

(smithy/sdk/shapes:define-enum xavc-gop-breference
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum xavc-hd-intra-cbg-profile-class
    common-lisp:nil
  (:class-50 "CLASS_50")
  (:class-100 "CLASS_100")
  (:class-200 "CLASS_200"))

(smithy/sdk/shapes:define-structure xavc-hd-intra-cbg-profile-settings
                                    common-lisp:nil
                                    ((xavc-class :target-type
                                      xavc-hd-intra-cbg-profile-class
                                      :member-name "XavcClass" :json-name
                                      "xavcClass"))
                                    (:shape-name
                                     "XavcHdIntraCbgProfileSettings"))

(smithy/sdk/shapes:define-enum xavc-hd-profile-bitrate-class
    common-lisp:nil
  (:bitrate-class-25 "BITRATE_CLASS_25")
  (:bitrate-class-35 "BITRATE_CLASS_35")
  (:bitrate-class-50 "BITRATE_CLASS_50"))

(smithy/sdk/shapes:define-enum xavc-hd-profile-quality-tuning-level
    common-lisp:nil
  (:single-pass "SINGLE_PASS")
  (:single-pass-hq "SINGLE_PASS_HQ")
  (:multi-pass-hq "MULTI_PASS_HQ"))

(smithy/sdk/shapes:define-structure xavc-hd-profile-settings common-lisp:nil
                                    ((bitrate-class :target-type
                                      xavc-hd-profile-bitrate-class
                                      :member-name "BitrateClass" :json-name
                                      "bitrateClass")
                                     (flicker-adaptive-quantization
                                      :target-type
                                      xavc-flicker-adaptive-quantization
                                      :member-name
                                      "FlickerAdaptiveQuantization" :json-name
                                      "flickerAdaptiveQuantization")
                                     (gop-breference :target-type
                                      xavc-gop-breference :member-name
                                      "GopBReference" :json-name
                                      "gopBReference")
                                     (gop-closed-cadence :target-type
                                      integer-min0max2147483647 :member-name
                                      "GopClosedCadence" :json-name
                                      "gopClosedCadence")
                                     (hrd-buffer-size :target-type
                                      integer-min0max1152000000 :member-name
                                      "HrdBufferSize" :json-name
                                      "hrdBufferSize")
                                     (interlace-mode :target-type
                                      xavc-interlace-mode :member-name
                                      "InterlaceMode" :json-name
                                      "interlaceMode")
                                     (quality-tuning-level :target-type
                                      xavc-hd-profile-quality-tuning-level
                                      :member-name "QualityTuningLevel"
                                      :json-name "qualityTuningLevel")
                                     (slices :target-type integer-min4max12
                                      :member-name "Slices" :json-name
                                      "slices")
                                     (telecine :target-type
                                      xavc-hd-profile-telecine :member-name
                                      "Telecine" :json-name "telecine"))
                                    (:shape-name "XavcHdProfileSettings"))

(smithy/sdk/shapes:define-enum xavc-hd-profile-telecine
    common-lisp:nil
  (:none "NONE")
  (:hard "HARD"))

(smithy/sdk/shapes:define-enum xavc-interlace-mode
    common-lisp:nil
  (:progressive "PROGRESSIVE")
  (:top-field "TOP_FIELD")
  (:bottom-field "BOTTOM_FIELD")
  (:follow-top-field "FOLLOW_TOP_FIELD")
  (:follow-bottom-field "FOLLOW_BOTTOM_FIELD"))

(smithy/sdk/shapes:define-enum xavc-profile
    common-lisp:nil
  (:xavc-hd-intra-cbg "XAVC_HD_INTRA_CBG")
  (:xavc-4k-intra-cbg "XAVC_4K_INTRA_CBG")
  (:xavc-4k-intra-vbr "XAVC_4K_INTRA_VBR")
  (:xavc-hd "XAVC_HD")
  (:xavc-4k "XAVC_4K"))

(smithy/sdk/shapes:define-structure xavc-settings common-lisp:nil
                                    ((adaptive-quantization :target-type
                                      xavc-adaptive-quantization :member-name
                                      "AdaptiveQuantization" :json-name
                                      "adaptiveQuantization")
                                     (entropy-encoding :target-type
                                      xavc-entropy-encoding :member-name
                                      "EntropyEncoding" :json-name
                                      "entropyEncoding")
                                     (framerate-control :target-type
                                      xavc-framerate-control :member-name
                                      "FramerateControl" :json-name
                                      "framerateControl")
                                     (framerate-conversion-algorithm
                                      :target-type
                                      xavc-framerate-conversion-algorithm
                                      :member-name
                                      "FramerateConversionAlgorithm" :json-name
                                      "framerateConversionAlgorithm")
                                     (framerate-denominator :target-type
                                      integer-min1max1001 :member-name
                                      "FramerateDenominator" :json-name
                                      "framerateDenominator")
                                     (framerate-numerator :target-type
                                      integer-min24max60000 :member-name
                                      "FramerateNumerator" :json-name
                                      "framerateNumerator")
                                     (per-frame-metrics :target-type
                                      list-of-frame-metric-type :member-name
                                      "PerFrameMetrics" :json-name
                                      "perFrameMetrics")
                                     (profile :target-type xavc-profile
                                      :member-name "Profile" :json-name
                                      "profile")
                                     (slow-pal :target-type xavc-slow-pal
                                      :member-name "SlowPal" :json-name
                                      "slowPal")
                                     (softness :target-type integer-min0max128
                                      :member-name "Softness" :json-name
                                      "softness")
                                     (spatial-adaptive-quantization
                                      :target-type
                                      xavc-spatial-adaptive-quantization
                                      :member-name
                                      "SpatialAdaptiveQuantization" :json-name
                                      "spatialAdaptiveQuantization")
                                     (temporal-adaptive-quantization
                                      :target-type
                                      xavc-temporal-adaptive-quantization
                                      :member-name
                                      "TemporalAdaptiveQuantization" :json-name
                                      "temporalAdaptiveQuantization")
                                     (xavc4k-intra-cbg-profile-settings
                                      :target-type
                                      xavc4k-intra-cbg-profile-settings
                                      :member-name
                                      "Xavc4kIntraCbgProfileSettings"
                                      :json-name
                                      "xavc4kIntraCbgProfileSettings")
                                     (xavc4k-intra-vbr-profile-settings
                                      :target-type
                                      xavc4k-intra-vbr-profile-settings
                                      :member-name
                                      "Xavc4kIntraVbrProfileSettings"
                                      :json-name
                                      "xavc4kIntraVbrProfileSettings")
                                     (xavc4k-profile-settings :target-type
                                      xavc4k-profile-settings :member-name
                                      "Xavc4kProfileSettings" :json-name
                                      "xavc4kProfileSettings")
                                     (xavc-hd-intra-cbg-profile-settings
                                      :target-type
                                      xavc-hd-intra-cbg-profile-settings
                                      :member-name
                                      "XavcHdIntraCbgProfileSettings"
                                      :json-name
                                      "xavcHdIntraCbgProfileSettings")
                                     (xavc-hd-profile-settings :target-type
                                      xavc-hd-profile-settings :member-name
                                      "XavcHdProfileSettings" :json-name
                                      "xavcHdProfileSettings"))
                                    (:shape-name "XavcSettings"))

(smithy/sdk/shapes:define-enum xavc-slow-pal
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum xavc-spatial-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum xavc-temporal-adaptive-quantization
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min0 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min0max1 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min0max2147483647
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min1max10 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min-negative59max0
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min-negative60max3
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min-negative60max6
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min-negative60max-negative1
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min-negative6max3
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double-min-negative8max0
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max0 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max1 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max10
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max100
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max1000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max10000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max1152000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max128
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max1466400000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max15
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max16
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max2147483647
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max255
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max3 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max30
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max30000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max3600
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max4 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max4000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max4194303
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max47185920
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max5 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max500
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max50000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max65534
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max65535
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max7 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max8 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max9 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max96
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min0max99
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min100000max100000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1000max1152000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1000max1466400000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1000max288000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1000max30000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1000max300000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1000max480000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min100max1000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min10max48
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min16000max320000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min16000max48000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min16max24
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max1 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max10
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max100
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max10000000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max1001
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max150
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max17895697
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max2 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max20
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max2048
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max2147483640
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max2147483647
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max31
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max32
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max4 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max4096
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max512
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max6 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max60000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max64
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min1max8 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min2000max30000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min22050max192000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min22050max48000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min24max60000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min25max10000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min25max2000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min2max2147483647
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min2max4096
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min32000max192000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min32000max3024000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min32000max384000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min32000max48000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min32max8182
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min32max8192
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min384000max1024000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min3max15
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min48000max48000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min4max12
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min50max86400000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min6000max1024000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min64000max640000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min6max16
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min8000max192000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min8000max96000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min8max12
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min8max4096
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min90max105
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min920max1023
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min96max600
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative10000max10000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative1000max1000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative180max180
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative1max10
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative1max2147483647
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative1max3
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative2147483648max2147483647
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative2max3
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative50max50
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative5max10
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative60max6
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-min-negative70max0
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-allowed-rendition-size :member
                               allowed-rendition-size)

(smithy/sdk/shapes:define-list list-of-audio-channel-tag :member
                               audio-channel-tag)

(smithy/sdk/shapes:define-list list-of-audio-description :member
                               audio-description)

(smithy/sdk/shapes:define-list list-of-automated-abr-rule :member
                               automated-abr-rule)

(smithy/sdk/shapes:define-list list-of-caption-description :member
                               caption-description)

(smithy/sdk/shapes:define-list list-of-caption-description-preset :member
                               caption-description-preset)

(smithy/sdk/shapes:define-list list-of-cmaf-additional-manifest :member
                               cmaf-additional-manifest)

(smithy/sdk/shapes:define-list list-of-color-conversion3dlutsetting :member
                               color-conversion3dlutsetting)

(smithy/sdk/shapes:define-list list-of-dash-additional-manifest :member
                               dash-additional-manifest)

(smithy/sdk/shapes:define-list list-of-endpoint :member endpoint)

(smithy/sdk/shapes:define-list list-of-force-include-rendition-size :member
                               force-include-rendition-size)

(smithy/sdk/shapes:define-list list-of-frame-metric-type :member
                               frame-metric-type)

(smithy/sdk/shapes:define-list list-of-hls-ad-markers :member hls-ad-markers)

(smithy/sdk/shapes:define-list list-of-hls-additional-manifest :member
                               hls-additional-manifest)

(smithy/sdk/shapes:define-list list-of-hls-caption-language-mapping :member
                               hls-caption-language-mapping)

(smithy/sdk/shapes:define-list list-of-hop-destination :member hop-destination)

(smithy/sdk/shapes:define-list list-of-id3insertion :member id3insertion)

(smithy/sdk/shapes:define-list list-of-input :member input)

(smithy/sdk/shapes:define-list list-of-input-clipping :member input-clipping)

(smithy/sdk/shapes:define-list list-of-input-template :member input-template)

(smithy/sdk/shapes:define-list list-of-insertable-image :member
                               insertable-image)

(smithy/sdk/shapes:define-list list-of-job :member job)

(smithy/sdk/shapes:define-list list-of-job-engine-version :member
                               job-engine-version)

(smithy/sdk/shapes:define-list list-of-job-template :member job-template)

(smithy/sdk/shapes:define-list list-of-ms-smooth-additional-manifest :member
                               ms-smooth-additional-manifest)

(smithy/sdk/shapes:define-list list-of-output :member output)

(smithy/sdk/shapes:define-list list-of-output-channel-mapping :member
                               output-channel-mapping)

(smithy/sdk/shapes:define-list list-of-output-detail :member output-detail)

(smithy/sdk/shapes:define-list list-of-output-group :member output-group)

(smithy/sdk/shapes:define-list list-of-output-group-detail :member
                               output-group-detail)

(smithy/sdk/shapes:define-list list-of-preset :member preset)

(smithy/sdk/shapes:define-list list-of-probe-input-file :member
                               probe-input-file)

(smithy/sdk/shapes:define-list list-of-probe-result :member probe-result)

(smithy/sdk/shapes:define-list list-of-queue :member queue)

(smithy/sdk/shapes:define-list list-of-queue-transition :member
                               queue-transition)

(smithy/sdk/shapes:define-list list-of-service-override :member
                               service-override)

(smithy/sdk/shapes:define-list list-of-teletext-page-type :member
                               teletext-page-type)

(smithy/sdk/shapes:define-list list-of-track :member track)

(smithy/sdk/shapes:define-list list-of-track-mapping :member track-mapping)

(smithy/sdk/shapes:define-list list-of-video-overlay :member video-overlay)

(smithy/sdk/shapes:define-list list-of-video-overlay-input-clipping :member
                               video-overlay-input-clipping)

(smithy/sdk/shapes:define-list list-of-video-overlay-transition :member
                               video-overlay-transition)

(smithy/sdk/shapes:define-list list-of-warning-group :member warning-group)

(smithy/sdk/shapes:define-list list-of-double-min-negative60max6 :member
                               double-min-negative60max6)

(smithy/sdk/shapes:define-list list-of-integer :member integer)

(smithy/sdk/shapes:define-list list-of-integer-min1max2147483647 :member
                               integer-min1max2147483647)

(smithy/sdk/shapes:define-list list-of-integer-min32max8182 :member
                               integer-min32max8182)

(smithy/sdk/shapes:define-list list-of-integer-min-negative60max6 :member
                               integer-min-negative60max6)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-list list-of-string-min1 :member string-min1)

(smithy/sdk/shapes:define-list
 list-of-string-min36max36pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
 :member string-min36max36pattern09a-faf809a-faf409a-faf409a-faf409a-faf12)

(smithy/sdk/shapes:define-list
 list-of-string-pattern09a-faf809a-faf409a-faf409a-faf409a-faf12 :member
 string-pattern09a-faf809a-faf409a-faf409a-faf409a-faf12)

(smithy/sdk/shapes:define-list list-of-string-pattern-s3assetmapxml :member
                               string-pattern-s3assetmapxml)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-map map-of-audio-selector :key string :value
                              audio-selector)

(smithy/sdk/shapes:define-map map-of-audio-selector-group :key string :value
                              audio-selector-group)

(smithy/sdk/shapes:define-map map-of-caption-selector :key string :value
                              caption-selector)

(smithy/sdk/shapes:define-map map-of-dynamic-audio-selector :key string :value
                              dynamic-audio-selector)

(smithy/sdk/shapes:define-map map-of-string :key string :value string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max1000 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max2048 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max2048pattern-s3https
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min0 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min11max11pattern01d20305d205d
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-min14pattern-s3bmp-bmppng-pnghttps-bmp-bmppng-png
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-min14pattern-s3bmp-bmppng-pngtga-tgahttps-bmp-bmppng-pngtga-tga
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min14pattern-s3cube-cubehttps-cube-cube
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min14pattern-s3mov09png-https-mov09png
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-min14pattern-s3scc-sccttml-ttmldfxp-dfxpstl-stlsrt-srtxml-xmlsmi-smivtt-vttwebvtt-webvtthttps-scc-sccttml-ttmldfxp-dfxpstl-stlsrt-srtxml-xmlsmi-smivtt-vttwebvtt-webvtt
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min14pattern-s3xml-xmlhttps-xml-xml
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min16max24pattern-aza-z0922aza-z0916
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max100000
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max20 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-min1max2048pattern-arn-azsecretsmanager-wd12secret-azaz09
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max50 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max50pattern-azaz09
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-min1pattern-arn-aws-us-gov-cn-kms-az26east-west-central-north-south-east-west1912d12key-afaf098afaf094afaf094afaf094afaf0912mrk-afaf0932
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min24max512pattern-aza-z0902
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min32max32pattern09a-faf32
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-min36max36pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min3max3pattern1809a-faf09a-eae
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min3max3pattern-aza-z3
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min6max8pattern09a-faf609a-faf2
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-min9max19pattern-az26east-west-central-north-south-east-west1912
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern010920405090509092
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern010920405090509092090909
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern019090190908019090190908
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern01d20305d205d
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern0940191020191209301
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-pattern09a-faf809a-faf409a-faf409a-faf409a-faf12
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern0x-afa-f0908190908
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-aza-z0902
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-aza-z0932
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-aza-z23aza-z
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-aza-z23aza-z09
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-pattern-arn-aws-az09events-az090912connection-azaz09af0936
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-arn-aws-us-gov-acm
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-pattern-arn-aws-us-gov-cn-kms-az26east-west-central-north-south-east-west1912d12key-afaf098afaf094afaf094afaf094afaf0912mrk-afaf0932
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-dd smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-https
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-https-d
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-https-kantarmedia
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-identity-aza-z26aza-z09163
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-s3 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-s3assetmapxml
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-s3https
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-s3ttf-https-ttf
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-pattern-snmanifest-confirm-condition-notification-ns
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-pattern-snsignal-processing-notification-ns
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-w smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-ws smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-unix smithy/sdk/smithy-types:timestamp
                               :timestamp-format "epoch-seconds")

(smithy/sdk/operation:define-operation associate-certificate :shape-name
                                       "AssociateCertificate" :input
                                       associate-certificate-request :output
                                       associate-certificate-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2017-08-29/certificates" :code 201)

(smithy/sdk/operation:define-operation cancel-job :shape-name "CancelJob"
                                       :input cancel-job-request :output
                                       cancel-job-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2017-08-29/jobs/{Id}" :code 202)

(smithy/sdk/operation:define-operation create-job :shape-name "CreateJob"
                                       :input create-job-request :output
                                       create-job-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/2017-08-29/jobs"
                                       :code 201)

(smithy/sdk/operation:define-operation create-job-template :shape-name
                                       "CreateJobTemplate" :input
                                       create-job-template-request :output
                                       create-job-template-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2017-08-29/jobTemplates" :code 201)

(smithy/sdk/operation:define-operation create-preset :shape-name "CreatePreset"
                                       :input create-preset-request :output
                                       create-preset-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2017-08-29/presets" :code 201)

(smithy/sdk/operation:define-operation create-queue :shape-name "CreateQueue"
                                       :input create-queue-request :output
                                       create-queue-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/2017-08-29/queues"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-job-template :shape-name
                                       "DeleteJobTemplate" :input
                                       delete-job-template-request :output
                                       delete-job-template-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2017-08-29/jobTemplates/{Name}" :code
                                       202)

(smithy/sdk/operation:define-operation delete-policy :shape-name "DeletePolicy"
                                       :input delete-policy-request :output
                                       delete-policy-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2017-08-29/policy" :code 200)

(smithy/sdk/operation:define-operation delete-preset :shape-name "DeletePreset"
                                       :input delete-preset-request :output
                                       delete-preset-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2017-08-29/presets/{Name}" :code 202)

(smithy/sdk/operation:define-operation delete-queue :shape-name "DeleteQueue"
                                       :input delete-queue-request :output
                                       delete-queue-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2017-08-29/queues/{Name}" :code 202)

(smithy/sdk/operation:define-operation describe-endpoints :shape-name
                                       "DescribeEndpoints" :input
                                       describe-endpoints-request :output
                                       describe-endpoints-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2017-08-29/endpoints" :code 200)

(smithy/sdk/operation:define-operation disassociate-certificate :shape-name
                                       "DisassociateCertificate" :input
                                       disassociate-certificate-request :output
                                       disassociate-certificate-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2017-08-29/certificates/{Arn}" :code
                                       202)

(smithy/sdk/operation:define-operation get-job :shape-name "GetJob" :input
                                       get-job-request :output get-job-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2017-08-29/jobs/{Id}" :code 200)

(smithy/sdk/operation:define-operation get-job-template :shape-name
                                       "GetJobTemplate" :input
                                       get-job-template-request :output
                                       get-job-template-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2017-08-29/jobTemplates/{Name}" :code
                                       200)

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-request :output
                                       get-policy-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/2017-08-29/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-preset :shape-name "GetPreset"
                                       :input get-preset-request :output
                                       get-preset-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2017-08-29/presets/{Name}" :code 200)

(smithy/sdk/operation:define-operation get-queue :shape-name "GetQueue" :input
                                       get-queue-request :output
                                       get-queue-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2017-08-29/queues/{Name}" :code 200)

(smithy/sdk/operation:define-operation list-job-templates :shape-name
                                       "ListJobTemplates" :input
                                       list-job-templates-request :output
                                       list-job-templates-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2017-08-29/jobTemplates" :code 200)

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/2017-08-29/jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-presets :shape-name "ListPresets"
                                       :input list-presets-request :output
                                       list-presets-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/2017-08-29/presets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-queues :shape-name "ListQueues"
                                       :input list-queues-request :output
                                       list-queues-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/2017-08-29/queues"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2017-08-29/tags/{Arn}" :code 200)

(smithy/sdk/operation:define-operation list-versions :shape-name "ListVersions"
                                       :input list-versions-request :output
                                       list-versions-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2017-08-29/versions" :code 200)

(smithy/sdk/operation:define-operation probe :shape-name "Probe" :input
                                       probe-request :output probe-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/2017-08-29/probe"
                                       :code 200)

(smithy/sdk/operation:define-operation put-policy :shape-name "PutPolicy"
                                       :input put-policy-request :output
                                       put-policy-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri "/2017-08-29/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation search-jobs :shape-name "SearchJobs"
                                       :input search-jobs-request :output
                                       search-jobs-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/2017-08-29/search"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/2017-08-29/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2017-08-29/tags/{Arn}" :code 200)

(smithy/sdk/operation:define-operation update-job-template :shape-name
                                       "UpdateJobTemplate" :input
                                       update-job-template-request :output
                                       update-job-template-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2017-08-29/jobTemplates/{Name}" :code
                                       200)

(smithy/sdk/operation:define-operation update-preset :shape-name "UpdatePreset"
                                       :input update-preset-request :output
                                       update-preset-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2017-08-29/presets/{Name}" :code 200)

(smithy/sdk/operation:define-operation update-queue :shape-name "UpdateQueue"
                                       :input update-queue-request :output
                                       update-queue-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2017-08-29/queues/{Name}" :code 200)
