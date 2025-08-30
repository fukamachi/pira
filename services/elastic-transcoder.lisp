(uiop/package:define-package #:pira/elastic-transcoder (:use)
                             (:export #:access-control #:access-controls
                              #:access-denied-exception #:artwork #:artworks
                              #:ascending #:aspect-ratio #:audio-bit-depth
                              #:audio-bit-order #:audio-bit-rate
                              #:audio-channels #:audio-codec
                              #:audio-codec-options #:audio-codec-profile
                              #:audio-packing-mode #:audio-parameters
                              #:audio-sample-rate #:audio-signed
                              #:base64encoded-string #:bucket-name #:cancel-job
                              #:caption-format #:caption-format-format
                              #:caption-format-pattern #:caption-formats
                              #:caption-merge-policy #:caption-source
                              #:caption-sources #:captions #:clip
                              #:codec-option #:codec-options #:composition
                              #:create-job #:create-job-output
                              #:create-job-outputs #:create-job-playlist
                              #:create-job-playlists #:create-pipeline
                              #:create-preset #:delete-pipeline #:delete-preset
                              #:description #:detected-properties #:digits
                              #:digits-or-auto #:encryption #:encryption-mode
                              #:ets-customer-service #:exception-message
                              #:exception-messages #:filename #:fixed-gop
                              #:float-string #:frame-rate #:grantee
                              #:grantee-type #:hls-content-protection
                              #:hls-content-protection-method
                              #:horizontal-align #:id
                              #:incompatible-version-exception #:input-captions
                              #:interlaced #:internal-service-exception #:job
                              #:job-album-art #:job-container #:job-input
                              #:job-inputs #:job-output #:job-outputs
                              #:job-status #:job-watermark #:job-watermarks
                              #:jobs #:jpg-or-png #:key #:key-arn #:key-id-guid
                              #:key-storage-policy #:keyframes-max-dist
                              #:limit-exceeded-exception
                              #:list-jobs-by-pipeline #:list-jobs-by-status
                              #:list-pipelines #:list-presets #:long-key
                              #:max-frame-rate #:merge-policy #:name
                              #:non-empty-base64encoded-string #:notifications
                              #:nullable-integer #:nullable-long
                              #:one-to512string #:opacity #:output-keys
                              #:padding-policy #:permission #:permissions
                              #:pipeline #:pipeline-output-config
                              #:pipeline-status #:pipelines #:pixels-or-percent
                              #:play-ready-drm #:play-ready-drm-format-string
                              #:playlist #:playlist-format #:playlists #:preset
                              #:preset-container #:preset-type
                              #:preset-watermark #:preset-watermark-id
                              #:preset-watermarks #:presets #:read-job
                              #:read-pipeline #:read-preset #:resolution
                              #:resource-in-use-exception
                              #:resource-not-found-exception #:role #:rotate
                              #:sizing-policy #:sns-topic #:sns-topics
                              #:storage-class #:string #:success #:target
                              #:test-role #:thumbnail-pattern
                              #:thumbnail-resolution #:thumbnails #:time
                              #:time-offset #:time-span #:timing
                              #:update-pipeline #:update-pipeline-notifications
                              #:update-pipeline-status #:user-metadata
                              #:validation-exception #:vertical-align
                              #:video-bit-rate #:video-codec #:video-parameters
                              #:warning #:warnings #:watermark-key
                              #:watermark-sizing-policy #:zero-to255string
                              #:zero-to512string #:elastic-transcoder-error))
(common-lisp:in-package #:pira/elastic-transcoder)

(common-lisp:define-condition elastic-transcoder-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service ets-customer-service :shape-name
                                   "EtsCustomerService" :version "2012-09-25"
                                   :title "Amazon Elastic Transcoder"
                                   :operations
                                   '(cancel-job create-job create-pipeline
                                     create-preset delete-pipeline
                                     delete-preset list-jobs-by-pipeline
                                     list-jobs-by-status list-pipelines
                                     list-presets read-job read-pipeline
                                     read-preset test-role update-pipeline
                                     update-pipeline-notifications
                                     update-pipeline-status)
                                   :xml-namespace
                                   '(:uri
                                     "http://elastictranscoder.amazonaws.com/doc/2012-09-25/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Elastic Transcoder")
                                      ("arnNamespace" . "elastictranscoder")
                                      ("cloudFormationName"
                                       . "ElasticTranscoder")
                                      ("cloudTrailEventSource"
                                       . "elastictranscoder.amazonaws.com")
                                      ("docId"
                                       . "elastictranscoder-2012-09-25")
                                      ("endpointPrefix" . "elastictranscoder"))
                                     ("aws.auth#sigv4"
                                      ("name" . "elastictranscoder"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type access-control smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-controls :member access-control)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class elastic-transcoder-error))

