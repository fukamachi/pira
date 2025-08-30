(uiop/package:define-package #:pira/storage-gateway (:use)
                             (:export #:activate-gateway #:activation-key
                              #:active-directory-status #:add-cache
                              #:add-tags-to-resource #:add-upload-buffer
                              #:add-working-storage #:assign-tape-pool
                              #:associate-file-system #:attach-volume
                              #:audit-destination-arn #:authentication
                              #:automatic-tape-creation-policy-info
                              #:automatic-tape-creation-policy-infos
                              #:automatic-tape-creation-rule
                              #:automatic-tape-creation-rules
                              #:automatic-update-policy
                              #:availability-monitor-test-status
                              #:bandwidth-download-rate-limit
                              #:bandwidth-rate-limit-interval
                              #:bandwidth-rate-limit-intervals #:bandwidth-type
                              #:bandwidth-upload-rate-limit #:boolean
                              #:boolean2 #:cache-attributes #:cache-report-arn
                              #:cache-report-filter #:cache-report-filter-list
                              #:cache-report-filter-name
                              #:cache-report-filter-value
                              #:cache-report-filter-values #:cache-report-info
                              #:cache-report-list #:cache-report-name
                              #:cache-report-status
                              #:cache-stale-timeout-in-seconds
                              #:cachedi-scsivolume #:cachedi-scsivolumes
                              #:cancel-archival #:cancel-cache-report
                              #:cancel-retrieval #:case-sensitivity
                              #:chap-credentials #:chap-info #:chap-secret
                              #:client-token #:cloud-watch-log-group-arn
                              #:create-cachedi-scsivolume
                              #:create-nfsfile-share #:create-smbfile-share
                              #:create-snapshot
                              #:create-snapshot-from-volume-recovery-point
                              #:create-storedi-scsivolume #:create-tape-pool
                              #:create-tape-with-barcode #:create-tapes
                              #:created-date #:dnshost-name #:day-of-month
                              #:day-of-week #:days-of-week
                              #:delete-automatic-tape-creation-policy
                              #:delete-bandwidth-rate-limit
                              #:delete-cache-report #:delete-chap-credentials
                              #:delete-file-share #:delete-gateway
                              #:delete-snapshot-schedule #:delete-tape
                              #:delete-tape-archive #:delete-tape-pool
                              #:delete-volume #:deprecation-date
                              #:describe-availability-monitor-test
                              #:describe-bandwidth-rate-limit
                              #:describe-bandwidth-rate-limit-schedule
                              #:describe-cache #:describe-cache-report
                              #:describe-cachedi-scsivolumes
                              #:describe-chap-credentials
                              #:describe-file-system-associations
                              #:describe-gateway-information
                              #:describe-maintenance-start-time
                              #:describe-nfsfile-shares
                              #:describe-smbfile-shares #:describe-smbsettings
                              #:describe-snapshot-schedule
                              #:describe-storedi-scsivolumes
                              #:describe-tape-archives
                              #:describe-tape-recovery-points #:describe-tapes
                              #:describe-upload-buffer #:describe-vtldevices
                              #:describe-working-storage #:description
                              #:detach-volume #:device-type
                              #:devicei-scsiattributes #:disable-gateway
                              #:disassociate-file-system #:disk
                              #:disk-allocation-type #:disk-attribute
                              #:disk-attribute-list #:disk-id #:disk-ids
                              #:disks #:domain-name #:domain-user-name
                              #:domain-user-password #:double-object
                              #:ec2instance-id #:ec2instance-region
                              #:encryption-type
                              #:endpoint-network-configuration #:endpoint-type
                              #:error-code #:evict-files-failing-upload
                              #:file-share-arn #:file-share-arnlist
                              #:file-share-client-list #:file-share-id
                              #:file-share-info #:file-share-info-list
                              #:file-share-name #:file-share-status
                              #:file-share-type #:file-system-association-arn
                              #:file-system-association-arnlist
                              #:file-system-association-id
                              #:file-system-association-info
                              #:file-system-association-info-list
                              #:file-system-association-status
                              #:file-system-association-status-detail
                              #:file-system-association-status-details
                              #:file-system-association-summary
                              #:file-system-association-summary-list
                              #:file-system-association-sync-error-code
                              #:file-system-location-arn #:folder #:folder-list
                              #:gateway-arn #:gateway-capacity #:gateway-id
                              #:gateway-info #:gateway-name
                              #:gateway-network-interfaces
                              #:gateway-operational-state #:gateway-state
                              #:gateway-timezone #:gateway-type #:gateways
                              #:host #:host-environment #:host-environment-id
                              #:hosts #:hour-of-day #:ipv4address #:initiator
                              #:initiators #:internal-server-error
                              #:invalid-gateway-request-exception
                              #:ip-address-list #:ipv4or-ipv6address-cidr
                              #:iqn-name #:join-domain #:kmskey
                              #:last-software-update
                              #:list-automatic-tape-creation-policies
                              #:list-cache-reports #:list-file-shares
                              #:list-file-system-associations #:list-gateways
                              #:list-local-disks #:list-tags-for-resource
                              #:list-tape-pools #:list-tapes
                              #:list-volume-initiators
                              #:list-volume-recovery-points #:list-volumes
                              #:local-console-password #:location-arn #:marker
                              #:medium-changer-type #:minimum-num-tapes
                              #:minute-of-hour #:nfsfile-share-defaults
                              #:nfsfile-share-info #:nfsfile-share-info-list
                              #:network-interface #:network-interface-id
                              #:next-update-availability-date #:notification-id
                              #:notification-policy #:notify-when-uploaded
                              #:num-tapes-to-create #:object-acl
                              #:organizational-unit #:path #:permission-id
                              #:permission-mode #:pool-arn #:pool-arns
                              #:pool-id #:pool-info #:pool-infos #:pool-name
                              #:pool-status #:positive-int-object
                              #:recurrence-in-hours #:refresh-cache #:region-id
                              #:remove-tags-from-resource
                              #:report-completion-percent #:reset-cache
                              #:resource-arn #:retention-lock-time-in-days
                              #:retention-lock-type #:retrieve-tape-archive
                              #:retrieve-tape-recovery-point #:role
                              #:smbfile-share-info #:smbfile-share-info-list
                              #:smbguest-password #:smblocal-groups
                              #:smbsecurity-strategy
                              #:service-unavailable-error
                              #:set-local-console-password
                              #:set-smbguest-password #:shutdown-gateway
                              #:snapshot-description #:snapshot-id
                              #:software-update-preferences
                              #:software-updates-end-date #:software-version
                              #:squash #:start-availability-monitor-test
                              #:start-cache-report #:start-gateway
                              #:storage-class #:storage-gateway-error
                              #:storage-gateway-20130630 #:storedi-scsivolume
                              #:storedi-scsivolumes
                              #:supported-gateway-capacities #:tag #:tag-key
                              #:tag-keys #:tag-value #:tags #:tape #:tape-arn
                              #:tape-arns #:tape-archive #:tape-archive-status
                              #:tape-archives #:tape-barcode
                              #:tape-barcode-prefix #:tape-drive-type
                              #:tape-info #:tape-infos
                              #:tape-recovery-point-info
                              #:tape-recovery-point-infos
                              #:tape-recovery-point-status #:tape-size
                              #:tape-status #:tape-storage-class #:tape-usage
                              #:tapes #:target-arn #:target-name #:time
                              #:timeout-in-seconds
                              #:update-automatic-tape-creation-policy
                              #:update-bandwidth-rate-limit
                              #:update-bandwidth-rate-limit-schedule
                              #:update-chap-credentials
                              #:update-file-system-association
                              #:update-gateway-information
                              #:update-gateway-software-now
                              #:update-maintenance-start-time
                              #:update-nfsfile-share #:update-smbfile-share
                              #:update-smbfile-share-visibility
                              #:update-smblocal-groups
                              #:update-smbsecurity-strategy
                              #:update-snapshot-schedule
                              #:update-vtldevice-type #:user-list
                              #:user-list-user #:vtldevice #:vtldevice-arn
                              #:vtldevice-arns #:vtldevice-product-identifier
                              #:vtldevice-type #:vtldevice-vendor #:vtldevices
                              #:volume-arn #:volume-arns
                              #:volume-attachment-status #:volume-id
                              #:volume-info #:volume-infos
                              #:volume-recovery-point-info
                              #:volume-recovery-point-infos #:volume-status
                              #:volume-type #:volume-used-in-bytes
                              #:volumei-scsiattributes #:double #:error-details
                              #:integer #:long #:string
                              #:storage-gateway-error))
(common-lisp:in-package #:pira/storage-gateway)

(common-lisp:define-condition storage-gateway-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service storage-gateway-20130630 :shape-name
                                   "StorageGateway_20130630" :version
                                   "2013-06-30" :title "AWS Storage Gateway"
                                   :operations
                                   '(activate-gateway add-cache
                                     add-tags-to-resource add-upload-buffer
                                     add-working-storage assign-tape-pool
                                     associate-file-system attach-volume
                                     cancel-archival cancel-cache-report
                                     cancel-retrieval create-cachedi-scsivolume
                                     create-nfsfile-share create-smbfile-share
                                     create-snapshot
                                     create-snapshot-from-volume-recovery-point
                                     create-storedi-scsivolume create-tape-pool
                                     create-tapes create-tape-with-barcode
                                     delete-automatic-tape-creation-policy
                                     delete-bandwidth-rate-limit
                                     delete-cache-report
                                     delete-chap-credentials delete-file-share
                                     delete-gateway delete-snapshot-schedule
                                     delete-tape delete-tape-archive
                                     delete-tape-pool delete-volume
                                     describe-availability-monitor-test
                                     describe-bandwidth-rate-limit
                                     describe-bandwidth-rate-limit-schedule
                                     describe-cache
                                     describe-cachedi-scsivolumes
                                     describe-cache-report
                                     describe-chap-credentials
                                     describe-file-system-associations
                                     describe-gateway-information
                                     describe-maintenance-start-time
                                     describe-nfsfile-shares
                                     describe-smbfile-shares
                                     describe-smbsettings
                                     describe-snapshot-schedule
                                     describe-storedi-scsivolumes
                                     describe-tape-archives
                                     describe-tape-recovery-points
                                     describe-tapes describe-upload-buffer
                                     describe-vtldevices
                                     describe-working-storage detach-volume
                                     disable-gateway disassociate-file-system
                                     evict-files-failing-upload join-domain
                                     list-automatic-tape-creation-policies
                                     list-cache-reports list-file-shares
                                     list-file-system-associations
                                     list-gateways list-local-disks
                                     list-tags-for-resource list-tape-pools
                                     list-tapes list-volume-initiators
                                     list-volume-recovery-points list-volumes
                                     notify-when-uploaded refresh-cache
                                     remove-tags-from-resource reset-cache
                                     retrieve-tape-archive
                                     retrieve-tape-recovery-point
                                     set-local-console-password
                                     set-smbguest-password shutdown-gateway
                                     start-availability-monitor-test
                                     start-cache-report start-gateway
                                     update-automatic-tape-creation-policy
                                     update-bandwidth-rate-limit
                                     update-bandwidth-rate-limit-schedule
                                     update-chap-credentials
                                     update-file-system-association
                                     update-gateway-information
                                     update-gateway-software-now
                                     update-maintenance-start-time
                                     update-nfsfile-share update-smbfile-share
                                     update-smbfile-share-visibility
                                     update-smblocal-groups
                                     update-smbsecurity-strategy
                                     update-snapshot-schedule
                                     update-vtldevice-type)
                                   :xml-namespace
                                   '(:uri
                                     "http://storagegateway.amazonaws.com/doc/2013-06-30"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Storage Gateway")
                                      ("arnNamespace" . "storagegateway")
                                      ("cloudFormationName" . "StorageGateway")
                                      ("cloudTrailEventSource"
                                       . "storagegateway.amazonaws.com")
                                      ("docId" . "storagegateway-2013-06-30")
                                      ("endpointPrefix" . "storagegateway"))
                                     ("aws.auth#sigv4"
                                      ("name" . "storagegateway"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input activate-gateway-input common-lisp:nil
                                ((activation-key :target-type activation-key
                                  :required common-lisp:t :member-name
                                  "ActivationKey")
                                 (gateway-name :target-type gateway-name
                                  :required common-lisp:t :member-name
                                  "GatewayName")
                                 (gateway-timezone :target-type
                                  gateway-timezone :required common-lisp:t
                                  :member-name "GatewayTimezone")
                                 (gateway-region :target-type region-id
                                  :required common-lisp:t :member-name
                                  "GatewayRegion")
                                 (gateway-type :target-type gateway-type
                                  :member-name "GatewayType")
                                 (tape-drive-type :target-type tape-drive-type
                                  :member-name "TapeDriveType")
                                 (medium-changer-type :target-type
                                  medium-changer-type :member-name
                                  "MediumChangerType")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "ActivateGatewayInput"))

(smithy/sdk/shapes:define-output activate-gateway-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "ActivateGatewayOutput"))

(smithy/sdk/shapes:define-type activation-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum active-directory-status
    common-lisp:nil
  (:access-denied "ACCESS_DENIED")
  (:detached "DETACHED")
  (:joined "JOINED")
  (:joining "JOINING")
  (:network-error "NETWORK_ERROR")
  (:timeout "TIMEOUT")
  (:unknown-error "UNKNOWN_ERROR")
  (:insufficient-permissions "INSUFFICIENT_PERMISSIONS"))

(smithy/sdk/shapes:define-input add-cache-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (disk-ids :target-type disk-ids :required
                                  common-lisp:t :member-name "DiskIds"))
                                (:shape-name "AddCacheInput"))

(smithy/sdk/shapes:define-output add-cache-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "AddCacheOutput"))

(smithy/sdk/shapes:define-input add-tags-to-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsToResourceInput"))

(smithy/sdk/shapes:define-output add-tags-to-resource-output common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :member-name "ResourceARN"))
                                 (:shape-name "AddTagsToResourceOutput"))

(smithy/sdk/shapes:define-input add-upload-buffer-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (disk-ids :target-type disk-ids :required
                                  common-lisp:t :member-name "DiskIds"))
                                (:shape-name "AddUploadBufferInput"))

(smithy/sdk/shapes:define-output add-upload-buffer-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "AddUploadBufferOutput"))

(smithy/sdk/shapes:define-input add-working-storage-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (disk-ids :target-type disk-ids :required
                                  common-lisp:t :member-name "DiskIds"))
                                (:shape-name "AddWorkingStorageInput"))

(smithy/sdk/shapes:define-output add-working-storage-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "AddWorkingStorageOutput"))

(smithy/sdk/shapes:define-input assign-tape-pool-input common-lisp:nil
                                ((tape-arn :target-type tape-arn :required
                                  common-lisp:t :member-name "TapeARN")
                                 (pool-id :target-type pool-id :required
                                  common-lisp:t :member-name "PoolId")
                                 (bypass-governance-retention :target-type
                                  boolean2 :member-name
                                  "BypassGovernanceRetention"))
                                (:shape-name "AssignTapePoolInput"))

(smithy/sdk/shapes:define-output assign-tape-pool-output common-lisp:nil
                                 ((tape-arn :target-type tape-arn :member-name
                                   "TapeARN"))
                                 (:shape-name "AssignTapePoolOutput"))

(smithy/sdk/shapes:define-input associate-file-system-input common-lisp:nil
                                ((user-name :target-type domain-user-name
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (password :target-type domain-user-password
                                  :required common-lisp:t :member-name
                                  "Password")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (location-arn :target-type
                                  file-system-location-arn :required
                                  common-lisp:t :member-name "LocationARN")
                                 (tags :target-type tags :member-name "Tags")
                                 (audit-destination-arn :target-type
                                  audit-destination-arn :member-name
                                  "AuditDestinationARN")
                                 (cache-attributes :target-type
                                  cache-attributes :member-name
                                  "CacheAttributes")
                                 (endpoint-network-configuration :target-type
                                  endpoint-network-configuration :member-name
                                  "EndpointNetworkConfiguration"))
                                (:shape-name "AssociateFileSystemInput"))

(smithy/sdk/shapes:define-output associate-file-system-output common-lisp:nil
                                 ((file-system-association-arn :target-type
                                   file-system-association-arn :member-name
                                   "FileSystemAssociationARN"))
                                 (:shape-name "AssociateFileSystemOutput"))

(smithy/sdk/shapes:define-input attach-volume-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (target-name :target-type target-name
                                  :member-name "TargetName")
                                 (volume-arn :target-type volume-arn :required
                                  common-lisp:t :member-name "VolumeARN")
                                 (network-interface-id :target-type
                                  network-interface-id :required common-lisp:t
                                  :member-name "NetworkInterfaceId")
                                 (disk-id :target-type disk-id :member-name
                                  "DiskId"))
                                (:shape-name "AttachVolumeInput"))

