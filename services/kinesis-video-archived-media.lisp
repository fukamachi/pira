(uiop/package:define-package #:pira/kinesis-video-archived-media (:use)
                             (:export #:awsacuity-reader
                              #:client-limit-exceeded-exception
                              #:clip-fragment-selector
                              #:clip-fragment-selector-type
                              #:clip-timestamp-range #:container-format
                              #:content-type #:dashdisplay-fragment-number
                              #:dashdisplay-fragment-timestamp
                              #:dashfragment-selector
                              #:dashfragment-selector-type #:dashmax-results
                              #:dashplayback-mode #:dashstreaming-session-url
                              #:dashtimestamp-range #:error-message #:expires
                              #:format #:format-config #:format-config-key
                              #:format-config-value #:fragment #:fragment-list
                              #:fragment-number-list #:fragment-number-string
                              #:fragment-selector #:fragment-selector-type
                              #:get-clip #:get-dashstreaming-session-url
                              #:get-hlsstreaming-session-url #:get-images
                              #:get-images-max-results
                              #:get-media-for-fragment-list
                              #:hlsdiscontinuity-mode
                              #:hlsdisplay-fragment-timestamp
                              #:hlsfragment-selector
                              #:hlsfragment-selector-type #:hlsmax-results
                              #:hlsplayback-mode #:hlsstreaming-session-url
                              #:hlstimestamp-range #:height-pixels #:image
                              #:image-content #:image-error
                              #:image-selector-type #:images
                              #:invalid-argument-exception
                              #:invalid-codec-private-data-exception
                              #:invalid-media-frame-exception #:list-fragments
                              #:list-fragments-max-results #:long
                              #:missing-codec-private-data-exception
                              #:next-token #:no-data-retention-exception
                              #:not-authorized-exception #:payload
                              #:resource-arn #:resource-not-found-exception
                              #:sampling-interval #:stream-name #:timestamp
                              #:timestamp-range
                              #:unsupported-stream-media-type-exception
                              #:width-pixels
                              #:kinesis-video-archived-media-error))
(common-lisp:in-package #:pira/kinesis-video-archived-media)

(common-lisp:define-condition kinesis-video-archived-media-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsacuity-reader :shape-name
                                   "AWSAcuityReader" :version "2017-09-30"
                                   :title
                                   "Amazon Kinesis Video Streams Archived Media"
                                   :operations
                                   '(get-clip get-dashstreaming-session-url
                                     get-hlsstreaming-session-url get-images
                                     get-media-for-fragment-list
                                     list-fragments)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Kinesis Video Archived Media")
                                      ("arnNamespace" . "kinesisvideo")
                                      ("cloudFormationName"
                                       . "KinesisVideoArchivedMedia")
                                      ("cloudTrailEventSource"
                                       . "kinesisvideoarchivedmedia.amazonaws.com")
                                      ("endpointPrefix" . "kinesisvideo"))
                                     ("aws.auth#sigv4"
                                      ("name" . "kinesisvideo"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error client-limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ClientLimitExceededException")
                                (:error-code 400)
                                (:base-class
                                 kinesis-video-archived-media-error))

(smithy/sdk/shapes:define-structure clip-fragment-selector common-lisp:nil
                                    ((fragment-selector-type :target-type
                                      clip-fragment-selector-type :required
                                      common-lisp:t :member-name
                                      "FragmentSelectorType")
                                     (timestamp-range :target-type
                                      clip-timestamp-range :required
                                      common-lisp:t :member-name
                                      "TimestampRange"))
                                    (:shape-name "ClipFragmentSelector"))

(smithy/sdk/shapes:define-enum clip-fragment-selector-type
    common-lisp:nil
  (:producer-timestamp "PRODUCER_TIMESTAMP")
  (:server-timestamp "SERVER_TIMESTAMP"))

(smithy/sdk/shapes:define-structure clip-timestamp-range common-lisp:nil
                                    ((start-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTimestamp")
                                     (end-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "EndTimestamp"))
                                    (:shape-name "ClipTimestampRange"))

(smithy/sdk/shapes:define-enum container-format
    common-lisp:nil
  (:fragmented-mp4 "FRAGMENTED_MP4")
  (:mpeg-ts "MPEG_TS"))

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dashdisplay-fragment-number
    common-lisp:nil
  (:always "ALWAYS")
  (:never "NEVER"))

(smithy/sdk/shapes:define-enum dashdisplay-fragment-timestamp
    common-lisp:nil
  (:always "ALWAYS")
  (:never "NEVER"))

(smithy/sdk/shapes:define-structure dashfragment-selector common-lisp:nil
                                    ((fragment-selector-type :target-type
                                      dashfragment-selector-type :member-name
                                      "FragmentSelectorType")
                                     (timestamp-range :target-type
                                      dashtimestamp-range :member-name
                                      "TimestampRange"))
                                    (:shape-name "DASHFragmentSelector"))

(smithy/sdk/shapes:define-enum dashfragment-selector-type
    common-lisp:nil
  (:producer-timestamp "PRODUCER_TIMESTAMP")
  (:server-timestamp "SERVER_TIMESTAMP"))

(smithy/sdk/shapes:define-type dashmax-results smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum dashplayback-mode
    common-lisp:nil
  (:live "LIVE")
  (:live-replay "LIVE_REPLAY")
  (:on-demand "ON_DEMAND"))

(smithy/sdk/shapes:define-type dashstreaming-session-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dashtimestamp-range common-lisp:nil
                                    ((start-timestamp :target-type timestamp
                                      :member-name "StartTimestamp")
                                     (end-timestamp :target-type timestamp
                                      :member-name "EndTimestamp"))
                                    (:shape-name "DASHTimestampRange"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expires smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:jpeg "JPEG")
  (:png "PNG"))

(smithy/sdk/shapes:define-map format-config :key format-config-key :value
                              format-config-value)

(smithy/sdk/shapes:define-enum format-config-key
    common-lisp:nil
  (:jpegquality "JPEGQuality"))

(smithy/sdk/shapes:define-type format-config-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fragment common-lisp:nil
                                    ((fragment-number :target-type
                                      fragment-number-string :member-name
                                      "FragmentNumber")
                                     (fragment-size-in-bytes :target-type long
                                      :member-name "FragmentSizeInBytes")
                                     (producer-timestamp :target-type timestamp
                                      :member-name "ProducerTimestamp")
                                     (server-timestamp :target-type timestamp
                                      :member-name "ServerTimestamp")
                                     (fragment-length-in-milliseconds
                                      :target-type long :member-name
                                      "FragmentLengthInMilliseconds"))
                                    (:shape-name "Fragment"))

(smithy/sdk/shapes:define-list fragment-list :member fragment)

(smithy/sdk/shapes:define-list fragment-number-list :member
                               fragment-number-string)

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
  (:producer-timestamp "PRODUCER_TIMESTAMP")
  (:server-timestamp "SERVER_TIMESTAMP"))

(smithy/sdk/shapes:define-input get-clip-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (clip-fragment-selector :target-type
                                  clip-fragment-selector :required
                                  common-lisp:t :member-name
                                  "ClipFragmentSelector"))
                                (:shape-name "GetClipInput"))

(smithy/sdk/shapes:define-output get-clip-output common-lisp:nil
                                 ((content-type :target-type content-type
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (payload :target-type payload :member-name
                                   "Payload" :http-payload common-lisp:t))
                                 (:shape-name "GetClipOutput"))

(smithy/sdk/shapes:define-input get-dashstreaming-session-urlinput
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (playback-mode :target-type dashplayback-mode
                                  :member-name "PlaybackMode")
                                 (display-fragment-timestamp :target-type
                                  dashdisplay-fragment-timestamp :member-name
                                  "DisplayFragmentTimestamp")
                                 (display-fragment-number :target-type
                                  dashdisplay-fragment-number :member-name
                                  "DisplayFragmentNumber")
                                 (dashfragment-selector :target-type
                                  dashfragment-selector :member-name
                                  "DASHFragmentSelector")
                                 (expires :target-type expires :member-name
                                  "Expires")
                                 (max-manifest-fragment-results :target-type
                                  dashmax-results :member-name
                                  "MaxManifestFragmentResults"))
                                (:shape-name "GetDASHStreamingSessionURLInput"))

(smithy/sdk/shapes:define-output get-dashstreaming-session-urloutput
                                 common-lisp:nil
                                 ((dashstreaming-session-url :target-type
                                   dashstreaming-session-url :member-name
                                   "DASHStreamingSessionURL"))
                                 (:shape-name
                                  "GetDASHStreamingSessionURLOutput"))

(smithy/sdk/shapes:define-input get-hlsstreaming-session-urlinput
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (playback-mode :target-type hlsplayback-mode
                                  :member-name "PlaybackMode")
                                 (hlsfragment-selector :target-type
                                  hlsfragment-selector :member-name
                                  "HLSFragmentSelector")
                                 (container-format :target-type
                                  container-format :member-name
                                  "ContainerFormat")
                                 (discontinuity-mode :target-type
                                  hlsdiscontinuity-mode :member-name
                                  "DiscontinuityMode")
                                 (display-fragment-timestamp :target-type
                                  hlsdisplay-fragment-timestamp :member-name
                                  "DisplayFragmentTimestamp")
                                 (expires :target-type expires :member-name
                                  "Expires")
                                 (max-media-playlist-fragment-results
                                  :target-type hlsmax-results :member-name
                                  "MaxMediaPlaylistFragmentResults"))
                                (:shape-name "GetHLSStreamingSessionURLInput"))