(smithy/sdk/shapes:define-structure artwork common-lisp:nil
                                    ((input-key :target-type watermark-key
                                      :member-name "InputKey")
                                     (max-width :target-type digits-or-auto
                                      :member-name "MaxWidth")
                                     (max-height :target-type digits-or-auto
                                      :member-name "MaxHeight")
                                     (sizing-policy :target-type sizing-policy
                                      :member-name "SizingPolicy")
                                     (padding-policy :target-type
                                      padding-policy :member-name
                                      "PaddingPolicy")
                                     (album-art-format :target-type jpg-or-png
                                      :member-name "AlbumArtFormat")
                                     (encryption :target-type encryption
                                      :member-name "Encryption"))
                                    (:shape-name "Artwork"))

(smithy/sdk/shapes:define-list artworks :member artwork)

(smithy/sdk/shapes:define-type ascending smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aspect-ratio smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audio-bit-depth smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audio-bit-order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audio-bit-rate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audio-channels smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audio-codec smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure audio-codec-options common-lisp:nil
                                    ((profile :target-type audio-codec-profile
                                      :member-name "Profile")
                                     (bit-depth :target-type audio-bit-depth
                                      :member-name "BitDepth")
                                     (bit-order :target-type audio-bit-order
                                      :member-name "BitOrder")
                                     (signed :target-type audio-signed
                                      :member-name "Signed"))
                                    (:shape-name "AudioCodecOptions"))

(smithy/sdk/shapes:define-type audio-codec-profile
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audio-packing-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure audio-parameters common-lisp:nil
                                    ((codec :target-type audio-codec
                                      :member-name "Codec")
                                     (sample-rate :target-type
                                      audio-sample-rate :member-name
                                      "SampleRate")
                                     (bit-rate :target-type audio-bit-rate
                                      :member-name "BitRate")
                                     (channels :target-type audio-channels
                                      :member-name "Channels")
                                     (audio-packing-mode :target-type
                                      audio-packing-mode :member-name
                                      "AudioPackingMode")
                                     (codec-options :target-type
                                      audio-codec-options :member-name
                                      "CodecOptions"))
                                    (:shape-name "AudioParameters"))

(smithy/sdk/shapes:define-type audio-sample-rate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audio-signed smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type base64encoded-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-job-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t))
                                (:shape-name "CancelJobRequest"))

(smithy/sdk/shapes:define-output cancel-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelJobResponse"))

(smithy/sdk/shapes:define-structure caption-format common-lisp:nil
                                    ((format :target-type caption-format-format
                                      :member-name "Format")
                                     (pattern :target-type
                                      caption-format-pattern :member-name
                                      "Pattern")
                                     (encryption :target-type encryption
                                      :member-name "Encryption"))
                                    (:shape-name "CaptionFormat"))

(smithy/sdk/shapes:define-type caption-format-format
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type caption-format-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list caption-formats :member caption-format)

(smithy/sdk/shapes:define-type caption-merge-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure caption-source common-lisp:nil
                                    ((key :target-type long-key :member-name
                                      "Key")
                                     (language :target-type key :member-name
                                      "Language")
                                     (time-offset :target-type time-offset
                                      :member-name "TimeOffset")
                                     (label :target-type name :member-name
                                      "Label")
                                     (encryption :target-type encryption
                                      :member-name "Encryption"))
                                    (:shape-name "CaptionSource"))

(smithy/sdk/shapes:define-list caption-sources :member caption-source)

(smithy/sdk/shapes:define-structure captions common-lisp:nil
                                    ((merge-policy :target-type
                                      caption-merge-policy :member-name
                                      "MergePolicy")
                                     (caption-sources :target-type
                                      caption-sources :member-name
                                      "CaptionSources")
                                     (caption-formats :target-type
                                      caption-formats :member-name
                                      "CaptionFormats"))
                                    (:shape-name "Captions"))

(smithy/sdk/shapes:define-structure clip common-lisp:nil
                                    ((time-span :target-type time-span
                                      :member-name "TimeSpan"))
                                    (:shape-name "Clip"))

(smithy/sdk/shapes:define-type codec-option smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map codec-options :key codec-option :value
                              codec-option)

(smithy/sdk/shapes:define-list composition :member clip)

(smithy/sdk/shapes:define-structure create-job-output common-lisp:nil
                                    ((key :target-type key :member-name "Key")
                                     (thumbnail-pattern :target-type
                                      thumbnail-pattern :member-name
                                      "ThumbnailPattern")
                                     (thumbnail-encryption :target-type
                                      encryption :member-name
                                      "ThumbnailEncryption")
                                     (rotate :target-type rotate :member-name
                                      "Rotate")
                                     (preset-id :target-type id :member-name
                                      "PresetId")
                                     (segment-duration :target-type
                                      float-string :member-name
                                      "SegmentDuration")
                                     (watermarks :target-type job-watermarks
                                      :member-name "Watermarks")
                                     (album-art :target-type job-album-art
                                      :member-name "AlbumArt")
                                     (composition :target-type composition
                                      :member-name "Composition")
                                     (captions :target-type captions
                                      :member-name "Captions")
                                     (encryption :target-type encryption
                                      :member-name "Encryption"))
                                    (:shape-name "CreateJobOutput"))

(smithy/sdk/shapes:define-list create-job-outputs :member create-job-output)

(smithy/sdk/shapes:define-structure create-job-playlist common-lisp:nil
                                    ((name :target-type filename :member-name
                                      "Name")
                                     (format :target-type playlist-format
                                      :member-name "Format")
                                     (output-keys :target-type output-keys
                                      :member-name "OutputKeys")
                                     (hls-content-protection :target-type
                                      hls-content-protection :member-name
                                      "HlsContentProtection")
                                     (play-ready-drm :target-type
                                      play-ready-drm :member-name
                                      "PlayReadyDrm"))
                                    (:shape-name "CreateJobPlaylist"))

(smithy/sdk/shapes:define-list create-job-playlists :member create-job-playlist)

(smithy/sdk/shapes:define-input create-job-request common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "PipelineId")
                                 (input :target-type job-input :member-name
                                  "Input")
                                 (inputs :target-type job-inputs :member-name
                                  "Inputs")
                                 (output :target-type create-job-output
                                  :member-name "Output")
                                 (outputs :target-type create-job-outputs
                                  :member-name "Outputs")
                                 (output-key-prefix :target-type key
                                  :member-name "OutputKeyPrefix")
                                 (playlists :target-type create-job-playlists
                                  :member-name "Playlists")
                                 (user-metadata :target-type user-metadata
                                  :member-name "UserMetadata"))
                                (:shape-name "CreateJobRequest"))