(smithy/sdk/shapes:define-output attach-volume-output common-lisp:nil
                                 ((volume-arn :target-type volume-arn
                                   :member-name "VolumeARN")
                                  (target-arn :target-type target-arn
                                   :member-name "TargetARN"))
                                 (:shape-name "AttachVolumeOutput"))

(smithy/sdk/shapes:define-type audit-destination-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authentication smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure automatic-tape-creation-policy-info
                                    common-lisp:nil
                                    ((automatic-tape-creation-rules
                                      :target-type
                                      automatic-tape-creation-rules
                                      :member-name
                                      "AutomaticTapeCreationRules")
                                     (gateway-arn :target-type gateway-arn
                                      :member-name "GatewayARN"))
                                    (:shape-name
                                     "AutomaticTapeCreationPolicyInfo"))

(smithy/sdk/shapes:define-list automatic-tape-creation-policy-infos :member
                               automatic-tape-creation-policy-info)

(smithy/sdk/shapes:define-structure automatic-tape-creation-rule
                                    common-lisp:nil
                                    ((tape-barcode-prefix :target-type
                                      tape-barcode-prefix :required
                                      common-lisp:t :member-name
                                      "TapeBarcodePrefix")
                                     (pool-id :target-type pool-id :required
                                      common-lisp:t :member-name "PoolId")
                                     (tape-size-in-bytes :target-type tape-size
                                      :required common-lisp:t :member-name
                                      "TapeSizeInBytes")
                                     (minimum-num-tapes :target-type
                                      minimum-num-tapes :required common-lisp:t
                                      :member-name "MinimumNumTapes")
                                     (worm :target-type boolean2 :member-name
                                      "Worm"))
                                    (:shape-name "AutomaticTapeCreationRule"))

(smithy/sdk/shapes:define-list automatic-tape-creation-rules :member
                               automatic-tape-creation-rule)

(smithy/sdk/shapes:define-enum automatic-update-policy
    common-lisp:nil
  (:all-versions "ALL_VERSIONS")
  (:emergency-versions-only "EMERGENCY_VERSIONS_ONLY"))

(smithy/sdk/shapes:define-enum availability-monitor-test-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:failed "FAILED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-type bandwidth-download-rate-limit
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure bandwidth-rate-limit-interval
                                    common-lisp:nil
                                    ((start-hour-of-day :target-type
                                      hour-of-day :required common-lisp:t
                                      :member-name "StartHourOfDay")
                                     (start-minute-of-hour :target-type
                                      minute-of-hour :required common-lisp:t
                                      :member-name "StartMinuteOfHour")
                                     (end-hour-of-day :target-type hour-of-day
                                      :required common-lisp:t :member-name
                                      "EndHourOfDay")
                                     (end-minute-of-hour :target-type
                                      minute-of-hour :required common-lisp:t
                                      :member-name "EndMinuteOfHour")
                                     (days-of-week :target-type days-of-week
                                      :required common-lisp:t :member-name
                                      "DaysOfWeek")
                                     (average-upload-rate-limit-in-bits-per-sec
                                      :target-type bandwidth-upload-rate-limit
                                      :member-name
                                      "AverageUploadRateLimitInBitsPerSec")
                                     (average-download-rate-limit-in-bits-per-sec
                                      :target-type
                                      bandwidth-download-rate-limit
                                      :member-name
                                      "AverageDownloadRateLimitInBitsPerSec"))
                                    (:shape-name "BandwidthRateLimitInterval"))

(smithy/sdk/shapes:define-list bandwidth-rate-limit-intervals :member
                               bandwidth-rate-limit-interval)

(smithy/sdk/shapes:define-type bandwidth-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bandwidth-upload-rate-limit
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean2 smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure cache-attributes common-lisp:nil
                                    ((cache-stale-timeout-in-seconds
                                      :target-type
                                      cache-stale-timeout-in-seconds
                                      :member-name
                                      "CacheStaleTimeoutInSeconds"))
                                    (:shape-name "CacheAttributes"))

(smithy/sdk/shapes:define-type cache-report-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cache-report-filter common-lisp:nil
                                    ((name :target-type
                                      cache-report-filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type
                                      cache-report-filter-values :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "CacheReportFilter"))

(smithy/sdk/shapes:define-list cache-report-filter-list :member
                               cache-report-filter)

(smithy/sdk/shapes:define-enum cache-report-filter-name
    common-lisp:nil
  (:upload-state "UploadState")
  (:upload-failure-reason "UploadFailureReason"))

(smithy/sdk/shapes:define-type cache-report-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cache-report-filter-values :member
                               cache-report-filter-value)

(smithy/sdk/shapes:define-structure cache-report-info common-lisp:nil
                                    ((cache-report-arn :target-type
                                      cache-report-arn :member-name
                                      "CacheReportARN")
                                     (cache-report-status :target-type
                                      cache-report-status :member-name
                                      "CacheReportStatus")
                                     (report-completion-percent :target-type
                                      report-completion-percent :member-name
                                      "ReportCompletionPercent")
                                     (end-time :target-type time :member-name
                                      "EndTime")
                                     (role :target-type role :member-name
                                      "Role")
                                     (file-share-arn :target-type
                                      file-share-arn :member-name
                                      "FileShareARN")
                                     (location-arn :target-type location-arn
                                      :member-name "LocationARN")
                                     (start-time :target-type time :member-name
                                      "StartTime")
                                     (inclusion-filters :target-type
                                      cache-report-filter-list :member-name
                                      "InclusionFilters")
                                     (exclusion-filters :target-type
                                      cache-report-filter-list :member-name
                                      "ExclusionFilters")
                                     (report-name :target-type
                                      cache-report-name :member-name
                                      "ReportName")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name "CacheReportInfo"))

(smithy/sdk/shapes:define-list cache-report-list :member cache-report-info)

(smithy/sdk/shapes:define-type cache-report-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cache-report-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:canceled "CANCELED")
  (:failed "FAILED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-type cache-stale-timeout-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure cachedi-scsivolume common-lisp:nil
                                    ((volume-arn :target-type volume-arn
                                      :member-name "VolumeARN")
                                     (volume-id :target-type volume-id
                                      :member-name "VolumeId")
                                     (volume-type :target-type volume-type
                                      :member-name "VolumeType")
                                     (volume-status :target-type volume-status
                                      :member-name "VolumeStatus")
                                     (volume-attachment-status :target-type
                                      volume-attachment-status :member-name
                                      "VolumeAttachmentStatus")
                                     (volume-size-in-bytes :target-type long
                                      :member-name "VolumeSizeInBytes")
                                     (volume-progress :target-type
                                      double-object :member-name
                                      "VolumeProgress")
                                     (source-snapshot-id :target-type
                                      snapshot-id :member-name
                                      "SourceSnapshotId")
                                     (volumei-scsiattributes :target-type
                                      volumei-scsiattributes :member-name
                                      "VolumeiSCSIAttributes")
                                     (created-date :target-type created-date
                                      :member-name "CreatedDate")
                                     (volume-used-in-bytes :target-type
                                      volume-used-in-bytes :member-name
                                      "VolumeUsedInBytes")
                                     (kmskey :target-type kmskey :member-name
                                      "KMSKey")
                                     (target-name :target-type target-name
                                      :member-name "TargetName"))
                                    (:shape-name "CachediSCSIVolume"))

(smithy/sdk/shapes:define-list cachedi-scsivolumes :member cachedi-scsivolume)

(smithy/sdk/shapes:define-input cancel-archival-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (tape-arn :target-type tape-arn :required
                                  common-lisp:t :member-name "TapeARN"))
                                (:shape-name "CancelArchivalInput"))

(smithy/sdk/shapes:define-output cancel-archival-output common-lisp:nil
                                 ((tape-arn :target-type tape-arn :member-name
                                   "TapeARN"))
                                 (:shape-name "CancelArchivalOutput"))

(smithy/sdk/shapes:define-input cancel-cache-report-input common-lisp:nil
                                ((cache-report-arn :target-type
                                  cache-report-arn :required common-lisp:t
                                  :member-name "CacheReportARN"))
                                (:shape-name "CancelCacheReportInput"))

(smithy/sdk/shapes:define-output cancel-cache-report-output common-lisp:nil
                                 ((cache-report-arn :target-type
                                   cache-report-arn :member-name
                                   "CacheReportARN"))
                                 (:shape-name "CancelCacheReportOutput"))

(smithy/sdk/shapes:define-input cancel-retrieval-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (tape-arn :target-type tape-arn :required
                                  common-lisp:t :member-name "TapeARN"))
                                (:shape-name "CancelRetrievalInput"))

(smithy/sdk/shapes:define-output cancel-retrieval-output common-lisp:nil
                                 ((tape-arn :target-type tape-arn :member-name
                                   "TapeARN"))
                                 (:shape-name "CancelRetrievalOutput"))

(smithy/sdk/shapes:define-enum case-sensitivity
    common-lisp:nil
  (:client-specified "ClientSpecified")
  (:case-sensitive "CaseSensitive"))

(smithy/sdk/shapes:define-list chap-credentials :member chap-info)

(smithy/sdk/shapes:define-structure chap-info common-lisp:nil
                                    ((target-arn :target-type target-arn
                                      :member-name "TargetARN")
                                     (secret-to-authenticate-initiator
                                      :target-type chap-secret :member-name
                                      "SecretToAuthenticateInitiator")
                                     (initiator-name :target-type iqn-name
                                      :member-name "InitiatorName")
                                     (secret-to-authenticate-target
                                      :target-type chap-secret :member-name
                                      "SecretToAuthenticateTarget"))
                                    (:shape-name "ChapInfo"))

