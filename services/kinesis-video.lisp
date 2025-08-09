(uiop/package:define-package #:pira/kinesis-video (:use)
                             (:export #:apiname #:access-denied-exception
                              #:account-channel-limit-exceeded-exception
                              #:account-stream-limit-exceeded-exception
                              #:channel-info #:channel-info-list #:channel-name
                              #:channel-name-condition #:channel-protocol
                              #:channel-role #:channel-type
                              #:client-limit-exceeded-exception
                              #:comparison-operator #:configuration-status
                              #:create-signaling-channel
                              #:create-signaling-channel-input
                              #:create-signaling-channel-output #:create-stream
                              #:create-stream-input #:create-stream-output
                              #:data-endpoint #:data-retention-change-in-hours
                              #:data-retention-in-hours #:delete-after-upload
                              #:delete-edge-configuration
                              #:delete-edge-configuration-input
                              #:delete-edge-configuration-output
                              #:delete-signaling-channel
                              #:delete-signaling-channel-input
                              #:delete-signaling-channel-output #:delete-stream
                              #:delete-stream-input #:delete-stream-output
                              #:deletion-config #:describe-edge-configuration
                              #:describe-edge-configuration-input
                              #:describe-edge-configuration-output
                              #:describe-image-generation-configuration
                              #:describe-image-generation-configuration-input
                              #:describe-image-generation-configuration-output
                              #:describe-mapped-resource-configuration
                              #:describe-mapped-resource-configuration-input
                              #:describe-mapped-resource-configuration-output
                              #:describe-media-storage-configuration
                              #:describe-media-storage-configuration-input
                              #:describe-media-storage-configuration-output
                              #:describe-notification-configuration
                              #:describe-notification-configuration-input
                              #:describe-notification-configuration-output
                              #:describe-signaling-channel
                              #:describe-signaling-channel-input
                              #:describe-signaling-channel-output
                              #:describe-stream #:describe-stream-input
                              #:describe-stream-output #:destination-region
                              #:destination-uri #:device-name
                              #:device-stream-limit-exceeded-exception
                              #:duration-in-seconds #:edge-agent-status
                              #:edge-config #:edge-retention-in-hours
                              #:error-message #:failed-status-details #:format
                              #:format-config #:format-config-key
                              #:format-config-value #:get-data-endpoint
                              #:get-data-endpoint-input
                              #:get-data-endpoint-output
                              #:get-signaling-channel-endpoint
                              #:get-signaling-channel-endpoint-input
                              #:get-signaling-channel-endpoint-output
                              #:height-pixels #:hub-device-arn
                              #:image-generation-configuration
                              #:image-generation-destination-config
                              #:image-selector-type
                              #:invalid-argument-exception
                              #:invalid-device-exception
                              #:invalid-resource-format-exception
                              #:job-status-details #:kinesis-video-20170930
                              #:kms-key-id #:last-recorder-status
                              #:last-uploader-status
                              #:list-edge-agent-configurations
                              #:list-edge-agent-configurations-edge-config
                              #:list-edge-agent-configurations-edge-config-list
                              #:list-edge-agent-configurations-input
                              #:list-edge-agent-configurations-input-limit
                              #:list-edge-agent-configurations-output
                              #:list-of-protocols #:list-signaling-channels
                              #:list-signaling-channels-input
                              #:list-signaling-channels-output #:list-streams
                              #:list-streams-input #:list-streams-input-limit
                              #:list-streams-output #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output
                              #:list-tags-for-stream
                              #:list-tags-for-stream-input
                              #:list-tags-for-stream-output #:local-size-config
                              #:mapped-resource-configuration-list
                              #:mapped-resource-configuration-list-item
                              #:mapped-resource-configuration-list-limit
                              #:max-local-media-size-in-mb
                              #:media-source-config
                              #:media-storage-configuration
                              #:media-storage-configuration-status #:media-type
                              #:media-uri-secret-arn #:media-uri-type
                              #:message-ttl-seconds #:next-token
                              #:no-data-retention-exception
                              #:not-authorized-exception
                              #:notification-configuration
                              #:notification-destination-config
                              #:recorder-config #:recorder-status
                              #:resource-arn #:resource-endpoint
                              #:resource-endpoint-list
                              #:resource-endpoint-list-item
                              #:resource-in-use-exception
                              #:resource-not-found-exception #:resource-tags
                              #:sampling-interval #:schedule-config
                              #:schedule-expression
                              #:single-master-channel-endpoint-configuration
                              #:single-master-configuration
                              #:start-edge-configuration-update
                              #:start-edge-configuration-update-input
                              #:start-edge-configuration-update-output #:status
                              #:strategy-on-full-size
                              #:stream-edge-configuration-not-found-exception
                              #:stream-info #:stream-info-list #:stream-name
                              #:stream-name-condition #:sync-status #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-on-create-list #:tag-resource
                              #:tag-resource-input #:tag-resource-output
                              #:tag-stream #:tag-stream-input
                              #:tag-stream-output #:tag-value
                              #:tags-per-resource-exceeded-limit-exception
                              #:timestamp #:type #:untag-resource
                              #:untag-resource-input #:untag-resource-output
                              #:untag-stream #:untag-stream-input
                              #:untag-stream-output #:update-data-retention
                              #:update-data-retention-input
                              #:update-data-retention-operation
                              #:update-data-retention-output
                              #:update-image-generation-configuration
                              #:update-image-generation-configuration-input
                              #:update-image-generation-configuration-output
                              #:update-media-storage-configuration
                              #:update-media-storage-configuration-input
                              #:update-media-storage-configuration-output
                              #:update-notification-configuration
                              #:update-notification-configuration-input
                              #:update-notification-configuration-output
                              #:update-signaling-channel
                              #:update-signaling-channel-input
                              #:update-signaling-channel-output #:update-stream
                              #:update-stream-input #:update-stream-output
                              #:uploader-config #:uploader-status #:version
                              #:version-mismatch-exception #:width-pixels))
(common-lisp:in-package #:pira/kinesis-video)

(smithy/sdk/service:define-service kinesis-video-20170930 :shape-name
                                   "KinesisVideo_20170930" :version
                                   "2017-09-30" :title
                                   "Amazon Kinesis Video Streams"
                                   :xml-namespace
                                   '(:uri
                                     "https://kinesisvideo.amazonaws.com/doc/2017-09-30/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Kinesis Video")
                                      ("arnNamespace" . "kinesisvideo")
                                      ("cloudFormationName" . "KinesisVideo")
                                      ("cloudTrailEventSource"
                                       . "kinesisvideo.amazonaws.com")
                                      ("docId" . "kinesisvideo-2017-09-30")
                                      ("endpointPrefix" . "kinesisvideo"))
                                     ("aws.auth#sigv4"
                                      ("name" . "kinesisvideo"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum apiname
    common-lisp:nil
  (:put-media "PUT_MEDIA")
  (:get-media "GET_MEDIA")
  (:list-fragments "LIST_FRAGMENTS")
  (:get-media-for-fragment-list "GET_MEDIA_FOR_FRAGMENT_LIST")
  (:get-hls-streaming-session-url "GET_HLS_STREAMING_SESSION_URL")
  (:get-dash-streaming-session-url "GET_DASH_STREAMING_SESSION_URL")
  (:get-clip "GET_CLIP")
  (:get-images "GET_IMAGES"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-error account-channel-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "AccountChannelLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error account-stream-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "AccountStreamLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure channel-info common-lisp:nil
                                    ((channel-name :target-type channel-name
                                      :member-name "ChannelName")
                                     (channel-arn :target-type resource-arn
                                      :member-name "ChannelARN")
                                     (channel-type :target-type channel-type
                                      :member-name "ChannelType")
                                     (channel-status :target-type status
                                      :member-name "ChannelStatus")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (single-master-configuration :target-type
                                      single-master-configuration :member-name
                                      "SingleMasterConfiguration")
                                     (version :target-type version :member-name
                                      "Version"))
                                    (:shape-name "ChannelInfo"))

(smithy/sdk/shapes:define-list channel-info-list :member channel-info)

(smithy/sdk/shapes:define-type channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure channel-name-condition common-lisp:nil
                                    ((comparison-operator :target-type
                                      comparison-operator :member-name
                                      "ComparisonOperator")
                                     (comparison-value :target-type
                                      channel-name :member-name
                                      "ComparisonValue"))
                                    (:shape-name "ChannelNameCondition"))

(smithy/sdk/shapes:define-enum channel-protocol
    common-lisp:nil
  (:wss "WSS")
  (:https "HTTPS")
  (:webrtc "WEBRTC"))

(smithy/sdk/shapes:define-enum channel-role
    common-lisp:nil
  (:master "MASTER")
  (:viewer "VIEWER"))

(smithy/sdk/shapes:define-enum channel-type
    common-lisp:nil
  (:single-master "SINGLE_MASTER")
  (:full-mesh "FULL_MESH"))

(smithy/sdk/shapes:define-error client-limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ClientLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:begins-with "BEGINS_WITH"))

(smithy/sdk/shapes:define-enum configuration-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-input create-signaling-channel-input common-lisp:nil
                                ((channel-name :target-type channel-name
                                  :required common-lisp:t :member-name
                                  "ChannelName")
                                 (channel-type :target-type channel-type
                                  :member-name "ChannelType")
                                 (single-master-configuration :target-type
                                  single-master-configuration :member-name
                                  "SingleMasterConfiguration")
                                 (tags :target-type tag-on-create-list
                                  :member-name "Tags"))
                                (:shape-name "CreateSignalingChannelInput"))

(smithy/sdk/shapes:define-output create-signaling-channel-output
                                 common-lisp:nil
                                 ((channel-arn :target-type resource-arn
                                   :member-name "ChannelARN"))
                                 (:shape-name "CreateSignalingChannelOutput"))

(smithy/sdk/shapes:define-input create-stream-input common-lisp:nil
                                ((device-name :target-type device-name
                                  :member-name "DeviceName")
                                 (stream-name :target-type stream-name
                                  :required common-lisp:t :member-name
                                  "StreamName")
                                 (media-type :target-type media-type
                                  :member-name "MediaType")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (data-retention-in-hours :target-type
                                  data-retention-in-hours :member-name
                                  "DataRetentionInHours")
                                 (tags :target-type resource-tags :member-name
                                  "Tags"))
                                (:shape-name "CreateStreamInput"))

(smithy/sdk/shapes:define-output create-stream-output common-lisp:nil
                                 ((stream-arn :target-type resource-arn
                                   :member-name "StreamARN"))
                                 (:shape-name "CreateStreamOutput"))

(smithy/sdk/shapes:define-type data-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-retention-change-in-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type data-retention-in-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type delete-after-upload
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-edge-configuration-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN"))
                                (:shape-name "DeleteEdgeConfigurationInput"))

(smithy/sdk/shapes:define-output delete-edge-configuration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteEdgeConfigurationOutput"))

(smithy/sdk/shapes:define-input delete-signaling-channel-input common-lisp:nil
                                ((channel-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ChannelARN")
                                 (current-version :target-type version
                                  :member-name "CurrentVersion"))
                                (:shape-name "DeleteSignalingChannelInput"))

(smithy/sdk/shapes:define-output delete-signaling-channel-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteSignalingChannelOutput"))

(smithy/sdk/shapes:define-input delete-stream-input common-lisp:nil
                                ((stream-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "StreamARN")
                                 (current-version :target-type version
                                  :member-name "CurrentVersion"))
                                (:shape-name "DeleteStreamInput"))

(smithy/sdk/shapes:define-output delete-stream-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteStreamOutput"))

(smithy/sdk/shapes:define-structure deletion-config common-lisp:nil
                                    ((edge-retention-in-hours :target-type
                                      edge-retention-in-hours :member-name
                                      "EdgeRetentionInHours")
                                     (local-size-config :target-type
                                      local-size-config :member-name
                                      "LocalSizeConfig")
                                     (delete-after-upload :target-type
                                      delete-after-upload :member-name
                                      "DeleteAfterUpload"))
                                    (:shape-name "DeletionConfig"))

(smithy/sdk/shapes:define-input describe-edge-configuration-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN"))
                                (:shape-name "DescribeEdgeConfigurationInput"))

(smithy/sdk/shapes:define-output describe-edge-configuration-output
                                 common-lisp:nil
                                 ((stream-name :target-type stream-name
                                   :member-name "StreamName")
                                  (stream-arn :target-type resource-arn
                                   :member-name "StreamARN")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-updated-time :target-type timestamp
                                   :member-name "LastUpdatedTime")
                                  (sync-status :target-type sync-status
                                   :member-name "SyncStatus")
                                  (failed-status-details :target-type
                                   failed-status-details :member-name
                                   "FailedStatusDetails")
                                  (edge-config :target-type edge-config
                                   :member-name "EdgeConfig")
                                  (edge-agent-status :target-type
                                   edge-agent-status :member-name
                                   "EdgeAgentStatus"))
                                 (:shape-name
                                  "DescribeEdgeConfigurationOutput"))

(smithy/sdk/shapes:define-input describe-image-generation-configuration-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN"))
                                (:shape-name
                                 "DescribeImageGenerationConfigurationInput"))

(smithy/sdk/shapes:define-output describe-image-generation-configuration-output
                                 common-lisp:nil
                                 ((image-generation-configuration :target-type
                                   image-generation-configuration :member-name
                                   "ImageGenerationConfiguration"))
                                 (:shape-name
                                  "DescribeImageGenerationConfigurationOutput"))

(smithy/sdk/shapes:define-input describe-mapped-resource-configuration-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (max-results :target-type
                                  mapped-resource-configuration-list-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeMappedResourceConfigurationInput"))

(smithy/sdk/shapes:define-output describe-mapped-resource-configuration-output
                                 common-lisp:nil
                                 ((mapped-resource-configuration-list
                                   :target-type
                                   mapped-resource-configuration-list
                                   :member-name
                                   "MappedResourceConfigurationList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeMappedResourceConfigurationOutput"))

(smithy/sdk/shapes:define-input describe-media-storage-configuration-input
                                common-lisp:nil
                                ((channel-name :target-type channel-name
                                  :member-name "ChannelName")
                                 (channel-arn :target-type resource-arn
                                  :member-name "ChannelARN"))
                                (:shape-name
                                 "DescribeMediaStorageConfigurationInput"))

(smithy/sdk/shapes:define-output describe-media-storage-configuration-output
                                 common-lisp:nil
                                 ((media-storage-configuration :target-type
                                   media-storage-configuration :member-name
                                   "MediaStorageConfiguration"))
                                 (:shape-name
                                  "DescribeMediaStorageConfigurationOutput"))

(smithy/sdk/shapes:define-input describe-notification-configuration-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN"))
                                (:shape-name
                                 "DescribeNotificationConfigurationInput"))

(smithy/sdk/shapes:define-output describe-notification-configuration-output
                                 common-lisp:nil
                                 ((notification-configuration :target-type
                                   notification-configuration :member-name
                                   "NotificationConfiguration"))
                                 (:shape-name
                                  "DescribeNotificationConfigurationOutput"))

(smithy/sdk/shapes:define-input describe-signaling-channel-input
                                common-lisp:nil
                                ((channel-name :target-type channel-name
                                  :member-name "ChannelName")
                                 (channel-arn :target-type resource-arn
                                  :member-name "ChannelARN"))
                                (:shape-name "DescribeSignalingChannelInput"))

(smithy/sdk/shapes:define-output describe-signaling-channel-output
                                 common-lisp:nil
                                 ((channel-info :target-type channel-info
                                   :member-name "ChannelInfo"))
                                 (:shape-name "DescribeSignalingChannelOutput"))

(smithy/sdk/shapes:define-input describe-stream-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN"))
                                (:shape-name "DescribeStreamInput"))

(smithy/sdk/shapes:define-output describe-stream-output common-lisp:nil
                                 ((stream-info :target-type stream-info
                                   :member-name "StreamInfo"))
                                 (:shape-name "DescribeStreamOutput"))

(smithy/sdk/shapes:define-type destination-region
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error device-stream-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DeviceStreamLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure edge-agent-status common-lisp:nil
                                    ((last-recorder-status :target-type
                                      last-recorder-status :member-name
                                      "LastRecorderStatus")
                                     (last-uploader-status :target-type
                                      last-uploader-status :member-name
                                      "LastUploaderStatus"))
                                    (:shape-name "EdgeAgentStatus"))

(smithy/sdk/shapes:define-structure edge-config common-lisp:nil
                                    ((hub-device-arn :target-type
                                      hub-device-arn :required common-lisp:t
                                      :member-name "HubDeviceArn")
                                     (recorder-config :target-type
                                      recorder-config :required common-lisp:t
                                      :member-name "RecorderConfig")
                                     (uploader-config :target-type
                                      uploader-config :member-name
                                      "UploaderConfig")
                                     (deletion-config :target-type
                                      deletion-config :member-name
                                      "DeletionConfig"))
                                    (:shape-name "EdgeConfig"))

(smithy/sdk/shapes:define-type edge-retention-in-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failed-status-details
                               smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-input get-data-endpoint-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (apiname :target-type apiname :required
                                  common-lisp:t :member-name "APIName"))
                                (:shape-name "GetDataEndpointInput"))

(smithy/sdk/shapes:define-output get-data-endpoint-output common-lisp:nil
                                 ((data-endpoint :target-type data-endpoint
                                   :member-name "DataEndpoint"))
                                 (:shape-name "GetDataEndpointOutput"))

(smithy/sdk/shapes:define-input get-signaling-channel-endpoint-input
                                common-lisp:nil
                                ((channel-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ChannelARN")
                                 (single-master-channel-endpoint-configuration
                                  :target-type
                                  single-master-channel-endpoint-configuration
                                  :member-name
                                  "SingleMasterChannelEndpointConfiguration"))
                                (:shape-name
                                 "GetSignalingChannelEndpointInput"))

(smithy/sdk/shapes:define-output get-signaling-channel-endpoint-output
                                 common-lisp:nil
                                 ((resource-endpoint-list :target-type
                                   resource-endpoint-list :member-name
                                   "ResourceEndpointList"))
                                 (:shape-name
                                  "GetSignalingChannelEndpointOutput"))

(smithy/sdk/shapes:define-type height-pixels smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type hub-device-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-generation-configuration
                                    common-lisp:nil
                                    ((status :target-type configuration-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (image-selector-type :target-type
                                      image-selector-type :required
                                      common-lisp:t :member-name
                                      "ImageSelectorType")
                                     (destination-config :target-type
                                      image-generation-destination-config
                                      :required common-lisp:t :member-name
                                      "DestinationConfig")
                                     (sampling-interval :target-type
                                      sampling-interval :required common-lisp:t
                                      :member-name "SamplingInterval")
                                     (format :target-type format :required
                                      common-lisp:t :member-name "Format")
                                     (format-config :target-type format-config
                                      :member-name "FormatConfig")
                                     (width-pixels :target-type width-pixels
                                      :member-name "WidthPixels")
                                     (height-pixels :target-type height-pixels
                                      :member-name "HeightPixels"))
                                    (:shape-name
                                     "ImageGenerationConfiguration"))

(smithy/sdk/shapes:define-structure image-generation-destination-config
                                    common-lisp:nil
                                    ((uri :target-type destination-uri
                                      :required common-lisp:t :member-name
                                      "Uri")
                                     (destination-region :target-type
                                      destination-region :required
                                      common-lisp:t :member-name
                                      "DestinationRegion"))
                                    (:shape-name
                                     "ImageGenerationDestinationConfig"))

(smithy/sdk/shapes:define-enum image-selector-type
    common-lisp:nil
  (:server-timestamp "SERVER_TIMESTAMP")
  (:producer-timestamp "PRODUCER_TIMESTAMP"))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-device-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidDeviceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-format-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidResourceFormatException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type job-status-details
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure last-recorder-status common-lisp:nil
                                    ((job-status-details :target-type
                                      job-status-details :member-name
                                      "JobStatusDetails")
                                     (last-collected-time :target-type
                                      timestamp :member-name
                                      "LastCollectedTime")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (recorder-status :target-type
                                      recorder-status :member-name
                                      "RecorderStatus"))
                                    (:shape-name "LastRecorderStatus"))

(smithy/sdk/shapes:define-structure last-uploader-status common-lisp:nil
                                    ((job-status-details :target-type
                                      job-status-details :member-name
                                      "JobStatusDetails")
                                     (last-collected-time :target-type
                                      timestamp :member-name
                                      "LastCollectedTime")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (uploader-status :target-type
                                      uploader-status :member-name
                                      "UploaderStatus"))
                                    (:shape-name "LastUploaderStatus"))

(smithy/sdk/shapes:define-structure list-edge-agent-configurations-edge-config
                                    common-lisp:nil
                                    ((stream-name :target-type stream-name
                                      :member-name "StreamName")
                                     (stream-arn :target-type resource-arn
                                      :member-name "StreamARN")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (sync-status :target-type sync-status
                                      :member-name "SyncStatus")
                                     (failed-status-details :target-type
                                      failed-status-details :member-name
                                      "FailedStatusDetails")
                                     (edge-config :target-type edge-config
                                      :member-name "EdgeConfig"))
                                    (:shape-name
                                     "ListEdgeAgentConfigurationsEdgeConfig"))

(smithy/sdk/shapes:define-list list-edge-agent-configurations-edge-config-list
                               :member
                               list-edge-agent-configurations-edge-config)

(smithy/sdk/shapes:define-input list-edge-agent-configurations-input
                                common-lisp:nil
                                ((hub-device-arn :target-type hub-device-arn
                                  :required common-lisp:t :member-name
                                  "HubDeviceArn")
                                 (max-results :target-type
                                  list-edge-agent-configurations-input-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListEdgeAgentConfigurationsInput"))

(smithy/sdk/shapes:define-type list-edge-agent-configurations-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-edge-agent-configurations-output
                                 common-lisp:nil
                                 ((edge-configs :target-type
                                   list-edge-agent-configurations-edge-config-list
                                   :member-name "EdgeConfigs")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListEdgeAgentConfigurationsOutput"))

(smithy/sdk/shapes:define-list list-of-protocols :member channel-protocol)

(smithy/sdk/shapes:define-input list-signaling-channels-input common-lisp:nil
                                ((max-results :target-type
                                  list-streams-input-limit :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (channel-name-condition :target-type
                                  channel-name-condition :member-name
                                  "ChannelNameCondition"))
                                (:shape-name "ListSignalingChannelsInput"))

(smithy/sdk/shapes:define-output list-signaling-channels-output common-lisp:nil
                                 ((channel-info-list :target-type
                                   channel-info-list :member-name
                                   "ChannelInfoList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSignalingChannelsOutput"))

(smithy/sdk/shapes:define-input list-streams-input common-lisp:nil
                                ((max-results :target-type
                                  list-streams-input-limit :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (stream-name-condition :target-type
                                  stream-name-condition :member-name
                                  "StreamNameCondition"))
                                (:shape-name "ListStreamsInput"))

(smithy/sdk/shapes:define-type list-streams-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-streams-output common-lisp:nil
                                 ((stream-info-list :target-type
                                   stream-info-list :member-name
                                   "StreamInfoList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListStreamsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (tags :target-type resource-tags :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-tags-for-stream-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (stream-name :target-type stream-name
                                  :member-name "StreamName"))
                                (:shape-name "ListTagsForStreamInput"))

(smithy/sdk/shapes:define-output list-tags-for-stream-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (tags :target-type resource-tags :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForStreamOutput"))

(smithy/sdk/shapes:define-structure local-size-config common-lisp:nil
                                    ((max-local-media-size-in-mb :target-type
                                      max-local-media-size-in-mb :member-name
                                      "MaxLocalMediaSizeInMB")
                                     (strategy-on-full-size :target-type
                                      strategy-on-full-size :member-name
                                      "StrategyOnFullSize"))
                                    (:shape-name "LocalSizeConfig"))

(smithy/sdk/shapes:define-list mapped-resource-configuration-list :member
                               mapped-resource-configuration-list-item)

(smithy/sdk/shapes:define-structure mapped-resource-configuration-list-item
                                    common-lisp:nil
                                    ((type :target-type type :member-name
                                      "Type")
                                     (arn :target-type resource-arn
                                      :member-name "ARN"))
                                    (:shape-name
                                     "MappedResourceConfigurationListItem"))

(smithy/sdk/shapes:define-type mapped-resource-configuration-list-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-local-media-size-in-mb
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure media-source-config common-lisp:nil
                                    ((media-uri-secret-arn :target-type
                                      media-uri-secret-arn :required
                                      common-lisp:t :member-name
                                      "MediaUriSecretArn")
                                     (media-uri-type :target-type
                                      media-uri-type :required common-lisp:t
                                      :member-name "MediaUriType"))
                                    (:shape-name "MediaSourceConfig"))

(smithy/sdk/shapes:define-structure media-storage-configuration common-lisp:nil
                                    ((stream-arn :target-type resource-arn
                                      :member-name "StreamARN")
                                     (status :target-type
                                      media-storage-configuration-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "MediaStorageConfiguration"))

(smithy/sdk/shapes:define-enum media-storage-configuration-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type media-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type media-uri-secret-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum media-uri-type
    common-lisp:nil
  (:rtsp-uri "RTSP_URI")
  (:file-uri "FILE_URI"))

(smithy/sdk/shapes:define-type message-ttl-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-data-retention-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NoDataRetentionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error not-authorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotAuthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-structure notification-configuration common-lisp:nil
                                    ((status :target-type configuration-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (destination-config :target-type
                                      notification-destination-config :required
                                      common-lisp:t :member-name
                                      "DestinationConfig"))
                                    (:shape-name "NotificationConfiguration"))

(smithy/sdk/shapes:define-structure notification-destination-config
                                    common-lisp:nil
                                    ((uri :target-type destination-uri
                                      :required common-lisp:t :member-name
                                      "Uri"))
                                    (:shape-name
                                     "NotificationDestinationConfig"))

(smithy/sdk/shapes:define-structure recorder-config common-lisp:nil
                                    ((media-source-config :target-type
                                      media-source-config :required
                                      common-lisp:t :member-name
                                      "MediaSourceConfig")
                                     (schedule-config :target-type
                                      schedule-config :member-name
                                      "ScheduleConfig"))
                                    (:shape-name "RecorderConfig"))

(smithy/sdk/shapes:define-enum recorder-status
    common-lisp:nil
  (:success "SUCCESS")
  (:user-error "USER_ERROR")
  (:system-error "SYSTEM_ERROR"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-endpoint-list :member
                               resource-endpoint-list-item)

(smithy/sdk/shapes:define-structure resource-endpoint-list-item common-lisp:nil
                                    ((protocol :target-type channel-protocol
                                      :member-name "Protocol")
                                     (resource-endpoint :target-type
                                      resource-endpoint :member-name
                                      "ResourceEndpoint"))
                                    (:shape-name "ResourceEndpointListItem"))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-map resource-tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type sampling-interval
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure schedule-config common-lisp:nil
                                    ((schedule-expression :target-type
                                      schedule-expression :required
                                      common-lisp:t :member-name
                                      "ScheduleExpression")
                                     (duration-in-seconds :target-type
                                      duration-in-seconds :required
                                      common-lisp:t :member-name
                                      "DurationInSeconds"))
                                    (:shape-name "ScheduleConfig"))

(smithy/sdk/shapes:define-type schedule-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 single-master-channel-endpoint-configuration common-lisp:nil
 ((protocols :target-type list-of-protocols :member-name "Protocols")
  (role :target-type channel-role :member-name "Role"))
 (:shape-name "SingleMasterChannelEndpointConfiguration"))

(smithy/sdk/shapes:define-structure single-master-configuration common-lisp:nil
                                    ((message-ttl-seconds :target-type
                                      message-ttl-seconds :member-name
                                      "MessageTtlSeconds"))
                                    (:shape-name "SingleMasterConfiguration"))

(smithy/sdk/shapes:define-input start-edge-configuration-update-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (edge-config :target-type edge-config
                                  :required common-lisp:t :member-name
                                  "EdgeConfig"))
                                (:shape-name
                                 "StartEdgeConfigurationUpdateInput"))

(smithy/sdk/shapes:define-output start-edge-configuration-update-output
                                 common-lisp:nil
                                 ((stream-name :target-type stream-name
                                   :member-name "StreamName")
                                  (stream-arn :target-type resource-arn
                                   :member-name "StreamARN")
                                  (creation-time :target-type timestamp
                                   :member-name "CreationTime")
                                  (last-updated-time :target-type timestamp
                                   :member-name "LastUpdatedTime")
                                  (sync-status :target-type sync-status
                                   :member-name "SyncStatus")
                                  (failed-status-details :target-type
                                   failed-status-details :member-name
                                   "FailedStatusDetails")
                                  (edge-config :target-type edge-config
                                   :member-name "EdgeConfig"))
                                 (:shape-name
                                  "StartEdgeConfigurationUpdateOutput"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum strategy-on-full-size
    common-lisp:nil
  (:delete-oldest-media "DELETE_OLDEST_MEDIA")
  (:deny-new-media "DENY_NEW_MEDIA"))

(smithy/sdk/shapes:define-error stream-edge-configuration-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "StreamEdgeConfigurationNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure stream-info common-lisp:nil
                                    ((device-name :target-type device-name
                                      :member-name "DeviceName")
                                     (stream-name :target-type stream-name
                                      :member-name "StreamName")
                                     (stream-arn :target-type resource-arn
                                      :member-name "StreamARN")
                                     (media-type :target-type media-type
                                      :member-name "MediaType")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (version :target-type version :member-name
                                      "Version")
                                     (status :target-type status :member-name
                                      "Status")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (data-retention-in-hours :target-type
                                      data-retention-in-hours :member-name
                                      "DataRetentionInHours"))
                                    (:shape-name "StreamInfo"))

(smithy/sdk/shapes:define-list stream-info-list :member stream-info)

(smithy/sdk/shapes:define-type stream-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-name-condition common-lisp:nil
                                    ((comparison-operator :target-type
                                      comparison-operator :member-name
                                      "ComparisonOperator")
                                     (comparison-value :target-type stream-name
                                      :member-name "ComparisonValue"))
                                    (:shape-name "StreamNameCondition"))

(smithy/sdk/shapes:define-enum sync-status
    common-lisp:nil
  (:syncing "SYNCING")
  (:acknowledged "ACKNOWLEDGED")
  (:in-sync "IN_SYNC")
  (:sync-failed "SYNC_FAILED")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED")
  (:deleting-acknowledged "DELETING_ACKNOWLEDGED"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-list tag-on-create-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-input tag-stream-input common-lisp:nil
                                ((stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (tags :target-type resource-tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagStreamInput"))

(smithy/sdk/shapes:define-output tag-stream-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagStreamOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error tags-per-resource-exceeded-limit-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "TagsPerResourceExceededLimitException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tag-key-list :target-type tag-key-list
                                  :required common-lisp:t :member-name
                                  "TagKeyList"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input untag-stream-input common-lisp:nil
                                ((stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (tag-key-list :target-type tag-key-list
                                  :required common-lisp:t :member-name
                                  "TagKeyList"))
                                (:shape-name "UntagStreamInput"))

(smithy/sdk/shapes:define-output untag-stream-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagStreamOutput"))

(smithy/sdk/shapes:define-input update-data-retention-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (current-version :target-type version
                                  :required common-lisp:t :member-name
                                  "CurrentVersion")
                                 (operation :target-type
                                  update-data-retention-operation :required
                                  common-lisp:t :member-name "Operation")
                                 (data-retention-change-in-hours :target-type
                                  data-retention-change-in-hours :required
                                  common-lisp:t :member-name
                                  "DataRetentionChangeInHours"))
                                (:shape-name "UpdateDataRetentionInput"))

(smithy/sdk/shapes:define-enum update-data-retention-operation
    common-lisp:nil
  (:increase-data-retention "INCREASE_DATA_RETENTION")
  (:decrease-data-retention "DECREASE_DATA_RETENTION"))

(smithy/sdk/shapes:define-output update-data-retention-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDataRetentionOutput"))

(smithy/sdk/shapes:define-input update-image-generation-configuration-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (image-generation-configuration :target-type
                                  image-generation-configuration :member-name
                                  "ImageGenerationConfiguration"))
                                (:shape-name
                                 "UpdateImageGenerationConfigurationInput"))

(smithy/sdk/shapes:define-output update-image-generation-configuration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateImageGenerationConfigurationOutput"))

(smithy/sdk/shapes:define-input update-media-storage-configuration-input
                                common-lisp:nil
                                ((channel-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ChannelARN")
                                 (media-storage-configuration :target-type
                                  media-storage-configuration :required
                                  common-lisp:t :member-name
                                  "MediaStorageConfiguration"))
                                (:shape-name
                                 "UpdateMediaStorageConfigurationInput"))

(smithy/sdk/shapes:define-output update-media-storage-configuration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateMediaStorageConfigurationOutput"))

(smithy/sdk/shapes:define-input update-notification-configuration-input
                                common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (notification-configuration :target-type
                                  notification-configuration :member-name
                                  "NotificationConfiguration"))
                                (:shape-name
                                 "UpdateNotificationConfigurationInput"))

(smithy/sdk/shapes:define-output update-notification-configuration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateNotificationConfigurationOutput"))

(smithy/sdk/shapes:define-input update-signaling-channel-input common-lisp:nil
                                ((channel-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ChannelARN")
                                 (current-version :target-type version
                                  :required common-lisp:t :member-name
                                  "CurrentVersion")
                                 (single-master-configuration :target-type
                                  single-master-configuration :member-name
                                  "SingleMasterConfiguration"))
                                (:shape-name "UpdateSignalingChannelInput"))

(smithy/sdk/shapes:define-output update-signaling-channel-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateSignalingChannelOutput"))

(smithy/sdk/shapes:define-input update-stream-input common-lisp:nil
                                ((stream-name :target-type stream-name
                                  :member-name "StreamName")
                                 (stream-arn :target-type resource-arn
                                  :member-name "StreamARN")
                                 (current-version :target-type version
                                  :required common-lisp:t :member-name
                                  "CurrentVersion")
                                 (device-name :target-type device-name
                                  :member-name "DeviceName")
                                 (media-type :target-type media-type
                                  :member-name "MediaType"))
                                (:shape-name "UpdateStreamInput"))

(smithy/sdk/shapes:define-output update-stream-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateStreamOutput"))

(smithy/sdk/shapes:define-structure uploader-config common-lisp:nil
                                    ((schedule-config :target-type
                                      schedule-config :required common-lisp:t
                                      :member-name "ScheduleConfig"))
                                    (:shape-name "UploaderConfig"))

(smithy/sdk/shapes:define-enum uploader-status
    common-lisp:nil
  (:success "SUCCESS")
  (:user-error "USER_ERROR")
  (:system-error "SYSTEM_ERROR"))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error version-mismatch-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "VersionMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type width-pixels smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation create-signaling-channel :shape-name
                                       "CreateSignalingChannel" :input
                                       create-signaling-channel-input :output
                                       create-signaling-channel-output :errors
                                       (access-denied-exception
                                        account-channel-limit-exceeded-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        tags-per-resource-exceeded-limit-exception)
                                       :method "POST" :uri
                                       "/createSignalingChannel" :code 200)

(smithy/sdk/operation:define-operation create-stream :shape-name "CreateStream"
                                       :input create-stream-input :output
                                       create-stream-output :errors
                                       (account-stream-limit-exceeded-exception
                                        client-limit-exceeded-exception
                                        device-stream-limit-exceeded-exception
                                        invalid-argument-exception
                                        invalid-device-exception
                                        resource-in-use-exception
                                        tags-per-resource-exceeded-limit-exception)
                                       :method "POST" :uri "/createStream"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-edge-configuration :shape-name
                                       "DeleteEdgeConfiguration" :input
                                       delete-edge-configuration-input :output
                                       delete-edge-configuration-output :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception
                                        stream-edge-configuration-not-found-exception)
                                       :method "POST" :uri
                                       "/deleteEdgeConfiguration" :code 200)

(smithy/sdk/operation:define-operation delete-signaling-channel :shape-name
                                       "DeleteSignalingChannel" :input
                                       delete-signaling-channel-input :output
                                       delete-signaling-channel-output :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        version-mismatch-exception)
                                       :method "POST" :uri
                                       "/deleteSignalingChannel" :code 200)

(smithy/sdk/operation:define-operation delete-stream :shape-name "DeleteStream"
                                       :input delete-stream-input :output
                                       delete-stream-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        not-authorized-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        version-mismatch-exception)
                                       :method "POST" :uri "/deleteStream"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-edge-configuration :shape-name
                                       "DescribeEdgeConfiguration" :input
                                       describe-edge-configuration-input
                                       :output
                                       describe-edge-configuration-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception
                                        stream-edge-configuration-not-found-exception)
                                       :method "POST" :uri
                                       "/describeEdgeConfiguration" :code 200)

(smithy/sdk/operation:define-operation describe-image-generation-configuration
                                       :shape-name
                                       "DescribeImageGenerationConfiguration"
                                       :input
                                       describe-image-generation-configuration-input
                                       :output
                                       describe-image-generation-configuration-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/describeImageGenerationConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-mapped-resource-configuration
                                       :shape-name
                                       "DescribeMappedResourceConfiguration"
                                       :input
                                       describe-mapped-resource-configuration-input
                                       :output
                                       describe-mapped-resource-configuration-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/describeMappedResourceConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-media-storage-configuration
                                       :shape-name
                                       "DescribeMediaStorageConfiguration"
                                       :input
                                       describe-media-storage-configuration-input
                                       :output
                                       describe-media-storage-configuration-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/describeMediaStorageConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-notification-configuration
                                       :shape-name
                                       "DescribeNotificationConfiguration"
                                       :input
                                       describe-notification-configuration-input
                                       :output
                                       describe-notification-configuration-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/describeNotificationConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-signaling-channel :shape-name
                                       "DescribeSignalingChannel" :input
                                       describe-signaling-channel-input :output
                                       describe-signaling-channel-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/describeSignalingChannel" :code 200)

(smithy/sdk/operation:define-operation describe-stream :shape-name
                                       "DescribeStream" :input
                                       describe-stream-input :output
                                       describe-stream-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/describeStream"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-endpoint :shape-name
                                       "GetDataEndpoint" :input
                                       get-data-endpoint-input :output
                                       get-data-endpoint-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/getDataEndpoint"
                                       :code 200)

(smithy/sdk/operation:define-operation get-signaling-channel-endpoint
                                       :shape-name
                                       "GetSignalingChannelEndpoint" :input
                                       get-signaling-channel-endpoint-input
                                       :output
                                       get-signaling-channel-endpoint-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/getSignalingChannelEndpoint" :code 200)

(smithy/sdk/operation:define-operation list-edge-agent-configurations
                                       :shape-name
                                       "ListEdgeAgentConfigurations" :input
                                       list-edge-agent-configurations-input
                                       :output
                                       list-edge-agent-configurations-output
                                       :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        not-authorized-exception)
                                       :method "POST" :uri
                                       "/listEdgeAgentConfigurations" :code 200)

(smithy/sdk/operation:define-operation list-signaling-channels :shape-name
                                       "ListSignalingChannels" :input
                                       list-signaling-channels-input :output
                                       list-signaling-channels-output :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception)
                                       :method "POST" :uri
                                       "/listSignalingChannels" :code 200)

(smithy/sdk/operation:define-operation list-streams :shape-name "ListStreams"
                                       :input list-streams-input :output
                                       list-streams-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception)
                                       :method "POST" :uri "/listStreams" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/ListTagsForResource" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-stream :shape-name
                                       "ListTagsForStream" :input
                                       list-tags-for-stream-input :output
                                       list-tags-for-stream-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        invalid-resource-format-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/listTagsForStream"
                                       :code 200)

(smithy/sdk/operation:define-operation start-edge-configuration-update
                                       :shape-name
                                       "StartEdgeConfigurationUpdate" :input
                                       start-edge-configuration-update-input
                                       :output
                                       start-edge-configuration-update-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        no-data-retention-exception
                                        resource-in-use-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/startEdgeConfigurationUpdate" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception
                                        tags-per-resource-exceeded-limit-exception)
                                       :method "POST" :uri "/TagResource" :code
                                       200)

(smithy/sdk/operation:define-operation tag-stream :shape-name "TagStream"
                                       :input tag-stream-input :output
                                       tag-stream-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        invalid-resource-format-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        tags-per-resource-exceeded-limit-exception)
                                       :method "POST" :uri "/tagStream" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/UntagResource"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-stream :shape-name "UntagStream"
                                       :input untag-stream-input :output
                                       untag-stream-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        invalid-resource-format-exception
                                        not-authorized-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/untagStream" :code
                                       200)

(smithy/sdk/operation:define-operation update-data-retention :shape-name
                                       "UpdateDataRetention" :input
                                       update-data-retention-input :output
                                       update-data-retention-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        not-authorized-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        version-mismatch-exception)
                                       :method "POST" :uri
                                       "/updateDataRetention" :code 200)

(smithy/sdk/operation:define-operation update-image-generation-configuration
                                       :shape-name
                                       "UpdateImageGenerationConfiguration"
                                       :input
                                       update-image-generation-configuration-input
                                       :output
                                       update-image-generation-configuration-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        no-data-retention-exception
                                        resource-in-use-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/updateImageGenerationConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation update-media-storage-configuration
                                       :shape-name
                                       "UpdateMediaStorageConfiguration" :input
                                       update-media-storage-configuration-input
                                       :output
                                       update-media-storage-configuration-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        no-data-retention-exception
                                        resource-in-use-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/updateMediaStorageConfiguration" :code
                                       200)

(smithy/sdk/operation:define-operation update-notification-configuration
                                       :shape-name
                                       "UpdateNotificationConfiguration" :input
                                       update-notification-configuration-input
                                       :output
                                       update-notification-configuration-output
                                       :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        no-data-retention-exception
                                        resource-in-use-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/updateNotificationConfiguration" :code
                                       200)

(smithy/sdk/operation:define-operation update-signaling-channel :shape-name
                                       "UpdateSignalingChannel" :input
                                       update-signaling-channel-input :output
                                       update-signaling-channel-output :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        version-mismatch-exception)
                                       :method "POST" :uri
                                       "/updateSignalingChannel" :code 200)

(smithy/sdk/operation:define-operation update-stream :shape-name "UpdateStream"
                                       :input update-stream-input :output
                                       update-stream-output :errors
                                       (client-limit-exceeded-exception
                                        invalid-argument-exception
                                        not-authorized-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        version-mismatch-exception)
                                       :method "POST" :uri "/updateStream"
                                       :code 200)