(smithy/sdk/shapes:define-output create-job-response common-lisp:nil
                                 ((job :target-type job :member-name "Job"))
                                 (:shape-name "CreateJobResponse"))

(smithy/sdk/shapes:define-input create-pipeline-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (input-bucket :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "InputBucket")
                                 (output-bucket :target-type bucket-name
                                  :member-name "OutputBucket")
                                 (role :target-type role :required
                                  common-lisp:t :member-name "Role")
                                 (aws-kms-key-arn :target-type key-arn
                                  :member-name "AwsKmsKeyArn")
                                 (notifications :target-type notifications
                                  :member-name "Notifications")
                                 (content-config :target-type
                                  pipeline-output-config :member-name
                                  "ContentConfig")
                                 (thumbnail-config :target-type
                                  pipeline-output-config :member-name
                                  "ThumbnailConfig"))
                                (:shape-name "CreatePipelineRequest"))

(smithy/sdk/shapes:define-output create-pipeline-response common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline")
                                  (warnings :target-type warnings :member-name
                                   "Warnings"))
                                 (:shape-name "CreatePipelineResponse"))

(smithy/sdk/shapes:define-input create-preset-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (container :target-type preset-container
                                  :required common-lisp:t :member-name
                                  "Container")
                                 (video :target-type video-parameters
                                  :member-name "Video")
                                 (audio :target-type audio-parameters
                                  :member-name "Audio")
                                 (thumbnails :target-type thumbnails
                                  :member-name "Thumbnails"))
                                (:shape-name "CreatePresetRequest"))

(smithy/sdk/shapes:define-output create-preset-response common-lisp:nil
                                 ((preset :target-type preset :member-name
                                   "Preset")
                                  (warning :target-type string :member-name
                                   "Warning"))
                                 (:shape-name "CreatePresetResponse"))

(smithy/sdk/shapes:define-input delete-pipeline-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t))
                                (:shape-name "DeletePipelineRequest"))

(smithy/sdk/shapes:define-output delete-pipeline-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePipelineResponse"))

(smithy/sdk/shapes:define-input delete-preset-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t))
                                (:shape-name "DeletePresetRequest"))

(smithy/sdk/shapes:define-output delete-preset-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePresetResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure detected-properties common-lisp:nil
                                    ((width :target-type nullable-integer
                                      :member-name "Width")
                                     (height :target-type nullable-integer
                                      :member-name "Height")
                                     (frame-rate :target-type float-string
                                      :member-name "FrameRate")
                                     (file-size :target-type nullable-long
                                      :member-name "FileSize")
                                     (duration-millis :target-type
                                      nullable-long :member-name
                                      "DurationMillis"))
                                    (:shape-name "DetectedProperties"))

(smithy/sdk/shapes:define-type digits smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type digits-or-auto smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure encryption common-lisp:nil
                                    ((mode :target-type encryption-mode
                                      :member-name "Mode")
                                     (key :target-type base64encoded-string
                                      :member-name "Key")
                                     (key-md5 :target-type base64encoded-string
                                      :member-name "KeyMd5")
                                     (initialization-vector :target-type
                                      zero-to255string :member-name
                                      "InitializationVector"))
                                    (:shape-name "Encryption"))

(smithy/sdk/shapes:define-type encryption-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list exception-messages :member string)