(smithy/sdk/shapes:define-type chap-secret smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-watch-log-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-cachedi-scsivolume-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (volume-size-in-bytes :target-type long
                                  :required common-lisp:t :member-name
                                  "VolumeSizeInBytes")
                                 (snapshot-id :target-type snapshot-id
                                  :member-name "SnapshotId")
                                 (target-name :target-type target-name
                                  :required common-lisp:t :member-name
                                  "TargetName")
                                 (source-volume-arn :target-type volume-arn
                                  :member-name "SourceVolumeARN")
                                 (network-interface-id :target-type
                                  network-interface-id :required common-lisp:t
                                  :member-name "NetworkInterfaceId")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (kmsencrypted :target-type boolean
                                  :member-name "KMSEncrypted")
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateCachediSCSIVolumeInput"))

(smithy/sdk/shapes:define-output create-cachedi-scsivolume-output
                                 common-lisp:nil
                                 ((volume-arn :target-type volume-arn
                                   :member-name "VolumeARN")
                                  (target-arn :target-type target-arn
                                   :member-name "TargetARN"))
                                 (:shape-name "CreateCachediSCSIVolumeOutput"))

(smithy/sdk/shapes:define-input create-nfsfile-share-input common-lisp:nil
                                ((client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (nfsfile-share-defaults :target-type
                                  nfsfile-share-defaults :member-name
                                  "NFSFileShareDefaults")
                                 (gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (encryption-type :target-type encryption-type
                                  :member-name "EncryptionType")
                                 (kmsencrypted :target-type boolean
                                  :member-name "KMSEncrypted")
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (role :target-type role :required
                                  common-lisp:t :member-name "Role")
                                 (location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationARN")
                                 (default-storage-class :target-type
                                  storage-class :member-name
                                  "DefaultStorageClass")
                                 (object-acl :target-type object-acl
                                  :member-name "ObjectACL")
                                 (client-list :target-type
                                  file-share-client-list :member-name
                                  "ClientList")
                                 (squash :target-type squash :member-name
                                  "Squash")
                                 (read-only :target-type boolean :member-name
                                  "ReadOnly")
                                 (guess-mimetype-enabled :target-type boolean
                                  :member-name "GuessMIMETypeEnabled")
                                 (requester-pays :target-type boolean
                                  :member-name "RequesterPays")
                                 (tags :target-type tags :member-name "Tags")
                                 (file-share-name :target-type file-share-name
                                  :member-name "FileShareName")
                                 (cache-attributes :target-type
                                  cache-attributes :member-name
                                  "CacheAttributes")
                                 (notification-policy :target-type
                                  notification-policy :member-name
                                  "NotificationPolicy")
                                 (vpcendpoint-dnsname :target-type dnshost-name
                                  :member-name "VPCEndpointDNSName")
                                 (bucket-region :target-type region-id
                                  :member-name "BucketRegion")
                                 (audit-destination-arn :target-type
                                  audit-destination-arn :member-name
                                  "AuditDestinationARN"))
                                (:shape-name "CreateNFSFileShareInput"))

(smithy/sdk/shapes:define-output create-nfsfile-share-output common-lisp:nil
                                 ((file-share-arn :target-type file-share-arn
                                   :member-name "FileShareARN"))
                                 (:shape-name "CreateNFSFileShareOutput"))

(smithy/sdk/shapes:define-input create-smbfile-share-input common-lisp:nil
                                ((client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (encryption-type :target-type encryption-type
                                  :member-name "EncryptionType")
                                 (kmsencrypted :target-type boolean
                                  :member-name "KMSEncrypted")
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (role :target-type role :required
                                  common-lisp:t :member-name "Role")
                                 (location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationARN")
                                 (default-storage-class :target-type
                                  storage-class :member-name
                                  "DefaultStorageClass")
                                 (object-acl :target-type object-acl
                                  :member-name "ObjectACL")
                                 (read-only :target-type boolean :member-name
                                  "ReadOnly")
                                 (guess-mimetype-enabled :target-type boolean
                                  :member-name "GuessMIMETypeEnabled")
                                 (requester-pays :target-type boolean
                                  :member-name "RequesterPays")
                                 (smbaclenabled :target-type boolean
                                  :member-name "SMBACLEnabled")
                                 (access-based-enumeration :target-type boolean
                                  :member-name "AccessBasedEnumeration")
                                 (admin-user-list :target-type user-list
                                  :member-name "AdminUserList")
                                 (valid-user-list :target-type user-list
                                  :member-name "ValidUserList")
                                 (invalid-user-list :target-type user-list
                                  :member-name "InvalidUserList")
                                 (audit-destination-arn :target-type
                                  audit-destination-arn :member-name
                                  "AuditDestinationARN")
                                 (authentication :target-type authentication
                                  :member-name "Authentication")
                                 (case-sensitivity :target-type
                                  case-sensitivity :member-name
                                  "CaseSensitivity")
                                 (tags :target-type tags :member-name "Tags")
                                 (file-share-name :target-type file-share-name
                                  :member-name "FileShareName")
                                 (cache-attributes :target-type
                                  cache-attributes :member-name
                                  "CacheAttributes")
                                 (notification-policy :target-type
                                  notification-policy :member-name
                                  "NotificationPolicy")
                                 (vpcendpoint-dnsname :target-type dnshost-name
                                  :member-name "VPCEndpointDNSName")
                                 (bucket-region :target-type region-id
                                  :member-name "BucketRegion")
                                 (oplocks-enabled :target-type boolean
                                  :member-name "OplocksEnabled"))
                                (:shape-name "CreateSMBFileShareInput"))

(smithy/sdk/shapes:define-output create-smbfile-share-output common-lisp:nil
                                 ((file-share-arn :target-type file-share-arn
                                   :member-name "FileShareARN"))
                                 (:shape-name "CreateSMBFileShareOutput"))

(smithy/sdk/shapes:define-input
 create-snapshot-from-volume-recovery-point-input common-lisp:nil
 ((volume-arn :target-type volume-arn :required common-lisp:t :member-name
   "VolumeARN")
  (snapshot-description :target-type snapshot-description :required
   common-lisp:t :member-name "SnapshotDescription")
  (tags :target-type tags :member-name "Tags"))
 (:shape-name "CreateSnapshotFromVolumeRecoveryPointInput"))

(smithy/sdk/shapes:define-output
 create-snapshot-from-volume-recovery-point-output common-lisp:nil
 ((snapshot-id :target-type snapshot-id :member-name "SnapshotId")
  (volume-arn :target-type volume-arn :member-name "VolumeARN")
  (volume-recovery-point-time :target-type string :member-name
   "VolumeRecoveryPointTime"))
 (:shape-name "CreateSnapshotFromVolumeRecoveryPointOutput"))

(smithy/sdk/shapes:define-input create-snapshot-input common-lisp:nil
                                ((volume-arn :target-type volume-arn :required
                                  common-lisp:t :member-name "VolumeARN")
                                 (snapshot-description :target-type
                                  snapshot-description :required common-lisp:t
                                  :member-name "SnapshotDescription")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateSnapshotInput"))

(smithy/sdk/shapes:define-output create-snapshot-output common-lisp:nil
                                 ((volume-arn :target-type volume-arn
                                   :member-name "VolumeARN")
                                  (snapshot-id :target-type snapshot-id
                                   :member-name "SnapshotId"))
                                 (:shape-name "CreateSnapshotOutput"))

(smithy/sdk/shapes:define-input create-storedi-scsivolume-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (disk-id :target-type disk-id :required
                                  common-lisp:t :member-name "DiskId")
                                 (snapshot-id :target-type snapshot-id
                                  :member-name "SnapshotId")
                                 (preserve-existing-data :target-type boolean2
                                  :required common-lisp:t :member-name
                                  "PreserveExistingData")
                                 (target-name :target-type target-name
                                  :required common-lisp:t :member-name
                                  "TargetName")
                                 (network-interface-id :target-type
                                  network-interface-id :required common-lisp:t
                                  :member-name "NetworkInterfaceId")
                                 (kmsencrypted :target-type boolean
                                  :member-name "KMSEncrypted")
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateStorediSCSIVolumeInput"))

(smithy/sdk/shapes:define-output create-storedi-scsivolume-output
                                 common-lisp:nil
                                 ((volume-arn :target-type volume-arn
                                   :member-name "VolumeARN")
                                  (volume-size-in-bytes :target-type long
                                   :member-name "VolumeSizeInBytes")
                                  (target-arn :target-type target-arn
                                   :member-name "TargetARN"))
                                 (:shape-name "CreateStorediSCSIVolumeOutput"))

(smithy/sdk/shapes:define-input create-tape-pool-input common-lisp:nil
                                ((pool-name :target-type pool-name :required
                                  common-lisp:t :member-name "PoolName")
                                 (storage-class :target-type tape-storage-class
                                  :required common-lisp:t :member-name
                                  "StorageClass")
                                 (retention-lock-type :target-type
                                  retention-lock-type :member-name
                                  "RetentionLockType")
                                 (retention-lock-time-in-days :target-type
                                  retention-lock-time-in-days :member-name
                                  "RetentionLockTimeInDays")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateTapePoolInput"))

(smithy/sdk/shapes:define-output create-tape-pool-output common-lisp:nil
                                 ((pool-arn :target-type pool-arn :member-name
                                   "PoolARN"))
                                 (:shape-name "CreateTapePoolOutput"))

(smithy/sdk/shapes:define-input create-tape-with-barcode-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (tape-size-in-bytes :target-type tape-size
                                  :required common-lisp:t :member-name
                                  "TapeSizeInBytes")
                                 (tape-barcode :target-type tape-barcode
                                  :required common-lisp:t :member-name
                                  "TapeBarcode")
                                 (kmsencrypted :target-type boolean
                                  :member-name "KMSEncrypted")
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (pool-id :target-type pool-id :member-name
                                  "PoolId")
                                 (worm :target-type boolean2 :member-name
                                  "Worm")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateTapeWithBarcodeInput"))

(smithy/sdk/shapes:define-output create-tape-with-barcode-output
                                 common-lisp:nil
                                 ((tape-arn :target-type tape-arn :member-name
                                   "TapeARN"))
                                 (:shape-name "CreateTapeWithBarcodeOutput"))

(smithy/sdk/shapes:define-input create-tapes-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (tape-size-in-bytes :target-type tape-size
                                  :required common-lisp:t :member-name
                                  "TapeSizeInBytes")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (num-tapes-to-create :target-type
                                  num-tapes-to-create :required common-lisp:t
                                  :member-name "NumTapesToCreate")
                                 (tape-barcode-prefix :target-type
                                  tape-barcode-prefix :required common-lisp:t
                                  :member-name "TapeBarcodePrefix")
                                 (kmsencrypted :target-type boolean
                                  :member-name "KMSEncrypted")
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (pool-id :target-type pool-id :member-name
                                  "PoolId")
                                 (worm :target-type boolean2 :member-name
                                  "Worm")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateTapesInput"))

(smithy/sdk/shapes:define-output create-tapes-output common-lisp:nil
                                 ((tape-arns :target-type tape-arns
                                   :member-name "TapeARNs"))
                                 (:shape-name "CreateTapesOutput"))

(smithy/sdk/shapes:define-type created-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type dnshost-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type day-of-month smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type day-of-week smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list days-of-week :member day-of-week)

(smithy/sdk/shapes:define-input delete-automatic-tape-creation-policy-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name
                                 "DeleteAutomaticTapeCreationPolicyInput"))

(smithy/sdk/shapes:define-output delete-automatic-tape-creation-policy-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name
                                  "DeleteAutomaticTapeCreationPolicyOutput"))

(smithy/sdk/shapes:define-input delete-bandwidth-rate-limit-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (bandwidth-type :target-type bandwidth-type
                                  :required common-lisp:t :member-name
                                  "BandwidthType"))
                                (:shape-name "DeleteBandwidthRateLimitInput"))

(smithy/sdk/shapes:define-output delete-bandwidth-rate-limit-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "DeleteBandwidthRateLimitOutput"))

(smithy/sdk/shapes:define-input delete-cache-report-input common-lisp:nil
                                ((cache-report-arn :target-type
                                  cache-report-arn :required common-lisp:t
                                  :member-name "CacheReportARN"))
                                (:shape-name "DeleteCacheReportInput"))

(smithy/sdk/shapes:define-output delete-cache-report-output common-lisp:nil
                                 ((cache-report-arn :target-type
                                   cache-report-arn :member-name
                                   "CacheReportARN"))
                                 (:shape-name "DeleteCacheReportOutput"))

(smithy/sdk/shapes:define-input delete-chap-credentials-input common-lisp:nil
                                ((target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "TargetARN")
                                 (initiator-name :target-type iqn-name
                                  :required common-lisp:t :member-name
                                  "InitiatorName"))
                                (:shape-name "DeleteChapCredentialsInput"))

(smithy/sdk/shapes:define-output delete-chap-credentials-output common-lisp:nil
                                 ((target-arn :target-type target-arn
                                   :member-name "TargetARN")
                                  (initiator-name :target-type iqn-name
                                   :member-name "InitiatorName"))
                                 (:shape-name "DeleteChapCredentialsOutput"))

(smithy/sdk/shapes:define-input delete-file-share-input common-lisp:nil
                                ((file-share-arn :target-type file-share-arn
                                  :required common-lisp:t :member-name
                                  "FileShareARN")
                                 (force-delete :target-type boolean2
                                  :member-name "ForceDelete"))
                                (:shape-name "DeleteFileShareInput"))

(smithy/sdk/shapes:define-output delete-file-share-output common-lisp:nil
                                 ((file-share-arn :target-type file-share-arn
                                   :member-name "FileShareARN"))
                                 (:shape-name "DeleteFileShareOutput"))

(smithy/sdk/shapes:define-input delete-gateway-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "DeleteGatewayInput"))

(smithy/sdk/shapes:define-output delete-gateway-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "DeleteGatewayOutput"))

(smithy/sdk/shapes:define-input delete-snapshot-schedule-input common-lisp:nil
                                ((volume-arn :target-type volume-arn :required
                                  common-lisp:t :member-name "VolumeARN"))
                                (:shape-name "DeleteSnapshotScheduleInput"))

(smithy/sdk/shapes:define-output delete-snapshot-schedule-output
                                 common-lisp:nil
                                 ((volume-arn :target-type volume-arn
                                   :member-name "VolumeARN"))
                                 (:shape-name "DeleteSnapshotScheduleOutput"))

(smithy/sdk/shapes:define-input delete-tape-archive-input common-lisp:nil
                                ((tape-arn :target-type tape-arn :required
                                  common-lisp:t :member-name "TapeARN")
                                 (bypass-governance-retention :target-type
                                  boolean2 :member-name
                                  "BypassGovernanceRetention"))
                                (:shape-name "DeleteTapeArchiveInput"))

(smithy/sdk/shapes:define-output delete-tape-archive-output common-lisp:nil
                                 ((tape-arn :target-type tape-arn :member-name
                                   "TapeARN"))
                                 (:shape-name "DeleteTapeArchiveOutput"))

(smithy/sdk/shapes:define-input delete-tape-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (tape-arn :target-type tape-arn :required
                                  common-lisp:t :member-name "TapeARN")
                                 (bypass-governance-retention :target-type
                                  boolean2 :member-name
                                  "BypassGovernanceRetention"))
                                (:shape-name "DeleteTapeInput"))

(smithy/sdk/shapes:define-output delete-tape-output common-lisp:nil
                                 ((tape-arn :target-type tape-arn :member-name
                                   "TapeARN"))
                                 (:shape-name "DeleteTapeOutput"))

(smithy/sdk/shapes:define-input delete-tape-pool-input common-lisp:nil
                                ((pool-arn :target-type pool-arn :required
                                  common-lisp:t :member-name "PoolARN"))
                                (:shape-name "DeleteTapePoolInput"))

(smithy/sdk/shapes:define-output delete-tape-pool-output common-lisp:nil
                                 ((pool-arn :target-type pool-arn :member-name
                                   "PoolARN"))
                                 (:shape-name "DeleteTapePoolOutput"))

(smithy/sdk/shapes:define-input delete-volume-input common-lisp:nil
                                ((volume-arn :target-type volume-arn :required
                                  common-lisp:t :member-name "VolumeARN"))
                                (:shape-name "DeleteVolumeInput"))

(smithy/sdk/shapes:define-output delete-volume-output common-lisp:nil
                                 ((volume-arn :target-type volume-arn
                                   :member-name "VolumeARN"))
                                 (:shape-name "DeleteVolumeOutput"))

(smithy/sdk/shapes:define-type deprecation-date smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-availability-monitor-test-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name
                                 "DescribeAvailabilityMonitorTestInput"))

(smithy/sdk/shapes:define-output describe-availability-monitor-test-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (status :target-type
                                   availability-monitor-test-status
                                   :member-name "Status")
                                  (start-time :target-type time :member-name
                                   "StartTime"))
                                 (:shape-name
                                  "DescribeAvailabilityMonitorTestOutput"))

(smithy/sdk/shapes:define-input describe-bandwidth-rate-limit-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "DescribeBandwidthRateLimitInput"))

(smithy/sdk/shapes:define-output describe-bandwidth-rate-limit-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (average-upload-rate-limit-in-bits-per-sec
                                   :target-type bandwidth-upload-rate-limit
                                   :member-name
                                   "AverageUploadRateLimitInBitsPerSec")
                                  (average-download-rate-limit-in-bits-per-sec
                                   :target-type bandwidth-download-rate-limit
                                   :member-name
                                   "AverageDownloadRateLimitInBitsPerSec"))
                                 (:shape-name
                                  "DescribeBandwidthRateLimitOutput"))

(smithy/sdk/shapes:define-input describe-bandwidth-rate-limit-schedule-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name
                                 "DescribeBandwidthRateLimitScheduleInput"))

(smithy/sdk/shapes:define-output describe-bandwidth-rate-limit-schedule-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (bandwidth-rate-limit-intervals :target-type
                                   bandwidth-rate-limit-intervals :member-name
                                   "BandwidthRateLimitIntervals"))
                                 (:shape-name
                                  "DescribeBandwidthRateLimitScheduleOutput"))

(smithy/sdk/shapes:define-input describe-cache-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "DescribeCacheInput"))

(smithy/sdk/shapes:define-output describe-cache-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (disk-ids :target-type disk-ids :member-name
                                   "DiskIds")
                                  (cache-allocated-in-bytes :target-type long
                                   :member-name "CacheAllocatedInBytes")
                                  (cache-used-percentage :target-type double
                                   :member-name "CacheUsedPercentage")
                                  (cache-dirty-percentage :target-type double
                                   :member-name "CacheDirtyPercentage")
                                  (cache-hit-percentage :target-type double
                                   :member-name "CacheHitPercentage")
                                  (cache-miss-percentage :target-type double
                                   :member-name "CacheMissPercentage"))
                                 (:shape-name "DescribeCacheOutput"))

(smithy/sdk/shapes:define-input describe-cache-report-input common-lisp:nil
                                ((cache-report-arn :target-type
                                  cache-report-arn :required common-lisp:t
                                  :member-name "CacheReportARN"))
                                (:shape-name "DescribeCacheReportInput"))

(smithy/sdk/shapes:define-output describe-cache-report-output common-lisp:nil
                                 ((cache-report-info :target-type
                                   cache-report-info :member-name
                                   "CacheReportInfo"))
                                 (:shape-name "DescribeCacheReportOutput"))

(smithy/sdk/shapes:define-input describe-cachedi-scsivolumes-input
                                common-lisp:nil
                                ((volume-arns :target-type volume-arns
                                  :required common-lisp:t :member-name
                                  "VolumeARNs"))
                                (:shape-name "DescribeCachediSCSIVolumesInput"))

(smithy/sdk/shapes:define-output describe-cachedi-scsivolumes-output
                                 common-lisp:nil
                                 ((cachedi-scsivolumes :target-type
                                   cachedi-scsivolumes :member-name
                                   "CachediSCSIVolumes"))
                                 (:shape-name
                                  "DescribeCachediSCSIVolumesOutput"))

(smithy/sdk/shapes:define-input describe-chap-credentials-input common-lisp:nil
                                ((target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "TargetARN"))
                                (:shape-name "DescribeChapCredentialsInput"))

(smithy/sdk/shapes:define-output describe-chap-credentials-output
                                 common-lisp:nil
                                 ((chap-credentials :target-type
                                   chap-credentials :member-name
                                   "ChapCredentials"))
                                 (:shape-name "DescribeChapCredentialsOutput"))

(smithy/sdk/shapes:define-input describe-file-system-associations-input
                                common-lisp:nil
                                ((file-system-association-arnlist :target-type
                                  file-system-association-arnlist :required
                                  common-lisp:t :member-name
                                  "FileSystemAssociationARNList"))
                                (:shape-name
                                 "DescribeFileSystemAssociationsInput"))

(smithy/sdk/shapes:define-output describe-file-system-associations-output
                                 common-lisp:nil
                                 ((file-system-association-info-list
                                   :target-type
                                   file-system-association-info-list
                                   :member-name
                                   "FileSystemAssociationInfoList"))
                                 (:shape-name
                                  "DescribeFileSystemAssociationsOutput"))

(smithy/sdk/shapes:define-input describe-gateway-information-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "DescribeGatewayInformationInput"))