(smithy/sdk/shapes:define-output get-hlsstreaming-session-urloutput
                                 common-lisp:nil
                                 ((hlsstreaming-session-url :target-type
                                   hlsstreaming-session-url :member-name
                                   "HLSStreamingSessionURL"))
                                 (:shape-name
                                  "GetHLSStreamingSessionURLOutput"))

(smithy/sdk/shapes:define-input get-images-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (image-selector-type :target-type
                                  image-selector-type :required common-lisp:t
                                  :member-name "ImageSelectorType")
                                 (start-timestamp :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "StartTimestamp")
                                 (end-timestamp :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "EndTimestamp")
                                 (sampling-interval :target-type
                                  sampling-interval :member-name
                                  "SamplingInterval")
                                 (format :target-type format :required
                                  common-lisp:t :member-name "Format")
                                 (format-config :target-type format-config
                                  :member-name "FormatConfig")
                                 (width-pixels :target-type width-pixels
                                  :member-name "WidthPixels")
                                 (height-pixels :target-type height-pixels
                                  :member-name "HeightPixels")
                                 (max-results :target-type
                                  get-images-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "GetImagesInput"))

(smithy/sdk/shapes:define-type get-images-max-results
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-output get-images-output common-lisp:nil
                                 ((images :target-type images :member-name
                                   "Images")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetImagesOutput"))

(smithy/sdk/shapes:define-input get-media-for-fragment-list-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (fragments :target-type fragment-number-list
                                  :required common-lisp:t :member-name
                                  "Fragments"))
                                (:shape-name "GetMediaForFragmentListInput"))

(smithy/sdk/shapes:define-output get-media-for-fragment-list-output
                                 common-lisp:nil
                                 ((content-type :target-type content-type
                                   :member-name "ContentType" :http-header
                                   "Content-Type")
                                  (payload :target-type payload :member-name
                                   "Payload" :http-payload common-lisp:t))
                                 (:shape-name "GetMediaForFragmentListOutput"))

(smithy/sdk/shapes:define-enum hlsdiscontinuity-mode
    common-lisp:nil
  (:always "ALWAYS")
  (:never "NEVER")
  (:on-discontinuity "ON_DISCONTINUITY"))

(smithy/sdk/shapes:define-enum hlsdisplay-fragment-timestamp
    common-lisp:nil
  (:always "ALWAYS")
  (:never "NEVER"))

(smithy/sdk/shapes:define-structure hlsfragment-selector common-lisp:nil
                                    ((fragment-selector-type :target-type
                                      hlsfragment-selector-type :member-name
                                      "FragmentSelectorType")
                                     (timestamp-range :target-type
                                      hlstimestamp-range :member-name
                                      "TimestampRange"))
                                    (:shape-name "HLSFragmentSelector"))

(smithy/sdk/shapes:define-enum hlsfragment-selector-type
    common-lisp:nil
  (:producer-timestamp "PRODUCER_TIMESTAMP")
  (:server-timestamp "SERVER_TIMESTAMP"))

(smithy/sdk/shapes:define-type hlsmax-results smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum hlsplayback-mode
    common-lisp:nil
  (:live "LIVE")
  (:live-replay "LIVE_REPLAY")
  (:on-demand "ON_DEMAND"))

(smithy/sdk/shapes:define-type hlsstreaming-session-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure hlstimestamp-range common-lisp:nil
                                    ((start-timestamp :target-type timestamp
                                      :member-name "StartTimestamp")
                                     (end-timestamp :target-type timestamp
                                      :member-name "EndTimestamp"))
                                    (:shape-name "HLSTimestampRange"))

(smithy/sdk/shapes:define-type height-pixels smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure image common-lisp:nil
                                    ((time-stamp :target-type timestamp
                                      :member-name "TimeStamp")
                                     (error :target-type image-error
                                      :member-name "Error")
                                     (image-content :target-type image-content
                                      :member-name "ImageContent"))
                                    (:shape-name "Image"))

(smithy/sdk/shapes:define-type image-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum image-error
    common-lisp:nil
  (:no-media "NO_MEDIA")
  (:media-error "MEDIA_ERROR"))

(smithy/sdk/shapes:define-enum image-selector-type
    common-lisp:nil
  (:producer-timestamp "PRODUCER_TIMESTAMP")
  (:server-timestamp "SERVER_TIMESTAMP"))

(smithy/sdk/shapes:define-list images :member image)

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400)
                                (:base-class
                                 kinesis-video-archived-media-error))