(smithy/sdk/shapes:define-type filename smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fixed-gop smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type float-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type frame-rate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grantee smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grantee-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure hls-content-protection common-lisp:nil
                                    ((method :target-type
                                      hls-content-protection-method
                                      :member-name "Method")
                                     (key :target-type base64encoded-string
                                      :member-name "Key")
                                     (key-md5 :target-type base64encoded-string
                                      :member-name "KeyMd5")
                                     (initialization-vector :target-type
                                      zero-to255string :member-name
                                      "InitializationVector")
                                     (license-acquisition-url :target-type
                                      zero-to512string :member-name
                                      "LicenseAcquisitionUrl")
                                     (key-storage-policy :target-type
                                      key-storage-policy :member-name
                                      "KeyStoragePolicy"))
                                    (:shape-name "HlsContentProtection"))

(smithy/sdk/shapes:define-type hls-content-protection-method
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type horizontal-align smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error incompatible-version-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "IncompatibleVersionException")
                                (:error-code 400)
                                (:base-class elastic-transcoder-error))

(smithy/sdk/shapes:define-structure input-captions common-lisp:nil
                                    ((merge-policy :target-type
                                      caption-merge-policy :member-name
                                      "MergePolicy")
                                     (caption-sources :target-type
                                      caption-sources :member-name
                                      "CaptionSources"))
                                    (:shape-name "InputCaptions"))

(smithy/sdk/shapes:define-type interlaced smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500)
                                (:base-class elastic-transcoder-error))

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (pipeline-id :target-type id :member-name
                                      "PipelineId")
                                     (input :target-type job-input :member-name
                                      "Input")
                                     (inputs :target-type job-inputs
                                      :member-name "Inputs")
                                     (output :target-type job-output
                                      :member-name "Output")
                                     (outputs :target-type job-outputs
                                      :member-name "Outputs")
                                     (output-key-prefix :target-type key
                                      :member-name "OutputKeyPrefix")
                                     (playlists :target-type playlists
                                      :member-name "Playlists")
                                     (status :target-type job-status
                                      :member-name "Status")
                                     (user-metadata :target-type user-metadata
                                      :member-name "UserMetadata")
                                     (timing :target-type timing :member-name
                                      "Timing"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-structure job-album-art common-lisp:nil
                                    ((merge-policy :target-type merge-policy
                                      :member-name "MergePolicy")
                                     (artwork :target-type artworks
                                      :member-name "Artwork"))
                                    (:shape-name "JobAlbumArt"))

(smithy/sdk/shapes:define-type job-container smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-input common-lisp:nil
                                    ((key :target-type long-key :member-name
                                      "Key")
                                     (frame-rate :target-type frame-rate
                                      :member-name "FrameRate")
                                     (resolution :target-type resolution
                                      :member-name "Resolution")
                                     (aspect-ratio :target-type aspect-ratio
                                      :member-name "AspectRatio")
                                     (interlaced :target-type interlaced
                                      :member-name "Interlaced")
                                     (container :target-type job-container
                                      :member-name "Container")
                                     (encryption :target-type encryption
                                      :member-name "Encryption")
                                     (time-span :target-type time-span
                                      :member-name "TimeSpan")
                                     (input-captions :target-type
                                      input-captions :member-name
                                      "InputCaptions")
                                     (detected-properties :target-type
                                      detected-properties :member-name
                                      "DetectedProperties"))
                                    (:shape-name "JobInput"))

(smithy/sdk/shapes:define-list job-inputs :member job-input)

(smithy/sdk/shapes:define-structure job-output common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (key :target-type key :member-name "Key")
                                     (thumbnail-pattern :target-type
                                      thumbnail-pattern :member-name
                                      "ThumbnailPattern")
                                     (thumbnail-encryption :target-type
                                      encryption :member-name
                                      "ThumbnailEncryption")
                                     (rotate :target-type rotate :member-name
                                      "Rotate")
                                     (preset-id :target-type id :member-name
                                      "PresetId")
                                     (segment-duration :target-type
                                      float-string :member-name
                                      "SegmentDuration")
                                     (status :target-type job-status
                                      :member-name "Status")
                                     (status-detail :target-type description
                                      :member-name "StatusDetail")
                                     (duration :target-type nullable-long
                                      :member-name "Duration")
                                     (width :target-type nullable-integer
                                      :member-name "Width")
                                     (height :target-type nullable-integer
                                      :member-name "Height")
                                     (frame-rate :target-type float-string
                                      :member-name "FrameRate")
                                     (file-size :target-type nullable-long
                                      :member-name "FileSize")
                                     (duration-millis :target-type
                                      nullable-long :member-name
                                      "DurationMillis")
                                     (watermarks :target-type job-watermarks
                                      :member-name "Watermarks")
                                     (album-art :target-type job-album-art
                                      :member-name "AlbumArt")
                                     (composition :target-type composition
                                      :member-name "Composition")
                                     (captions :target-type captions
                                      :member-name "Captions")
                                     (encryption :target-type encryption
                                      :member-name "Encryption")
                                     (applied-color-space-conversion
                                      :target-type string :member-name
                                      "AppliedColorSpaceConversion"))
                                    (:shape-name "JobOutput"))

(smithy/sdk/shapes:define-list job-outputs :member job-output)