(smithy/sdk/shapes:define-output describe-gateway-information-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (gateway-id :target-type gateway-id
                                   :member-name "GatewayId")
                                  (gateway-name :target-type string
                                   :member-name "GatewayName")
                                  (gateway-timezone :target-type
                                   gateway-timezone :member-name
                                   "GatewayTimezone")
                                  (gateway-state :target-type gateway-state
                                   :member-name "GatewayState")
                                  (gateway-network-interfaces :target-type
                                   gateway-network-interfaces :member-name
                                   "GatewayNetworkInterfaces")
                                  (gateway-type :target-type gateway-type
                                   :member-name "GatewayType")
                                  (next-update-availability-date :target-type
                                   next-update-availability-date :member-name
                                   "NextUpdateAvailabilityDate")
                                  (last-software-update :target-type
                                   last-software-update :member-name
                                   "LastSoftwareUpdate")
                                  (ec2instance-id :target-type ec2instance-id
                                   :member-name "Ec2InstanceId")
                                  (ec2instance-region :target-type
                                   ec2instance-region :member-name
                                   "Ec2InstanceRegion")
                                  (tags :target-type tags :member-name "Tags")
                                  (vpcendpoint :target-type string :member-name
                                   "VPCEndpoint")
                                  (cloud-watch-log-group-arn :target-type
                                   cloud-watch-log-group-arn :member-name
                                   "CloudWatchLogGroupARN")
                                  (host-environment :target-type
                                   host-environment :member-name
                                   "HostEnvironment")
                                  (endpoint-type :target-type endpoint-type
                                   :member-name "EndpointType")
                                  (software-updates-end-date :target-type
                                   software-updates-end-date :member-name
                                   "SoftwareUpdatesEndDate")
                                  (deprecation-date :target-type
                                   deprecation-date :member-name
                                   "DeprecationDate")
                                  (gateway-capacity :target-type
                                   gateway-capacity :member-name
                                   "GatewayCapacity")
                                  (supported-gateway-capacities :target-type
                                   supported-gateway-capacities :member-name
                                   "SupportedGatewayCapacities")
                                  (host-environment-id :target-type
                                   host-environment-id :member-name
                                   "HostEnvironmentId")
                                  (software-version :target-type
                                   software-version :member-name
                                   "SoftwareVersion"))
                                 (:shape-name
                                  "DescribeGatewayInformationOutput"))

(smithy/sdk/shapes:define-input describe-maintenance-start-time-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name
                                 "DescribeMaintenanceStartTimeInput"))

(smithy/sdk/shapes:define-output describe-maintenance-start-time-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (hour-of-day :target-type hour-of-day
                                   :member-name "HourOfDay")
                                  (minute-of-hour :target-type minute-of-hour
                                   :member-name "MinuteOfHour")
                                  (day-of-week :target-type day-of-week
                                   :member-name "DayOfWeek")
                                  (day-of-month :target-type day-of-month
                                   :member-name "DayOfMonth")
                                  (timezone :target-type gateway-timezone
                                   :member-name "Timezone")
                                  (software-update-preferences :target-type
                                   software-update-preferences :member-name
                                   "SoftwareUpdatePreferences"))
                                 (:shape-name
                                  "DescribeMaintenanceStartTimeOutput"))

(smithy/sdk/shapes:define-input describe-nfsfile-shares-input common-lisp:nil
                                ((file-share-arnlist :target-type
                                  file-share-arnlist :required common-lisp:t
                                  :member-name "FileShareARNList"))
                                (:shape-name "DescribeNFSFileSharesInput"))

(smithy/sdk/shapes:define-output describe-nfsfile-shares-output common-lisp:nil
                                 ((nfsfile-share-info-list :target-type
                                   nfsfile-share-info-list :member-name
                                   "NFSFileShareInfoList"))
                                 (:shape-name "DescribeNFSFileSharesOutput"))

(smithy/sdk/shapes:define-input describe-smbfile-shares-input common-lisp:nil
                                ((file-share-arnlist :target-type
                                  file-share-arnlist :required common-lisp:t
                                  :member-name "FileShareARNList"))
                                (:shape-name "DescribeSMBFileSharesInput"))

(smithy/sdk/shapes:define-output describe-smbfile-shares-output common-lisp:nil
                                 ((smbfile-share-info-list :target-type
                                   smbfile-share-info-list :member-name
                                   "SMBFileShareInfoList"))
                                 (:shape-name "DescribeSMBFileSharesOutput"))

(smithy/sdk/shapes:define-input describe-smbsettings-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "DescribeSMBSettingsInput"))

(smithy/sdk/shapes:define-output describe-smbsettings-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (domain-name :target-type domain-name
                                   :member-name "DomainName")
                                  (active-directory-status :target-type
                                   active-directory-status :member-name
                                   "ActiveDirectoryStatus")
                                  (smbguest-password-set :target-type boolean
                                   :member-name "SMBGuestPasswordSet")
                                  (smbsecurity-strategy :target-type
                                   smbsecurity-strategy :member-name
                                   "SMBSecurityStrategy")
                                  (file-shares-visible :target-type boolean
                                   :member-name "FileSharesVisible")
                                  (smblocal-groups :target-type smblocal-groups
                                   :member-name "SMBLocalGroups"))
                                 (:shape-name "DescribeSMBSettingsOutput"))

(smithy/sdk/shapes:define-input describe-snapshot-schedule-input
                                common-lisp:nil
                                ((volume-arn :target-type volume-arn :required
                                  common-lisp:t :member-name "VolumeARN"))
                                (:shape-name "DescribeSnapshotScheduleInput"))

(smithy/sdk/shapes:define-output describe-snapshot-schedule-output
                                 common-lisp:nil
                                 ((volume-arn :target-type volume-arn
                                   :member-name "VolumeARN")
                                  (start-at :target-type hour-of-day
                                   :member-name "StartAt")
                                  (recurrence-in-hours :target-type
                                   recurrence-in-hours :member-name
                                   "RecurrenceInHours")
                                  (description :target-type description
                                   :member-name "Description")
                                  (timezone :target-type gateway-timezone
                                   :member-name "Timezone")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "DescribeSnapshotScheduleOutput"))

(smithy/sdk/shapes:define-input describe-storedi-scsivolumes-input
                                common-lisp:nil
                                ((volume-arns :target-type volume-arns
                                  :required common-lisp:t :member-name
                                  "VolumeARNs"))
                                (:shape-name "DescribeStorediSCSIVolumesInput"))

(smithy/sdk/shapes:define-output describe-storedi-scsivolumes-output
                                 common-lisp:nil
                                 ((storedi-scsivolumes :target-type
                                   storedi-scsivolumes :member-name
                                   "StorediSCSIVolumes"))
                                 (:shape-name
                                  "DescribeStorediSCSIVolumesOutput"))

(smithy/sdk/shapes:define-input describe-tape-archives-input common-lisp:nil
                                ((tape-arns :target-type tape-arns :member-name
                                  "TapeARNs")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit"))
                                (:shape-name "DescribeTapeArchivesInput"))

(smithy/sdk/shapes:define-output describe-tape-archives-output common-lisp:nil
                                 ((tape-archives :target-type tape-archives
                                   :member-name "TapeArchives")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "DescribeTapeArchivesOutput"))

(smithy/sdk/shapes:define-input describe-tape-recovery-points-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit"))
                                (:shape-name "DescribeTapeRecoveryPointsInput"))

(smithy/sdk/shapes:define-output describe-tape-recovery-points-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (tape-recovery-point-infos :target-type
                                   tape-recovery-point-infos :member-name
                                   "TapeRecoveryPointInfos")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeTapeRecoveryPointsOutput"))

(smithy/sdk/shapes:define-input describe-tapes-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (tape-arns :target-type tape-arns :member-name
                                  "TapeARNs")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit"))
                                (:shape-name "DescribeTapesInput"))

(smithy/sdk/shapes:define-output describe-tapes-output common-lisp:nil
                                 ((tapes :target-type tapes :member-name
                                   "Tapes")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "DescribeTapesOutput"))

(smithy/sdk/shapes:define-input describe-upload-buffer-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "DescribeUploadBufferInput"))

(smithy/sdk/shapes:define-output describe-upload-buffer-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (disk-ids :target-type disk-ids :member-name
                                   "DiskIds")
                                  (upload-buffer-used-in-bytes :target-type
                                   long :member-name "UploadBufferUsedInBytes")
                                  (upload-buffer-allocated-in-bytes
                                   :target-type long :member-name
                                   "UploadBufferAllocatedInBytes"))
                                 (:shape-name "DescribeUploadBufferOutput"))

(smithy/sdk/shapes:define-input describe-vtldevices-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (vtldevice-arns :target-type vtldevice-arns
                                  :member-name "VTLDeviceARNs")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit"))
                                (:shape-name "DescribeVTLDevicesInput"))

(smithy/sdk/shapes:define-output describe-vtldevices-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (vtldevices :target-type vtldevices
                                   :member-name "VTLDevices")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "DescribeVTLDevicesOutput"))

(smithy/sdk/shapes:define-input describe-working-storage-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "DescribeWorkingStorageInput"))

(smithy/sdk/shapes:define-output describe-working-storage-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (disk-ids :target-type disk-ids :member-name
                                   "DiskIds")
                                  (working-storage-used-in-bytes :target-type
                                   long :member-name
                                   "WorkingStorageUsedInBytes")
                                  (working-storage-allocated-in-bytes
                                   :target-type long :member-name
                                   "WorkingStorageAllocatedInBytes"))
                                 (:shape-name "DescribeWorkingStorageOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input detach-volume-input common-lisp:nil
                                ((volume-arn :target-type volume-arn :required
                                  common-lisp:t :member-name "VolumeARN")
                                 (force-detach :target-type boolean
                                  :member-name "ForceDetach"))
                                (:shape-name "DetachVolumeInput"))

(smithy/sdk/shapes:define-output detach-volume-output common-lisp:nil
                                 ((volume-arn :target-type volume-arn
                                   :member-name "VolumeARN"))
                                 (:shape-name "DetachVolumeOutput"))

(smithy/sdk/shapes:define-type device-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure devicei-scsiattributes common-lisp:nil
                                    ((target-arn :target-type target-arn
                                      :member-name "TargetARN")
                                     (network-interface-id :target-type
                                      network-interface-id :member-name
                                      "NetworkInterfaceId")
                                     (network-interface-port :target-type
                                      integer :member-name
                                      "NetworkInterfacePort")
                                     (chap-enabled :target-type boolean2
                                      :member-name "ChapEnabled"))
                                    (:shape-name "DeviceiSCSIAttributes"))

(smithy/sdk/shapes:define-input disable-gateway-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "DisableGatewayInput"))

(smithy/sdk/shapes:define-output disable-gateway-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "DisableGatewayOutput"))

(smithy/sdk/shapes:define-input disassociate-file-system-input common-lisp:nil
                                ((file-system-association-arn :target-type
                                  file-system-association-arn :required
                                  common-lisp:t :member-name
                                  "FileSystemAssociationARN")
                                 (force-delete :target-type boolean2
                                  :member-name "ForceDelete"))
                                (:shape-name "DisassociateFileSystemInput"))

(smithy/sdk/shapes:define-output disassociate-file-system-output
                                 common-lisp:nil
                                 ((file-system-association-arn :target-type
                                   file-system-association-arn :member-name
                                   "FileSystemAssociationARN"))
                                 (:shape-name "DisassociateFileSystemOutput"))

(smithy/sdk/shapes:define-structure disk common-lisp:nil
                                    ((disk-id :target-type disk-id :member-name
                                      "DiskId")
                                     (disk-path :target-type string
                                      :member-name "DiskPath")
                                     (disk-node :target-type string
                                      :member-name "DiskNode")
                                     (disk-status :target-type string
                                      :member-name "DiskStatus")
                                     (disk-size-in-bytes :target-type long
                                      :member-name "DiskSizeInBytes")
                                     (disk-allocation-type :target-type
                                      disk-allocation-type :member-name
                                      "DiskAllocationType")
                                     (disk-allocation-resource :target-type
                                      string :member-name
                                      "DiskAllocationResource")
                                     (disk-attribute-list :target-type
                                      disk-attribute-list :member-name
                                      "DiskAttributeList"))
                                    (:shape-name "Disk"))

(smithy/sdk/shapes:define-type disk-allocation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type disk-attribute smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list disk-attribute-list :member disk-attribute)

(smithy/sdk/shapes:define-type disk-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list disk-ids :member disk-id)

(smithy/sdk/shapes:define-list disks :member disk)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-user-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-user-password
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double-object smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type ec2instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2instance-region
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:sse-s3 "SseS3")
  (:sse-kms "SseKms")
  (:dsse-kms "DsseKms"))

(smithy/sdk/shapes:define-structure endpoint-network-configuration
                                    common-lisp:nil
                                    ((ip-addresses :target-type ip-address-list
                                      :member-name "IpAddresses"))
                                    (:shape-name
                                     "EndpointNetworkConfiguration"))

(smithy/sdk/shapes:define-type endpoint-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:activation-key-expired "ActivationKeyExpired")
  (:activation-key-invalid "ActivationKeyInvalid")
  (:activation-key-not-found "ActivationKeyNotFound")
  (:gateway-internal-error "GatewayInternalError")
  (:gateway-not-connected "GatewayNotConnected")
  (:gateway-not-found "GatewayNotFound")
  (:gateway-proxy-network-connection-busy "GatewayProxyNetworkConnectionBusy")
  (:authentication-failure "AuthenticationFailure")
  (:bandwidth-throttle-schedule-not-found "BandwidthThrottleScheduleNotFound")
  (:blocked "Blocked")
  (:cannot-export-snapshot "CannotExportSnapshot")
  (:chap-credential-not-found "ChapCredentialNotFound")
  (:disk-already-allocated "DiskAlreadyAllocated")
  (:disk-does-not-exist "DiskDoesNotExist")
  (:disk-size-greater-than-volume-max-size "DiskSizeGreaterThanVolumeMaxSize")
  (:disk-size-less-than-volume-size "DiskSizeLessThanVolumeSize")
  (:disk-size-not-gig-aligned "DiskSizeNotGigAligned")
  (:duplicate-certificate-info "DuplicateCertificateInfo")
  (:duplicate-schedule "DuplicateSchedule")
  (:endpoint-not-found "EndpointNotFound")
  (:iamnot-supported "IAMNotSupported")
  (:initiator-invalid "InitiatorInvalid")
  (:initiator-not-found "InitiatorNotFound")
  (:internal-error "InternalError")
  (:invalid-gateway "InvalidGateway")
  (:invalid-endpoint "InvalidEndpoint")
  (:invalid-parameters "InvalidParameters")
  (:invalid-schedule "InvalidSchedule")
  (:local-storage-limit-exceeded "LocalStorageLimitExceeded")
  (:lun-already-allocated "LunAlreadyAllocated ")
  (:lun-invalid "LunInvalid")
  (:join-domain-in-progress "JoinDomainInProgress")
  (:maximum-content-length-exceeded "MaximumContentLengthExceeded")
  (:maximum-tape-cartridge-count-exceeded "MaximumTapeCartridgeCountExceeded")
  (:maximum-volume-count-exceeded "MaximumVolumeCountExceeded")
  (:network-configuration-changed "NetworkConfigurationChanged")
  (:no-disks-available "NoDisksAvailable")
  (:not-implemented "NotImplemented")
  (:not-supported "NotSupported")
  (:operation-aborted "OperationAborted")
  (:outdated-gateway "OutdatedGateway")
  (:parameters-not-implemented "ParametersNotImplemented")
  (:region-invalid "RegionInvalid")
  (:request-timeout "RequestTimeout")
  (:service-unavailable "ServiceUnavailable")
  (:snapshot-deleted "SnapshotDeleted")
  (:snapshot-id-invalid "SnapshotIdInvalid")
  (:snapshot-in-progress "SnapshotInProgress")
  (:snapshot-not-found "SnapshotNotFound")
  (:snapshot-schedule-not-found "SnapshotScheduleNotFound")
  (:staging-area-full "StagingAreaFull")
  (:storage-failure "StorageFailure")
  (:tape-cartridge-not-found "TapeCartridgeNotFound")
  (:target-already-exists "TargetAlreadyExists")
  (:target-invalid "TargetInvalid")
  (:target-not-found "TargetNotFound")
  (:unauthorized-operation "UnauthorizedOperation")
  (:volume-already-exists "VolumeAlreadyExists")
  (:volume-id-invalid "VolumeIdInvalid")
  (:volume-in-use "VolumeInUse")
  (:volume-not-found "VolumeNotFound")
  (:volume-not-ready "VolumeNotReady"))

