(uiop/package:define-package #:pira/mediapackage-vod (:use)
                             (:export #:ad-markers #:asset-shallow
                              #:authorization #:cmaf-encryption #:cmaf-package
                              #:configure-logs #:create-asset
                              #:create-packaging-configuration
                              #:create-packaging-group #:dash-encryption
                              #:dash-manifest #:dash-package #:delete-asset
                              #:delete-packaging-configuration
                              #:delete-packaging-group #:describe-asset
                              #:describe-packaging-configuration
                              #:describe-packaging-group #:egress-access-logs
                              #:egress-endpoint
                              #:encryption-contract-configuration
                              #:encryption-method #:forbidden-exception
                              #:hls-encryption #:hls-manifest #:hls-package
                              #:internal-server-error-exception #:list-assets
                              #:list-packaging-configurations
                              #:list-packaging-groups #:list-tags-for-resource
                              #:manifest-layout #:max-results
                              #:media-package-vod #:mss-encryption
                              #:mss-manifest #:mss-package
                              #:not-found-exception #:packaging-configuration
                              #:packaging-group #:preset-speke20audio
                              #:preset-speke20video #:profile
                              #:scte-markers-source #:segment-template-format
                              #:service-unavailable-exception
                              #:speke-key-provider #:stream-order
                              #:stream-selection #:tag-resource #:tags
                              #:too-many-requests-exception
                              #:unprocessable-entity-exception #:untag-resource
                              #:update-packaging-group
                              #:period-triggers-element #:boolean #:integer
                              #:list-of-asset-shallow #:list-of-dash-manifest
                              #:list-of-egress-endpoint #:list-of-hls-manifest
                              #:list-of-mss-manifest
                              #:list-of-packaging-configuration
                              #:list-of-packaging-group
                              #:list-of-period-triggers-element
                              #:list-of-string #:map-of-string #:string
                              #:mediapackage-vod-error))
(common-lisp:in-package #:pira/mediapackage-vod)

(common-lisp:define-condition mediapackage-vod-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service media-package-vod :shape-name
                                   "MediaPackageVod" :version "2018-11-07"
                                   :title "AWS Elemental MediaPackage VOD"
                                   :operations
                                   '(configure-logs create-asset
                                     create-packaging-configuration
                                     create-packaging-group delete-asset
                                     delete-packaging-configuration
                                     delete-packaging-group describe-asset
                                     describe-packaging-configuration
                                     describe-packaging-group list-assets
                                     list-packaging-configurations
                                     list-packaging-groups
                                     list-tags-for-resource tag-resource
                                     untag-resource update-packaging-group)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MediaPackage Vod")
                                      ("arnNamespace" . "mediapackage-vod")
                                      ("cloudFormationName"
                                       . "MediaPackageVod")
                                      ("cloudTrailEventSource"
                                       . "mediapackagevod.amazonaws.com")
                                      ("endpointPrefix" . "mediapackage-vod"))
                                     ("aws.auth#sigv4"
                                      ("name" . "mediapackage-vod"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum ad-markers
    common-lisp:nil
  (:none "NONE")
  (:scte35-enhanced "SCTE35_ENHANCED")
  (:passthrough "PASSTHROUGH"))

(smithy/sdk/shapes:define-structure asset-shallow common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (created-at :target-type string
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (packaging-group-id :target-type string
                                      :member-name "PackagingGroupId"
                                      :json-name "packagingGroupId")
                                     (resource-id :target-type string
                                      :member-name "ResourceId" :json-name
                                      "resourceId")
                                     (source-arn :target-type string
                                      :member-name "SourceArn" :json-name
                                      "sourceArn")
                                     (source-role-arn :target-type string
                                      :member-name "SourceRoleArn" :json-name
                                      "sourceRoleArn")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "AssetShallow"))

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

(smithy/sdk/shapes:define-structure cmaf-encryption common-lisp:nil
                                    ((constant-initialization-vector
                                      :target-type string :member-name
                                      "ConstantInitializationVector" :json-name
                                      "constantInitializationVector")
                                     (speke-key-provider :target-type
                                      speke-key-provider :required
                                      common-lisp:t :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "CmafEncryption"))

(smithy/sdk/shapes:define-structure cmaf-package common-lisp:nil
                                    ((encryption :target-type cmaf-encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (hls-manifests :target-type
                                      list-of-hls-manifest :required
                                      common-lisp:t :member-name "HlsManifests"
                                      :json-name "hlsManifests")
                                     (include-encoder-configuration-in-segments
                                      :target-type boolean :member-name
                                      "IncludeEncoderConfigurationInSegments"
                                      :json-name
                                      "includeEncoderConfigurationInSegments")
                                     (segment-duration-seconds :target-type
                                      integer :member-name
                                      "SegmentDurationSeconds" :json-name
                                      "segmentDurationSeconds"))
                                    (:shape-name "CmafPackage"))

(smithy/sdk/shapes:define-input configure-logs-request common-lisp:nil
                                ((egress-access-logs :target-type
                                  egress-access-logs :member-name
                                  "EgressAccessLogs" :json-name
                                  "egressAccessLogs")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "ConfigureLogsRequest"))

(smithy/sdk/shapes:define-output configure-logs-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (authorization :target-type authorization
                                   :member-name "Authorization" :json-name
                                   "authorization")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (domain-name :target-type string :member-name
                                   "DomainName" :json-name "domainName")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "ConfigureLogsResponse"))

(smithy/sdk/shapes:define-input create-asset-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :json-name
                                  "id")
                                 (packaging-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "PackagingGroupId" :json-name
                                  "packagingGroupId")
                                 (resource-id :target-type string :member-name
                                  "ResourceId" :json-name "resourceId")
                                 (source-arn :target-type string :required
                                  common-lisp:t :member-name "SourceArn"
                                  :json-name "sourceArn")
                                 (source-role-arn :target-type string :required
                                  common-lisp:t :member-name "SourceRoleArn"
                                  :json-name "sourceRoleArn")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateAssetRequest"))

(smithy/sdk/shapes:define-output create-asset-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (egress-endpoints :target-type
                                   list-of-egress-endpoint :member-name
                                   "EgressEndpoints" :json-name
                                   "egressEndpoints")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (packaging-group-id :target-type string
                                   :member-name "PackagingGroupId" :json-name
                                   "packagingGroupId")
                                  (resource-id :target-type string :member-name
                                   "ResourceId" :json-name "resourceId")
                                  (source-arn :target-type string :member-name
                                   "SourceArn" :json-name "sourceArn")
                                  (source-role-arn :target-type string
                                   :member-name "SourceRoleArn" :json-name
                                   "sourceRoleArn")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateAssetResponse"))

(smithy/sdk/shapes:define-input create-packaging-configuration-request
                                common-lisp:nil
                                ((cmaf-package :target-type cmaf-package
                                  :member-name "CmafPackage" :json-name
                                  "cmafPackage")
                                 (dash-package :target-type dash-package
                                  :member-name "DashPackage" :json-name
                                  "dashPackage")
                                 (hls-package :target-type hls-package
                                  :member-name "HlsPackage" :json-name
                                  "hlsPackage")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :json-name
                                  "id")
                                 (mss-package :target-type mss-package
                                  :member-name "MssPackage" :json-name
                                  "mssPackage")
                                 (packaging-group-id :target-type string
                                  :required common-lisp:t :member-name
                                  "PackagingGroupId" :json-name
                                  "packagingGroupId")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name
                                 "CreatePackagingConfigurationRequest"))

(smithy/sdk/shapes:define-output create-packaging-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (cmaf-package :target-type cmaf-package
                                   :member-name "CmafPackage" :json-name
                                   "cmafPackage")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (dash-package :target-type dash-package
                                   :member-name "DashPackage" :json-name
                                   "dashPackage")
                                  (hls-package :target-type hls-package
                                   :member-name "HlsPackage" :json-name
                                   "hlsPackage")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (mss-package :target-type mss-package
                                   :member-name "MssPackage" :json-name
                                   "mssPackage")
                                  (packaging-group-id :target-type string
                                   :member-name "PackagingGroupId" :json-name
                                   "packagingGroupId")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name
                                  "CreatePackagingConfigurationResponse"))

(smithy/sdk/shapes:define-input create-packaging-group-request common-lisp:nil
                                ((authorization :target-type authorization
                                  :member-name "Authorization" :json-name
                                  "authorization")
                                 (egress-access-logs :target-type
                                  egress-access-logs :member-name
                                  "EgressAccessLogs" :json-name
                                  "egressAccessLogs")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :json-name
                                  "id")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreatePackagingGroupRequest"))

(smithy/sdk/shapes:define-output create-packaging-group-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (authorization :target-type authorization
                                   :member-name "Authorization" :json-name
                                   "authorization")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (domain-name :target-type string :member-name
                                   "DomainName" :json-name "domainName")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreatePackagingGroupResponse"))

(smithy/sdk/shapes:define-structure dash-encryption common-lisp:nil
                                    ((speke-key-provider :target-type
                                      speke-key-provider :required
                                      common-lisp:t :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "DashEncryption"))

(smithy/sdk/shapes:define-structure dash-manifest common-lisp:nil
                                    ((manifest-layout :target-type
                                      manifest-layout :member-name
                                      "ManifestLayout" :json-name
                                      "manifestLayout")
                                     (manifest-name :target-type string
                                      :member-name "ManifestName" :json-name
                                      "manifestName")
                                     (min-buffer-time-seconds :target-type
                                      integer :member-name
                                      "MinBufferTimeSeconds" :json-name
                                      "minBufferTimeSeconds")
                                     (profile :target-type profile :member-name
                                      "Profile" :json-name "profile")
                                     (scte-markers-source :target-type
                                      scte-markers-source :member-name
                                      "ScteMarkersSource" :json-name
                                      "scteMarkersSource")
                                     (stream-selection :target-type
                                      stream-selection :member-name
                                      "StreamSelection" :json-name
                                      "streamSelection"))
                                    (:shape-name "DashManifest"))

(smithy/sdk/shapes:define-structure dash-package common-lisp:nil
                                    ((dash-manifests :target-type
                                      list-of-dash-manifest :required
                                      common-lisp:t :member-name
                                      "DashManifests" :json-name
                                      "dashManifests")
                                     (encryption :target-type dash-encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (include-encoder-configuration-in-segments
                                      :target-type boolean :member-name
                                      "IncludeEncoderConfigurationInSegments"
                                      :json-name
                                      "includeEncoderConfigurationInSegments")
                                     (include-iframe-only-stream :target-type
                                      boolean :member-name
                                      "IncludeIframeOnlyStream" :json-name
                                      "includeIframeOnlyStream")
                                     (period-triggers :target-type
                                      list-of-period-triggers-element
                                      :member-name "PeriodTriggers" :json-name
                                      "periodTriggers")
                                     (segment-duration-seconds :target-type
                                      integer :member-name
                                      "SegmentDurationSeconds" :json-name
                                      "segmentDurationSeconds")
                                     (segment-template-format :target-type
                                      segment-template-format :member-name
                                      "SegmentTemplateFormat" :json-name
                                      "segmentTemplateFormat"))
                                    (:shape-name "DashPackage"))

(smithy/sdk/shapes:define-input delete-asset-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAssetRequest"))

(smithy/sdk/shapes:define-output delete-asset-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAssetResponse"))

(smithy/sdk/shapes:define-input delete-packaging-configuration-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeletePackagingConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-packaging-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeletePackagingConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-packaging-group-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeletePackagingGroupRequest"))

(smithy/sdk/shapes:define-output delete-packaging-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeletePackagingGroupResponse"))

(smithy/sdk/shapes:define-input describe-asset-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeAssetRequest"))

(smithy/sdk/shapes:define-output describe-asset-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (egress-endpoints :target-type
                                   list-of-egress-endpoint :member-name
                                   "EgressEndpoints" :json-name
                                   "egressEndpoints")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (packaging-group-id :target-type string
                                   :member-name "PackagingGroupId" :json-name
                                   "packagingGroupId")
                                  (resource-id :target-type string :member-name
                                   "ResourceId" :json-name "resourceId")
                                  (source-arn :target-type string :member-name
                                   "SourceArn" :json-name "sourceArn")
                                  (source-role-arn :target-type string
                                   :member-name "SourceRoleArn" :json-name
                                   "sourceRoleArn")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "DescribeAssetResponse"))

(smithy/sdk/shapes:define-input describe-packaging-configuration-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribePackagingConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-packaging-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (cmaf-package :target-type cmaf-package
                                   :member-name "CmafPackage" :json-name
                                   "cmafPackage")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (dash-package :target-type dash-package
                                   :member-name "DashPackage" :json-name
                                   "dashPackage")
                                  (hls-package :target-type hls-package
                                   :member-name "HlsPackage" :json-name
                                   "hlsPackage")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (mss-package :target-type mss-package
                                   :member-name "MssPackage" :json-name
                                   "mssPackage")
                                  (packaging-group-id :target-type string
                                   :member-name "PackagingGroupId" :json-name
                                   "packagingGroupId")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name
                                  "DescribePackagingConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-packaging-group-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribePackagingGroupRequest"))

(smithy/sdk/shapes:define-output describe-packaging-group-response
                                 common-lisp:nil
                                 ((approximate-asset-count :target-type integer
                                   :member-name "ApproximateAssetCount"
                                   :json-name "approximateAssetCount")
                                  (arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (authorization :target-type authorization
                                   :member-name "Authorization" :json-name
                                   "authorization")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (domain-name :target-type string :member-name
                                   "DomainName" :json-name "domainName")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "DescribePackagingGroupResponse"))

(smithy/sdk/shapes:define-structure egress-access-logs common-lisp:nil
                                    ((log-group-name :target-type string
                                      :member-name "LogGroupName" :json-name
                                      "logGroupName"))
                                    (:shape-name "EgressAccessLogs"))

(smithy/sdk/shapes:define-structure egress-endpoint common-lisp:nil
                                    ((packaging-configuration-id :target-type
                                      string :member-name
                                      "PackagingConfigurationId" :json-name
                                      "packagingConfigurationId")
                                     (status :target-type string :member-name
                                      "Status" :json-name "status")
                                     (url :target-type string :member-name
                                      "Url" :json-name "url"))
                                    (:shape-name "EgressEndpoint"))

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
                                (:error-code 403)
                                (:base-class mediapackage-vod-error))

(smithy/sdk/shapes:define-structure hls-encryption common-lisp:nil
                                    ((constant-initialization-vector
                                      :target-type string :member-name
                                      "ConstantInitializationVector" :json-name
                                      "constantInitializationVector")
                                     (encryption-method :target-type
                                      encryption-method :member-name
                                      "EncryptionMethod" :json-name
                                      "encryptionMethod")
                                     (speke-key-provider :target-type
                                      speke-key-provider :required
                                      common-lisp:t :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "HlsEncryption"))

(smithy/sdk/shapes:define-structure hls-manifest common-lisp:nil
                                    ((ad-markers :target-type ad-markers
                                      :member-name "AdMarkers" :json-name
                                      "adMarkers")
                                     (include-iframe-only-stream :target-type
                                      boolean :member-name
                                      "IncludeIframeOnlyStream" :json-name
                                      "includeIframeOnlyStream")
                                     (manifest-name :target-type string
                                      :member-name "ManifestName" :json-name
                                      "manifestName")
                                     (program-date-time-interval-seconds
                                      :target-type integer :member-name
                                      "ProgramDateTimeIntervalSeconds"
                                      :json-name
                                      "programDateTimeIntervalSeconds")
                                     (repeat-ext-xkey :target-type boolean
                                      :member-name "RepeatExtXKey" :json-name
                                      "repeatExtXKey")
                                     (stream-selection :target-type
                                      stream-selection :member-name
                                      "StreamSelection" :json-name
                                      "streamSelection"))
                                    (:shape-name "HlsManifest"))

(smithy/sdk/shapes:define-structure hls-package common-lisp:nil
                                    ((encryption :target-type hls-encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (hls-manifests :target-type
                                      list-of-hls-manifest :required
                                      common-lisp:t :member-name "HlsManifests"
                                      :json-name "hlsManifests")
                                     (include-dvb-subtitles :target-type
                                      boolean :member-name
                                      "IncludeDvbSubtitles" :json-name
                                      "includeDvbSubtitles")
                                     (segment-duration-seconds :target-type
                                      integer :member-name
                                      "SegmentDurationSeconds" :json-name
                                      "segmentDurationSeconds")
                                     (use-audio-rendition-group :target-type
                                      boolean :member-name
                                      "UseAudioRenditionGroup" :json-name
                                      "useAudioRenditionGroup"))
                                    (:shape-name "HlsPackage"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500)
                                (:base-class mediapackage-vod-error))

(smithy/sdk/shapes:define-input list-assets-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (packaging-group-id :target-type string
                                  :member-name "PackagingGroupId" :http-query
                                  "packagingGroupId"))
                                (:shape-name "ListAssetsRequest"))

(smithy/sdk/shapes:define-output list-assets-response common-lisp:nil
                                 ((assets :target-type list-of-asset-shallow
                                   :member-name "Assets" :json-name "assets")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListAssetsResponse"))

(smithy/sdk/shapes:define-input list-packaging-configurations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (packaging-group-id :target-type string
                                  :member-name "PackagingGroupId" :http-query
                                  "packagingGroupId"))
                                (:shape-name
                                 "ListPackagingConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-packaging-configurations-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (packaging-configurations :target-type
                                   list-of-packaging-configuration :member-name
                                   "PackagingConfigurations" :json-name
                                   "packagingConfigurations"))
                                 (:shape-name
                                  "ListPackagingConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-packaging-groups-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListPackagingGroupsRequest"))

(smithy/sdk/shapes:define-output list-packaging-groups-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (packaging-groups :target-type
                                   list-of-packaging-group :member-name
                                   "PackagingGroups" :json-name
                                   "packagingGroups"))
                                 (:shape-name "ListPackagingGroupsResponse"))

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
  (:compact "COMPACT"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure mss-encryption common-lisp:nil
                                    ((speke-key-provider :target-type
                                      speke-key-provider :required
                                      common-lisp:t :member-name
                                      "SpekeKeyProvider" :json-name
                                      "spekeKeyProvider"))
                                    (:shape-name "MssEncryption"))

(smithy/sdk/shapes:define-structure mss-manifest common-lisp:nil
                                    ((manifest-name :target-type string
                                      :member-name "ManifestName" :json-name
                                      "manifestName")
                                     (stream-selection :target-type
                                      stream-selection :member-name
                                      "StreamSelection" :json-name
                                      "streamSelection"))
                                    (:shape-name "MssManifest"))

(smithy/sdk/shapes:define-structure mss-package common-lisp:nil
                                    ((encryption :target-type mss-encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (mss-manifests :target-type
                                      list-of-mss-manifest :required
                                      common-lisp:t :member-name "MssManifests"
                                      :json-name "mssManifests")
                                     (segment-duration-seconds :target-type
                                      integer :member-name
                                      "SegmentDurationSeconds" :json-name
                                      "segmentDurationSeconds"))
                                    (:shape-name "MssPackage"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404)
                                (:base-class mediapackage-vod-error))

(smithy/sdk/shapes:define-structure packaging-configuration common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (cmaf-package :target-type cmaf-package
                                      :member-name "CmafPackage" :json-name
                                      "cmafPackage")
                                     (created-at :target-type string
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (dash-package :target-type dash-package
                                      :member-name "DashPackage" :json-name
                                      "dashPackage")
                                     (hls-package :target-type hls-package
                                      :member-name "HlsPackage" :json-name
                                      "hlsPackage")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (mss-package :target-type mss-package
                                      :member-name "MssPackage" :json-name
                                      "mssPackage")
                                     (packaging-group-id :target-type string
                                      :member-name "PackagingGroupId"
                                      :json-name "packagingGroupId")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "PackagingConfiguration"))

(smithy/sdk/shapes:define-structure packaging-group common-lisp:nil
                                    ((approximate-asset-count :target-type
                                      integer :member-name
                                      "ApproximateAssetCount" :json-name
                                      "approximateAssetCount")
                                     (arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (authorization :target-type authorization
                                      :member-name "Authorization" :json-name
                                      "authorization")
                                     (created-at :target-type string
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (domain-name :target-type string
                                      :member-name "DomainName" :json-name
                                      "domainName")
                                     (egress-access-logs :target-type
                                      egress-access-logs :member-name
                                      "EgressAccessLogs" :json-name
                                      "egressAccessLogs")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "PackagingGroup"))

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
  (:hbbtv-1-5 "HBBTV_1_5"))

(smithy/sdk/shapes:define-enum scte-markers-source
    common-lisp:nil
  (:segments "SEGMENTS")
  (:manifest "MANIFEST"))

(smithy/sdk/shapes:define-enum segment-template-format
    common-lisp:nil
  (:number-with-timeline "NUMBER_WITH_TIMELINE")
  (:time-with-timeline "TIME_WITH_TIMELINE")
  (:number-with-duration "NUMBER_WITH_DURATION"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503)
                                (:base-class mediapackage-vod-error))

(smithy/sdk/shapes:define-structure speke-key-provider common-lisp:nil
                                    ((encryption-contract-configuration
                                      :target-type
                                      encryption-contract-configuration
                                      :member-name
                                      "EncryptionContractConfiguration"
                                      :json-name
                                      "encryptionContractConfiguration")
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
                                (:error-code 429)
                                (:base-class mediapackage-vod-error))

(smithy/sdk/shapes:define-error unprocessable-entity-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "UnprocessableEntityException")
                                (:error-code 422)
                                (:base-class mediapackage-vod-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-packaging-group-request common-lisp:nil
                                ((authorization :target-type authorization
                                  :member-name "Authorization" :json-name
                                  "authorization")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdatePackagingGroupRequest"))

(smithy/sdk/shapes:define-output update-packaging-group-response
                                 common-lisp:nil
                                 ((approximate-asset-count :target-type integer
                                   :member-name "ApproximateAssetCount"
                                   :json-name "approximateAssetCount")
                                  (arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (authorization :target-type authorization
                                   :member-name "Authorization" :json-name
                                   "authorization")
                                  (created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (domain-name :target-type string :member-name
                                   "DomainName" :json-name "domainName")
                                  (egress-access-logs :target-type
                                   egress-access-logs :member-name
                                   "EgressAccessLogs" :json-name
                                   "egressAccessLogs")
                                  (id :target-type string :member-name "Id"
                                   :json-name "id")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdatePackagingGroupResponse"))

(smithy/sdk/shapes:define-enum period-triggers-element
    common-lisp:nil
  (:ads "ADS"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-asset-shallow :member asset-shallow)

(smithy/sdk/shapes:define-list list-of-dash-manifest :member dash-manifest)

(smithy/sdk/shapes:define-list list-of-egress-endpoint :member egress-endpoint)

(smithy/sdk/shapes:define-list list-of-hls-manifest :member hls-manifest)

(smithy/sdk/shapes:define-list list-of-mss-manifest :member mss-manifest)

(smithy/sdk/shapes:define-list list-of-packaging-configuration :member
                               packaging-configuration)

(smithy/sdk/shapes:define-list list-of-packaging-group :member packaging-group)

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
                                       "/packaging_groups/{Id}/configure_logs"
                                       :code 200)

(smithy/sdk/operation:define-operation create-asset :shape-name "CreateAsset"
                                       :input create-asset-request :output
                                       create-asset-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri "/assets" :code 200)

(smithy/sdk/operation:define-operation create-packaging-configuration
                                       :shape-name
                                       "CreatePackagingConfiguration" :input
                                       create-packaging-configuration-request
                                       :output
                                       create-packaging-configuration-response
                                       :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/packaging_configurations" :code 200)

(smithy/sdk/operation:define-operation create-packaging-group :shape-name
                                       "CreatePackagingGroup" :input
                                       create-packaging-group-request :output
                                       create-packaging-group-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri "/packaging_groups"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-asset :shape-name "DeleteAsset"
                                       :input delete-asset-request :output
                                       delete-asset-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "DELETE" :uri "/assets/{Id}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-packaging-configuration
                                       :shape-name
                                       "DeletePackagingConfiguration" :input
                                       delete-packaging-configuration-request
                                       :output
                                       delete-packaging-configuration-response
                                       :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "DELETE" :uri
                                       "/packaging_configurations/{Id}" :code
                                       202)

(smithy/sdk/operation:define-operation delete-packaging-group :shape-name
                                       "DeletePackagingGroup" :input
                                       delete-packaging-group-request :output
                                       delete-packaging-group-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "DELETE" :uri
                                       "/packaging_groups/{Id}" :code 202)

(smithy/sdk/operation:define-operation describe-asset :shape-name
                                       "DescribeAsset" :input
                                       describe-asset-request :output
                                       describe-asset-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri "/assets/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-packaging-configuration
                                       :shape-name
                                       "DescribePackagingConfiguration" :input
                                       describe-packaging-configuration-request
                                       :output
                                       describe-packaging-configuration-response
                                       :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri
                                       "/packaging_configurations/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-packaging-group :shape-name
                                       "DescribePackagingGroup" :input
                                       describe-packaging-group-request :output
                                       describe-packaging-group-response
                                       :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri
                                       "/packaging_groups/{Id}" :code 200)

(smithy/sdk/operation:define-operation list-assets :shape-name "ListAssets"
                                       :input list-assets-request :output
                                       list-assets-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri "/assets" :code 200)

(smithy/sdk/operation:define-operation list-packaging-configurations
                                       :shape-name
                                       "ListPackagingConfigurations" :input
                                       list-packaging-configurations-request
                                       :output
                                       list-packaging-configurations-response
                                       :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri
                                       "/packaging_configurations" :code 200)

(smithy/sdk/operation:define-operation list-packaging-groups :shape-name
                                       "ListPackagingGroups" :input
                                       list-packaging-groups-request :output
                                       list-packaging-groups-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri "/packaging_groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/tags/{ResourceArn}" :code 200)

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

(smithy/sdk/operation:define-operation update-packaging-group :shape-name
                                       "UpdatePackagingGroup" :input
                                       update-packaging-group-request :output
                                       update-packaging-group-response :errors
                                       (forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unprocessable-entity-exception)
                                       :method "PUT" :uri
                                       "/packaging_groups/{Id}" :code 200)