(smithy/sdk/shapes:define-type job-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-watermark common-lisp:nil
                                    ((preset-watermark-id :target-type
                                      preset-watermark-id :member-name
                                      "PresetWatermarkId")
                                     (input-key :target-type watermark-key
                                      :member-name "InputKey")
                                     (encryption :target-type encryption
                                      :member-name "Encryption"))
                                    (:shape-name "JobWatermark"))

(smithy/sdk/shapes:define-list job-watermarks :member job-watermark)

(smithy/sdk/shapes:define-list jobs :member job)

(smithy/sdk/shapes:define-type jpg-or-png smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-id-guid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-storage-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type keyframes-max-dist
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429)
                                (:base-class elastic-transcoder-error))

(smithy/sdk/shapes:define-input list-jobs-by-pipeline-request common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "PipelineId"
                                  :http-label common-lisp:t)
                                 (ascending :target-type ascending :member-name
                                  "Ascending" :http-query "Ascending")
                                 (page-token :target-type id :member-name
                                  "PageToken" :http-query "PageToken"))
                                (:shape-name "ListJobsByPipelineRequest"))

(smithy/sdk/shapes:define-output list-jobs-by-pipeline-response common-lisp:nil
                                 ((jobs :target-type jobs :member-name "Jobs")
                                  (next-page-token :target-type id :member-name
                                   "NextPageToken"))
                                 (:shape-name "ListJobsByPipelineResponse"))

(smithy/sdk/shapes:define-input list-jobs-by-status-request common-lisp:nil
                                ((status :target-type job-status :required
                                  common-lisp:t :member-name "Status"
                                  :http-label common-lisp:t)
                                 (ascending :target-type ascending :member-name
                                  "Ascending" :http-query "Ascending")
                                 (page-token :target-type id :member-name
                                  "PageToken" :http-query "PageToken"))
                                (:shape-name "ListJobsByStatusRequest"))

(smithy/sdk/shapes:define-output list-jobs-by-status-response common-lisp:nil
                                 ((jobs :target-type jobs :member-name "Jobs")
                                  (next-page-token :target-type id :member-name
                                   "NextPageToken"))
                                 (:shape-name "ListJobsByStatusResponse"))

(smithy/sdk/shapes:define-input list-pipelines-request common-lisp:nil
                                ((ascending :target-type ascending :member-name
                                  "Ascending" :http-query "Ascending")
                                 (page-token :target-type id :member-name
                                  "PageToken" :http-query "PageToken"))
                                (:shape-name "ListPipelinesRequest"))

(smithy/sdk/shapes:define-output list-pipelines-response common-lisp:nil
                                 ((pipelines :target-type pipelines
                                   :member-name "Pipelines")
                                  (next-page-token :target-type id :member-name
                                   "NextPageToken"))
                                 (:shape-name "ListPipelinesResponse"))

(smithy/sdk/shapes:define-input list-presets-request common-lisp:nil
                                ((ascending :target-type ascending :member-name
                                  "Ascending" :http-query "Ascending")
                                 (page-token :target-type id :member-name
                                  "PageToken" :http-query "PageToken"))
                                (:shape-name "ListPresetsRequest"))

(smithy/sdk/shapes:define-output list-presets-response common-lisp:nil
                                 ((presets :target-type presets :member-name
                                   "Presets")
                                  (next-page-token :target-type id :member-name
                                   "NextPageToken"))
                                 (:shape-name "ListPresetsResponse"))

(smithy/sdk/shapes:define-type long-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-frame-rate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type merge-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-base64encoded-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notifications common-lisp:nil
                                    ((progressing :target-type sns-topic
                                      :member-name "Progressing")
                                     (completed :target-type sns-topic
                                      :member-name "Completed")
                                     (warning :target-type sns-topic
                                      :member-name "Warning")
                                     (error :target-type sns-topic :member-name
                                      "Error"))
                                    (:shape-name "Notifications"))

(smithy/sdk/shapes:define-type nullable-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nullable-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type one-to512string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type opacity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list output-keys :member key)

(smithy/sdk/shapes:define-type padding-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure permission common-lisp:nil
                                    ((grantee-type :target-type grantee-type
                                      :member-name "GranteeType")
                                     (grantee :target-type grantee :member-name
                                      "Grantee")
                                     (access :target-type access-controls
                                      :member-name "Access"))
                                    (:shape-name "Permission"))

(smithy/sdk/shapes:define-list permissions :member permission)

(smithy/sdk/shapes:define-structure pipeline common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (status :target-type pipeline-status
                                      :member-name "Status")
                                     (input-bucket :target-type bucket-name
                                      :member-name "InputBucket")
                                     (output-bucket :target-type bucket-name
                                      :member-name "OutputBucket")
                                     (role :target-type role :member-name
                                      "Role")
                                     (aws-kms-key-arn :target-type key-arn
                                      :member-name "AwsKmsKeyArn")
                                     (notifications :target-type notifications
                                      :member-name "Notifications")
                                     (content-config :target-type
                                      pipeline-output-config :member-name
                                      "ContentConfig")
                                     (thumbnail-config :target-type
                                      pipeline-output-config :member-name
                                      "ThumbnailConfig"))
                                    (:shape-name "Pipeline"))