(smithy/sdk/shapes:define-input evict-files-failing-upload-input
                                common-lisp:nil
                                ((file-share-arn :target-type file-share-arn
                                  :required common-lisp:t :member-name
                                  "FileShareARN")
                                 (force-remove :target-type boolean2
                                  :member-name "ForceRemove"))
                                (:shape-name "EvictFilesFailingUploadInput"))

(smithy/sdk/shapes:define-output evict-files-failing-upload-output
                                 common-lisp:nil
                                 ((notification-id :target-type string
                                   :member-name "NotificationId"))
                                 (:shape-name "EvictFilesFailingUploadOutput"))

(smithy/sdk/shapes:define-type file-share-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list file-share-arnlist :member file-share-arn)

(smithy/sdk/shapes:define-list file-share-client-list :member
                               ipv4or-ipv6address-cidr)

(smithy/sdk/shapes:define-type file-share-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-share-info common-lisp:nil
                                    ((file-share-type :target-type
                                      file-share-type :member-name
                                      "FileShareType")
                                     (file-share-arn :target-type
                                      file-share-arn :member-name
                                      "FileShareARN")
                                     (file-share-id :target-type file-share-id
                                      :member-name "FileShareId")
                                     (file-share-status :target-type
                                      file-share-status :member-name
                                      "FileShareStatus")
                                     (gateway-arn :target-type gateway-arn
                                      :member-name "GatewayARN"))
                                    (:shape-name "FileShareInfo"))

(smithy/sdk/shapes:define-list file-share-info-list :member file-share-info)

(smithy/sdk/shapes:define-type file-share-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-share-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum file-share-type
    common-lisp:nil
  (:nfs "NFS")
  (:smb "SMB"))

(smithy/sdk/shapes:define-type file-system-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list file-system-association-arnlist :member
                               file-system-association-arn)

(smithy/sdk/shapes:define-type file-system-association-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-system-association-info
                                    common-lisp:nil
                                    ((file-system-association-arn :target-type
                                      file-system-association-arn :member-name
                                      "FileSystemAssociationARN")
                                     (location-arn :target-type
                                      file-system-location-arn :member-name
                                      "LocationARN")
                                     (file-system-association-status
                                      :target-type
                                      file-system-association-status
                                      :member-name
                                      "FileSystemAssociationStatus")
                                     (audit-destination-arn :target-type
                                      audit-destination-arn :member-name
                                      "AuditDestinationARN")
                                     (gateway-arn :target-type gateway-arn
                                      :member-name "GatewayARN")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (cache-attributes :target-type
                                      cache-attributes :member-name
                                      "CacheAttributes")
                                     (endpoint-network-configuration
                                      :target-type
                                      endpoint-network-configuration
                                      :member-name
                                      "EndpointNetworkConfiguration")
                                     (file-system-association-status-details
                                      :target-type
                                      file-system-association-status-details
                                      :member-name
                                      "FileSystemAssociationStatusDetails"))
                                    (:shape-name "FileSystemAssociationInfo"))

(smithy/sdk/shapes:define-list file-system-association-info-list :member
                               file-system-association-info)

(smithy/sdk/shapes:define-type file-system-association-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-system-association-status-detail
                                    common-lisp:nil
                                    ((error-code :target-type
                                      file-system-association-sync-error-code
                                      :member-name "ErrorCode"))
                                    (:shape-name
                                     "FileSystemAssociationStatusDetail"))

(smithy/sdk/shapes:define-list file-system-association-status-details :member
                               file-system-association-status-detail)

(smithy/sdk/shapes:define-structure file-system-association-summary
                                    common-lisp:nil
                                    ((file-system-association-id :target-type
                                      file-system-association-id :member-name
                                      "FileSystemAssociationId")
                                     (file-system-association-arn :target-type
                                      file-system-association-arn :member-name
                                      "FileSystemAssociationARN")
                                     (file-system-association-status
                                      :target-type
                                      file-system-association-status
                                      :member-name
                                      "FileSystemAssociationStatus")
                                     (gateway-arn :target-type gateway-arn
                                      :member-name "GatewayARN"))
                                    (:shape-name
                                     "FileSystemAssociationSummary"))

(smithy/sdk/shapes:define-list file-system-association-summary-list :member
                               file-system-association-summary)

(smithy/sdk/shapes:define-type file-system-association-sync-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-system-location-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type folder smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list folder-list :member folder)

(smithy/sdk/shapes:define-type gateway-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum gateway-capacity
    common-lisp:nil
  (:small "Small")
  (:medium "Medium")
  (:large "Large"))

(smithy/sdk/shapes:define-type gateway-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure gateway-info common-lisp:nil
                                    ((gateway-id :target-type gateway-id
                                      :member-name "GatewayId")
                                     (gateway-arn :target-type gateway-arn
                                      :member-name "GatewayARN")
                                     (gateway-type :target-type gateway-type
                                      :member-name "GatewayType")
                                     (gateway-operational-state :target-type
                                      gateway-operational-state :member-name
                                      "GatewayOperationalState")
                                     (gateway-name :target-type string
                                      :member-name "GatewayName")
                                     (ec2instance-id :target-type
                                      ec2instance-id :member-name
                                      "Ec2InstanceId")
                                     (ec2instance-region :target-type
                                      ec2instance-region :member-name
                                      "Ec2InstanceRegion")
                                     (host-environment :target-type
                                      host-environment :member-name
                                      "HostEnvironment")
                                     (host-environment-id :target-type
                                      host-environment-id :member-name
                                      "HostEnvironmentId")
                                     (deprecation-date :target-type
                                      deprecation-date :member-name
                                      "DeprecationDate")
                                     (software-version :target-type
                                      software-version :member-name
                                      "SoftwareVersion"))
                                    (:shape-name "GatewayInfo"))

(smithy/sdk/shapes:define-type gateway-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list gateway-network-interfaces :member
                               network-interface)

(smithy/sdk/shapes:define-type gateway-operational-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list gateways :member gateway-info)

(smithy/sdk/shapes:define-type host smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum host-environment
    common-lisp:nil
  (:vmware "VMWARE")
  (:hyper-v "HYPER-V")
  (:ec2 "EC2")
  (:kvm "KVM")
  (:other "OTHER")
  (:snowball "SNOWBALL"))

(smithy/sdk/shapes:define-type host-environment-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list hosts :member host)

(smithy/sdk/shapes:define-type hour-of-day smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ipv4address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type initiator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list initiators :member initiator)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (error :target-type storage-gateway-error
                                  :member-name "error"))
                                (:shape-name "InternalServerError")
                                (:error-code 500)
                                (:base-class storage-gateway-error))

(smithy/sdk/shapes:define-error invalid-gateway-request-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (error :target-type storage-gateway-error
                                  :member-name "error"))
                                (:shape-name "InvalidGatewayRequestException")
                                (:error-code 400)
                                (:base-class storage-gateway-error))

(smithy/sdk/shapes:define-list ip-address-list :member ipv4address)

(smithy/sdk/shapes:define-type ipv4or-ipv6address-cidr
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iqn-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input join-domain-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (organizational-unit :target-type
                                  organizational-unit :member-name
                                  "OrganizationalUnit")
                                 (domain-controllers :target-type hosts
                                  :member-name "DomainControllers")
                                 (timeout-in-seconds :target-type
                                  timeout-in-seconds :member-name
                                  "TimeoutInSeconds")
                                 (user-name :target-type domain-user-name
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (password :target-type domain-user-password
                                  :required common-lisp:t :member-name
                                  "Password"))
                                (:shape-name "JoinDomainInput"))

(smithy/sdk/shapes:define-output join-domain-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (active-directory-status :target-type
                                   active-directory-status :member-name
                                   "ActiveDirectoryStatus"))
                                 (:shape-name "JoinDomainOutput"))

(smithy/sdk/shapes:define-type kmskey smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-software-update
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-automatic-tape-creation-policies-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :member-name "GatewayARN"))
                                (:shape-name
                                 "ListAutomaticTapeCreationPoliciesInput"))

(smithy/sdk/shapes:define-output list-automatic-tape-creation-policies-output
                                 common-lisp:nil
                                 ((automatic-tape-creation-policy-infos
                                   :target-type
                                   automatic-tape-creation-policy-infos
                                   :member-name
                                   "AutomaticTapeCreationPolicyInfos"))
                                 (:shape-name
                                  "ListAutomaticTapeCreationPoliciesOutput"))