(smithy/sdk/shapes:define-error invalid-codec-private-data-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidCodecPrivateDataException")
                                (:error-code 400)
                                (:base-class
                                 kinesis-video-archived-media-error))

(smithy/sdk/shapes:define-error invalid-media-frame-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidMediaFrameException")
                                (:error-code 400)
                                (:base-class
                                 kinesis-video-archived-media-error))

(smithy/sdk/shapes:define-input list-fragments-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (max-results :target-type
                                  list-fragments-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (fragment-selector :target-type
                                  fragment-selector :member-name
                                  "FragmentSelector"))
                                (:shape-name "ListFragmentsInput"))

(smithy/sdk/shapes:define-type list-fragments-max-results
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-output list-fragments-output common-lisp:nil
                                 ((fragments :target-type fragment-list
                                   :member-name "Fragments")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListFragmentsOutput"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error missing-codec-private-data-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "MissingCodecPrivateDataException")
                                (:error-code 400)
                                (:base-class
                                 kinesis-video-archived-media-error))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-data-retention-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NoDataRetentionException")
                                (:error-code 400)
                                (:base-class
                                 kinesis-video-archived-media-error))

(smithy/sdk/shapes:define-error not-authorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotAuthorizedException")
                                (:error-code 401)
                                (:base-class
                                 kinesis-video-archived-media-error))