(smithy/sdk/shapes:define-structure pipeline-output-config common-lisp:nil
                                    ((bucket :target-type bucket-name
                                      :member-name "Bucket")
                                     (storage-class :target-type storage-class
                                      :member-name "StorageClass")
                                     (permissions :target-type permissions
                                      :member-name "Permissions"))
                                    (:shape-name "PipelineOutputConfig"))

(smithy/sdk/shapes:define-type pipeline-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pipelines :member pipeline)

(smithy/sdk/shapes:define-type pixels-or-percent smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure play-ready-drm common-lisp:nil
                                    ((format :target-type
                                      play-ready-drm-format-string :member-name
                                      "Format")
                                     (key :target-type
                                      non-empty-base64encoded-string
                                      :member-name "Key")
                                     (key-md5 :target-type
                                      non-empty-base64encoded-string
                                      :member-name "KeyMd5")
                                     (key-id :target-type key-id-guid
                                      :member-name "KeyId")
                                     (initialization-vector :target-type
                                      zero-to255string :member-name
                                      "InitializationVector")
                                     (license-acquisition-url :target-type
                                      one-to512string :member-name
                                      "LicenseAcquisitionUrl"))
                                    (:shape-name "PlayReadyDrm"))

(smithy/sdk/shapes:define-type play-ready-drm-format-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure playlist common-lisp:nil
                                    ((name :target-type filename :member-name
                                      "Name")
                                     (format :target-type playlist-format
                                      :member-name "Format")
                                     (output-keys :target-type output-keys
                                      :member-name "OutputKeys")
                                     (hls-content-protection :target-type
                                      hls-content-protection :member-name
                                      "HlsContentProtection")
                                     (play-ready-drm :target-type
                                      play-ready-drm :member-name
                                      "PlayReadyDrm")
                                     (status :target-type job-status
                                      :member-name "Status")
                                     (status-detail :target-type description
                                      :member-name "StatusDetail"))
                                    (:shape-name "Playlist"))

(smithy/sdk/shapes:define-type playlist-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list playlists :member playlist)

(smithy/sdk/shapes:define-structure preset common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (container :target-type preset-container
                                      :member-name "Container")
                                     (audio :target-type audio-parameters
                                      :member-name "Audio")
                                     (video :target-type video-parameters
                                      :member-name "Video")
                                     (thumbnails :target-type thumbnails
                                      :member-name "Thumbnails")
                                     (type :target-type preset-type
                                      :member-name "Type"))
                                    (:shape-name "Preset"))

(smithy/sdk/shapes:define-type preset-container smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type preset-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure preset-watermark common-lisp:nil
                                    ((id :target-type preset-watermark-id
                                      :member-name "Id")
                                     (max-width :target-type pixels-or-percent
                                      :member-name "MaxWidth")
                                     (max-height :target-type pixels-or-percent
                                      :member-name "MaxHeight")
                                     (sizing-policy :target-type
                                      watermark-sizing-policy :member-name
                                      "SizingPolicy")
                                     (horizontal-align :target-type
                                      horizontal-align :member-name
                                      "HorizontalAlign")
                                     (horizontal-offset :target-type
                                      pixels-or-percent :member-name
                                      "HorizontalOffset")
                                     (vertical-align :target-type
                                      vertical-align :member-name
                                      "VerticalAlign")
                                     (vertical-offset :target-type
                                      pixels-or-percent :member-name
                                      "VerticalOffset")
                                     (opacity :target-type opacity :member-name
                                      "Opacity")
                                     (target :target-type target :member-name
                                      "Target"))
                                    (:shape-name "PresetWatermark"))

(smithy/sdk/shapes:define-type preset-watermark-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list preset-watermarks :member preset-watermark)

(smithy/sdk/shapes:define-list presets :member preset)

(smithy/sdk/shapes:define-input read-job-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t))
                                (:shape-name "ReadJobRequest"))

(smithy/sdk/shapes:define-output read-job-response common-lisp:nil
                                 ((job :target-type job :member-name "Job"))
                                 (:shape-name "ReadJobResponse"))

(smithy/sdk/shapes:define-input read-pipeline-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t))
                                (:shape-name "ReadPipelineRequest"))

(smithy/sdk/shapes:define-output read-pipeline-response common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline")
                                  (warnings :target-type warnings :member-name
                                   "Warnings"))
                                 (:shape-name "ReadPipelineResponse"))

(smithy/sdk/shapes:define-input read-preset-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t))
                                (:shape-name "ReadPresetRequest"))

(smithy/sdk/shapes:define-output read-preset-response common-lisp:nil
                                 ((preset :target-type preset :member-name
                                   "Preset"))
                                 (:shape-name "ReadPresetResponse"))

(smithy/sdk/shapes:define-type resolution smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 409)
                                (:base-class elastic-transcoder-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class elastic-transcoder-error))