(smithy/sdk/shapes:define-input list-cache-reports-input common-lisp:nil
                                ((marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListCacheReportsInput"))

(smithy/sdk/shapes:define-output list-cache-reports-output common-lisp:nil
                                 ((cache-report-list :target-type
                                   cache-report-list :member-name
                                   "CacheReportList")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListCacheReportsOutput"))

(smithy/sdk/shapes:define-input list-file-shares-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :member-name "GatewayARN")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListFileSharesInput"))

(smithy/sdk/shapes:define-output list-file-shares-output common-lisp:nil
                                 ((marker :target-type marker :member-name
                                   "Marker")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker")
                                  (file-share-info-list :target-type
                                   file-share-info-list :member-name
                                   "FileShareInfoList"))
                                 (:shape-name "ListFileSharesOutput"))

(smithy/sdk/shapes:define-input list-file-system-associations-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :member-name "GatewayARN")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit")
                                 (marker :target-type marker :member-name
                                  "Marker"))
                                (:shape-name "ListFileSystemAssociationsInput"))

(smithy/sdk/shapes:define-output list-file-system-associations-output
                                 common-lisp:nil
                                 ((marker :target-type marker :member-name
                                   "Marker")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker")
                                  (file-system-association-summary-list
                                   :target-type
                                   file-system-association-summary-list
                                   :member-name
                                   "FileSystemAssociationSummaryList"))
                                 (:shape-name
                                  "ListFileSystemAssociationsOutput"))

(smithy/sdk/shapes:define-input list-gateways-input common-lisp:nil
                                ((marker :target-type marker :member-name
                                  "Marker")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit"))
                                (:shape-name "ListGatewaysInput"))

(smithy/sdk/shapes:define-output list-gateways-output common-lisp:nil
                                 ((gateways :target-type gateways :member-name
                                   "Gateways")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListGatewaysOutput"))

(smithy/sdk/shapes:define-input list-local-disks-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "ListLocalDisksInput"))

(smithy/sdk/shapes:define-output list-local-disks-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (disks :target-type disks :member-name
                                   "Disks"))
                                 (:shape-name "ListLocalDisksOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :member-name "ResourceARN")
                                  (marker :target-type marker :member-name
                                   "Marker")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-tape-pools-input common-lisp:nil
                                ((pool-arns :target-type pool-arns :member-name
                                  "PoolARNs")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit"))
                                (:shape-name "ListTapePoolsInput"))

(smithy/sdk/shapes:define-output list-tape-pools-output common-lisp:nil
                                 ((pool-infos :target-type pool-infos
                                   :member-name "PoolInfos")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListTapePoolsOutput"))

(smithy/sdk/shapes:define-input list-tapes-input common-lisp:nil
                                ((tape-arns :target-type tape-arns :member-name
                                  "TapeARNs")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit"))
                                (:shape-name "ListTapesInput"))

(smithy/sdk/shapes:define-output list-tapes-output common-lisp:nil
                                 ((tape-infos :target-type tape-infos
                                   :member-name "TapeInfos")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "ListTapesOutput"))

(smithy/sdk/shapes:define-input list-volume-initiators-input common-lisp:nil
                                ((volume-arn :target-type volume-arn :required
                                  common-lisp:t :member-name "VolumeARN"))
                                (:shape-name "ListVolumeInitiatorsInput"))

(smithy/sdk/shapes:define-output list-volume-initiators-output common-lisp:nil
                                 ((initiators :target-type initiators
                                   :member-name "Initiators"))
                                 (:shape-name "ListVolumeInitiatorsOutput"))

(smithy/sdk/shapes:define-input list-volume-recovery-points-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "ListVolumeRecoveryPointsInput"))

(smithy/sdk/shapes:define-output list-volume-recovery-points-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (volume-recovery-point-infos :target-type
                                   volume-recovery-point-infos :member-name
                                   "VolumeRecoveryPointInfos"))
                                 (:shape-name "ListVolumeRecoveryPointsOutput"))

(smithy/sdk/shapes:define-input list-volumes-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :member-name "GatewayARN")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (limit :target-type positive-int-object
                                  :member-name "Limit"))
                                (:shape-name "ListVolumesInput"))

(smithy/sdk/shapes:define-output list-volumes-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (marker :target-type marker :member-name
                                   "Marker")
                                  (volume-infos :target-type volume-infos
                                   :member-name "VolumeInfos"))
                                 (:shape-name "ListVolumesOutput"))

(smithy/sdk/shapes:define-type local-console-password
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type location-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type medium-changer-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type minimum-num-tapes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type minute-of-hour smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure nfsfile-share-defaults common-lisp:nil
                                    ((file-mode :target-type permission-mode
                                      :member-name "FileMode")
                                     (directory-mode :target-type
                                      permission-mode :member-name
                                      "DirectoryMode")
                                     (group-id :target-type permission-id
                                      :member-name "GroupId")
                                     (owner-id :target-type permission-id
                                      :member-name "OwnerId"))
                                    (:shape-name "NFSFileShareDefaults"))

(smithy/sdk/shapes:define-structure nfsfile-share-info common-lisp:nil
                                    ((nfsfile-share-defaults :target-type
                                      nfsfile-share-defaults :member-name
                                      "NFSFileShareDefaults")
                                     (file-share-arn :target-type
                                      file-share-arn :member-name
                                      "FileShareARN")
                                     (file-share-id :target-type file-share-id
                                      :member-name "FileShareId")
                                     (file-share-status :target-type
                                      file-share-status :member-name
                                      "FileShareStatus")
                                     (gateway-arn :target-type gateway-arn
                                      :member-name "GatewayARN")
                                     (encryption-type :target-type
                                      encryption-type :member-name
                                      "EncryptionType")
                                     (kmsencrypted :target-type boolean2
                                      :member-name "KMSEncrypted")
                                     (kmskey :target-type kmskey :member-name
                                      "KMSKey")
                                     (path :target-type path :member-name
                                      "Path")
                                     (role :target-type role :member-name
                                      "Role")
                                     (location-arn :target-type location-arn
                                      :member-name "LocationARN")
                                     (default-storage-class :target-type
                                      storage-class :member-name
                                      "DefaultStorageClass")
                                     (object-acl :target-type object-acl
                                      :member-name "ObjectACL")
                                     (client-list :target-type
                                      file-share-client-list :member-name
                                      "ClientList")
                                     (squash :target-type squash :member-name
                                      "Squash")
                                     (read-only :target-type boolean
                                      :member-name "ReadOnly")
                                     (guess-mimetype-enabled :target-type
                                      boolean :member-name
                                      "GuessMIMETypeEnabled")
                                     (requester-pays :target-type boolean
                                      :member-name "RequesterPays")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (file-share-name :target-type
                                      file-share-name :member-name
                                      "FileShareName")
                                     (cache-attributes :target-type
                                      cache-attributes :member-name
                                      "CacheAttributes")
                                     (notification-policy :target-type
                                      notification-policy :member-name
                                      "NotificationPolicy")
                                     (vpcendpoint-dnsname :target-type
                                      dnshost-name :member-name
                                      "VPCEndpointDNSName")
                                     (bucket-region :target-type region-id
                                      :member-name "BucketRegion")
                                     (audit-destination-arn :target-type
                                      audit-destination-arn :member-name
                                      "AuditDestinationARN"))
                                    (:shape-name "NFSFileShareInfo"))

(smithy/sdk/shapes:define-list nfsfile-share-info-list :member
                               nfsfile-share-info)

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((ipv4address :target-type string
                                      :member-name "Ipv4Address")
                                     (mac-address :target-type string
                                      :member-name "MacAddress")
                                     (ipv6address :target-type string
                                      :member-name "Ipv6Address"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-type network-interface-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-update-availability-date
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input notify-when-uploaded-input common-lisp:nil
                                ((file-share-arn :target-type file-share-arn
                                  :required common-lisp:t :member-name
                                  "FileShareARN"))
                                (:shape-name "NotifyWhenUploadedInput"))

(smithy/sdk/shapes:define-output notify-when-uploaded-output common-lisp:nil
                                 ((file-share-arn :target-type file-share-arn
                                   :member-name "FileShareARN")
                                  (notification-id :target-type notification-id
                                   :member-name "NotificationId"))
                                 (:shape-name "NotifyWhenUploadedOutput"))

(smithy/sdk/shapes:define-type num-tapes-to-create
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum object-acl
    common-lisp:nil
  (:private "private")
  (:public-read "public-read")
  (:public-read-write "public-read-write")
  (:authenticated-read "authenticated-read")
  (:bucket-owner-read "bucket-owner-read")
  (:bucket-owner-full-control "bucket-owner-full-control")
  (:aws-exec-read "aws-exec-read"))

(smithy/sdk/shapes:define-type organizational-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type permission-id smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type permission-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pool-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pool-arns :member pool-arn)

(smithy/sdk/shapes:define-type pool-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pool-info common-lisp:nil
                                    ((pool-arn :target-type pool-arn
                                      :member-name "PoolARN")
                                     (pool-name :target-type pool-name
                                      :member-name "PoolName")
                                     (storage-class :target-type
                                      tape-storage-class :member-name
                                      "StorageClass")
                                     (retention-lock-type :target-type
                                      retention-lock-type :member-name
                                      "RetentionLockType")
                                     (retention-lock-time-in-days :target-type
                                      retention-lock-time-in-days :member-name
                                      "RetentionLockTimeInDays")
                                     (pool-status :target-type pool-status
                                      :member-name "PoolStatus"))
                                    (:shape-name "PoolInfo"))

(smithy/sdk/shapes:define-list pool-infos :member pool-info)

(smithy/sdk/shapes:define-type pool-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum pool-status
    common-lisp:nil
  (:active "ACTIVE")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type positive-int-object
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type recurrence-in-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input refresh-cache-input common-lisp:nil
                                ((file-share-arn :target-type file-share-arn
                                  :required common-lisp:t :member-name
                                  "FileShareARN")
                                 (folder-list :target-type folder-list
                                  :member-name "FolderList")
                                 (recursive :target-type boolean :member-name
                                  "Recursive"))
                                (:shape-name "RefreshCacheInput"))

(smithy/sdk/shapes:define-output refresh-cache-output common-lisp:nil
                                 ((file-share-arn :target-type file-share-arn
                                   :member-name "FileShareARN")
                                  (notification-id :target-type notification-id
                                   :member-name "NotificationId"))
                                 (:shape-name "RefreshCacheOutput"))

(smithy/sdk/shapes:define-type region-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input remove-tags-from-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsFromResourceInput"))

(smithy/sdk/shapes:define-output remove-tags-from-resource-output
                                 common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :member-name "ResourceARN"))
                                 (:shape-name "RemoveTagsFromResourceOutput"))

(smithy/sdk/shapes:define-type report-completion-percent
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input reset-cache-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "ResetCacheInput"))

(smithy/sdk/shapes:define-output reset-cache-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "ResetCacheOutput"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retention-lock-time-in-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum retention-lock-type
    common-lisp:nil
  (:compliance "COMPLIANCE")
  (:governance "GOVERNANCE")
  (:none "NONE"))

(smithy/sdk/shapes:define-input retrieve-tape-archive-input common-lisp:nil
                                ((tape-arn :target-type tape-arn :required
                                  common-lisp:t :member-name "TapeARN")
                                 (gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "RetrieveTapeArchiveInput"))

(smithy/sdk/shapes:define-output retrieve-tape-archive-output common-lisp:nil
                                 ((tape-arn :target-type tape-arn :member-name
                                   "TapeARN"))
                                 (:shape-name "RetrieveTapeArchiveOutput"))

(smithy/sdk/shapes:define-input retrieve-tape-recovery-point-input
                                common-lisp:nil
                                ((tape-arn :target-type tape-arn :required
                                  common-lisp:t :member-name "TapeARN")
                                 (gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "RetrieveTapeRecoveryPointInput"))

(smithy/sdk/shapes:define-output retrieve-tape-recovery-point-output
                                 common-lisp:nil
                                 ((tape-arn :target-type tape-arn :member-name
                                   "TapeARN"))
                                 (:shape-name
                                  "RetrieveTapeRecoveryPointOutput"))

(smithy/sdk/shapes:define-type role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure smbfile-share-info common-lisp:nil
                                    ((file-share-arn :target-type
                                      file-share-arn :member-name
                                      "FileShareARN")
                                     (file-share-id :target-type file-share-id
                                      :member-name "FileShareId")
                                     (file-share-status :target-type
                                      file-share-status :member-name
                                      "FileShareStatus")
                                     (gateway-arn :target-type gateway-arn
                                      :member-name "GatewayARN")
                                     (encryption-type :target-type
                                      encryption-type :member-name
                                      "EncryptionType")
                                     (kmsencrypted :target-type boolean2
                                      :member-name "KMSEncrypted")
                                     (kmskey :target-type kmskey :member-name
                                      "KMSKey")
                                     (path :target-type path :member-name
                                      "Path")
                                     (role :target-type role :member-name
                                      "Role")
                                     (location-arn :target-type location-arn
                                      :member-name "LocationARN")
                                     (default-storage-class :target-type
                                      storage-class :member-name
                                      "DefaultStorageClass")
                                     (object-acl :target-type object-acl
                                      :member-name "ObjectACL")
                                     (read-only :target-type boolean
                                      :member-name "ReadOnly")
                                     (guess-mimetype-enabled :target-type
                                      boolean :member-name
                                      "GuessMIMETypeEnabled")
                                     (requester-pays :target-type boolean
                                      :member-name "RequesterPays")
                                     (smbaclenabled :target-type boolean
                                      :member-name "SMBACLEnabled")
                                     (access-based-enumeration :target-type
                                      boolean :member-name
                                      "AccessBasedEnumeration")
                                     (admin-user-list :target-type user-list
                                      :member-name "AdminUserList")
                                     (valid-user-list :target-type user-list
                                      :member-name "ValidUserList")
                                     (invalid-user-list :target-type user-list
                                      :member-name "InvalidUserList")
                                     (audit-destination-arn :target-type
                                      audit-destination-arn :member-name
                                      "AuditDestinationARN")
                                     (authentication :target-type
                                      authentication :member-name
                                      "Authentication")
                                     (case-sensitivity :target-type
                                      case-sensitivity :member-name
                                      "CaseSensitivity")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (file-share-name :target-type
                                      file-share-name :member-name
                                      "FileShareName")
                                     (cache-attributes :target-type
                                      cache-attributes :member-name
                                      "CacheAttributes")
                                     (notification-policy :target-type
                                      notification-policy :member-name
                                      "NotificationPolicy")
                                     (vpcendpoint-dnsname :target-type
                                      dnshost-name :member-name
                                      "VPCEndpointDNSName")
                                     (bucket-region :target-type region-id
                                      :member-name "BucketRegion")
                                     (oplocks-enabled :target-type boolean
                                      :member-name "OplocksEnabled"))
                                    (:shape-name "SMBFileShareInfo"))

(smithy/sdk/shapes:define-list smbfile-share-info-list :member
                               smbfile-share-info)

(smithy/sdk/shapes:define-type smbguest-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure smblocal-groups common-lisp:nil
                                    ((gateway-admins :target-type user-list
                                      :member-name "GatewayAdmins"))
                                    (:shape-name "SMBLocalGroups"))

(smithy/sdk/shapes:define-enum smbsecurity-strategy
    common-lisp:nil
  (:client-specified "ClientSpecified")
  (:mandatory-signing "MandatorySigning")
  (:mandatory-encryption "MandatoryEncryption")
  (:mandatory-encryption-no-aes128 "MandatoryEncryptionNoAes128"))

(smithy/sdk/shapes:define-error service-unavailable-error common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (error :target-type storage-gateway-error
                                  :member-name "error"))
                                (:shape-name "ServiceUnavailableError")
                                (:error-code 503)
                                (:base-class storage-gateway-error))

(smithy/sdk/shapes:define-input set-local-console-password-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (local-console-password :target-type
                                  local-console-password :required
                                  common-lisp:t :member-name
                                  "LocalConsolePassword"))
                                (:shape-name "SetLocalConsolePasswordInput"))

(smithy/sdk/shapes:define-output set-local-console-password-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "SetLocalConsolePasswordOutput"))

(smithy/sdk/shapes:define-input set-smbguest-password-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (password :target-type smbguest-password
                                  :required common-lisp:t :member-name
                                  "Password"))
                                (:shape-name "SetSMBGuestPasswordInput"))

(smithy/sdk/shapes:define-output set-smbguest-password-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "SetSMBGuestPasswordOutput"))

(smithy/sdk/shapes:define-input shutdown-gateway-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "ShutdownGatewayInput"))

(smithy/sdk/shapes:define-output shutdown-gateway-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "ShutdownGatewayOutput"))

(smithy/sdk/shapes:define-type snapshot-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snapshot-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure software-update-preferences common-lisp:nil
                                    ((automatic-update-policy :target-type
                                      automatic-update-policy :member-name
                                      "AutomaticUpdatePolicy"))
                                    (:shape-name "SoftwareUpdatePreferences"))

(smithy/sdk/shapes:define-type software-updates-end-date
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type software-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type squash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-availability-monitor-test-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name
                                 "StartAvailabilityMonitorTestInput"))

(smithy/sdk/shapes:define-output start-availability-monitor-test-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name
                                  "StartAvailabilityMonitorTestOutput"))

(smithy/sdk/shapes:define-input start-cache-report-input common-lisp:nil
                                ((file-share-arn :target-type file-share-arn
                                  :required common-lisp:t :member-name
                                  "FileShareARN")
                                 (role :target-type role :required
                                  common-lisp:t :member-name "Role")
                                 (location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationARN")
                                 (bucket-region :target-type region-id
                                  :required common-lisp:t :member-name
                                  "BucketRegion")
                                 (vpcendpoint-dnsname :target-type dnshost-name
                                  :member-name "VPCEndpointDNSName")
                                 (inclusion-filters :target-type
                                  cache-report-filter-list :member-name
                                  "InclusionFilters")
                                 (exclusion-filters :target-type
                                  cache-report-filter-list :member-name
                                  "ExclusionFilters")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "StartCacheReportInput"))

(smithy/sdk/shapes:define-output start-cache-report-output common-lisp:nil
                                 ((cache-report-arn :target-type
                                   cache-report-arn :member-name
                                   "CacheReportARN"))
                                 (:shape-name "StartCacheReportOutput"))

(smithy/sdk/shapes:define-input start-gateway-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "StartGatewayInput"))

(smithy/sdk/shapes:define-output start-gateway-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "StartGatewayOutput"))

(smithy/sdk/shapes:define-type storage-class smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure storage-gateway-error common-lisp:nil
                                    ((error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-details :target-type error-details
                                      :member-name "errorDetails"))
                                    (:shape-name "StorageGatewayError"))

(smithy/sdk/shapes:define-structure storedi-scsivolume common-lisp:nil
                                    ((volume-arn :target-type volume-arn
                                      :member-name "VolumeARN")
                                     (volume-id :target-type volume-id
                                      :member-name "VolumeId")
                                     (volume-type :target-type volume-type
                                      :member-name "VolumeType")
                                     (volume-status :target-type volume-status
                                      :member-name "VolumeStatus")
                                     (volume-attachment-status :target-type
                                      volume-attachment-status :member-name
                                      "VolumeAttachmentStatus")
                                     (volume-size-in-bytes :target-type long
                                      :member-name "VolumeSizeInBytes")
                                     (volume-progress :target-type
                                      double-object :member-name
                                      "VolumeProgress")
                                     (volume-disk-id :target-type disk-id
                                      :member-name "VolumeDiskId")
                                     (source-snapshot-id :target-type
                                      snapshot-id :member-name
                                      "SourceSnapshotId")
                                     (preserved-existing-data :target-type
                                      boolean2 :member-name
                                      "PreservedExistingData")
                                     (volumei-scsiattributes :target-type
                                      volumei-scsiattributes :member-name
                                      "VolumeiSCSIAttributes")
                                     (created-date :target-type created-date
                                      :member-name "CreatedDate")
                                     (volume-used-in-bytes :target-type
                                      volume-used-in-bytes :member-name
                                      "VolumeUsedInBytes")
                                     (kmskey :target-type kmskey :member-name
                                      "KMSKey")
                                     (target-name :target-type target-name
                                      :member-name "TargetName"))
                                    (:shape-name "StorediSCSIVolume"))

(smithy/sdk/shapes:define-list storedi-scsivolumes :member storedi-scsivolume)

(smithy/sdk/shapes:define-list supported-gateway-capacities :member
                               gateway-capacity)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-structure tape common-lisp:nil
                                    ((tape-arn :target-type tape-arn
                                      :member-name "TapeARN")
                                     (tape-barcode :target-type tape-barcode
                                      :member-name "TapeBarcode")
                                     (tape-created-date :target-type time
                                      :member-name "TapeCreatedDate")
                                     (tape-size-in-bytes :target-type tape-size
                                      :member-name "TapeSizeInBytes")
                                     (tape-status :target-type tape-status
                                      :member-name "TapeStatus")
                                     (vtldevice :target-type vtldevice-arn
                                      :member-name "VTLDevice")
                                     (progress :target-type double-object
                                      :member-name "Progress")
                                     (tape-used-in-bytes :target-type
                                      tape-usage :member-name
                                      "TapeUsedInBytes")
                                     (kmskey :target-type kmskey :member-name
                                      "KMSKey")
                                     (pool-id :target-type pool-id :member-name
                                      "PoolId")
                                     (worm :target-type boolean2 :member-name
                                      "Worm")
                                     (retention-start-date :target-type time
                                      :member-name "RetentionStartDate")
                                     (pool-entry-date :target-type time
                                      :member-name "PoolEntryDate"))
                                    (:shape-name "Tape"))

(smithy/sdk/shapes:define-type tape-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tape-arns :member tape-arn)

(smithy/sdk/shapes:define-structure tape-archive common-lisp:nil
                                    ((tape-arn :target-type tape-arn
                                      :member-name "TapeARN")
                                     (tape-barcode :target-type tape-barcode
                                      :member-name "TapeBarcode")
                                     (tape-created-date :target-type time
                                      :member-name "TapeCreatedDate")
                                     (tape-size-in-bytes :target-type tape-size
                                      :member-name "TapeSizeInBytes")
                                     (completion-time :target-type time
                                      :member-name "CompletionTime")
                                     (retrieved-to :target-type gateway-arn
                                      :member-name "RetrievedTo")
                                     (tape-status :target-type
                                      tape-archive-status :member-name
                                      "TapeStatus")
                                     (tape-used-in-bytes :target-type
                                      tape-usage :member-name
                                      "TapeUsedInBytes")
                                     (kmskey :target-type kmskey :member-name
                                      "KMSKey")
                                     (pool-id :target-type pool-id :member-name
                                      "PoolId")
                                     (worm :target-type boolean2 :member-name
                                      "Worm")
                                     (retention-start-date :target-type time
                                      :member-name "RetentionStartDate")
                                     (pool-entry-date :target-type time
                                      :member-name "PoolEntryDate"))
                                    (:shape-name "TapeArchive"))

(smithy/sdk/shapes:define-type tape-archive-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tape-archives :member tape-archive)

(smithy/sdk/shapes:define-type tape-barcode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tape-barcode-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tape-drive-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tape-info common-lisp:nil
                                    ((tape-arn :target-type tape-arn
                                      :member-name "TapeARN")
                                     (tape-barcode :target-type tape-barcode
                                      :member-name "TapeBarcode")
                                     (tape-size-in-bytes :target-type tape-size
                                      :member-name "TapeSizeInBytes")
                                     (tape-status :target-type tape-status
                                      :member-name "TapeStatus")
                                     (gateway-arn :target-type gateway-arn
                                      :member-name "GatewayARN")
                                     (pool-id :target-type pool-id :member-name
                                      "PoolId")
                                     (retention-start-date :target-type time
                                      :member-name "RetentionStartDate")
                                     (pool-entry-date :target-type time
                                      :member-name "PoolEntryDate"))
                                    (:shape-name "TapeInfo"))

