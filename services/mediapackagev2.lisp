(uiop/package:define-package #:pira/mediapackagev2 (:use)
                             (:export #:ad-marker-dash #:ad-marker-hls
                              #:cancel-harvest-job #:cdn-auth-configuration
                              #:cdn-identifier-secret-arn
                              #:cdn-identifier-secret-arns
                              #:channel-group-list-configuration
                              #:channel-group-resource #:channel-groups-list
                              #:channel-list #:channel-list-configuration
                              #:channel-policy-resource #:channel-resource
                              #:cmaf-encryption-method
                              #:conflict-exception-type #:container-type
                              #:create-channel #:create-channel-group
                              #:create-dash-manifest-configuration
                              #:create-dash-manifests #:create-harvest-job
                              #:create-hls-manifest-configuration
                              #:create-hls-manifests
                              #:create-low-latency-hls-manifest-configuration
                              #:create-low-latency-hls-manifests
                              #:create-mss-manifest-configuration
                              #:create-mss-manifests #:create-origin-endpoint
                              #:dash-base-url #:dash-base-urls
                              #:dash-compactness #:dash-drm-signaling
                              #:dash-dvb-error-metrics #:dash-dvb-font-download
                              #:dash-dvb-metrics-reporting #:dash-dvb-settings
                              #:dash-period-trigger #:dash-period-triggers
                              #:dash-profile #:dash-profiles
                              #:dash-program-information
                              #:dash-segment-template-format
                              #:dash-subtitle-configuration
                              #:dash-ttml-configuration #:dash-ttml-profile
                              #:dash-utc-timing #:dash-utc-timing-mode
                              #:delete-channel #:delete-channel-group
                              #:delete-channel-policy #:delete-origin-endpoint
                              #:delete-origin-endpoint-policy #:destination
                              #:drm-system #:drm-systems #:encryption
                              #:encryption-contract-configuration
                              #:encryption-method #:endpoint-error-condition
                              #:endpoint-error-conditions #:entity-tag
                              #:filter-configuration
                              #:force-endpoint-error-configuration
                              #:get-channel #:get-channel-group
                              #:get-channel-policy
                              #:get-dash-manifest-configuration
                              #:get-dash-manifests #:get-harvest-job
                              #:get-hls-manifest-configuration
                              #:get-hls-manifests
                              #:get-low-latency-hls-manifest-configuration
                              #:get-low-latency-hls-manifests
                              #:get-mss-manifest-configuration
                              #:get-mss-manifests #:get-origin-endpoint
                              #:get-origin-endpoint-policy #:harvest-job
                              #:harvest-job-resource #:harvest-job-status
                              #:harvest-jobs-list #:harvested-dash-manifest
                              #:harvested-dash-manifests-list
                              #:harvested-hls-manifest
                              #:harvested-hls-manifests-list
                              #:harvested-low-latency-hls-manifest
                              #:harvested-low-latency-hls-manifests-list
                              #:harvested-manifests
                              #:harvester-schedule-configuration
                              #:idempotency-token #:ingest-endpoint
                              #:ingest-endpoint-list
                              #:input-switch-configuration #:input-type
                              #:ism-encryption-method #:list-channel-groups
                              #:list-channels
                              #:list-dash-manifest-configuration
                              #:list-dash-manifests #:list-harvest-jobs
                              #:list-hls-manifest-configuration
                              #:list-hls-manifests
                              #:list-low-latency-hls-manifest-configuration
                              #:list-low-latency-hls-manifests
                              #:list-mss-manifest-configuration
                              #:list-mss-manifests #:list-origin-endpoints
                              #:list-resource-max-results
                              #:list-tags-for-resource #:manifest-name
                              #:mss-manifest-layout
                              #:origin-endpoint-list-configuration
                              #:origin-endpoint-policy-resource
                              #:origin-endpoint-resource
                              #:origin-endpoints-list
                              #:output-header-configuration #:policy-text
                              #:preset-speke20audio #:preset-speke20video
                              #:put-channel-policy #:put-origin-endpoint-policy
                              #:reset-channel-state
                              #:reset-origin-endpoint-state
                              #:resource-description #:resource-name
                              #:resource-type-not-found #:s3bucket-name
                              #:s3destination-config #:s3destination-path
                              #:scte #:scte-dash #:scte-filter
                              #:scte-filter-list #:scte-hls #:segment
                              #:speke-key-provider #:start-tag #:tag-arn
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:ts-encryption-method
                              #:untag-resource #:update-channel
                              #:update-channel-group #:update-origin-endpoint
                              #:validation-exception-type #:mediapackagev2))
(common-lisp:in-package #:pira/mediapackagev2)

(smithy/sdk/service:define-service mediapackagev2 :shape-name "mediapackagev2"
                                   :version "2022-12-25" :title
                                   "AWS Elemental MediaPackage v2" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MediaPackageV2")
                                      ("arnNamespace" . "mediapackagev2")
                                      ("cloudFormationName" . "MediaPackageV2")
                                      ("cloudTrailEventSource"
                                       . "mediapackagev2.amazonaws.com")
                                      ("endpointPrefix" . "mediapackagev2"))
                                     ("aws.auth#sigv4"
                                      ("name" . "mediapackagev2"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum ad-marker-dash
    common-lisp:nil
  (:binary "BINARY")
  (:xml "XML"))

(smithy/sdk/shapes:define-enum ad-marker-hls
    common-lisp:nil
  (:daterange "DATERANGE"))

(smithy/sdk/shapes:define-input cancel-harvest-job-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t)
                                 (harvest-job-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "HarvestJobName" :http-label common-lisp:t)
                                 (etag :target-type entity-tag :member-name
                                  "ETag" :http-header
                                  "x-amzn-update-if-match"))
                                (:shape-name "CancelHarvestJobRequest"))

(smithy/sdk/shapes:define-output cancel-harvest-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelHarvestJobResponse"))

(smithy/sdk/shapes:define-structure cdn-auth-configuration common-lisp:nil
                                    ((cdn-identifier-secret-arns :target-type
                                      cdn-identifier-secret-arns :required
                                      common-lisp:t :member-name
                                      "CdnIdentifierSecretArns")
                                     (secrets-role-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "SecretsRoleArn"))
                                    (:shape-name "CdnAuthConfiguration"))

(smithy/sdk/shapes:define-type cdn-identifier-secret-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cdn-identifier-secret-arns :member
                               cdn-identifier-secret-arn)

(smithy/sdk/shapes:define-structure channel-group-list-configuration
                                    common-lisp:nil
                                    ((channel-group-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ChannelGroupName")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "ModifiedAt")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description"))
                                    (:shape-name
                                     "ChannelGroupListConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-list channel-groups-list :member
                               channel-group-list-configuration)

(smithy/sdk/shapes:define-list channel-list :member channel-list-configuration)

(smithy/sdk/shapes:define-structure channel-list-configuration common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Arn")
                                     (channel-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ChannelName")
                                     (channel-group-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ChannelGroupName")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "ModifiedAt")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (input-type :target-type input-type
                                      :member-name "InputType"))
                                    (:shape-name "ChannelListConfiguration"))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-enum cmaf-encryption-method
    common-lisp:nil
  (:cenc "CENC")
  (:cbcs "CBCS"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (conflict-exception-type :target-type
                                  conflict-exception-type :member-name
                                  "ConflictExceptionType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum conflict-exception-type
    common-lisp:nil
  (:resource-in-use "RESOURCE_IN_USE")
  (:resource-already-exists "RESOURCE_ALREADY_EXISTS")
  (:idempotent-parameter-mismatch "IDEMPOTENT_PARAMETER_MISMATCH")
  (:conflicting-operation "CONFLICTING_OPERATION"))

(smithy/sdk/shapes:define-enum container-type
    common-lisp:nil
  (:ts "TS")
  (:cmaf "CMAF")
  (:ism "ISM"))

(smithy/sdk/shapes:define-input create-channel-group-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken" :http-header
                                  "x-amzn-client-token")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateChannelGroupRequest"))

(smithy/sdk/shapes:define-output create-channel-group-response common-lisp:nil
                                 ((channel-group-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ChannelGroupName")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (egress-domain :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "EgressDomain")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "CreateChannelGroupResponse"))

(smithy/sdk/shapes:define-input create-channel-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken" :http-header
                                  "x-amzn-client-token")
                                 (input-type :target-type input-type
                                  :member-name "InputType")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (input-switch-configuration :target-type
                                  input-switch-configuration :member-name
                                  "InputSwitchConfiguration")
                                 (output-header-configuration :target-type
                                  output-header-configuration :member-name
                                  "OutputHeaderConfiguration")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateChannelRequest"))

(smithy/sdk/shapes:define-output create-channel-response common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (channel-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ChannelName")
                                  (channel-group-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ChannelGroupName")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (ingest-endpoints :target-type
                                   ingest-endpoint-list :member-name
                                   "IngestEndpoints")
                                  (input-type :target-type input-type
                                   :member-name "InputType")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (input-switch-configuration :target-type
                                   input-switch-configuration :member-name
                                   "InputSwitchConfiguration")
                                  (output-header-configuration :target-type
                                   output-header-configuration :member-name
                                   "OutputHeaderConfiguration"))
                                 (:shape-name "CreateChannelResponse"))

(smithy/sdk/shapes:define-structure create-dash-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type manifest-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (manifest-window-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ManifestWindowSeconds")
                                     (filter-configuration :target-type
                                      filter-configuration :member-name
                                      "FilterConfiguration")
                                     (min-update-period-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MinUpdatePeriodSeconds")
                                     (min-buffer-time-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MinBufferTimeSeconds")
                                     (suggested-presentation-delay-seconds
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "SuggestedPresentationDelaySeconds")
                                     (segment-template-format :target-type
                                      dash-segment-template-format :member-name
                                      "SegmentTemplateFormat")
                                     (period-triggers :target-type
                                      dash-period-triggers :member-name
                                      "PeriodTriggers")
                                     (scte-dash :target-type scte-dash
                                      :member-name "ScteDash")
                                     (drm-signaling :target-type
                                      dash-drm-signaling :member-name
                                      "DrmSignaling")
                                     (utc-timing :target-type dash-utc-timing
                                      :member-name "UtcTiming")
                                     (profiles :target-type dash-profiles
                                      :member-name "Profiles")
                                     (base-urls :target-type dash-base-urls
                                      :member-name "BaseUrls")
                                     (program-information :target-type
                                      dash-program-information :member-name
                                      "ProgramInformation")
                                     (dvb-settings :target-type
                                      dash-dvb-settings :member-name
                                      "DvbSettings")
                                     (compactness :target-type dash-compactness
                                      :member-name "Compactness")
                                     (subtitle-configuration :target-type
                                      dash-subtitle-configuration :member-name
                                      "SubtitleConfiguration"))
                                    (:shape-name
                                     "CreateDashManifestConfiguration"))

(smithy/sdk/shapes:define-list create-dash-manifests :member
                               create-dash-manifest-configuration)

(smithy/sdk/shapes:define-input create-harvest-job-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t)
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (harvested-manifests :target-type
                                  harvested-manifests :required common-lisp:t
                                  :member-name "HarvestedManifests")
                                 (schedule-configuration :target-type
                                  harvester-schedule-configuration :required
                                  common-lisp:t :member-name
                                  "ScheduleConfiguration")
                                 (destination :target-type destination
                                  :required common-lisp:t :member-name
                                  "Destination")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken" :http-header
                                  "x-amzn-client-token")
                                 (harvest-job-name :target-type resource-name
                                  :member-name "HarvestJobName")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateHarvestJobRequest"))

(smithy/sdk/shapes:define-output create-harvest-job-response common-lisp:nil
                                 ((channel-group-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "ChannelGroupName")
                                  (channel-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "ChannelName")
                                  (origin-endpoint-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "OriginEndpointName")
                                  (destination :target-type destination
                                   :required common-lisp:t :member-name
                                   "Destination")
                                  (harvest-job-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "HarvestJobName")
                                  (harvested-manifests :target-type
                                   harvested-manifests :required common-lisp:t
                                   :member-name "HarvestedManifests")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (schedule-configuration :target-type
                                   harvester-schedule-configuration :required
                                   common-lisp:t :member-name
                                   "ScheduleConfiguration")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (status :target-type harvest-job-status
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (error-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ErrorMessage")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "CreateHarvestJobResponse"))

(smithy/sdk/shapes:define-structure create-hls-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type manifest-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (child-manifest-name :target-type
                                      manifest-name :member-name
                                      "ChildManifestName")
                                     (scte-hls :target-type scte-hls
                                      :member-name "ScteHls")
                                     (start-tag :target-type start-tag
                                      :member-name "StartTag")
                                     (manifest-window-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ManifestWindowSeconds")
                                     (program-date-time-interval-seconds
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "ProgramDateTimeIntervalSeconds")
                                     (filter-configuration :target-type
                                      filter-configuration :member-name
                                      "FilterConfiguration")
                                     (url-encode-child-manifest :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UrlEncodeChildManifest"))
                                    (:shape-name
                                     "CreateHlsManifestConfiguration"))

(smithy/sdk/shapes:define-list create-hls-manifests :member
                               create-hls-manifest-configuration)

(smithy/sdk/shapes:define-structure
 create-low-latency-hls-manifest-configuration common-lisp:nil
 ((manifest-name :target-type manifest-name :required common-lisp:t
   :member-name "ManifestName")
  (child-manifest-name :target-type manifest-name :member-name
   "ChildManifestName")
  (scte-hls :target-type scte-hls :member-name "ScteHls")
  (start-tag :target-type start-tag :member-name "StartTag")
  (manifest-window-seconds :target-type smithy/sdk/smithy-types:integer
   :member-name "ManifestWindowSeconds")
  (program-date-time-interval-seconds :target-type
   smithy/sdk/smithy-types:integer :member-name
   "ProgramDateTimeIntervalSeconds")
  (filter-configuration :target-type filter-configuration :member-name
   "FilterConfiguration")
  (url-encode-child-manifest :target-type smithy/sdk/smithy-types:boolean
   :member-name "UrlEncodeChildManifest"))
 (:shape-name "CreateLowLatencyHlsManifestConfiguration"))

(smithy/sdk/shapes:define-list create-low-latency-hls-manifests :member
                               create-low-latency-hls-manifest-configuration)

(smithy/sdk/shapes:define-structure create-mss-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type manifest-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (manifest-window-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ManifestWindowSeconds")
                                     (filter-configuration :target-type
                                      filter-configuration :member-name
                                      "FilterConfiguration")
                                     (manifest-layout :target-type
                                      mss-manifest-layout :member-name
                                      "ManifestLayout"))
                                    (:shape-name
                                     "CreateMssManifestConfiguration"))

(smithy/sdk/shapes:define-list create-mss-manifests :member
                               create-mss-manifest-configuration)

(smithy/sdk/shapes:define-input create-origin-endpoint-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName")
                                 (container-type :target-type container-type
                                  :required common-lisp:t :member-name
                                  "ContainerType")
                                 (segment :target-type segment :member-name
                                  "Segment")
                                 (client-token :target-type idempotency-token
                                  :member-name "ClientToken" :http-header
                                  "x-amzn-client-token")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (startover-window-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "StartoverWindowSeconds")
                                 (hls-manifests :target-type
                                  create-hls-manifests :member-name
                                  "HlsManifests")
                                 (low-latency-hls-manifests :target-type
                                  create-low-latency-hls-manifests :member-name
                                  "LowLatencyHlsManifests")
                                 (dash-manifests :target-type
                                  create-dash-manifests :member-name
                                  "DashManifests")
                                 (mss-manifests :target-type
                                  create-mss-manifests :member-name
                                  "MssManifests")
                                 (force-endpoint-error-configuration
                                  :target-type
                                  force-endpoint-error-configuration
                                  :member-name
                                  "ForceEndpointErrorConfiguration")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateOriginEndpointRequest"))

(smithy/sdk/shapes:define-output create-origin-endpoint-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (channel-group-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "ChannelGroupName")
                                  (channel-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "ChannelName")
                                  (origin-endpoint-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "OriginEndpointName")
                                  (container-type :target-type container-type
                                   :required common-lisp:t :member-name
                                   "ContainerType")
                                  (segment :target-type segment :required
                                   common-lisp:t :member-name "Segment")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (startover-window-seconds :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "StartoverWindowSeconds")
                                  (hls-manifests :target-type get-hls-manifests
                                   :member-name "HlsManifests")
                                  (low-latency-hls-manifests :target-type
                                   get-low-latency-hls-manifests :member-name
                                   "LowLatencyHlsManifests")
                                  (dash-manifests :target-type
                                   get-dash-manifests :member-name
                                   "DashManifests")
                                  (mss-manifests :target-type get-mss-manifests
                                   :member-name "MssManifests")
                                  (force-endpoint-error-configuration
                                   :target-type
                                   force-endpoint-error-configuration
                                   :member-name
                                   "ForceEndpointErrorConfiguration")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "CreateOriginEndpointResponse"))

(smithy/sdk/shapes:define-structure dash-base-url common-lisp:nil
                                    ((url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Url")
                                     (service-location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ServiceLocation")
                                     (dvb-priority :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "DvbPriority")
                                     (dvb-weight :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "DvbWeight"))
                                    (:shape-name "DashBaseUrl"))

(smithy/sdk/shapes:define-list dash-base-urls :member dash-base-url)

(smithy/sdk/shapes:define-enum dash-compactness
    common-lisp:nil
  (:standard "STANDARD")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum dash-drm-signaling
    common-lisp:nil
  (:individual "INDIVIDUAL")
  (:referenced "REFERENCED"))

(smithy/sdk/shapes:define-list dash-dvb-error-metrics :member
                               dash-dvb-metrics-reporting)

(smithy/sdk/shapes:define-structure dash-dvb-font-download common-lisp:nil
                                    ((url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Url")
                                     (mime-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MimeType")
                                     (font-family :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "FontFamily"))
                                    (:shape-name "DashDvbFontDownload"))

(smithy/sdk/shapes:define-structure dash-dvb-metrics-reporting common-lisp:nil
                                    ((reporting-url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ReportingUrl")
                                     (probability :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Probability"))
                                    (:shape-name "DashDvbMetricsReporting"))

(smithy/sdk/shapes:define-structure dash-dvb-settings common-lisp:nil
                                    ((font-download :target-type
                                      dash-dvb-font-download :member-name
                                      "FontDownload")
                                     (error-metrics :target-type
                                      dash-dvb-error-metrics :member-name
                                      "ErrorMetrics"))
                                    (:shape-name "DashDvbSettings"))

(smithy/sdk/shapes:define-enum dash-period-trigger
    common-lisp:nil
  (:avails "AVAILS")
  (:drm-key-rotation "DRM_KEY_ROTATION")
  (:source-changes "SOURCE_CHANGES")
  (:source-disruptions "SOURCE_DISRUPTIONS")
  (:none "NONE"))

(smithy/sdk/shapes:define-list dash-period-triggers :member dash-period-trigger)

(smithy/sdk/shapes:define-enum dash-profile
    common-lisp:nil
  (:dvb-dash "DVB_DASH"))

(smithy/sdk/shapes:define-list dash-profiles :member dash-profile)

(smithy/sdk/shapes:define-structure dash-program-information common-lisp:nil
                                    ((title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Title")
                                     (source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Source")
                                     (copyright :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Copyright")
                                     (language-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LanguageCode")
                                     (more-information-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MoreInformationUrl"))
                                    (:shape-name "DashProgramInformation"))

(smithy/sdk/shapes:define-enum dash-segment-template-format
    common-lisp:nil
  (:number-with-timeline "NUMBER_WITH_TIMELINE"))

(smithy/sdk/shapes:define-structure dash-subtitle-configuration common-lisp:nil
                                    ((ttml-configuration :target-type
                                      dash-ttml-configuration :member-name
                                      "TtmlConfiguration"))
                                    (:shape-name "DashSubtitleConfiguration"))

(smithy/sdk/shapes:define-structure dash-ttml-configuration common-lisp:nil
                                    ((ttml-profile :target-type
                                      dash-ttml-profile :required common-lisp:t
                                      :member-name "TtmlProfile"))
                                    (:shape-name "DashTtmlConfiguration"))

(smithy/sdk/shapes:define-enum dash-ttml-profile
    common-lisp:nil
  (:imsc-1 "IMSC_1")
  (:ebu-tt-d-101 "EBU_TT_D_101"))

(smithy/sdk/shapes:define-structure dash-utc-timing common-lisp:nil
                                    ((timing-mode :target-type
                                      dash-utc-timing-mode :member-name
                                      "TimingMode")
                                     (timing-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TimingSource"))
                                    (:shape-name "DashUtcTiming"))

(smithy/sdk/shapes:define-enum dash-utc-timing-mode
    common-lisp:nil
  (:http-head "HTTP_HEAD")
  (:http-iso "HTTP_ISO")
  (:http-xsdate "HTTP_XSDATE")
  (:utc-direct "UTC_DIRECT"))

(smithy/sdk/shapes:define-input delete-channel-group-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteChannelGroupRequest"))

(smithy/sdk/shapes:define-output delete-channel-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteChannelGroupResponse"))

(smithy/sdk/shapes:define-input delete-channel-policy-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t))
                                (:shape-name "DeleteChannelPolicyRequest"))

(smithy/sdk/shapes:define-output delete-channel-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteChannelPolicyResponse"))

(smithy/sdk/shapes:define-input delete-channel-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t))
                                (:shape-name "DeleteChannelRequest"))

(smithy/sdk/shapes:define-output delete-channel-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteChannelResponse"))

(smithy/sdk/shapes:define-input delete-origin-endpoint-policy-request
                                common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteOriginEndpointPolicyRequest"))

(smithy/sdk/shapes:define-output delete-origin-endpoint-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteOriginEndpointPolicyResponse"))

(smithy/sdk/shapes:define-input delete-origin-endpoint-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteOriginEndpointRequest"))

(smithy/sdk/shapes:define-output delete-origin-endpoint-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteOriginEndpointResponse"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((s3destination :target-type
                                      s3destination-config :required
                                      common-lisp:t :member-name
                                      "S3Destination"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-enum drm-system
    common-lisp:nil
  (:clear-key-aes-128 "CLEAR_KEY_AES_128")
  (:fairplay "FAIRPLAY")
  (:playready "PLAYREADY")
  (:widevine "WIDEVINE")
  (:irdeto "IRDETO"))

(smithy/sdk/shapes:define-list drm-systems :member drm-system)

(smithy/sdk/shapes:define-structure encryption common-lisp:nil
                                    ((constant-initialization-vector
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "ConstantInitializationVector")
                                     (encryption-method :target-type
                                      encryption-method :required common-lisp:t
                                      :member-name "EncryptionMethod")
                                     (key-rotation-interval-seconds
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "KeyRotationIntervalSeconds")
                                     (cmaf-exclude-segment-drm-metadata
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "CmafExcludeSegmentDrmMetadata")
                                     (speke-key-provider :target-type
                                      speke-key-provider :required
                                      common-lisp:t :member-name
                                      "SpekeKeyProvider"))
                                    (:shape-name "Encryption"))

(smithy/sdk/shapes:define-structure encryption-contract-configuration
                                    common-lisp:nil
                                    ((preset-speke20audio :target-type
                                      preset-speke20audio :required
                                      common-lisp:t :member-name
                                      "PresetSpeke20Audio")
                                     (preset-speke20video :target-type
                                      preset-speke20video :required
                                      common-lisp:t :member-name
                                      "PresetSpeke20Video"))
                                    (:shape-name
                                     "EncryptionContractConfiguration"))

(smithy/sdk/shapes:define-structure encryption-method common-lisp:nil
                                    ((ts-encryption-method :target-type
                                      ts-encryption-method :member-name
                                      "TsEncryptionMethod")
                                     (cmaf-encryption-method :target-type
                                      cmaf-encryption-method :member-name
                                      "CmafEncryptionMethod")
                                     (ism-encryption-method :target-type
                                      ism-encryption-method :member-name
                                      "IsmEncryptionMethod"))
                                    (:shape-name "EncryptionMethod"))

(smithy/sdk/shapes:define-enum endpoint-error-condition
    common-lisp:nil
  (:stale-manifest "STALE_MANIFEST")
  (:incomplete-manifest "INCOMPLETE_MANIFEST")
  (:missing-drm-key "MISSING_DRM_KEY")
  (:slate-input "SLATE_INPUT"))

(smithy/sdk/shapes:define-list endpoint-error-conditions :member
                               endpoint-error-condition)

(smithy/sdk/shapes:define-type entity-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter-configuration common-lisp:nil
                                    ((manifest-filter :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ManifestFilter")
                                     (start :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "Start")
                                     (end :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "End")
                                     (time-delay-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TimeDelaySeconds")
                                     (clip-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "ClipStartTime"))
                                    (:shape-name "FilterConfiguration"))

(smithy/sdk/shapes:define-structure force-endpoint-error-configuration
                                    common-lisp:nil
                                    ((endpoint-error-conditions :target-type
                                      endpoint-error-conditions :member-name
                                      "EndpointErrorConditions"))
                                    (:shape-name
                                     "ForceEndpointErrorConfiguration"))

(smithy/sdk/shapes:define-input get-channel-group-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetChannelGroupRequest"))

(smithy/sdk/shapes:define-output get-channel-group-response common-lisp:nil
                                 ((channel-group-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ChannelGroupName")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (egress-domain :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "EgressDomain")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "GetChannelGroupResponse"))

(smithy/sdk/shapes:define-input get-channel-policy-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t))
                                (:shape-name "GetChannelPolicyRequest"))

(smithy/sdk/shapes:define-output get-channel-policy-response common-lisp:nil
                                 ((channel-group-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ChannelGroupName")
                                  (channel-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ChannelName")
                                  (policy :target-type policy-text :required
                                   common-lisp:t :member-name "Policy"))
                                 (:shape-name "GetChannelPolicyResponse"))

(smithy/sdk/shapes:define-input get-channel-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t))
                                (:shape-name "GetChannelRequest"))

(smithy/sdk/shapes:define-output get-channel-response common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (channel-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ChannelName")
                                  (channel-group-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ChannelGroupName")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (reset-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "ResetAt")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (ingest-endpoints :target-type
                                   ingest-endpoint-list :member-name
                                   "IngestEndpoints")
                                  (input-type :target-type input-type
                                   :member-name "InputType")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (input-switch-configuration :target-type
                                   input-switch-configuration :member-name
                                   "InputSwitchConfiguration")
                                  (output-header-configuration :target-type
                                   output-header-configuration :member-name
                                   "OutputHeaderConfiguration"))
                                 (:shape-name "GetChannelResponse"))

(smithy/sdk/shapes:define-structure get-dash-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Url")
                                     (manifest-window-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ManifestWindowSeconds")
                                     (filter-configuration :target-type
                                      filter-configuration :member-name
                                      "FilterConfiguration")
                                     (min-update-period-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MinUpdatePeriodSeconds")
                                     (min-buffer-time-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MinBufferTimeSeconds")
                                     (suggested-presentation-delay-seconds
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "SuggestedPresentationDelaySeconds")
                                     (segment-template-format :target-type
                                      dash-segment-template-format :member-name
                                      "SegmentTemplateFormat")
                                     (period-triggers :target-type
                                      dash-period-triggers :member-name
                                      "PeriodTriggers")
                                     (scte-dash :target-type scte-dash
                                      :member-name "ScteDash")
                                     (drm-signaling :target-type
                                      dash-drm-signaling :member-name
                                      "DrmSignaling")
                                     (utc-timing :target-type dash-utc-timing
                                      :member-name "UtcTiming")
                                     (profiles :target-type dash-profiles
                                      :member-name "Profiles")
                                     (base-urls :target-type dash-base-urls
                                      :member-name "BaseUrls")
                                     (program-information :target-type
                                      dash-program-information :member-name
                                      "ProgramInformation")
                                     (dvb-settings :target-type
                                      dash-dvb-settings :member-name
                                      "DvbSettings")
                                     (compactness :target-type dash-compactness
                                      :member-name "Compactness")
                                     (subtitle-configuration :target-type
                                      dash-subtitle-configuration :member-name
                                      "SubtitleConfiguration"))
                                    (:shape-name
                                     "GetDashManifestConfiguration"))

(smithy/sdk/shapes:define-list get-dash-manifests :member
                               get-dash-manifest-configuration)

(smithy/sdk/shapes:define-input get-harvest-job-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t)
                                 (harvest-job-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "HarvestJobName" :http-label common-lisp:t))
                                (:shape-name "GetHarvestJobRequest"))

(smithy/sdk/shapes:define-output get-harvest-job-response common-lisp:nil
                                 ((channel-group-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "ChannelGroupName")
                                  (channel-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "ChannelName")
                                  (origin-endpoint-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "OriginEndpointName")
                                  (destination :target-type destination
                                   :required common-lisp:t :member-name
                                   "Destination")
                                  (harvest-job-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "HarvestJobName")
                                  (harvested-manifests :target-type
                                   harvested-manifests :required common-lisp:t
                                   :member-name "HarvestedManifests")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (schedule-configuration :target-type
                                   harvester-schedule-configuration :required
                                   common-lisp:t :member-name
                                   "ScheduleConfiguration")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (status :target-type harvest-job-status
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (error-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ErrorMessage")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetHarvestJobResponse"))

(smithy/sdk/shapes:define-structure get-hls-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Url")
                                     (child-manifest-name :target-type
                                      resource-name :member-name
                                      "ChildManifestName")
                                     (manifest-window-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ManifestWindowSeconds")
                                     (program-date-time-interval-seconds
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "ProgramDateTimeIntervalSeconds")
                                     (scte-hls :target-type scte-hls
                                      :member-name "ScteHls")
                                     (filter-configuration :target-type
                                      filter-configuration :member-name
                                      "FilterConfiguration")
                                     (start-tag :target-type start-tag
                                      :member-name "StartTag")
                                     (url-encode-child-manifest :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UrlEncodeChildManifest"))
                                    (:shape-name "GetHlsManifestConfiguration"))

(smithy/sdk/shapes:define-list get-hls-manifests :member
                               get-hls-manifest-configuration)

(smithy/sdk/shapes:define-structure get-low-latency-hls-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Url")
                                     (child-manifest-name :target-type
                                      resource-name :member-name
                                      "ChildManifestName")
                                     (manifest-window-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ManifestWindowSeconds")
                                     (program-date-time-interval-seconds
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "ProgramDateTimeIntervalSeconds")
                                     (scte-hls :target-type scte-hls
                                      :member-name "ScteHls")
                                     (filter-configuration :target-type
                                      filter-configuration :member-name
                                      "FilterConfiguration")
                                     (start-tag :target-type start-tag
                                      :member-name "StartTag")
                                     (url-encode-child-manifest :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UrlEncodeChildManifest"))
                                    (:shape-name
                                     "GetLowLatencyHlsManifestConfiguration"))

(smithy/sdk/shapes:define-list get-low-latency-hls-manifests :member
                               get-low-latency-hls-manifest-configuration)

(smithy/sdk/shapes:define-structure get-mss-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type manifest-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Url")
                                     (filter-configuration :target-type
                                      filter-configuration :member-name
                                      "FilterConfiguration")
                                     (manifest-window-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ManifestWindowSeconds")
                                     (manifest-layout :target-type
                                      mss-manifest-layout :member-name
                                      "ManifestLayout"))
                                    (:shape-name "GetMssManifestConfiguration"))

(smithy/sdk/shapes:define-list get-mss-manifests :member
                               get-mss-manifest-configuration)

(smithy/sdk/shapes:define-input get-origin-endpoint-policy-request
                                common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetOriginEndpointPolicyRequest"))

(smithy/sdk/shapes:define-output get-origin-endpoint-policy-response
                                 common-lisp:nil
                                 ((channel-group-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "ChannelGroupName")
                                  (channel-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "ChannelName")
                                  (origin-endpoint-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "OriginEndpointName")
                                  (policy :target-type policy-text :required
                                   common-lisp:t :member-name "Policy")
                                  (cdn-auth-configuration :target-type
                                   cdn-auth-configuration :member-name
                                   "CdnAuthConfiguration"))
                                 (:shape-name
                                  "GetOriginEndpointPolicyResponse"))

(smithy/sdk/shapes:define-input get-origin-endpoint-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetOriginEndpointRequest"))

(smithy/sdk/shapes:define-output get-origin-endpoint-response common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (channel-group-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "ChannelGroupName")
                                  (channel-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "ChannelName")
                                  (origin-endpoint-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "OriginEndpointName")
                                  (container-type :target-type container-type
                                   :required common-lisp:t :member-name
                                   "ContainerType")
                                  (segment :target-type segment :required
                                   common-lisp:t :member-name "Segment")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (reset-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "ResetAt")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (startover-window-seconds :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "StartoverWindowSeconds")
                                  (hls-manifests :target-type get-hls-manifests
                                   :member-name "HlsManifests")
                                  (low-latency-hls-manifests :target-type
                                   get-low-latency-hls-manifests :member-name
                                   "LowLatencyHlsManifests")
                                  (dash-manifests :target-type
                                   get-dash-manifests :member-name
                                   "DashManifests")
                                  (mss-manifests :target-type get-mss-manifests
                                   :member-name "MssManifests")
                                  (force-endpoint-error-configuration
                                   :target-type
                                   force-endpoint-error-configuration
                                   :member-name
                                   "ForceEndpointErrorConfiguration")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetOriginEndpointResponse"))

(smithy/sdk/shapes:define-structure harvest-job common-lisp:nil
                                    ((channel-group-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "ChannelGroupName")
                                     (channel-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (origin-endpoint-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "OriginEndpointName")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "Destination")
                                     (harvest-job-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "HarvestJobName")
                                     (harvested-manifests :target-type
                                      harvested-manifests :required
                                      common-lisp:t :member-name
                                      "HarvestedManifests")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (schedule-configuration :target-type
                                      harvester-schedule-configuration
                                      :required common-lisp:t :member-name
                                      "ScheduleConfiguration")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "ModifiedAt")
                                     (status :target-type harvest-job-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ErrorMessage")
                                     (etag :target-type entity-tag :member-name
                                      "ETag"))
                                    (:shape-name "HarvestJob"))

common-lisp:nil

(smithy/sdk/shapes:define-enum harvest-job-status
    common-lisp:nil
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:cancelled "CANCELLED")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list harvest-jobs-list :member harvest-job)

(smithy/sdk/shapes:define-structure harvested-dash-manifest common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName"))
                                    (:shape-name "HarvestedDashManifest"))

(smithy/sdk/shapes:define-list harvested-dash-manifests-list :member
                               harvested-dash-manifest)

(smithy/sdk/shapes:define-structure harvested-hls-manifest common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName"))
                                    (:shape-name "HarvestedHlsManifest"))

(smithy/sdk/shapes:define-list harvested-hls-manifests-list :member
                               harvested-hls-manifest)

(smithy/sdk/shapes:define-structure harvested-low-latency-hls-manifest
                                    common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName"))
                                    (:shape-name
                                     "HarvestedLowLatencyHlsManifest"))

(smithy/sdk/shapes:define-list harvested-low-latency-hls-manifests-list :member
                               harvested-low-latency-hls-manifest)

(smithy/sdk/shapes:define-structure harvested-manifests common-lisp:nil
                                    ((hls-manifests :target-type
                                      harvested-hls-manifests-list :member-name
                                      "HlsManifests")
                                     (dash-manifests :target-type
                                      harvested-dash-manifests-list
                                      :member-name "DashManifests")
                                     (low-latency-hls-manifests :target-type
                                      harvested-low-latency-hls-manifests-list
                                      :member-name "LowLatencyHlsManifests"))
                                    (:shape-name "HarvestedManifests"))

(smithy/sdk/shapes:define-structure harvester-schedule-configuration
                                    common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "EndTime"))
                                    (:shape-name
                                     "HarvesterScheduleConfiguration"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ingest-endpoint common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Id")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Url"))
                                    (:shape-name "IngestEndpoint"))

(smithy/sdk/shapes:define-list ingest-endpoint-list :member ingest-endpoint)

(smithy/sdk/shapes:define-structure input-switch-configuration common-lisp:nil
                                    ((mqcsinput-switching :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "MQCSInputSwitching")
                                     (preferred-input :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "PreferredInput"))
                                    (:shape-name "InputSwitchConfiguration"))

(smithy/sdk/shapes:define-enum input-type
    common-lisp:nil
  (:hls "HLS")
  (:cmaf "CMAF"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum ism-encryption-method
    common-lisp:nil
  (:cenc "CENC"))

(smithy/sdk/shapes:define-input list-channel-groups-request common-lisp:nil
                                ((max-results :target-type
                                  list-resource-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListChannelGroupsRequest"))

(smithy/sdk/shapes:define-output list-channel-groups-response common-lisp:nil
                                 ((items :target-type channel-groups-list
                                   :member-name "Items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListChannelGroupsResponse"))

(smithy/sdk/shapes:define-input list-channels-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (max-results :target-type
                                  list-resource-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListChannelsRequest"))

(smithy/sdk/shapes:define-output list-channels-response common-lisp:nil
                                 ((items :target-type channel-list :member-name
                                   "Items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListChannelsResponse"))

(smithy/sdk/shapes:define-structure list-dash-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Url"))
                                    (:shape-name
                                     "ListDashManifestConfiguration"))

(smithy/sdk/shapes:define-list list-dash-manifests :member
                               list-dash-manifest-configuration)

(smithy/sdk/shapes:define-input list-harvest-jobs-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :member-name "ChannelName" :http-query
                                  "channelName")
                                 (origin-endpoint-name :target-type
                                  resource-name :member-name
                                  "OriginEndpointName" :http-query
                                  "originEndpointName")
                                 (status :target-type harvest-job-status
                                  :member-name "Status" :http-query
                                  "includeStatus")
                                 (max-results :target-type
                                  list-resource-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListHarvestJobsRequest"))

(smithy/sdk/shapes:define-output list-harvest-jobs-response common-lisp:nil
                                 ((items :target-type harvest-jobs-list
                                   :member-name "Items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListHarvestJobsResponse"))

(smithy/sdk/shapes:define-structure list-hls-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (child-manifest-name :target-type
                                      resource-name :member-name
                                      "ChildManifestName")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Url"))
                                    (:shape-name
                                     "ListHlsManifestConfiguration"))

(smithy/sdk/shapes:define-list list-hls-manifests :member
                               list-hls-manifest-configuration)

(smithy/sdk/shapes:define-structure list-low-latency-hls-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (child-manifest-name :target-type
                                      resource-name :member-name
                                      "ChildManifestName")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Url"))
                                    (:shape-name
                                     "ListLowLatencyHlsManifestConfiguration"))

(smithy/sdk/shapes:define-list list-low-latency-hls-manifests :member
                               list-low-latency-hls-manifest-configuration)

(smithy/sdk/shapes:define-structure list-mss-manifest-configuration
                                    common-lisp:nil
                                    ((manifest-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ManifestName")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Url"))
                                    (:shape-name
                                     "ListMssManifestConfiguration"))

(smithy/sdk/shapes:define-list list-mss-manifests :member
                               list-mss-manifest-configuration)

(smithy/sdk/shapes:define-input list-origin-endpoints-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (max-results :target-type
                                  list-resource-max-results :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListOriginEndpointsRequest"))

(smithy/sdk/shapes:define-output list-origin-endpoints-response common-lisp:nil
                                 ((items :target-type origin-endpoints-list
                                   :member-name "Items")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListOriginEndpointsResponse"))

(smithy/sdk/shapes:define-type list-resource-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type manifest-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum mss-manifest-layout
    common-lisp:nil
  (:full "FULL")
  (:compact "COMPACT"))

(smithy/sdk/shapes:define-structure origin-endpoint-list-configuration
                                    common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Arn")
                                     (channel-group-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "ChannelGroupName")
                                     (channel-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ChannelName")
                                     (origin-endpoint-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "OriginEndpointName")
                                     (container-type :target-type
                                      container-type :required common-lisp:t
                                      :member-name "ContainerType")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "ModifiedAt")
                                     (hls-manifests :target-type
                                      list-hls-manifests :member-name
                                      "HlsManifests")
                                     (low-latency-hls-manifests :target-type
                                      list-low-latency-hls-manifests
                                      :member-name "LowLatencyHlsManifests")
                                     (dash-manifests :target-type
                                      list-dash-manifests :member-name
                                      "DashManifests")
                                     (mss-manifests :target-type
                                      list-mss-manifests :member-name
                                      "MssManifests")
                                     (force-endpoint-error-configuration
                                      :target-type
                                      force-endpoint-error-configuration
                                      :member-name
                                      "ForceEndpointErrorConfiguration"))
                                    (:shape-name
                                     "OriginEndpointListConfiguration"))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-list origin-endpoints-list :member
                               origin-endpoint-list-configuration)

(smithy/sdk/shapes:define-structure output-header-configuration common-lisp:nil
                                    ((publish-mqcs :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "PublishMQCS"))
                                    (:shape-name "OutputHeaderConfiguration"))

(smithy/sdk/shapes:define-type policy-text smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-input put-channel-policy-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (policy :target-type policy-text :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutChannelPolicyRequest"))

(smithy/sdk/shapes:define-output put-channel-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutChannelPolicyResponse"))

(smithy/sdk/shapes:define-input put-origin-endpoint-policy-request
                                common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t)
                                 (policy :target-type policy-text :required
                                  common-lisp:t :member-name "Policy")
                                 (cdn-auth-configuration :target-type
                                  cdn-auth-configuration :member-name
                                  "CdnAuthConfiguration"))
                                (:shape-name "PutOriginEndpointPolicyRequest"))

(smithy/sdk/shapes:define-output put-origin-endpoint-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutOriginEndpointPolicyResponse"))

(smithy/sdk/shapes:define-input reset-channel-state-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t))
                                (:shape-name "ResetChannelStateRequest"))

(smithy/sdk/shapes:define-output reset-channel-state-response common-lisp:nil
                                 ((channel-group-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ChannelGroupName")
                                  (channel-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ChannelName")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (reset-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ResetAt"))
                                 (:shape-name "ResetChannelStateResponse"))

(smithy/sdk/shapes:define-input reset-origin-endpoint-state-request
                                common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t))
                                (:shape-name "ResetOriginEndpointStateRequest"))

(smithy/sdk/shapes:define-output reset-origin-endpoint-state-response
                                 common-lisp:nil
                                 ((channel-group-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "ChannelGroupName")
                                  (channel-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "ChannelName")
                                  (origin-endpoint-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "OriginEndpointName")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (reset-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ResetAt"))
                                 (:shape-name
                                  "ResetOriginEndpointStateResponse"))

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (resource-type-not-found :target-type
                                  resource-type-not-found :member-name
                                  "ResourceTypeNotFound"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type-not-found
    common-lisp:nil
  (:channel-group "CHANNEL_GROUP")
  (:channel "CHANNEL")
  (:origin-endpoint "ORIGIN_ENDPOINT")
  (:harvest-job "HARVEST_JOB"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3destination-config common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (destination-path :target-type
                                      s3destination-path :required
                                      common-lisp:t :member-name
                                      "DestinationPath"))
                                    (:shape-name "S3DestinationConfig"))

(smithy/sdk/shapes:define-type s3destination-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scte common-lisp:nil
                                    ((scte-filter :target-type scte-filter-list
                                      :member-name "ScteFilter"))
                                    (:shape-name "Scte"))

(smithy/sdk/shapes:define-structure scte-dash common-lisp:nil
                                    ((ad-marker-dash :target-type
                                      ad-marker-dash :member-name
                                      "AdMarkerDash"))
                                    (:shape-name "ScteDash"))

(smithy/sdk/shapes:define-enum scte-filter
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
   "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY")
  (:program "PROGRAM"))

(smithy/sdk/shapes:define-list scte-filter-list :member scte-filter)

(smithy/sdk/shapes:define-structure scte-hls common-lisp:nil
                                    ((ad-marker-hls :target-type ad-marker-hls
                                      :member-name "AdMarkerHls"))
                                    (:shape-name "ScteHls"))

(smithy/sdk/shapes:define-structure segment common-lisp:nil
                                    ((segment-duration-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SegmentDurationSeconds")
                                     (segment-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SegmentName")
                                     (ts-use-audio-rendition-group :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TsUseAudioRenditionGroup")
                                     (include-iframe-only-streams :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "IncludeIframeOnlyStreams")
                                     (ts-include-dvb-subtitles :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TsIncludeDvbSubtitles")
                                     (scte :target-type scte :member-name
                                      "Scte")
                                     (encryption :target-type encryption
                                      :member-name "Encryption"))
                                    (:shape-name "Segment"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure speke-key-provider common-lisp:nil
                                    ((encryption-contract-configuration
                                      :target-type
                                      encryption-contract-configuration
                                      :required common-lisp:t :member-name
                                      "EncryptionContractConfiguration")
                                     (resource-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ResourceId")
                                     (drm-systems :target-type drm-systems
                                      :required common-lisp:t :member-name
                                      "DrmSystems")
                                     (role-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "RoleArn")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Url"))
                                    (:shape-name "SpekeKeyProvider"))

(smithy/sdk/shapes:define-structure start-tag common-lisp:nil
                                    ((time-offset :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "TimeOffset")
                                     (precise :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Precise"))
                                    (:shape-name "StartTag"))

(smithy/sdk/shapes:define-type tag-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum ts-encryption-method
    common-lisp:nil
  (:aes-128 "AES_128")
  (:sample-aes "SAMPLE_AES"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-channel-group-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (etag :target-type entity-tag :member-name
                                  "ETag" :http-header "x-amzn-update-if-match")
                                 (description :target-type resource-description
                                  :member-name "Description"))
                                (:shape-name "UpdateChannelGroupRequest"))

(smithy/sdk/shapes:define-output update-channel-group-response common-lisp:nil
                                 ((channel-group-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ChannelGroupName")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (egress-domain :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "EgressDomain")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "UpdateChannelGroupResponse"))

(smithy/sdk/shapes:define-input update-channel-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (etag :target-type entity-tag :member-name
                                  "ETag" :http-header "x-amzn-update-if-match")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (input-switch-configuration :target-type
                                  input-switch-configuration :member-name
                                  "InputSwitchConfiguration")
                                 (output-header-configuration :target-type
                                  output-header-configuration :member-name
                                  "OutputHeaderConfiguration"))
                                (:shape-name "UpdateChannelRequest"))

(smithy/sdk/shapes:define-output update-channel-response common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (channel-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ChannelName")
                                  (channel-group-name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ChannelGroupName")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (ingest-endpoints :target-type
                                   ingest-endpoint-list :member-name
                                   "IngestEndpoints")
                                  (input-type :target-type input-type
                                   :member-name "InputType")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags")
                                  (input-switch-configuration :target-type
                                   input-switch-configuration :member-name
                                   "InputSwitchConfiguration")
                                  (output-header-configuration :target-type
                                   output-header-configuration :member-name
                                   "OutputHeaderConfiguration"))
                                 (:shape-name "UpdateChannelResponse"))

(smithy/sdk/shapes:define-input update-origin-endpoint-request common-lisp:nil
                                ((channel-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelGroupName" :http-label common-lisp:t)
                                 (channel-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ChannelName" :http-label common-lisp:t)
                                 (origin-endpoint-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "OriginEndpointName" :http-label
                                  common-lisp:t)
                                 (container-type :target-type container-type
                                  :required common-lisp:t :member-name
                                  "ContainerType")
                                 (segment :target-type segment :member-name
                                  "Segment")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (startover-window-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "StartoverWindowSeconds")
                                 (hls-manifests :target-type
                                  create-hls-manifests :member-name
                                  "HlsManifests")
                                 (low-latency-hls-manifests :target-type
                                  create-low-latency-hls-manifests :member-name
                                  "LowLatencyHlsManifests")
                                 (dash-manifests :target-type
                                  create-dash-manifests :member-name
                                  "DashManifests")
                                 (mss-manifests :target-type
                                  create-mss-manifests :member-name
                                  "MssManifests")
                                 (force-endpoint-error-configuration
                                  :target-type
                                  force-endpoint-error-configuration
                                  :member-name
                                  "ForceEndpointErrorConfiguration")
                                 (etag :target-type entity-tag :member-name
                                  "ETag" :http-header
                                  "x-amzn-update-if-match"))
                                (:shape-name "UpdateOriginEndpointRequest"))

(smithy/sdk/shapes:define-output update-origin-endpoint-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (channel-group-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "ChannelGroupName")
                                  (channel-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "ChannelName")
                                  (origin-endpoint-name :target-type
                                   resource-name :required common-lisp:t
                                   :member-name "OriginEndpointName")
                                  (container-type :target-type container-type
                                   :required common-lisp:t :member-name
                                   "ContainerType")
                                  (segment :target-type segment :required
                                   common-lisp:t :member-name "Segment")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (startover-window-seconds :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "StartoverWindowSeconds")
                                  (hls-manifests :target-type get-hls-manifests
                                   :member-name "HlsManifests")
                                  (low-latency-hls-manifests :target-type
                                   get-low-latency-hls-manifests :member-name
                                   "LowLatencyHlsManifests")
                                  (mss-manifests :target-type get-mss-manifests
                                   :member-name "MssManifests")
                                  (force-endpoint-error-configuration
                                   :target-type
                                   force-endpoint-error-configuration
                                   :member-name
                                   "ForceEndpointErrorConfiguration")
                                  (etag :target-type entity-tag :member-name
                                   "ETag")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags")
                                  (dash-manifests :target-type
                                   get-dash-manifests :member-name
                                   "DashManifests"))
                                 (:shape-name "UpdateOriginEndpointResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (validation-exception-type :target-type
                                  validation-exception-type :member-name
                                  "ValidationExceptionType"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum validation-exception-type
    common-lisp:nil
  (:container-type-immutable "CONTAINER_TYPE_IMMUTABLE")
  (:invalid-pagination-token "INVALID_PAGINATION_TOKEN")
  (:invalid-pagination-max-results "INVALID_PAGINATION_MAX_RESULTS")
  (:invalid-policy "INVALID_POLICY")
  (:invalid-role-arn "INVALID_ROLE_ARN")
  (:manifest-name-collision "MANIFEST_NAME_COLLISION")
  (:encryption-method-container-type-mismatch
   "ENCRYPTION_METHOD_CONTAINER_TYPE_MISMATCH")
  (:cenc-iv-incompatible "CENC_IV_INCOMPATIBLE")
  (:encryption-contract-without-audio-rendition-incompatible
   "ENCRYPTION_CONTRACT_WITHOUT_AUDIO_RENDITION_INCOMPATIBLE")
  (:encryption-contract-with-ism-container-incompatible
   "ENCRYPTION_CONTRACT_WITH_ISM_CONTAINER_INCOMPATIBLE")
  (:encryption-contract-unencrypted "ENCRYPTION_CONTRACT_UNENCRYPTED")
  (:encryption-contract-shared "ENCRYPTION_CONTRACT_SHARED")
  (:num-manifests-low "NUM_MANIFESTS_LOW")
  (:num-manifests-high "NUM_MANIFESTS_HIGH")
  (:manifest-drm-systems-incompatible "MANIFEST_DRM_SYSTEMS_INCOMPATIBLE")
  (:drm-systems-encryption-method-incompatible
   "DRM_SYSTEMS_ENCRYPTION_METHOD_INCOMPATIBLE")
  (:role-arn-not-assumable "ROLE_ARN_NOT_ASSUMABLE")
  (:role-arn-length-out-of-range "ROLE_ARN_LENGTH_OUT_OF_RANGE")
  (:role-arn-invalid-format "ROLE_ARN_INVALID_FORMAT")
  (:url-invalid "URL_INVALID")
  (:url-scheme "URL_SCHEME")
  (:url-user-info "URL_USER_INFO")
  (:url-port "URL_PORT")
  (:url-unknown-host "URL_UNKNOWN_HOST")
  (:url-local-address "URL_LOCAL_ADDRESS")
  (:url-loopback-address "URL_LOOPBACK_ADDRESS")
  (:url-link-local-address "URL_LINK_LOCAL_ADDRESS")
  (:url-multicast-address "URL_MULTICAST_ADDRESS")
  (:member-invalid "MEMBER_INVALID")
  (:member-missing "MEMBER_MISSING")
  (:member-min-value "MEMBER_MIN_VALUE")
  (:member-max-value "MEMBER_MAX_VALUE")
  (:member-min-length "MEMBER_MIN_LENGTH")
  (:member-max-length "MEMBER_MAX_LENGTH")
  (:member-invalid-enum-value "MEMBER_INVALID_ENUM_VALUE")
  (:member-does-not-match-pattern "MEMBER_DOES_NOT_MATCH_PATTERN")
  (:invalid-manifest-filter "INVALID_MANIFEST_FILTER")
  (:invalid-time-delay-seconds "INVALID_TIME_DELAY_SECONDS")
  (:end-time-earlier-than-start-time "END_TIME_EARLIER_THAN_START_TIME")
  (:ts-container-type-with-dash-manifest "TS_CONTAINER_TYPE_WITH_DASH_MANIFEST")
  (:direct-mode-with-timing-source "DIRECT_MODE_WITH_TIMING_SOURCE")
  (:none-mode-with-timing-source "NONE_MODE_WITH_TIMING_SOURCE")
  (:timing-source-missing "TIMING_SOURCE_MISSING")
  (:update-period-smaller-than-segment-duration
   "UPDATE_PERIOD_SMALLER_THAN_SEGMENT_DURATION")
  (:period-triggers-none-specified-with-additional-values
   "PERIOD_TRIGGERS_NONE_SPECIFIED_WITH_ADDITIONAL_VALUES")
  (:drm-signaling-mismatch-segment-encryption-status
   "DRM_SIGNALING_MISMATCH_SEGMENT_ENCRYPTION_STATUS")
  (:only-cmaf-input-type-allow-force-endpoint-error-configuration
   "ONLY_CMAF_INPUT_TYPE_ALLOW_FORCE_ENDPOINT_ERROR_CONFIGURATION")
  (:source-disruptions-enabled-incorrectly
   "SOURCE_DISRUPTIONS_ENABLED_INCORRECTLY")
  (:harvested-manifest-has-start-end-filter-configuration
   "HARVESTED_MANIFEST_HAS_START_END_FILTER_CONFIGURATION")
  (:harvested-manifest-not-found-on-endpoint
   "HARVESTED_MANIFEST_NOT_FOUND_ON_ENDPOINT")
  (:too-many-in-progress-harvest-jobs "TOO_MANY_IN_PROGRESS_HARVEST_JOBS")
  (:harvest-job-ineligible-for-cancellation
   "HARVEST_JOB_INELIGIBLE_FOR_CANCELLATION")
  (:invalid-harvest-job-duration "INVALID_HARVEST_JOB_DURATION")
  (:harvest-job-s3-destination-missing-or-incomplete
   "HARVEST_JOB_S3_DESTINATION_MISSING_OR_INCOMPLETE")
  (:harvest-job-unable-to-write-to-s3-destination
   "HARVEST_JOB_UNABLE_TO_WRITE_TO_S3_DESTINATION")
  (:harvest-job-customer-endpoint-read-access-denied
   "HARVEST_JOB_CUSTOMER_ENDPOINT_READ_ACCESS_DENIED")
  (:clip-start-time-with-start-or-end "CLIP_START_TIME_WITH_START_OR_END")
  (:start-tag-time-offset-invalid "START_TAG_TIME_OFFSET_INVALID")
  (:incompatible-dash-profile-dvb-dash-configuration
   "INCOMPATIBLE_DASH_PROFILE_DVB_DASH_CONFIGURATION")
  (:dash-dvb-attributes-without-dvb-dash-profile
   "DASH_DVB_ATTRIBUTES_WITHOUT_DVB_DASH_PROFILE")
  (:incompatible-dash-compactness-configuration
   "INCOMPATIBLE_DASH_COMPACTNESS_CONFIGURATION")
  (:incompatible-xml-encoding "INCOMPATIBLE_XML_ENCODING")
  (:cmaf-exclude-segment-drm-metadata-incompatible-container-type
   "CMAF_EXCLUDE_SEGMENT_DRM_METADATA_INCOMPATIBLE_CONTAINER_TYPE")
  (:only-cmaf-input-type-allow-mqcs-input-switching
   "ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_INPUT_SWITCHING")
  (:only-cmaf-input-type-allow-mqcs-output-configuration
   "ONLY_CMAF_INPUT_TYPE_ALLOW_MQCS_OUTPUT_CONFIGURATION")
  (:only-cmaf-input-type-allow-preferred-input-configuration
   "ONLY_CMAF_INPUT_TYPE_ALLOW_PREFERRED_INPUT_CONFIGURATION")
  (:ts-container-type-with-mss-manifest "TS_CONTAINER_TYPE_WITH_MSS_MANIFEST")
  (:cmaf-container-type-with-mss-manifest
   "CMAF_CONTAINER_TYPE_WITH_MSS_MANIFEST")
  (:ism-container-type-with-hls-manifest "ISM_CONTAINER_TYPE_WITH_HLS_MANIFEST")
  (:ism-container-type-with-ll-hls-manifest
   "ISM_CONTAINER_TYPE_WITH_LL_HLS_MANIFEST")
  (:ism-container-type-with-dash-manifest
   "ISM_CONTAINER_TYPE_WITH_DASH_MANIFEST")
  (:ism-container-type-with-scte "ISM_CONTAINER_TYPE_WITH_SCTE")
  (:ism-container-with-key-rotation "ISM_CONTAINER_WITH_KEY_ROTATION")
  (:batch-get-secret-value-denied "BATCH_GET_SECRET_VALUE_DENIED")
  (:get-secret-value-denied "GET_SECRET_VALUE_DENIED")
  (:describe-secret-denied "DESCRIBE_SECRET_DENIED")
  (:invalid-secret-format "INVALID_SECRET_FORMAT")
  (:secret-is-not-one-key-value-pair "SECRET_IS_NOT_ONE_KEY_VALUE_PAIR")
  (:invalid-secret-key "INVALID_SECRET_KEY")
  (:invalid-secret-value "INVALID_SECRET_VALUE")
  (:secret-arn-resource-not-found "SECRET_ARN_RESOURCE_NOT_FOUND")
  (:decrypt-secret-failed "DECRYPT_SECRET_FAILED")
  (:too-many-secrets "TOO_MANY_SECRETS")
  (:duplicated-secret "DUPLICATED_SECRET")
  (:malformed-secret-arn "MALFORMED_SECRET_ARN")
  (:secret-from-different-account "SECRET_FROM_DIFFERENT_ACCOUNT")
  (:secret-from-different-region "SECRET_FROM_DIFFERENT_REGION")
  (:invalid-secret "INVALID_SECRET"))

(smithy/sdk/operation:define-operation cancel-harvest-job :shape-name
                                       "CancelHarvestJob" :input
                                       cancel-harvest-job-request :output
                                       cancel-harvest-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob/{HarvestJobName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-channel :shape-name
                                       "CreateChannel" :input
                                       create-channel-request :output
                                       create-channel-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/channelGroup/{ChannelGroupName}/channel")

(smithy/sdk/operation:define-operation create-channel-group :shape-name
                                       "CreateChannelGroup" :input
                                       create-channel-group-request :output
                                       create-channel-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/channelGroup")

(smithy/sdk/operation:define-operation create-harvest-job :shape-name
                                       "CreateHarvestJob" :input
                                       create-harvest-job-request :output
                                       create-harvest-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob")

(smithy/sdk/operation:define-operation create-origin-endpoint :shape-name
                                       "CreateOriginEndpoint" :input
                                       create-origin-endpoint-request :output
                                       create-origin-endpoint-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint")

(smithy/sdk/operation:define-operation delete-channel :shape-name
                                       "DeleteChannel" :input
                                       delete-channel-request :output
                                       delete-channel-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-channel-group :shape-name
                                       "DeleteChannelGroup" :input
                                       delete-channel-group-request :output
                                       delete-channel-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/channelGroup/{ChannelGroupName}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-channel-policy :shape-name
                                       "DeleteChannelPolicy" :input
                                       delete-channel-policy-request :output
                                       delete-channel-policy-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-origin-endpoint :shape-name
                                       "DeleteOriginEndpoint" :input
                                       delete-origin-endpoint-request :output
                                       delete-origin-endpoint-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-origin-endpoint-policy
                                       :shape-name "DeleteOriginEndpointPolicy"
                                       :input
                                       delete-origin-endpoint-policy-request
                                       :output
                                       delete-origin-endpoint-policy-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-channel :shape-name "GetChannel"
                                       :input get-channel-request :output
                                       get-channel-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/")

(smithy/sdk/operation:define-operation get-channel-group :shape-name
                                       "GetChannelGroup" :input
                                       get-channel-group-request :output
                                       get-channel-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/channelGroup/{ChannelGroupName}")

(smithy/sdk/operation:define-operation get-channel-policy :shape-name
                                       "GetChannelPolicy" :input
                                       get-channel-policy-request :output
                                       get-channel-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy")

(smithy/sdk/operation:define-operation get-harvest-job :shape-name
                                       "GetHarvestJob" :input
                                       get-harvest-job-request :output
                                       get-harvest-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob/{HarvestJobName}")

(smithy/sdk/operation:define-operation get-origin-endpoint :shape-name
                                       "GetOriginEndpoint" :input
                                       get-origin-endpoint-request :output
                                       get-origin-endpoint-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}")

(smithy/sdk/operation:define-operation get-origin-endpoint-policy :shape-name
                                       "GetOriginEndpointPolicy" :input
                                       get-origin-endpoint-policy-request
                                       :output
                                       get-origin-endpoint-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy")

(smithy/sdk/operation:define-operation list-channel-groups :shape-name
                                       "ListChannelGroups" :input
                                       list-channel-groups-request :output
                                       list-channel-groups-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/channelGroup" :code
                                       200)

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-request :output
                                       list-channels-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/channelGroup/{ChannelGroupName}/channel"
                                       :code 200)

(smithy/sdk/operation:define-operation list-harvest-jobs :shape-name
                                       "ListHarvestJobs" :input
                                       list-harvest-jobs-request :output
                                       list-harvest-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/channelGroup/{ChannelGroupName}/harvestJob"
                                       :code 200)

(smithy/sdk/operation:define-operation list-origin-endpoints :shape-name
                                       "ListOriginEndpoints" :input
                                       list-origin-endpoints-request :output
                                       list-origin-endpoints-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (validation-exception) :method "GET"
                                       :uri "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation put-channel-policy :shape-name
                                       "PutChannelPolicy" :input
                                       put-channel-policy-request :output
                                       put-channel-policy-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy")

(smithy/sdk/operation:define-operation put-origin-endpoint-policy :shape-name
                                       "PutOriginEndpointPolicy" :input
                                       put-origin-endpoint-policy-request
                                       :output
                                       put-origin-endpoint-policy-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy")

(smithy/sdk/operation:define-operation reset-channel-state :shape-name
                                       "ResetChannelState" :input
                                       reset-channel-state-request :output
                                       reset-channel-state-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/reset")

(smithy/sdk/operation:define-operation reset-origin-endpoint-state :shape-name
                                       "ResetOriginEndpointState" :input
                                       reset-origin-endpoint-state-request
                                       :output
                                       reset-origin-endpoint-state-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/reset")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "POST"
                                       :uri "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (validation-exception) :method "DELETE"
                                       :uri "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-channel :shape-name
                                       "UpdateChannel" :input
                                       update-channel-request :output
                                       update-channel-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/"
                                       :code 200)

(smithy/sdk/operation:define-operation update-channel-group :shape-name
                                       "UpdateChannelGroup" :input
                                       update-channel-group-request :output
                                       update-channel-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/channelGroup/{ChannelGroupName}" :code
                                       200)

(smithy/sdk/operation:define-operation update-origin-endpoint :shape-name
                                       "UpdateOriginEndpoint" :input
                                       update-origin-endpoint-request :output
                                       update-origin-endpoint-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}"
                                       :code 200)