(smithy/sdk/shapes:define-type role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rotate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sizing-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sns-topic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sns-topics :member sns-topic)

(smithy/sdk/shapes:define-type storage-class smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type success smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input test-role-request common-lisp:nil
                                ((role :target-type role :required
                                  common-lisp:t :member-name "Role")
                                 (input-bucket :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "InputBucket")
                                 (output-bucket :target-type bucket-name
                                  :required common-lisp:t :member-name
                                  "OutputBucket")
                                 (topics :target-type sns-topics :required
                                  common-lisp:t :member-name "Topics"))
                                (:shape-name "TestRoleRequest"))

(smithy/sdk/shapes:define-output test-role-response common-lisp:nil
                                 ((success :target-type success :member-name
                                   "Success")
                                  (messages :target-type exception-messages
                                   :member-name "Messages"))
                                 (:shape-name "TestRoleResponse"))

(smithy/sdk/shapes:define-type thumbnail-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thumbnail-resolution
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure thumbnails common-lisp:nil
                                    ((format :target-type jpg-or-png
                                      :member-name "Format")
                                     (interval :target-type digits :member-name
                                      "Interval")
                                     (resolution :target-type
                                      thumbnail-resolution :member-name
                                      "Resolution")
                                     (aspect-ratio :target-type aspect-ratio
                                      :member-name "AspectRatio")
                                     (max-width :target-type digits-or-auto
                                      :member-name "MaxWidth")
                                     (max-height :target-type digits-or-auto
                                      :member-name "MaxHeight")
                                     (sizing-policy :target-type sizing-policy
                                      :member-name "SizingPolicy")
                                     (padding-policy :target-type
                                      padding-policy :member-name
                                      "PaddingPolicy"))
                                    (:shape-name "Thumbnails"))

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time-offset smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure time-span common-lisp:nil
                                    ((start-time :target-type time :member-name
                                      "StartTime")
                                     (duration :target-type time :member-name
                                      "Duration"))
                                    (:shape-name "TimeSpan"))

(smithy/sdk/shapes:define-structure timing common-lisp:nil
                                    ((submit-time-millis :target-type
                                      nullable-long :member-name
                                      "SubmitTimeMillis")
                                     (start-time-millis :target-type
                                      nullable-long :member-name
                                      "StartTimeMillis")
                                     (finish-time-millis :target-type
                                      nullable-long :member-name
                                      "FinishTimeMillis"))
                                    (:shape-name "Timing"))

(smithy/sdk/shapes:define-input update-pipeline-notifications-request
                                common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t)
                                 (notifications :target-type notifications
                                  :required common-lisp:t :member-name
                                  "Notifications"))
                                (:shape-name
                                 "UpdatePipelineNotificationsRequest"))

(smithy/sdk/shapes:define-output update-pipeline-notifications-response
                                 common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline"))
                                 (:shape-name
                                  "UpdatePipelineNotificationsResponse"))

(smithy/sdk/shapes:define-input update-pipeline-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t)
                                 (name :target-type name :member-name "Name")
                                 (input-bucket :target-type bucket-name
                                  :member-name "InputBucket")
                                 (role :target-type role :member-name "Role")
                                 (aws-kms-key-arn :target-type key-arn
                                  :member-name "AwsKmsKeyArn")
                                 (notifications :target-type notifications
                                  :member-name "Notifications")
                                 (content-config :target-type
                                  pipeline-output-config :member-name
                                  "ContentConfig")
                                 (thumbnail-config :target-type
                                  pipeline-output-config :member-name
                                  "ThumbnailConfig"))
                                (:shape-name "UpdatePipelineRequest"))

(smithy/sdk/shapes:define-output update-pipeline-response common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline")
                                  (warnings :target-type warnings :member-name
                                   "Warnings"))
                                 (:shape-name "UpdatePipelineResponse"))

(smithy/sdk/shapes:define-input update-pipeline-status-request common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t)
                                 (status :target-type pipeline-status :required
                                  common-lisp:t :member-name "Status"))
                                (:shape-name "UpdatePipelineStatusRequest"))

(smithy/sdk/shapes:define-output update-pipeline-status-response
                                 common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline"))
                                 (:shape-name "UpdatePipelineStatusResponse"))

(smithy/sdk/shapes:define-map user-metadata :key string :value string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class elastic-transcoder-error))