(smithy/sdk/shapes:define-list tape-infos :member tape-info)

(smithy/sdk/shapes:define-structure tape-recovery-point-info common-lisp:nil
                                    ((tape-arn :target-type tape-arn
                                      :member-name "TapeARN")
                                     (tape-recovery-point-time :target-type
                                      time :member-name
                                      "TapeRecoveryPointTime")
                                     (tape-size-in-bytes :target-type tape-size
                                      :member-name "TapeSizeInBytes")
                                     (tape-status :target-type
                                      tape-recovery-point-status :member-name
                                      "TapeStatus"))
                                    (:shape-name "TapeRecoveryPointInfo"))

(smithy/sdk/shapes:define-list tape-recovery-point-infos :member
                               tape-recovery-point-info)

(smithy/sdk/shapes:define-type tape-recovery-point-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tape-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type tape-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum tape-storage-class
    common-lisp:nil
  (:deep-archive "DEEP_ARCHIVE")
  (:glacier "GLACIER"))

(smithy/sdk/shapes:define-type tape-usage smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list tapes :member tape)

(smithy/sdk/shapes:define-type target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timeout-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input update-automatic-tape-creation-policy-input
                                common-lisp:nil
                                ((automatic-tape-creation-rules :target-type
                                  automatic-tape-creation-rules :required
                                  common-lisp:t :member-name
                                  "AutomaticTapeCreationRules")
                                 (gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name
                                 "UpdateAutomaticTapeCreationPolicyInput"))

(smithy/sdk/shapes:define-output update-automatic-tape-creation-policy-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name
                                  "UpdateAutomaticTapeCreationPolicyOutput"))

(smithy/sdk/shapes:define-input update-bandwidth-rate-limit-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (average-upload-rate-limit-in-bits-per-sec
                                  :target-type bandwidth-upload-rate-limit
                                  :member-name
                                  "AverageUploadRateLimitInBitsPerSec")
                                 (average-download-rate-limit-in-bits-per-sec
                                  :target-type bandwidth-download-rate-limit
                                  :member-name
                                  "AverageDownloadRateLimitInBitsPerSec"))
                                (:shape-name "UpdateBandwidthRateLimitInput"))

(smithy/sdk/shapes:define-output update-bandwidth-rate-limit-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "UpdateBandwidthRateLimitOutput"))

(smithy/sdk/shapes:define-input update-bandwidth-rate-limit-schedule-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (bandwidth-rate-limit-intervals :target-type
                                  bandwidth-rate-limit-intervals :required
                                  common-lisp:t :member-name
                                  "BandwidthRateLimitIntervals"))
                                (:shape-name
                                 "UpdateBandwidthRateLimitScheduleInput"))

(smithy/sdk/shapes:define-output update-bandwidth-rate-limit-schedule-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name
                                  "UpdateBandwidthRateLimitScheduleOutput"))

(smithy/sdk/shapes:define-input update-chap-credentials-input common-lisp:nil
                                ((target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "TargetARN")
                                 (secret-to-authenticate-initiator :target-type
                                  chap-secret :required common-lisp:t
                                  :member-name "SecretToAuthenticateInitiator")
                                 (initiator-name :target-type iqn-name
                                  :required common-lisp:t :member-name
                                  "InitiatorName")
                                 (secret-to-authenticate-target :target-type
                                  chap-secret :member-name
                                  "SecretToAuthenticateTarget"))
                                (:shape-name "UpdateChapCredentialsInput"))

(smithy/sdk/shapes:define-output update-chap-credentials-output common-lisp:nil
                                 ((target-arn :target-type target-arn
                                   :member-name "TargetARN")
                                  (initiator-name :target-type iqn-name
                                   :member-name "InitiatorName"))
                                 (:shape-name "UpdateChapCredentialsOutput"))

(smithy/sdk/shapes:define-input update-file-system-association-input
                                common-lisp:nil
                                ((file-system-association-arn :target-type
                                  file-system-association-arn :required
                                  common-lisp:t :member-name
                                  "FileSystemAssociationARN")
                                 (user-name :target-type domain-user-name
                                  :member-name "UserName")
                                 (password :target-type domain-user-password
                                  :member-name "Password")
                                 (audit-destination-arn :target-type
                                  audit-destination-arn :member-name
                                  "AuditDestinationARN")
                                 (cache-attributes :target-type
                                  cache-attributes :member-name
                                  "CacheAttributes"))
                                (:shape-name
                                 "UpdateFileSystemAssociationInput"))

(smithy/sdk/shapes:define-output update-file-system-association-output
                                 common-lisp:nil
                                 ((file-system-association-arn :target-type
                                   file-system-association-arn :member-name
                                   "FileSystemAssociationARN"))
                                 (:shape-name
                                  "UpdateFileSystemAssociationOutput"))

(smithy/sdk/shapes:define-input update-gateway-information-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (gateway-name :target-type gateway-name
                                  :member-name "GatewayName")
                                 (gateway-timezone :target-type
                                  gateway-timezone :member-name
                                  "GatewayTimezone")
                                 (cloud-watch-log-group-arn :target-type
                                  cloud-watch-log-group-arn :member-name
                                  "CloudWatchLogGroupARN")
                                 (gateway-capacity :target-type
                                  gateway-capacity :member-name
                                  "GatewayCapacity"))
                                (:shape-name "UpdateGatewayInformationInput"))

(smithy/sdk/shapes:define-output update-gateway-information-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN")
                                  (gateway-name :target-type string
                                   :member-name "GatewayName"))
                                 (:shape-name "UpdateGatewayInformationOutput"))

(smithy/sdk/shapes:define-input update-gateway-software-now-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN"))
                                (:shape-name "UpdateGatewaySoftwareNowInput"))

(smithy/sdk/shapes:define-output update-gateway-software-now-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "UpdateGatewaySoftwareNowOutput"))

(smithy/sdk/shapes:define-input update-maintenance-start-time-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (hour-of-day :target-type hour-of-day
                                  :member-name "HourOfDay")
                                 (minute-of-hour :target-type minute-of-hour
                                  :member-name "MinuteOfHour")
                                 (day-of-week :target-type day-of-week
                                  :member-name "DayOfWeek")
                                 (day-of-month :target-type day-of-month
                                  :member-name "DayOfMonth")
                                 (software-update-preferences :target-type
                                  software-update-preferences :member-name
                                  "SoftwareUpdatePreferences"))
                                (:shape-name "UpdateMaintenanceStartTimeInput"))

(smithy/sdk/shapes:define-output update-maintenance-start-time-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name
                                  "UpdateMaintenanceStartTimeOutput"))

(smithy/sdk/shapes:define-input update-nfsfile-share-input common-lisp:nil
                                ((file-share-arn :target-type file-share-arn
                                  :required common-lisp:t :member-name
                                  "FileShareARN")
                                 (encryption-type :target-type encryption-type
                                  :member-name "EncryptionType")
                                 (kmsencrypted :target-type boolean
                                  :member-name "KMSEncrypted")
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (nfsfile-share-defaults :target-type
                                  nfsfile-share-defaults :member-name
                                  "NFSFileShareDefaults")
                                 (default-storage-class :target-type
                                  storage-class :member-name
                                  "DefaultStorageClass")
                                 (object-acl :target-type object-acl
                                  :member-name "ObjectACL")
                                 (client-list :target-type
                                  file-share-client-list :member-name
                                  "ClientList")
                                 (squash :target-type squash :member-name
                                  "Squash")
                                 (read-only :target-type boolean :member-name
                                  "ReadOnly")
                                 (guess-mimetype-enabled :target-type boolean
                                  :member-name "GuessMIMETypeEnabled")
                                 (requester-pays :target-type boolean
                                  :member-name "RequesterPays")
                                 (file-share-name :target-type file-share-name
                                  :member-name "FileShareName")
                                 (cache-attributes :target-type
                                  cache-attributes :member-name
                                  "CacheAttributes")
                                 (notification-policy :target-type
                                  notification-policy :member-name
                                  "NotificationPolicy")
                                 (audit-destination-arn :target-type
                                  audit-destination-arn :member-name
                                  "AuditDestinationARN"))
                                (:shape-name "UpdateNFSFileShareInput"))

(smithy/sdk/shapes:define-output update-nfsfile-share-output common-lisp:nil
                                 ((file-share-arn :target-type file-share-arn
                                   :member-name "FileShareARN"))
                                 (:shape-name "UpdateNFSFileShareOutput"))

(smithy/sdk/shapes:define-input update-smbfile-share-input common-lisp:nil
                                ((file-share-arn :target-type file-share-arn
                                  :required common-lisp:t :member-name
                                  "FileShareARN")
                                 (encryption-type :target-type encryption-type
                                  :member-name "EncryptionType")
                                 (kmsencrypted :target-type boolean
                                  :member-name "KMSEncrypted")
                                 (kmskey :target-type kmskey :member-name
                                  "KMSKey")
                                 (default-storage-class :target-type
                                  storage-class :member-name
                                  "DefaultStorageClass")
                                 (object-acl :target-type object-acl
                                  :member-name "ObjectACL")
                                 (read-only :target-type boolean :member-name
                                  "ReadOnly")
                                 (guess-mimetype-enabled :target-type boolean
                                  :member-name "GuessMIMETypeEnabled")
                                 (requester-pays :target-type boolean
                                  :member-name "RequesterPays")
                                 (smbaclenabled :target-type boolean
                                  :member-name "SMBACLEnabled")
                                 (access-based-enumeration :target-type boolean
                                  :member-name "AccessBasedEnumeration")
                                 (admin-user-list :target-type user-list
                                  :member-name "AdminUserList")
                                 (valid-user-list :target-type user-list
                                  :member-name "ValidUserList")
                                 (invalid-user-list :target-type user-list
                                  :member-name "InvalidUserList")
                                 (audit-destination-arn :target-type
                                  audit-destination-arn :member-name
                                  "AuditDestinationARN")
                                 (case-sensitivity :target-type
                                  case-sensitivity :member-name
                                  "CaseSensitivity")
                                 (file-share-name :target-type file-share-name
                                  :member-name "FileShareName")
                                 (cache-attributes :target-type
                                  cache-attributes :member-name
                                  "CacheAttributes")
                                 (notification-policy :target-type
                                  notification-policy :member-name
                                  "NotificationPolicy")
                                 (oplocks-enabled :target-type boolean
                                  :member-name "OplocksEnabled"))
                                (:shape-name "UpdateSMBFileShareInput"))

(smithy/sdk/shapes:define-output update-smbfile-share-output common-lisp:nil
                                 ((file-share-arn :target-type file-share-arn
                                   :member-name "FileShareARN"))
                                 (:shape-name "UpdateSMBFileShareOutput"))

(smithy/sdk/shapes:define-input update-smbfile-share-visibility-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (file-shares-visible :target-type boolean
                                  :required common-lisp:t :member-name
                                  "FileSharesVisible"))
                                (:shape-name
                                 "UpdateSMBFileShareVisibilityInput"))

(smithy/sdk/shapes:define-output update-smbfile-share-visibility-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name
                                  "UpdateSMBFileShareVisibilityOutput"))

(smithy/sdk/shapes:define-input update-smblocal-groups-input common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (smblocal-groups :target-type smblocal-groups
                                  :required common-lisp:t :member-name
                                  "SMBLocalGroups"))
                                (:shape-name "UpdateSMBLocalGroupsInput"))

(smithy/sdk/shapes:define-output update-smblocal-groups-output common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name "UpdateSMBLocalGroupsOutput"))

(smithy/sdk/shapes:define-input update-smbsecurity-strategy-input
                                common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayARN")
                                 (smbsecurity-strategy :target-type
                                  smbsecurity-strategy :required common-lisp:t
                                  :member-name "SMBSecurityStrategy"))
                                (:shape-name "UpdateSMBSecurityStrategyInput"))

(smithy/sdk/shapes:define-output update-smbsecurity-strategy-output
                                 common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :member-name "GatewayARN"))
                                 (:shape-name
                                  "UpdateSMBSecurityStrategyOutput"))

(smithy/sdk/shapes:define-input update-snapshot-schedule-input common-lisp:nil
                                ((volume-arn :target-type volume-arn :required
                                  common-lisp:t :member-name "VolumeARN")
                                 (start-at :target-type hour-of-day :required
                                  common-lisp:t :member-name "StartAt")
                                 (recurrence-in-hours :target-type
                                  recurrence-in-hours :required common-lisp:t
                                  :member-name "RecurrenceInHours")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "UpdateSnapshotScheduleInput"))

(smithy/sdk/shapes:define-output update-snapshot-schedule-output
                                 common-lisp:nil
                                 ((volume-arn :target-type volume-arn
                                   :member-name "VolumeARN"))
                                 (:shape-name "UpdateSnapshotScheduleOutput"))

(smithy/sdk/shapes:define-input update-vtldevice-type-input common-lisp:nil
                                ((vtldevice-arn :target-type vtldevice-arn
                                  :required common-lisp:t :member-name
                                  "VTLDeviceARN")
                                 (device-type :target-type device-type
                                  :required common-lisp:t :member-name
                                  "DeviceType"))
                                (:shape-name "UpdateVTLDeviceTypeInput"))

(smithy/sdk/shapes:define-output update-vtldevice-type-output common-lisp:nil
                                 ((vtldevice-arn :target-type vtldevice-arn
                                   :member-name "VTLDeviceARN"))
                                 (:shape-name "UpdateVTLDeviceTypeOutput"))

(smithy/sdk/shapes:define-list user-list :member user-list-user)

(smithy/sdk/shapes:define-type user-list-user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vtldevice common-lisp:nil
                                    ((vtldevice-arn :target-type vtldevice-arn
                                      :member-name "VTLDeviceARN")
                                     (vtldevice-type :target-type
                                      vtldevice-type :member-name
                                      "VTLDeviceType")
                                     (vtldevice-vendor :target-type
                                      vtldevice-vendor :member-name
                                      "VTLDeviceVendor")
                                     (vtldevice-product-identifier :target-type
                                      vtldevice-product-identifier :member-name
                                      "VTLDeviceProductIdentifier")
                                     (devicei-scsiattributes :target-type
                                      devicei-scsiattributes :member-name
                                      "DeviceiSCSIAttributes"))
                                    (:shape-name "VTLDevice"))

(smithy/sdk/shapes:define-type vtldevice-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vtldevice-arns :member vtldevice-arn)

(smithy/sdk/shapes:define-type vtldevice-product-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vtldevice-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vtldevice-vendor smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vtldevices :member vtldevice)

(smithy/sdk/shapes:define-type volume-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list volume-arns :member volume-arn)

(smithy/sdk/shapes:define-type volume-attachment-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type volume-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure volume-info common-lisp:nil
                                    ((volume-arn :target-type volume-arn
                                      :member-name "VolumeARN")
                                     (volume-id :target-type volume-id
                                      :member-name "VolumeId")
                                     (gateway-arn :target-type gateway-arn
                                      :member-name "GatewayARN")
                                     (gateway-id :target-type gateway-id
                                      :member-name "GatewayId")
                                     (volume-type :target-type volume-type
                                      :member-name "VolumeType")
                                     (volume-size-in-bytes :target-type long
                                      :member-name "VolumeSizeInBytes")
                                     (volume-attachment-status :target-type
                                      volume-attachment-status :member-name
                                      "VolumeAttachmentStatus"))
                                    (:shape-name "VolumeInfo"))

(smithy/sdk/shapes:define-list volume-infos :member volume-info)

(smithy/sdk/shapes:define-structure volume-recovery-point-info common-lisp:nil
                                    ((volume-arn :target-type volume-arn
                                      :member-name "VolumeARN")
                                     (volume-size-in-bytes :target-type long
                                      :member-name "VolumeSizeInBytes")
                                     (volume-usage-in-bytes :target-type long
                                      :member-name "VolumeUsageInBytes")
                                     (volume-recovery-point-time :target-type
                                      string :member-name
                                      "VolumeRecoveryPointTime"))
                                    (:shape-name "VolumeRecoveryPointInfo"))

(smithy/sdk/shapes:define-list volume-recovery-point-infos :member
                               volume-recovery-point-info)

