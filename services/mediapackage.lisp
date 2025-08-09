(uiop/package:define-package #:pira/mediapackage (:use)
                             (:export #:ad-markers #:ad-triggers
                              #:ads-on-delivery-restrictions #:authorization
                              #:channel #:cmaf-encryption
                              #:cmaf-encryption-method #:cmaf-package
                              #:cmaf-package-create-or-update-parameters
                              #:configure-logs #:create-channel
                              #:create-harvest-job #:create-origin-endpoint
                              #:dash-encryption #:dash-package #:delete-channel
                              #:delete-origin-endpoint #:describe-channel
                              #:describe-harvest-job #:describe-origin-endpoint
                              #:egress-access-logs
                              #:encryption-contract-configuration
                              #:encryption-method #:harvest-job
                              #:hls-encryption #:hls-ingest #:hls-manifest
                              #:hls-manifest-create-or-update-parameters
                              #:hls-package #:ingest-endpoint
                              #:ingress-access-logs #:list-channels
                              #:list-harvest-jobs #:list-origin-endpoints
                              #:list-tags-for-resource #:manifest-layout
                              #:max-results #:media-package #:mss-encryption
                              #:mss-package #:origin-endpoint #:origination
                              #:playlist-type #:preset-speke20audio
                              #:preset-speke20video #:profile
                              #:rotate-channel-credentials
                              #:rotate-ingest-endpoint-credentials
                              #:s3destination #:segment-template-format
                              #:sensitive-string #:speke-key-provider #:status
                              #:stream-order #:stream-selection #:tag-resource
                              #:tags #:untag-resource #:update-channel
                              #:update-origin-endpoint #:utc-timing
                              #:ad-triggers-element #:period-triggers-element
                              #:boolean #:integer #:list-of-channel
                              #:list-of-harvest-job #:list-of-hls-manifest
                              #:list-of-hls-manifest-create-or-update-parameters
                              #:list-of-ingest-endpoint
                              #:list-of-origin-endpoint
                              #:list-of-period-triggers-element
                              #:list-of-string #:map-of-string #:string))
(common-lisp:in-package #:pira/mediapackage)

(smithy/sdk/service:define-service media-package :shape-name "MediaPackage"
                                   :version "2017-10-12" :title
                                   "AWS Elemental MediaPackage" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MediaPackage")
                                      ("arnNamespace" . "mediapackage")
                                      ("cloudFormationName" . "MediaPackage")
                                      ("cloudTrailEventSource"
                                       . "mediapackage.amazonaws.com")
                                      ("endpointPrefix" . "mediapackage"))
                                     ("aws.auth#sigv4"
                                      ("name" . "mediapackage"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum ad-markers
    common-lisp:nil
  (:none "NONE")
  (:scte35-enhanced "SCTE35_ENHANCED")
  (:passthrough "PASSTHROUGH")
  (:daterange "DATERANGE"))

(smithy/sdk/shapes:define-list ad-triggers :member ad-triggers-element)

(smithy/sdk/shapes:define-enum ads-on-delivery-restrictions
    common-lisp:nil
  (:none "NONE")
  (:restricted "RESTRICTED")
  (:unrestricted "UNRESTRICTED")
  (:both "BOTH"))

(smithy/sdk/shapes:define-structure authorization common-lisp:nil
                                    ((cdn-identifier-secret :target-type string
                                      :required common-lisp:t :member-name
                                      "CdnIdentifierSecret" :json-name
                                      "cdnIdentifierSecret")
                                     (secrets-role-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "SecretsRoleArn" :json-name
                                      "secretsRoleArn"))
                                    (:shape-name "Authorization"))

(smithy/sdk/shapes:define-structure channel common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (created-at :target-type string
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (egress-access-logs :target-type
                                      egress-access-logs :member-name
                                      "EgressAccessLogs" :json-name
                                      "egressAccessLogs")
                                     (hls-ingest :target-type hls-ingest
                                      :member-name "HlsIngest" :json-name
                                      "hlsIngest")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (ingress-access-logs :target-type
                                      ingress-access-logs :member-name
                                      "IngressAccessLogs" :json-name
                                      "ingressAccessLogs")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "Channel"))

(smithy/sdk/shapes:define-structure cmaf-encryption common-lisp:nil
                                    ((constant-initialization-vector
                                      :target-type string :member-name
                                      "ConstantInitializationVector" :json-name
                                      "constantInitializationVector")
                                     (encryption-method :target-type
                                      cmaf-encryption-method :member-name
                                      "EncryptionMethod" :json-name
                                      "encryptionMethod")
                                     (key-rotation-interval-seconds
                                      :target-type integer :member-name
                                      "KeyRotationIntervalSeconds" :json-name
                                      "keyRotationIntervalSeconds")
                                     (speke-key-provider :target-type
                                      speke-key-provider :required
                                      common-lisp:t :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "CmafEncryption"))

(smithy/sdk/shapes:define-enum cmaf-encryption-method
    common-lisp:nil
  (:sample-aes "SAMPLE_AES")
  (:aes-ctr "AES_CTR"))

(smithy/sdk/shapes:define-structure cmaf-package common-lisp:nil
                                    ((encryption :target-type cmaf-encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (hls-manifests :target-type
                                      list-of-hls-manifest :member-name
                                      "HlsManifests" :json-name "hlsManifests")
                                     (segment-duration-seconds :target-type
                                      integer :member-name
                                      "SegmentDurationSeconds" :json-name
                                      "segmentDurationSeconds")
                                     (segment-prefix :target-type string
                                      :member-name "SegmentPrefix" :json-name
                                      "segmentPrefix")
                                     (stream-selection :target-type
                                      stream-selection :member-name
                                      "StreamSelection" :json-name
                                      "streamSelection"))
                                    (:shape-name "CmafPackage"))

(smithy/sdk/shapes:define-structure cmaf-package-create-or-update-parameters
                                    common-lisp:nil
                                    ((encryption :target-type cmaf-encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (hls-manifests :target-type
                                      list-of-hls-manifest-create-or-update-parameters
                                      :member-name "HlsManifests" :json-name
                                      "hlsManifests")
                                     (segment-duration-seconds :target-type
                                      integer :member-name
                                      "SegmentDurationSeconds" :json-name
                                      "segmentDurationSeconds")
                                     (segment-prefix :target-type string
                                      :member-name "SegmentPrefix" :json-name
                                      "segmentPrefix")
                                     (stream-selection :target-type
                                      stream-selection :member-name
                                      "StreamSelection" :json-name
                                      "streamSelection"))
                                    (:shape-name
                                     "CmafPackageCreateOrUpdateParameters"))

(smithy/sdk/shapes:define-input configure-logs-request common-lisp:nil
                                ((egress-access-logs :target-type
                                  egress-access-logs :member-name
                                  "EgressAccessLogs" :json-name
                                  "egressAccessLogs")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (ingress-access-logs :target-type
                                  ingress-access-logs :member-name
                                  "IngressAccessLogs" :json-name
                                  "ingressAccessLogs"))
                                (:shape-name "ConfigureLogsRequest"))

(smithy/sdk/shapes:define-output configure-logs-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (hls-ingest :target-type hls-ingest
                                   :member-name "HlsIngest" :json-name
                                   "hlsIngest")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ingress-access-logs :target-type
                                   ingress-access-logs :member-name
                                   "IngressAccessLogs" :json-name
                                   "ingressAccessLogs")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "ConfigureLogsResponse"))

(smithy/sdk/shapes:define-input create-channel-request common-lisp:nil
                                ((description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :json-name
                                  "id")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateChannelRequest"))

(smithy/sdk/shapes:define-output create-channel-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (hls-ingest :target-type hls-ingest
                                   :member-name "HlsIngest" :json-name
                                   "hlsIngest")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ingress-access-logs :target-type
                                   ingress-access-logs :member-name
                                   "IngressAccessLogs" :json-name
                                   "ingressAccessLogs")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateChannelResponse"))

(smithy/sdk/shapes:define-input create-harvest-job-request common-lisp:nil
                                ((end-time :target-type string :required
                                  common-lisp:t :member-name "EndTime"
                                  :json-name "endTime")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :json-name
                                  "id")
                                 (origin-endpoint-id :target-type string
                                  :required common-lisp:t :member-name
                                  "OriginEndpointId" :json-name
                                  "originEndpointId")
                                 (s3destination :target-type s3destination
                                  :required common-lisp:t :member-name
                                  "S3Destination" :json-name "s3Destination")
                                 (start-time :target-type string :required
                                  common-lisp:t :member-name "StartTime"
                                  :json-name "startTime"))
                                (:shape-name "CreateHarvestJobRequest"))

(smithy/sdk/shapes:define-output create-harvest-job-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-id :target-type string :member-name
                                   "ChannelId" :json-name "channelId")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (end-time :target-type string :member-name
                                   "EndTime" :json-name "endTime")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (origin-endpoint-id :target-type string
                                   :member-name "OriginEndpointId" :json-name
                                   "originEndpointId")
                                  (s3destination :target-type s3destination
                                   :member-name "S3Destination" :json-name
                                   "s3Destination")
                                  (start-time :target-type string :member-name
                                   "StartTime" :json-name "startTime")
                                  (status :target-type status :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "CreateHarvestJobResponse"))

(smithy/sdk/shapes:define-input create-origin-endpoint-request common-lisp:nil
                                ((authorization :target-type authorization
                                  :member-name "Authorization" :json-name
                                  "authorization")
                                 (channel-id :target-type string :required
                                  common-lisp:t :member-name "ChannelId"
                                  :json-name "channelId")
                                 (cmaf-package :target-type
                                  cmaf-package-create-or-update-parameters
                                  :member-name "CmafPackage" :json-name
                                  "cmafPackage")
                                 (dash-package :target-type dash-package
                                  :member-name "DashPackage" :json-name
                                  "dashPackage")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (hls-package :target-type hls-package
                                  :member-name "HlsPackage" :json-name
                                  "hlsPackage")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :json-name
                                  "id")
                                 (manifest-name :target-type string
                                  :member-name "ManifestName" :json-name
                                  "manifestName")
                                 (mss-package :target-type mss-package
                                  :member-name "MssPackage" :json-name
                                  "mssPackage")
                                 (origination :target-type origination
                                  :member-name "Origination" :json-name
                                  "origination")
                                 (startover-window-seconds :target-type integer
                                  :member-name "StartoverWindowSeconds"
                                  :json-name "startoverWindowSeconds")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags")
                                 (time-delay-seconds :target-type integer
                                  :member-name "TimeDelaySeconds" :json-name
                                  "timeDelaySeconds")
                                 (whitelist :target-type list-of-string
                                  :member-name "Whitelist" :json-name
                                  "whitelist"))
                                (:shape-name "CreateOriginEndpointRequest"))

(smithy/sdk/shapes:define-output create-origin-endpoint-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (authorization :target-type authorization
                                   :member-name "Authorization" :json-name
                                   "authorization")
                                  (channel-id :target-type string :member-name
                                   "ChannelId" :json-name "channelId")
                                  (cmaf-package :target-type cmaf-package
                                   :member-name "CmafPackage" :json-name
                                   "cmafPackage")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (dash-package :target-type dash-package
                                   :member-name "DashPackage" :json-name
                                   "dashPackage")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (hls-package :target-type hls-package
                                   :member-name "HlsPackage" :json-name
                                   "hlsPackage")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (manifest-name :target-type string
                                   :member-name "ManifestName" :json-name
                                   "manifestName")
                                  (mss-package :target-type mss-package
                                   :member-name "MssPackage" :json-name
                                   "mssPackage")
                                  (origination :target-type origination
                                   :member-name "Origination" :json-name
                                   "origination")
                                  (startover-window-seconds :target-type
                                   integer :member-name
                                   "StartoverWindowSeconds" :json-name
                                   "startoverWindowSeconds")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (time-delay-seconds :target-type integer
                                   :member-name "TimeDelaySeconds" :json-name
                                   "timeDelaySeconds")
                                  (url :target-type string :member-name "Url"
                                   :json-name "url")
                                  (whitelist :target-type list-of-string
                                   :member-name "Whitelist" :json-name
                                   "whitelist"))
                                 (:shape-name "CreateOriginEndpointResponse"))

(smithy/sdk/shapes:define-structure dash-encryption common-lisp:nil
                                    ((key-rotation-interval-seconds
                                      :target-type integer :member-name
                                      "KeyRotationIntervalSeconds" :json-name
                                      "keyRotationIntervalSeconds")
                                     (speke-key-provider :target-type
                                      speke-key-provider :required
                                      common-lisp:t :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "DashEncryption"))

(smithy/sdk/shapes:define-structure dash-package common-lisp:nil
                                    ((ad-triggers :target-type ad-triggers
                                      :member-name "AdTriggers" :json-name
                                      "adTriggers")
                                     (ads-on-delivery-restrictions :target-type
                                      ads-on-delivery-restrictions :member-name
                                      "AdsOnDeliveryRestrictions" :json-name
                                      "adsOnDeliveryRestrictions")
                                     (encryption :target-type dash-encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (include-iframe-only-stream :target-type
                                      boolean :member-name
                                      "IncludeIframeOnlyStream" :json-name
                                      "includeIframeOnlyStream")
                                     (manifest-layout :target-type
                                      manifest-layout :member-name
                                      "ManifestLayout" :json-name
                                      "manifestLayout")
                                     (manifest-window-seconds :target-type
                                      integer :member-name
                                      "ManifestWindowSeconds" :json-name
                                      "manifestWindowSeconds")
                                     (min-buffer-time-seconds :target-type
                                      integer :member-name
                                      "MinBufferTimeSeconds" :json-name
                                      "minBufferTimeSeconds")
                                     (min-update-period-seconds :target-type
                                      integer :member-name
                                      "MinUpdatePeriodSeconds" :json-name
                                      "minUpdatePeriodSeconds")
                                     (period-triggers :target-type
                                      list-of-period-triggers-element
                                      :member-name "PeriodTriggers" :json-name
                                      "periodTriggers")
                                     (profile :target-type profile :member-name
                                      "Profile" :json-name "profile")
                                     (segment-duration-seconds :target-type
                                      integer :member-name
                                      "SegmentDurationSeconds" :json-name
                                      "segmentDurationSeconds")
                                     (segment-template-format :target-type
                                      segment-template-format :member-name
                                      "SegmentTemplateFormat" :json-name
                                      "segmentTemplateFormat")
                                     (stream-selection :target-type
                                      stream-selection :member-name
                                      "StreamSelection" :json-name
                                      "streamSelection")
                                     (suggested-presentation-delay-seconds
                                      :target-type integer :member-name
                                      "SuggestedPresentationDelaySeconds"
                                      :json-name
                                      "suggestedPresentationDelaySeconds")
                                     (utc-timing :target-type utc-timing
                                      :member-name "UtcTiming" :json-name
                                      "utcTiming")
                                     (utc-timing-uri :target-type string
                                      :member-name "UtcTimingUri" :json-name
                                      "utcTimingUri"))
                                    (:shape-name "DashPackage"))

(smithy/sdk/shapes:define-input delete-channel-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteChannelRequest"))

(smithy/sdk/shapes:define-output delete-channel-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteChannelResponse"))

(smithy/sdk/shapes:define-input delete-origin-endpoint-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteOriginEndpointRequest"))

(smithy/sdk/shapes:define-output delete-origin-endpoint-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteOriginEndpointResponse"))

(smithy/sdk/shapes:define-input describe-channel-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeChannelRequest"))

(smithy/sdk/shapes:define-output describe-channel-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (hls-ingest :target-type hls-ingest
                                   :member-name "HlsIngest" :json-name
                                   "hlsIngest")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ingress-access-logs :target-type
                                   ingress-access-logs :member-name
                                   "IngressAccessLogs" :json-name
                                   "ingressAccessLogs")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "DescribeChannelResponse"))

(smithy/sdk/shapes:define-input describe-harvest-job-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeHarvestJobRequest"))

(smithy/sdk/shapes:define-output describe-harvest-job-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (channel-id :target-type string :member-name
                                   "ChannelId" :json-name "channelId")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (end-time :target-type string :member-name
                                   "EndTime" :json-name "endTime")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (origin-endpoint-id :target-type string
                                   :member-name "OriginEndpointId" :json-name
                                   "originEndpointId")
                                  (s3destination :target-type s3destination
                                   :member-name "S3Destination" :json-name
                                   "s3Destination")
                                  (start-time :target-type string :member-name
                                   "StartTime" :json-name "startTime")
                                  (status :target-type status :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "DescribeHarvestJobResponse"))

(smithy/sdk/shapes:define-input describe-origin-endpoint-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeOriginEndpointRequest"))

(smithy/sdk/shapes:define-output describe-origin-endpoint-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (authorization :target-type authorization
                                   :member-name "Authorization" :json-name
                                   "authorization")
                                  (channel-id :target-type string :member-name
                                   "ChannelId" :json-name "channelId")
                                  (cmaf-package :target-type cmaf-package
                                   :member-name "CmafPackage" :json-name
                                   "cmafPackage")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (dash-package :target-type dash-package
                                   :member-name "DashPackage" :json-name
                                   "dashPackage")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (hls-package :target-type hls-package
                                   :member-name "HlsPackage" :json-name
                                   "hlsPackage")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (manifest-name :target-type string
                                   :member-name "ManifestName" :json-name
                                   "manifestName")
                                  (mss-package :target-type mss-package
                                   :member-name "MssPackage" :json-name
                                   "mssPackage")
                                  (origination :target-type origination
                                   :member-name "Origination" :json-name
                                   "origination")
                                  (startover-window-seconds :target-type
                                   integer :member-name
                                   "StartoverWindowSeconds" :json-name
                                   "startoverWindowSeconds")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (time-delay-seconds :target-type integer
                                   :member-name "TimeDelaySeconds" :json-name
                                   "timeDelaySeconds")
                                  (url :target-type string :member-name "Url"
                                   :json-name "url")
                                  (whitelist :target-type list-of-string
                                   :member-name "Whitelist" :json-name
                                   "whitelist"))
                                 (:shape-name "DescribeOriginEndpointResponse"))

(smithy/sdk/shapes:define-structure egress-access-logs common-lisp:nil
                                    ((log-group-name :target-type string
                                      :member-name "LogGroupName" :json-name
                                      "logGroupName"))
                                    (:shape-name "EgressAccessLogs"))

(smithy/sdk/shapes:define-structure encryption-contract-configuration
                                    common-lisp:nil
                                    ((preset-speke20audio :target-type
                                      preset-speke20audio :required
                                      common-lisp:t :member-name
                                      "PresetSpeke20Audio" :json-name
                                      "presetSpeke20Audio")
                                     (preset-speke20video :target-type
                                      preset-speke20video :required
                                      common-lisp:t :member-name
                                      "PresetSpeke20Video" :json-name
                                      "presetSpeke20Video"))
                                    (:shape-name
                                     "EncryptionContractConfiguration"))

(smithy/sdk/shapes:define-enum encryption-method
    common-lisp:nil
  (:aes-128 "AES_128")
  (:sample-aes "SAMPLE_AES"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure harvest-job common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (channel-id :target-type string
                                      :member-name "ChannelId" :json-name
                                      "channelId")
                                     (created-at :target-type string
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (end-time :target-type string :member-name
                                      "EndTime" :json-name "endTime")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (origin-endpoint-id :target-type string
                                      :member-name "OriginEndpointId"
                                      :json-name "originEndpointId")
                                     (s3destination :target-type s3destination
                                      :member-name "S3Destination" :json-name
                                      "s3Destination")
                                     (start-time :target-type string
                                      :member-name "StartTime" :json-name
                                      "startTime")
                                     (status :target-type status :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name "HarvestJob"))

(smithy/sdk/shapes:define-structure hls-encryption common-lisp:nil
                                    ((constant-initialization-vector
                                      :target-type string :member-name
                                      "ConstantInitializationVector" :json-name
                                      "constantInitializationVector")
                                     (encryption-method :target-type
                                      encryption-method :member-name
                                      "EncryptionMethod" :json-name
                                      "encryptionMethod")
                                     (key-rotation-interval-seconds
                                      :target-type integer :member-name
                                      "KeyRotationIntervalSeconds" :json-name
                                      "keyRotationIntervalSeconds")
                                     (repeat-ext-xkey :target-type boolean
                                      :member-name "RepeatExtXKey" :json-name
                                      "repeatExtXKey")
                                     (speke-key-provider :target-type
                                      speke-key-provider :required
                                      common-lisp:t :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "HlsEncryption"))

(smithy/sdk/shapes:define-structure hls-ingest common-lisp:nil
                                    ((ingest-endpoints :target-type
                                      list-of-ingest-endpoint :member-name
                                      "IngestEndpoints" :json-name
                                      "ingestEndpoints"))
                                    (:shape-name "HlsIngest"))

(smithy/sdk/shapes:define-structure hls-manifest common-lisp:nil
                                    ((ad-markers :target-type ad-markers
                                      :member-name "AdMarkers" :json-name
                                      "adMarkers")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (include-iframe-only-stream :target-type
                                      boolean :member-name
                                      "IncludeIframeOnlyStream" :json-name
                                      "includeIframeOnlyStream")
                                     (manifest-name :target-type string
                                      :member-name "ManifestName" :json-name
                                      "manifestName")
                                     (playlist-type :target-type playlist-type
                                      :member-name "PlaylistType" :json-name
                                      "playlistType")
                                     (playlist-window-seconds :target-type
                                      integer :member-name
                                      "PlaylistWindowSeconds" :json-name
                                      "playlistWindowSeconds")
                                     (program-date-time-interval-seconds
                                      :target-type integer :member-name
                                      "ProgramDateTimeIntervalSeconds"
                                      :json-name
                                      "programDateTimeIntervalSeconds")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url")
                                     (ad-triggers :target-type ad-triggers
                                      :member-name "AdTriggers" :json-name
                                      "adTriggers")
                                     (ads-on-delivery-restrictions :target-type
                                      ads-on-delivery-restrictions :member-name
                                      "AdsOnDeliveryRestrictions" :json-name
                                      "adsOnDeliveryRestrictions"))
                                    (:shape-name "HlsManifest"))

(smithy/sdk/shapes:define-structure hls-manifest-create-or-update-parameters
                                    common-lisp:nil
                                    ((ad-markers :target-type ad-markers
                                      :member-name "AdMarkers" :json-name
                                      "adMarkers")
                                     (ad-triggers :target-type ad-triggers
                                      :member-name "AdTriggers" :json-name
                                      "adTriggers")
                                     (ads-on-delivery-restrictions :target-type
                                      ads-on-delivery-restrictions :member-name
                                      "AdsOnDeliveryRestrictions" :json-name
                                      "adsOnDeliveryRestrictions")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (include-iframe-only-stream :target-type
                                      boolean :member-name
                                      "IncludeIframeOnlyStream" :json-name
                                      "includeIframeOnlyStream")
                                     (manifest-name :target-type string
                                      :member-name "ManifestName" :json-name
                                      "manifestName")
                                     (playlist-type :target-type playlist-type
                                      :member-name "PlaylistType" :json-name
                                      "playlistType")
                                     (playlist-window-seconds :target-type
                                      integer :member-name
                                      "PlaylistWindowSeconds" :json-name
                                      "playlistWindowSeconds")
                                     (program-date-time-interval-seconds
                                      :target-type integer :member-name
                                      "ProgramDateTimeIntervalSeconds"
                                      :json-name
                                      "programDateTimeIntervalSeconds"))
                                    (:shape-name
                                     "HlsManifestCreateOrUpdateParameters"))

(smithy/sdk/shapes:define-structure hls-package common-lisp:nil
                                    ((ad-markers :target-type ad-markers
                                      :member-name "AdMarkers" :json-name
                                      "adMarkers")
                                     (ad-triggers :target-type ad-triggers
                                      :member-name "AdTriggers" :json-name
                                      "adTriggers")
                                     (ads-on-delivery-restrictions :target-type
                                      ads-on-delivery-restrictions :member-name
                                      "AdsOnDeliveryRestrictions" :json-name
                                      "adsOnDeliveryRestrictions")
                                     (encryption :target-type hls-encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (include-dvb-subtitles :target-type
                                      boolean :member-name
                                      "IncludeDvbSubtitles" :json-name
                                      "includeDvbSubtitles")
                                     (include-iframe-only-stream :target-type
                                      boolean :member-name
                                      "IncludeIframeOnlyStream" :json-name
                                      "includeIframeOnlyStream")
                                     (playlist-type :target-type playlist-type
                                      :member-name "PlaylistType" :json-name
                                      "playlistType")
                                     (playlist-window-seconds :target-type
                                      integer :member-name
                                      "PlaylistWindowSeconds" :json-name
                                      "playlistWindowSeconds")
                                     (program-date-time-interval-seconds
                                      :target-type integer :member-name
                                      "ProgramDateTimeIntervalSeconds"
                                      :json-name
                                      "programDateTimeIntervalSeconds")
                                     (segment-duration-seconds :target-type
                                      integer :member-name
                                      "SegmentDurationSeconds" :json-name
                                      "segmentDurationSeconds")
                                     (stream-selection :target-type
                                      stream-selection :member-name
                                      "StreamSelection" :json-name
                                      "streamSelection")
                                     (use-audio-rendition-group :target-type
                                      boolean :member-name
                                      "UseAudioRenditionGroup" :json-name
                                      "useAudioRenditionGroup"))
                                    (:shape-name "HlsPackage"))

(smithy/sdk/shapes:define-structure ingest-endpoint common-lisp:nil
                                    ((id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (password :target-type sensitive-string
                                      :member-name "Password" :json-name
                                      "password")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url")
                                     (username :target-type sensitive-string
                                      :member-name "Username" :json-name
                                      "username"))
                                    (:shape-name "IngestEndpoint"))

(smithy/sdk/shapes:define-structure ingress-access-logs common-lisp:nil
                                    ((log-group-name :target-type string
                                      :member-name "LogGroupName" :json-name
                                      "logGroupName"))
                                    (:shape-name "IngressAccessLogs"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-channels-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListChannelsRequest"))

(smithy/sdk/shapes:define-output list-channels-response common-lisp:nil
                                 ((channels :target-type list-of-channel
                                   :member-name "Channels" :json-name
                                   "channels")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListChannelsResponse"))

(smithy/sdk/shapes:define-input list-harvest-jobs-request common-lisp:nil
                                ((include-channel-id :target-type string
                                  :member-name "IncludeChannelId" :http-query
                                  "includeChannelId")
                                 (include-status :target-type string
                                  :member-name "IncludeStatus" :http-query
                                  "includeStatus")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListHarvestJobsRequest"))

(smithy/sdk/shapes:define-output list-harvest-jobs-response common-lisp:nil
                                 ((harvest-jobs :target-type
                                   list-of-harvest-job :member-name
                                   "HarvestJobs" :json-name "harvestJobs")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListHarvestJobsResponse"))

(smithy/sdk/shapes:define-input list-origin-endpoints-request common-lisp:nil
                                ((channel-id :target-type string :member-name
                                  "ChannelId" :http-query "channelId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListOriginEndpointsRequest"))

(smithy/sdk/shapes:define-output list-origin-endpoints-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (origin-endpoints :target-type
                                   list-of-origin-endpoint :member-name
                                   "OriginEndpoints" :json-name
                                   "originEndpoints"))
                                 (:shape-name "ListOriginEndpointsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type map-of-string :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum manifest-layout
    common-lisp:nil
  (:full "FULL")
  (:compact "COMPACT")
  (:drm-top-level-compact "DRM_TOP_LEVEL_COMPACT"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure mss-encryption common-lisp:nil
                                    ((speke-key-provider :target-type
                                      speke-key-provider :required
                                      common-lisp:t :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "MssEncryption"))

(smithy/sdk/shapes:define-structure mss-package common-lisp:nil
                                    ((encryption :target-type mss-encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (manifest-window-seconds :target-type
                                      integer :member-name
                                      "ManifestWindowSeconds" :json-name
                                      "manifestWindowSeconds")
                                     (segment-duration-seconds :target-type
                                      integer :member-name
                                      "SegmentDurationSeconds" :json-name
                                      "segmentDurationSeconds")
                                     (stream-selection :target-type
                                      stream-selection :member-name
                                      "StreamSelection" :json-name
                                      "streamSelection"))
                                    (:shape-name "MssPackage"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure origin-endpoint common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (authorization :target-type authorization
                                      :member-name "Authorization" :json-name
                                      "authorization")
                                     (channel-id :target-type string
                                      :member-name "ChannelId" :json-name
                                      "channelId")
                                     (cmaf-package :target-type cmaf-package
                                      :member-name "CmafPackage" :json-name
                                      "cmafPackage")
                                     (created-at :target-type string
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (dash-package :target-type dash-package
                                      :member-name "DashPackage" :json-name
                                      "dashPackage")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (hls-package :target-type hls-package
                                      :member-name "HlsPackage" :json-name
                                      "hlsPackage")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (manifest-name :target-type string
                                      :member-name "ManifestName" :json-name
                                      "manifestName")
                                     (mss-package :target-type mss-package
                                      :member-name "MssPackage" :json-name
                                      "mssPackage")
                                     (origination :target-type origination
                                      :member-name "Origination" :json-name
                                      "origination")
                                     (startover-window-seconds :target-type
                                      integer :member-name
                                      "StartoverWindowSeconds" :json-name
                                      "startoverWindowSeconds")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (time-delay-seconds :target-type integer
                                      :member-name "TimeDelaySeconds"
                                      :json-name "timeDelaySeconds")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url")
                                     (whitelist :target-type list-of-string
                                      :member-name "Whitelist" :json-name
                                      "whitelist"))
                                    (:shape-name "OriginEndpoint"))

(smithy/sdk/shapes:define-enum origination
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-enum playlist-type
    common-lisp:nil
  (:none "NONE")
  (:event "EVENT")
  (:vod "VOD"))

(smithy/sdk/shapes:define-enum preset-speke20audio
    common-lisp:nil
  (:preset-audio-1 "PRESET-AUDIO-1")
  (:preset-audio-2 "PRESET-AUDIO-2")
  (:preset-audio-3 "PRESET-AUDIO-3")
  (:shared "SHARED")
  (:unencrypted "UNENCRYPTED"))

(smithy/sdk/shapes:define-enum preset-speke20video
    common-lisp:nil
  (:preset-video-1 "PRESET-VIDEO-1")
  (:preset-video-2 "PRESET-VIDEO-2")
  (:preset-video-3 "PRESET-VIDEO-3")
  (:preset-video-4 "PRESET-VIDEO-4")
  (:preset-video-5 "PRESET-VIDEO-5")
  (:preset-video-6 "PRESET-VIDEO-6")
  (:preset-video-7 "PRESET-VIDEO-7")
  (:preset-video-8 "PRESET-VIDEO-8")
  (:shared "SHARED")
  (:unencrypted "UNENCRYPTED"))

(smithy/sdk/shapes:define-enum profile
    common-lisp:nil
  (:none "NONE")
  (:hbbtv-1-5 "HBBTV_1_5")
  (:hybridcast "HYBRIDCAST")
  (:dvb-dash-2014 "DVB_DASH_2014"))

(smithy/sdk/shapes:define-input rotate-channel-credentials-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "RotateChannelCredentialsRequest"))

(smithy/sdk/shapes:define-output rotate-channel-credentials-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (hls-ingest :target-type hls-ingest
                                   :member-name "HlsIngest" :json-name
                                   "hlsIngest")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ingress-access-logs :target-type
                                   ingress-access-logs :member-name
                                   "IngressAccessLogs" :json-name
                                   "ingressAccessLogs")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name
                                  "RotateChannelCredentialsResponse"))

(smithy/sdk/shapes:define-input rotate-ingest-endpoint-credentials-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (ingest-endpoint-id :target-type string
                                  :required common-lisp:t :member-name
                                  "IngestEndpointId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "RotateIngestEndpointCredentialsRequest"))

(smithy/sdk/shapes:define-output rotate-ingest-endpoint-credentials-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (hls-ingest :target-type hls-ingest
                                   :member-name "HlsIngest" :json-name
                                   "hlsIngest")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ingress-access-logs :target-type
                                   ingress-access-logs :member-name
                                   "IngressAccessLogs" :json-name
                                   "ingressAccessLogs")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name
                                  "RotateIngestEndpointCredentialsResponse"))

(smithy/sdk/shapes:define-structure s3destination common-lisp:nil
                                    ((bucket-name :target-type string :required
                                      common-lisp:t :member-name "BucketName"
                                      :json-name "bucketName")
                                     (manifest-key :target-type string
                                      :required common-lisp:t :member-name
                                      "ManifestKey" :json-name "manifestKey")
                                     (role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn"
                                      :json-name "roleArn"))
                                    (:shape-name "S3Destination"))

(smithy/sdk/shapes:define-enum segment-template-format
    common-lisp:nil
  (:number-with-timeline "NUMBER_WITH_TIMELINE")
  (:time-with-timeline "TIME_WITH_TIMELINE")
  (:number-with-duration "NUMBER_WITH_DURATION"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure speke-key-provider common-lisp:nil
                                    ((certificate-arn :target-type string
                                      :member-name "CertificateArn" :json-name
                                      "certificateArn")
                                     (encryption-contract-configuration
                                      :target-type
                                      encryption-contract-configuration
                                      :member-name
                                      "EncryptionContractConfiguration"
                                      :json-name
                                      "encryptionContractConfiguration")
                                     (resource-id :target-type string :required
                                      common-lisp:t :member-name "ResourceId"
                                      :json-name "resourceId")
                                     (role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn"
                                      :json-name "roleArn")
                                     (system-ids :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "SystemIds" :json-name "systemIds")
                                     (url :target-type string :required
                                      common-lisp:t :member-name "Url"
                                      :json-name "url"))
                                    (:shape-name "SpekeKeyProvider"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum stream-order
    common-lisp:nil
  (:original "ORIGINAL")
  (:video-bitrate-ascending "VIDEO_BITRATE_ASCENDING")
  (:video-bitrate-descending "VIDEO_BITRATE_DESCENDING"))

(smithy/sdk/shapes:define-structure stream-selection common-lisp:nil
                                    ((max-video-bits-per-second :target-type
                                      integer :member-name
                                      "MaxVideoBitsPerSecond" :json-name
                                      "maxVideoBitsPerSecond")
                                     (min-video-bits-per-second :target-type
                                      integer :member-name
                                      "MinVideoBitsPerSecond" :json-name
                                      "minVideoBitsPerSecond")
                                     (stream-order :target-type stream-order
                                      :member-name "StreamOrder" :json-name
                                      "streamOrder"))
                                    (:shape-name "StreamSelection"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type map-of-string :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-map tags :key string :value string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unprocessable-entity-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "UnprocessableEntityException")
                                (:error-code 422))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-channel-request common-lisp:nil
                                ((description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateChannelRequest"))

(smithy/sdk/shapes:define-output update-channel-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (hls-ingest :target-type hls-ingest
                                   :member-name "HlsIngest" :json-name
                                   "hlsIngest")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (ingress-access-logs :target-type
                                   ingress-access-logs :member-name
                                   "IngressAccessLogs" :json-name
                                   "ingressAccessLogs")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdateChannelResponse"))

(smithy/sdk/shapes:define-input update-origin-endpoint-request common-lisp:nil
                                ((authorization :target-type authorization
                                  :member-name "Authorization" :json-name
                                  "authorization")
                                 (cmaf-package :target-type
                                  cmaf-package-create-or-update-parameters
                                  :member-name "CmafPackage" :json-name
                                  "cmafPackage")
                                 (dash-package :target-type dash-package
                                  :member-name "DashPackage" :json-name
                                  "dashPackage")
                                 (description :target-type string :member-name
                                  "Description" :json-name "description")
                                 (hls-package :target-type hls-package
                                  :member-name "HlsPackage" :json-name
                                  "hlsPackage")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (manifest-name :target-type string
                                  :member-name "ManifestName" :json-name
                                  "manifestName")
                                 (mss-package :target-type mss-package
                                  :member-name "MssPackage" :json-name
                                  "mssPackage")
                                 (origination :target-type origination
                                  :member-name "Origination" :json-name
                                  "origination")
                                 (startover-window-seconds :target-type integer
                                  :member-name "StartoverWindowSeconds"
                                  :json-name "startoverWindowSeconds")
                                 (time-delay-seconds :target-type integer
                                  :member-name "TimeDelaySeconds" :json-name
                                  "timeDelaySeconds")
                                 (whitelist :target-type list-of-string
                                  :member-name "Whitelist" :json-name
                                  "whitelist"))
                                (:shape-name "UpdateOriginEndpointRequest"))

(smithy/sdk/shapes:define-output update-origin-endpoint-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (authorization :target-type authorization
                                   :member-name "Authorization" :json-name
                                   "authorization")
                                  (channel-id :target-type string :member-name
                                   "ChannelId" :json-name "channelId")
                                  (cmaf-package :target-type cmaf-package
                                   :member-name "CmafPackage" :json-name
                                   "cmafPackage")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (dash-package :target-type dash-package
                                   :member-name "DashPackage" :json-name
                                   "dashPackage")
                                  (description :target-type string :member-name
                                   "Description" :json-name "description")
                                  (hls-package :target-type hls-package
                                   :member-name "HlsPackage" :json-name
                                   "hlsPackage")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (manifest-name :target-type string
                                   :member-name "ManifestName" :json-name
                                   "manifestName")
                                  (mss-package :target-type mss-package
                                   :member-name "MssPackage" :json-name
                                   "mssPackage")
                                  (origination :target-type origination
                                   :member-name "Origination" :json-name
                                   "origination")
                                  (startover-window-seconds :target-type
                                   integer :member-name
                                   "StartoverWindowSeconds" :json-name
                                   "startoverWindowSeconds")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (time-delay-seconds :target-type integer
                                   :member-name "TimeDelaySeconds" :json-name
                                   "timeDelaySeconds")
                                  (url :target-type string :member-name "Url"
                                   :json-name "url")
                                  (whitelist :target-type list-of-string
                                   :member-name "Whitelist" :json-name
                                   "whitelist"))
                                 (:shape-name "UpdateOriginEndpointResponse"))

(smithy/sdk/shapes:define-enum utc-timing
    common-lisp:nil
  (:none "NONE")
  (:http-head "HTTP-HEAD")
  (:http-iso "HTTP-ISO")
  (:http-xsdate "HTTP-XSDATE"))

(smithy/sdk/shapes:define-enum ad-triggers-element
    common-lisp:nil
  (:splice-insert "SPLICE_INSERT")
  (:break "BREAK")
  (:provider-advertisement "PROVIDER_ADVERTISEMENT")
  (:distributor-advertisement "DISTRIBUTOR_ADVERTISEMENT")
  (:provider-placement-opportunity "PROVIDER_PLACEMENT_OPPORTUNITY")
  (:distributor-placement-opportunity "DISTRIBUTOR_PLACEMENT_OPPORTUNITY")
  (:provider-overlay-placement-opportunity
   "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY")
  (:distributor-overlay-placement-opportunity
   "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"))

(smithy/sdk/shapes:define-enum period-triggers-element
    common-lisp:nil
  (:ads "ADS"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-channel :member channel)

(smithy/sdk/shapes:define-list list-of-harvest-job :member harvest-job)

(smithy/sdk/shapes:define-list list-of-hls-manifest :member hls-manifest)

(smithy/sdk/shapes:define-list list-of-hls-manifest-create-or-update-parameters
                               :member hls-manifest-create-or-update-parameters)

(smithy/sdk/shapes:define-list list-of-ingest-endpoint :member ingest-endpoint)

(smithy/sdk/shapes:define-list list-of-origin-endpoint :member origin-endpoint)

(smithy/sdk/shapes:define-list list-of-period-triggers-element :member
                               period-triggers-element)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-map map-of-string :key string :value string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation configure-logs :shape-name
                                       "ConfigureLogs" :input
                                       configure-logs-request :output
                                       configure-logs-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/channels/{Id}/configure_logs" :code
                                       200)

(smithy/sdk/operation:define-operation create-channel :shape-name
                                       "CreateChannel" :input
                                       create-channel-request :output
                                       create-channel-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri "/channels" :code
                                       200)

(smithy/sdk/operation:define-operation create-harvest-job :shape-name
                                       "CreateHarvestJob" :input
                                       create-harvest-job-request :output
                                       create-harvest-job-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri "/harvest_jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation create-origin-endpoint :shape-name
                                       "CreateOriginEndpoint" :input
                                       create-origin-endpoint-request :output
                                       create-origin-endpoint-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri "/origin_endpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-channel :shape-name
                                       "DeleteChannel" :input
                                       delete-channel-request :output
                                       delete-channel-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "DELETE" :uri "/channels/{Id}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-origin-endpoint :shape-name
                                       "DeleteOriginEndpoint" :input
                                       delete-origin-endpoint-request :output
                                       delete-origin-endpoint-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "DELETE" :uri
                                       "/origin_endpoints/{Id}" :code 202)

(smithy/sdk/operation:define-operation describe-channel :shape-name
                                       "DescribeChannel" :input
                                       describe-channel-request :output
                                       describe-channel-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri "/channels/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-harvest-job :shape-name
                                       "DescribeHarvestJob" :input
                                       describe-harvest-job-request :output
                                       describe-harvest-job-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri "/harvest_jobs/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-origin-endpoint :shape-name
                                       "DescribeOriginEndpoint" :input
                                       describe-origin-endpoint-request :output
                                       describe-origin-endpoint-response
                                       :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri
                                       "/origin_endpoints/{Id}" :code 200)

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-request :output
                                       list-channels-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri "/channels" :code 200)

(smithy/sdk/operation:define-operation list-harvest-jobs :shape-name
                                       "ListHarvestJobs" :input
                                       list-harvest-jobs-request :output
                                       list-harvest-jobs-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri "/harvest_jobs" :code
                                       200)

(smithy/sdk/operation:define-operation list-origin-endpoints :shape-name
                                       "ListOriginEndpoints" :input
                                       list-origin-endpoints-request :output
                                       list-origin-endpoints-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri "/origin_endpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation rotate-channel-credentials :shape-name
                                       "RotateChannelCredentials" :input
                                       rotate-channel-credentials-request
                                       :output
                                       rotate-channel-credentials-response
                                       :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/channels/{Id}/credentials" :code 200)

(smithy/sdk/operation:define-operation rotate-ingest-endpoint-credentials
                                       :shape-name
                                       "RotateIngestEndpointCredentials" :input
                                       rotate-ingest-endpoint-credentials-request
                                       :output
                                       rotate-ingest-endpoint-credentials-response
                                       :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/channels/{Id}/ingest_endpoints/{IngestEndpointId}/credentials"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-channel :shape-name
                                       "UpdateChannel" :input
                                       update-channel-request :output
                                       update-channel-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri "/channels/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-origin-endpoint :shape-name
                                       "UpdateOriginEndpoint" :input
                                       update-origin-endpoint-request :output
                                       update-origin-endpoint-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/origin_endpoints/{Id}" :code 200)