(smithy/sdk/shapes:define-type vertical-align smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type video-bit-rate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type video-codec smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure video-parameters common-lisp:nil
                                    ((codec :target-type video-codec
                                      :member-name "Codec")
                                     (codec-options :target-type codec-options
                                      :member-name "CodecOptions")
                                     (keyframes-max-dist :target-type
                                      keyframes-max-dist :member-name
                                      "KeyframesMaxDist")
                                     (fixed-gop :target-type fixed-gop
                                      :member-name "FixedGOP")
                                     (bit-rate :target-type video-bit-rate
                                      :member-name "BitRate")
                                     (frame-rate :target-type frame-rate
                                      :member-name "FrameRate")
                                     (max-frame-rate :target-type
                                      max-frame-rate :member-name
                                      "MaxFrameRate")
                                     (resolution :target-type resolution
                                      :member-name "Resolution")
                                     (aspect-ratio :target-type aspect-ratio
                                      :member-name "AspectRatio")
                                     (max-width :target-type digits-or-auto
                                      :member-name "MaxWidth")
                                     (max-height :target-type digits-or-auto
                                      :member-name "MaxHeight")
                                     (display-aspect-ratio :target-type
                                      aspect-ratio :member-name
                                      "DisplayAspectRatio")
                                     (sizing-policy :target-type sizing-policy
                                      :member-name "SizingPolicy")
                                     (padding-policy :target-type
                                      padding-policy :member-name
                                      "PaddingPolicy")
                                     (watermarks :target-type preset-watermarks
                                      :member-name "Watermarks"))
                                    (:shape-name "VideoParameters"))

(smithy/sdk/shapes:define-structure warning common-lisp:nil
                                    ((code :target-type string :member-name
                                      "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "Warning"))

(smithy/sdk/shapes:define-list warnings :member warning)

(smithy/sdk/shapes:define-type watermark-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type watermark-sizing-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type zero-to255string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type zero-to512string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation cancel-job :shape-name "CancelJob"
                                       :input cancel-job-request :output
                                       cancel-job-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2012-09-25/jobs/{Id}" :code 202)

(smithy/sdk/operation:define-operation create-job :shape-name "CreateJob"
                                       :input create-job-request :output
                                       create-job-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/2012-09-25/jobs"
                                       :code 201)

(smithy/sdk/operation:define-operation create-pipeline :shape-name
                                       "CreatePipeline" :input
                                       create-pipeline-request :output
                                       create-pipeline-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2012-09-25/pipelines" :code 201)

(smithy/sdk/operation:define-operation create-preset :shape-name "CreatePreset"
                                       :input create-preset-request :output
                                       create-preset-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        limit-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2012-09-25/presets" :code 201)

(smithy/sdk/operation:define-operation delete-pipeline :shape-name
                                       "DeletePipeline" :input
                                       delete-pipeline-request :output
                                       delete-pipeline-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2012-09-25/pipelines/{Id}" :code 202)

(smithy/sdk/operation:define-operation delete-preset :shape-name "DeletePreset"
                                       :input delete-preset-request :output
                                       delete-preset-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2012-09-25/presets/{Id}" :code 202)

(smithy/sdk/operation:define-operation list-jobs-by-pipeline :shape-name
                                       "ListJobsByPipeline" :input
                                       list-jobs-by-pipeline-request :output
                                       list-jobs-by-pipeline-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2012-09-25/jobsByPipeline/{PipelineId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-jobs-by-status :shape-name
                                       "ListJobsByStatus" :input
                                       list-jobs-by-status-request :output
                                       list-jobs-by-status-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2012-09-25/jobsByStatus/{Status}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-pipelines :shape-name
                                       "ListPipelines" :input
                                       list-pipelines-request :output
                                       list-pipelines-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2012-09-25/pipelines" :code 200)

(smithy/sdk/operation:define-operation list-presets :shape-name "ListPresets"
                                       :input list-presets-request :output
                                       list-presets-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        validation-exception)
                                       :method "GET" :uri "/2012-09-25/presets"
                                       :code 200)

(smithy/sdk/operation:define-operation read-job :shape-name "ReadJob" :input
                                       read-job-request :output
                                       read-job-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2012-09-25/jobs/{Id}" :code 200)

(smithy/sdk/operation:define-operation read-pipeline :shape-name "ReadPipeline"
                                       :input read-pipeline-request :output
                                       read-pipeline-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2012-09-25/pipelines/{Id}" :code 200)

(smithy/sdk/operation:define-operation read-preset :shape-name "ReadPreset"
                                       :input read-preset-request :output
                                       read-preset-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2012-09-25/presets/{Id}" :code 200)

(smithy/sdk/operation:define-operation test-role :shape-name "TestRole" :input
                                       test-role-request :output
                                       test-role-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2012-09-25/roleTests" :code 200)

(smithy/sdk/operation:define-operation update-pipeline :shape-name
                                       "UpdatePipeline" :input
                                       update-pipeline-request :output
                                       update-pipeline-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2012-09-25/pipelines/{Id}" :code 200)

(smithy/sdk/operation:define-operation update-pipeline-notifications
                                       :shape-name
                                       "UpdatePipelineNotifications" :input
                                       update-pipeline-notifications-request
                                       :output
                                       update-pipeline-notifications-response
                                       :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2012-09-25/pipelines/{Id}/notifications"
                                       :code 200)

(smithy/sdk/operation:define-operation update-pipeline-status :shape-name
                                       "UpdatePipelineStatus" :input
                                       update-pipeline-status-request :output
                                       update-pipeline-status-response :errors
                                       (access-denied-exception
                                        incompatible-version-exception
                                        internal-service-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2012-09-25/pipelines/{Id}/status"
                                       :code 200)