(smithy/sdk/shapes:define-type volume-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type volume-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type volume-used-in-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure volumei-scsiattributes common-lisp:nil
                                    ((target-arn :target-type target-arn
                                      :member-name "TargetARN")
                                     (network-interface-id :target-type
                                      network-interface-id :member-name
                                      "NetworkInterfaceId")
                                     (network-interface-port :target-type
                                      integer :member-name
                                      "NetworkInterfacePort")
                                     (lun-number :target-type
                                      positive-int-object :member-name
                                      "LunNumber")
                                     (chap-enabled :target-type boolean2
                                      :member-name "ChapEnabled"))
                                    (:shape-name "VolumeiSCSIAttributes"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-map error-details :key string :value string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation activate-gateway :shape-name
                                       "ActivateGateway" :input
                                       activate-gateway-input :output
                                       activate-gateway-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation add-cache :shape-name "AddCache" :input
                                       add-cache-input :output add-cache-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation add-tags-to-resource :shape-name
                                       "AddTagsToResource" :input
                                       add-tags-to-resource-input :output
                                       add-tags-to-resource-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation add-upload-buffer :shape-name
                                       "AddUploadBuffer" :input
                                       add-upload-buffer-input :output
                                       add-upload-buffer-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation add-working-storage :shape-name
                                       "AddWorkingStorage" :input
                                       add-working-storage-input :output
                                       add-working-storage-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation assign-tape-pool :shape-name
                                       "AssignTapePool" :input
                                       assign-tape-pool-input :output
                                       assign-tape-pool-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation associate-file-system :shape-name
                                       "AssociateFileSystem" :input
                                       associate-file-system-input :output
                                       associate-file-system-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation attach-volume :shape-name "AttachVolume"
                                       :input attach-volume-input :output
                                       attach-volume-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation cancel-archival :shape-name
                                       "CancelArchival" :input
                                       cancel-archival-input :output
                                       cancel-archival-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation cancel-cache-report :shape-name
                                       "CancelCacheReport" :input
                                       cancel-cache-report-input :output
                                       cancel-cache-report-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation cancel-retrieval :shape-name
                                       "CancelRetrieval" :input
                                       cancel-retrieval-input :output
                                       cancel-retrieval-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation create-cachedi-scsivolume :shape-name
                                       "CreateCachediSCSIVolume" :input
                                       create-cachedi-scsivolume-input :output
                                       create-cachedi-scsivolume-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation create-nfsfile-share :shape-name
                                       "CreateNFSFileShare" :input
                                       create-nfsfile-share-input :output
                                       create-nfsfile-share-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation create-smbfile-share :shape-name
                                       "CreateSMBFileShare" :input
                                       create-smbfile-share-input :output
                                       create-smbfile-share-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation create-snapshot :shape-name
                                       "CreateSnapshot" :input
                                       create-snapshot-input :output
                                       create-snapshot-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception
                                        service-unavailable-error))

(smithy/sdk/operation:define-operation
 create-snapshot-from-volume-recovery-point :shape-name
 "CreateSnapshotFromVolumeRecoveryPoint" :input
 create-snapshot-from-volume-recovery-point-input :output
 create-snapshot-from-volume-recovery-point-output :errors
 (internal-server-error invalid-gateway-request-exception
  service-unavailable-error))

(smithy/sdk/operation:define-operation create-storedi-scsivolume :shape-name
                                       "CreateStorediSCSIVolume" :input
                                       create-storedi-scsivolume-input :output
                                       create-storedi-scsivolume-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation create-tape-pool :shape-name
                                       "CreateTapePool" :input
                                       create-tape-pool-input :output
                                       create-tape-pool-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation create-tape-with-barcode :shape-name
                                       "CreateTapeWithBarcode" :input
                                       create-tape-with-barcode-input :output
                                       create-tape-with-barcode-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation create-tapes :shape-name "CreateTapes"
                                       :input create-tapes-input :output
                                       create-tapes-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-automatic-tape-creation-policy
                                       :shape-name
                                       "DeleteAutomaticTapeCreationPolicy"
                                       :input
                                       delete-automatic-tape-creation-policy-input
                                       :output
                                       delete-automatic-tape-creation-policy-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-bandwidth-rate-limit :shape-name
                                       "DeleteBandwidthRateLimit" :input
                                       delete-bandwidth-rate-limit-input
                                       :output
                                       delete-bandwidth-rate-limit-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-cache-report :shape-name
                                       "DeleteCacheReport" :input
                                       delete-cache-report-input :output
                                       delete-cache-report-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-chap-credentials :shape-name
                                       "DeleteChapCredentials" :input
                                       delete-chap-credentials-input :output
                                       delete-chap-credentials-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-file-share :shape-name
                                       "DeleteFileShare" :input
                                       delete-file-share-input :output
                                       delete-file-share-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-gateway :shape-name
                                       "DeleteGateway" :input
                                       delete-gateway-input :output
                                       delete-gateway-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-snapshot-schedule :shape-name
                                       "DeleteSnapshotSchedule" :input
                                       delete-snapshot-schedule-input :output
                                       delete-snapshot-schedule-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-tape :shape-name "DeleteTape"
                                       :input delete-tape-input :output
                                       delete-tape-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-tape-archive :shape-name
                                       "DeleteTapeArchive" :input
                                       delete-tape-archive-input :output
                                       delete-tape-archive-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-tape-pool :shape-name
                                       "DeleteTapePool" :input
                                       delete-tape-pool-input :output
                                       delete-tape-pool-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation delete-volume :shape-name "DeleteVolume"
                                       :input delete-volume-input :output
                                       delete-volume-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-availability-monitor-test
                                       :shape-name
                                       "DescribeAvailabilityMonitorTest" :input
                                       describe-availability-monitor-test-input
                                       :output
                                       describe-availability-monitor-test-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-bandwidth-rate-limit
                                       :shape-name "DescribeBandwidthRateLimit"
                                       :input
                                       describe-bandwidth-rate-limit-input
                                       :output
                                       describe-bandwidth-rate-limit-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-bandwidth-rate-limit-schedule
                                       :shape-name
                                       "DescribeBandwidthRateLimitSchedule"
                                       :input
                                       describe-bandwidth-rate-limit-schedule-input
                                       :output
                                       describe-bandwidth-rate-limit-schedule-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-cache :shape-name
                                       "DescribeCache" :input
                                       describe-cache-input :output
                                       describe-cache-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-cache-report :shape-name
                                       "DescribeCacheReport" :input
                                       describe-cache-report-input :output
                                       describe-cache-report-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-cachedi-scsivolumes :shape-name
                                       "DescribeCachediSCSIVolumes" :input
                                       describe-cachedi-scsivolumes-input
                                       :output
                                       describe-cachedi-scsivolumes-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-chap-credentials :shape-name
                                       "DescribeChapCredentials" :input
                                       describe-chap-credentials-input :output
                                       describe-chap-credentials-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-file-system-associations
                                       :shape-name
                                       "DescribeFileSystemAssociations" :input
                                       describe-file-system-associations-input
                                       :output
                                       describe-file-system-associations-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-gateway-information :shape-name
                                       "DescribeGatewayInformation" :input
                                       describe-gateway-information-input
                                       :output
                                       describe-gateway-information-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-maintenance-start-time
                                       :shape-name
                                       "DescribeMaintenanceStartTime" :input
                                       describe-maintenance-start-time-input
                                       :output
                                       describe-maintenance-start-time-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-nfsfile-shares :shape-name
                                       "DescribeNFSFileShares" :input
                                       describe-nfsfile-shares-input :output
                                       describe-nfsfile-shares-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-smbfile-shares :shape-name
                                       "DescribeSMBFileShares" :input
                                       describe-smbfile-shares-input :output
                                       describe-smbfile-shares-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-smbsettings :shape-name
                                       "DescribeSMBSettings" :input
                                       describe-smbsettings-input :output
                                       describe-smbsettings-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-snapshot-schedule :shape-name
                                       "DescribeSnapshotSchedule" :input
                                       describe-snapshot-schedule-input :output
                                       describe-snapshot-schedule-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-storedi-scsivolumes :shape-name
                                       "DescribeStorediSCSIVolumes" :input
                                       describe-storedi-scsivolumes-input
                                       :output
                                       describe-storedi-scsivolumes-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-tape-archives :shape-name
                                       "DescribeTapeArchives" :input
                                       describe-tape-archives-input :output
                                       describe-tape-archives-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-tape-recovery-points
                                       :shape-name "DescribeTapeRecoveryPoints"
                                       :input
                                       describe-tape-recovery-points-input
                                       :output
                                       describe-tape-recovery-points-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-tapes :shape-name
                                       "DescribeTapes" :input
                                       describe-tapes-input :output
                                       describe-tapes-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-upload-buffer :shape-name
                                       "DescribeUploadBuffer" :input
                                       describe-upload-buffer-input :output
                                       describe-upload-buffer-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-vtldevices :shape-name
                                       "DescribeVTLDevices" :input
                                       describe-vtldevices-input :output
                                       describe-vtldevices-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation describe-working-storage :shape-name
                                       "DescribeWorkingStorage" :input
                                       describe-working-storage-input :output
                                       describe-working-storage-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation detach-volume :shape-name "DetachVolume"
                                       :input detach-volume-input :output
                                       detach-volume-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation disable-gateway :shape-name
                                       "DisableGateway" :input
                                       disable-gateway-input :output
                                       disable-gateway-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation disassociate-file-system :shape-name
                                       "DisassociateFileSystem" :input
                                       disassociate-file-system-input :output
                                       disassociate-file-system-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation evict-files-failing-upload :shape-name
                                       "EvictFilesFailingUpload" :input
                                       evict-files-failing-upload-input :output
                                       evict-files-failing-upload-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation join-domain :shape-name "JoinDomain"
                                       :input join-domain-input :output
                                       join-domain-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-automatic-tape-creation-policies
                                       :shape-name
                                       "ListAutomaticTapeCreationPolicies"
                                       :input
                                       list-automatic-tape-creation-policies-input
                                       :output
                                       list-automatic-tape-creation-policies-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-cache-reports :shape-name
                                       "ListCacheReports" :input
                                       list-cache-reports-input :output
                                       list-cache-reports-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-file-shares :shape-name
                                       "ListFileShares" :input
                                       list-file-shares-input :output
                                       list-file-shares-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-file-system-associations
                                       :shape-name "ListFileSystemAssociations"
                                       :input
                                       list-file-system-associations-input
                                       :output
                                       list-file-system-associations-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-gateways :shape-name "ListGateways"
                                       :input list-gateways-input :output
                                       list-gateways-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-local-disks :shape-name
                                       "ListLocalDisks" :input
                                       list-local-disks-input :output
                                       list-local-disks-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-tape-pools :shape-name
                                       "ListTapePools" :input
                                       list-tape-pools-input :output
                                       list-tape-pools-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-tapes :shape-name "ListTapes"
                                       :input list-tapes-input :output
                                       list-tapes-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-volume-initiators :shape-name
                                       "ListVolumeInitiators" :input
                                       list-volume-initiators-input :output
                                       list-volume-initiators-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-volume-recovery-points :shape-name
                                       "ListVolumeRecoveryPoints" :input
                                       list-volume-recovery-points-input
                                       :output
                                       list-volume-recovery-points-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation list-volumes :shape-name "ListVolumes"
                                       :input list-volumes-input :output
                                       list-volumes-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation notify-when-uploaded :shape-name
                                       "NotifyWhenUploaded" :input
                                       notify-when-uploaded-input :output
                                       notify-when-uploaded-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation refresh-cache :shape-name "RefreshCache"
                                       :input refresh-cache-input :output
                                       refresh-cache-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation remove-tags-from-resource :shape-name
                                       "RemoveTagsFromResource" :input
                                       remove-tags-from-resource-input :output
                                       remove-tags-from-resource-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation reset-cache :shape-name "ResetCache"
                                       :input reset-cache-input :output
                                       reset-cache-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation retrieve-tape-archive :shape-name
                                       "RetrieveTapeArchive" :input
                                       retrieve-tape-archive-input :output
                                       retrieve-tape-archive-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation retrieve-tape-recovery-point :shape-name
                                       "RetrieveTapeRecoveryPoint" :input
                                       retrieve-tape-recovery-point-input
                                       :output
                                       retrieve-tape-recovery-point-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation set-local-console-password :shape-name
                                       "SetLocalConsolePassword" :input
                                       set-local-console-password-input :output
                                       set-local-console-password-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation set-smbguest-password :shape-name
                                       "SetSMBGuestPassword" :input
                                       set-smbguest-password-input :output
                                       set-smbguest-password-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation shutdown-gateway :shape-name
                                       "ShutdownGateway" :input
                                       shutdown-gateway-input :output
                                       shutdown-gateway-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation start-availability-monitor-test
                                       :shape-name
                                       "StartAvailabilityMonitorTest" :input
                                       start-availability-monitor-test-input
                                       :output
                                       start-availability-monitor-test-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation start-cache-report :shape-name
                                       "StartCacheReport" :input
                                       start-cache-report-input :output
                                       start-cache-report-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation start-gateway :shape-name "StartGateway"
                                       :input start-gateway-input :output
                                       start-gateway-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-automatic-tape-creation-policy
                                       :shape-name
                                       "UpdateAutomaticTapeCreationPolicy"
                                       :input
                                       update-automatic-tape-creation-policy-input
                                       :output
                                       update-automatic-tape-creation-policy-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-bandwidth-rate-limit :shape-name
                                       "UpdateBandwidthRateLimit" :input
                                       update-bandwidth-rate-limit-input
                                       :output
                                       update-bandwidth-rate-limit-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-bandwidth-rate-limit-schedule
                                       :shape-name
                                       "UpdateBandwidthRateLimitSchedule"
                                       :input
                                       update-bandwidth-rate-limit-schedule-input
                                       :output
                                       update-bandwidth-rate-limit-schedule-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-chap-credentials :shape-name
                                       "UpdateChapCredentials" :input
                                       update-chap-credentials-input :output
                                       update-chap-credentials-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-file-system-association
                                       :shape-name
                                       "UpdateFileSystemAssociation" :input
                                       update-file-system-association-input
                                       :output
                                       update-file-system-association-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-gateway-information :shape-name
                                       "UpdateGatewayInformation" :input
                                       update-gateway-information-input :output
                                       update-gateway-information-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-gateway-software-now :shape-name
                                       "UpdateGatewaySoftwareNow" :input
                                       update-gateway-software-now-input
                                       :output
                                       update-gateway-software-now-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-maintenance-start-time
                                       :shape-name "UpdateMaintenanceStartTime"
                                       :input
                                       update-maintenance-start-time-input
                                       :output
                                       update-maintenance-start-time-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-nfsfile-share :shape-name
                                       "UpdateNFSFileShare" :input
                                       update-nfsfile-share-input :output
                                       update-nfsfile-share-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-smbfile-share :shape-name
                                       "UpdateSMBFileShare" :input
                                       update-smbfile-share-input :output
                                       update-smbfile-share-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-smbfile-share-visibility
                                       :shape-name
                                       "UpdateSMBFileShareVisibility" :input
                                       update-smbfile-share-visibility-input
                                       :output
                                       update-smbfile-share-visibility-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-smblocal-groups :shape-name
                                       "UpdateSMBLocalGroups" :input
                                       update-smblocal-groups-input :output
                                       update-smblocal-groups-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-smbsecurity-strategy :shape-name
                                       "UpdateSMBSecurityStrategy" :input
                                       update-smbsecurity-strategy-input
                                       :output
                                       update-smbsecurity-strategy-output
                                       :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-snapshot-schedule :shape-name
                                       "UpdateSnapshotSchedule" :input
                                       update-snapshot-schedule-input :output
                                       update-snapshot-schedule-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))

(smithy/sdk/operation:define-operation update-vtldevice-type :shape-name
                                       "UpdateVTLDeviceType" :input
                                       update-vtldevice-type-input :output
                                       update-vtldevice-type-output :errors
                                       (internal-server-error
                                        invalid-gateway-request-exception))