(smithy/sdk/shapes:define-type payload smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class
                                 kinesis-video-archived-media-error))

(smithy/sdk/shapes:define-type sampling-interval
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure timestamp-range common-lisp:nil
                                    ((start-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTimestamp")
                                     (end-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "EndTimestamp"))
                                    (:shape-name "TimestampRange"))

(smithy/sdk/shapes:define-error unsupported-stream-media-type-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "UnsupportedStreamMediaTypeException")
                                (:error-code 400)
                                (:base-class
                                 kinesis-video-archived-media-error))

(smithy/sdk/shapes:define-type width-pixels smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation get-clip :shape-name "GetClip" :input
                                       get-clip-input :output get-clip-output
                                       :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        invalid-codec-private-data-exception
                                        invalid-media-frame-exception
                                        missing-codec-private-data-exception
                                        no-data-retention-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        unsupported-stream-media-type-exception)
                                       :method "POST" :uri "/getClip" :code 200)

(smithy/sdk/operation:define-operation get-dashstreaming-session-url
                                       :shape-name "GetDASHStreamingSessionURL"
                                       :input
                                       get-dashstreaming-session-urlinput
                                       :output
                                       get-dashstreaming-session-urloutput
                                       :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        invalid-codec-private-data-exception
                                        missing-codec-private-data-exception
                                        no-data-retention-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        unsupported-stream-media-type-exception)
                                       :method "POST" :uri
                                       "/getDASHStreamingSessionURL" :code 200)

(smithy/sdk/operation:define-operation get-hlsstreaming-session-url :shape-name
                                       "GetHLSStreamingSessionURL" :input
                                       get-hlsstreaming-session-urlinput
                                       :output
                                       get-hlsstreaming-session-urloutput
                                       :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        invalid-codec-private-data-exception
                                        missing-codec-private-data-exception
                                        no-data-retention-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        unsupported-stream-media-type-exception)
                                       :method "POST" :uri
                                       "/getHLSStreamingSessionURL" :code 200)

(smithy/sdk/operation:define-operation get-images :shape-name "GetImages"
                                       :input get-images-input :output
                                       get-images-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        no-data-retention-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/getImages" :code
                                       200)

(smithy/sdk/operation:define-operation get-media-for-fragment-list :shape-name
                                       "GetMediaForFragmentList" :input
                                       get-media-for-fragment-list-input
                                       :output
                                       get-media-for-fragment-list-output
                                       :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/getMediaForFragmentList" :code 200)

(smithy/sdk/operation:define-operation list-fragments :shape-name
                                       "ListFragments" :input
                                       list-fragments-input :output
                                       list-fragments-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/listFragments"
                                       :code 200)
