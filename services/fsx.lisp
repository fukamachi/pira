(uiop/package:define-package #:pira/fsx (:use)
                             (:export #:awsaccount-id
                              #:awssimba-apiservice-v20180301
                              #:access-point-already-owned-by-you
                              #:access-point-policy
                              #:active-directory-backup-attributes
                              #:active-directory-error
                              #:active-directory-error-type
                              #:active-directory-fully-qualified-name
                              #:admin-password #:administrative-action
                              #:administrative-action-failure-details
                              #:administrative-action-type
                              #:administrative-actions #:aggregate
                              #:aggregate-configuration
                              #:aggregate-list-multiplier #:aggregates #:alias
                              #:alias-lifecycle #:aliases #:alternate-dnsname
                              #:alternate-dnsnames #:archive-path
                              #:associate-file-system-aliases
                              #:associate-file-system-aliases-request
                              #:associate-file-system-aliases-response
                              #:auto-export-policy #:auto-import-policy
                              #:auto-import-policy-type #:autocommit-period
                              #:autocommit-period-type
                              #:autocommit-period-value
                              #:automatic-backup-retention-days #:backup
                              #:backup-being-copied #:backup-failure-details
                              #:backup-id #:backup-ids #:backup-in-progress
                              #:backup-lifecycle #:backup-not-found
                              #:backup-restoring #:backup-type #:backups
                              #:bad-request #:batch-import-meta-data-on-create
                              #:cancel-data-repository-task
                              #:cancel-data-repository-task-request
                              #:cancel-data-repository-task-response
                              #:capacity-to-release #:client-request-token
                              #:completion-report #:cooling-period
                              #:copy-backup #:copy-backup-request
                              #:copy-backup-response
                              #:copy-snapshot-and-update-volume
                              #:copy-snapshot-and-update-volume-request
                              #:copy-snapshot-and-update-volume-response
                              #:copy-tags-to-data-repository-associations
                              #:create-aggregate-configuration
                              #:create-and-attach-s3access-point
                              #:create-and-attach-s3access-point-open-zfsconfiguration
                              #:create-and-attach-s3access-point-request
                              #:create-and-attach-s3access-point-response
                              #:create-and-attach-s3access-point-s3configuration
                              #:create-backup #:create-backup-request
                              #:create-backup-response
                              #:create-data-repository-association
                              #:create-data-repository-association-request
                              #:create-data-repository-association-response
                              #:create-data-repository-task
                              #:create-data-repository-task-request
                              #:create-data-repository-task-response
                              #:create-file-cache
                              #:create-file-cache-data-repository-associations
                              #:create-file-cache-lustre-configuration
                              #:create-file-cache-request
                              #:create-file-cache-response #:create-file-system
                              #:create-file-system-from-backup
                              #:create-file-system-from-backup-request
                              #:create-file-system-from-backup-response
                              #:create-file-system-lustre-configuration
                              #:create-file-system-lustre-metadata-configuration
                              #:create-file-system-ontap-configuration
                              #:create-file-system-open-zfsconfiguration
                              #:create-file-system-request
                              #:create-file-system-response
                              #:create-file-system-windows-configuration
                              #:create-ontap-volume-configuration
                              #:create-open-zfsorigin-snapshot-configuration
                              #:create-open-zfsvolume-configuration
                              #:create-snaplock-configuration #:create-snapshot
                              #:create-snapshot-request
                              #:create-snapshot-response
                              #:create-storage-virtual-machine
                              #:create-storage-virtual-machine-request
                              #:create-storage-virtual-machine-response
                              #:create-svm-active-directory-configuration
                              #:create-volume #:create-volume-from-backup
                              #:create-volume-from-backup-request
                              #:create-volume-from-backup-response
                              #:create-volume-request #:create-volume-response
                              #:creation-time #:dnsname #:daily-time
                              #:data-compression-type
                              #:data-repository-association
                              #:data-repository-association-id
                              #:data-repository-association-ids
                              #:data-repository-association-not-found
                              #:data-repository-associations
                              #:data-repository-configuration
                              #:data-repository-failure-details
                              #:data-repository-lifecycle
                              #:data-repository-task
                              #:data-repository-task-ended
                              #:data-repository-task-executing
                              #:data-repository-task-failure-details
                              #:data-repository-task-filter
                              #:data-repository-task-filter-name
                              #:data-repository-task-filter-value
                              #:data-repository-task-filter-values
                              #:data-repository-task-filters
                              #:data-repository-task-lifecycle
                              #:data-repository-task-not-found
                              #:data-repository-task-path
                              #:data-repository-task-paths
                              #:data-repository-task-status
                              #:data-repository-task-type
                              #:data-repository-tasks #:delete-backup
                              #:delete-backup-request #:delete-backup-response
                              #:delete-data-in-file-system
                              #:delete-data-repository-association
                              #:delete-data-repository-association-request
                              #:delete-data-repository-association-response
                              #:delete-file-cache #:delete-file-cache-request
                              #:delete-file-cache-response #:delete-file-system
                              #:delete-file-system-lustre-configuration
                              #:delete-file-system-lustre-response
                              #:delete-file-system-open-zfsconfiguration
                              #:delete-file-system-open-zfsoption
                              #:delete-file-system-open-zfsoptions
                              #:delete-file-system-open-zfsresponse
                              #:delete-file-system-request
                              #:delete-file-system-response
                              #:delete-file-system-windows-configuration
                              #:delete-file-system-windows-response
                              #:delete-open-zfsvolume-option
                              #:delete-open-zfsvolume-options #:delete-snapshot
                              #:delete-snapshot-request
                              #:delete-snapshot-response
                              #:delete-storage-virtual-machine
                              #:delete-storage-virtual-machine-request
                              #:delete-storage-virtual-machine-response
                              #:delete-volume
                              #:delete-volume-ontap-configuration
                              #:delete-volume-ontap-response
                              #:delete-volume-open-zfsconfiguration
                              #:delete-volume-request #:delete-volume-response
                              #:describe-backups #:describe-backups-request
                              #:describe-backups-response
                              #:describe-data-repository-associations
                              #:describe-data-repository-associations-request
                              #:describe-data-repository-associations-response
                              #:describe-data-repository-tasks
                              #:describe-data-repository-tasks-request
                              #:describe-data-repository-tasks-response
                              #:describe-file-caches
                              #:describe-file-caches-request
                              #:describe-file-caches-response
                              #:describe-file-system-aliases
                              #:describe-file-system-aliases-request
                              #:describe-file-system-aliases-response
                              #:describe-file-systems
                              #:describe-file-systems-request
                              #:describe-file-systems-response
                              #:describe-s3access-point-attachments
                              #:describe-s3access-point-attachments-request
                              #:describe-s3access-point-attachments-response
                              #:describe-shared-vpc-configuration
                              #:describe-shared-vpc-configuration-request
                              #:describe-shared-vpc-configuration-response
                              #:describe-snapshots #:describe-snapshots-request
                              #:describe-snapshots-response
                              #:describe-storage-virtual-machines
                              #:describe-storage-virtual-machines-request
                              #:describe-storage-virtual-machines-response
                              #:describe-volumes #:describe-volumes-request
                              #:describe-volumes-response
                              #:detach-and-delete-s3access-point
                              #:detach-and-delete-s3access-point-request
                              #:detach-and-delete-s3access-point-response
                              #:directory-id #:directory-password
                              #:directory-user-name
                              #:disassociate-file-system-aliases
                              #:disassociate-file-system-aliases-request
                              #:disassociate-file-system-aliases-response
                              #:disk-iops-configuration
                              #:disk-iops-configuration-mode #:dns-ips
                              #:drive-cache-type #:duration-since-last-access
                              #:end-time #:error-code #:error-message
                              #:event-type #:event-types #:failed-count
                              #:file-cache #:file-cache-creating
                              #:file-cache-data-repository-association
                              #:file-cache-failure-details #:file-cache-id
                              #:file-cache-ids #:file-cache-lifecycle
                              #:file-cache-lustre-configuration
                              #:file-cache-lustre-deployment-type
                              #:file-cache-lustre-metadata-configuration
                              #:file-cache-nfsconfiguration
                              #:file-cache-not-found #:file-cache-type
                              #:file-caches #:file-system
                              #:file-system-administrators-group-name
                              #:file-system-endpoint #:file-system-endpoints
                              #:file-system-failure-details #:file-system-gid
                              #:file-system-id #:file-system-ids
                              #:file-system-lifecycle
                              #:file-system-lustre-metadata-configuration
                              #:file-system-maintenance-operation
                              #:file-system-maintenance-operations
                              #:file-system-not-found
                              #:file-system-secondary-gids #:file-system-type
                              #:file-system-type-version #:file-system-uid
                              #:file-systems #:filter #:filter-name
                              #:filter-value #:filter-values #:filters #:flag
                              #:flex-cache-endpoint-type #:general-arn
                              #:hapairs #:include-shared
                              #:incompatible-parameter-error
                              #:incompatible-region-for-multi-az
                              #:input-ontap-volume-type #:integer-no-max
                              #:integer-no-max-from-negative-one
                              #:integer-record-size-ki-b
                              #:internal-server-error #:invalid-access-point
                              #:invalid-data-repository-type
                              #:invalid-destination-kms-key
                              #:invalid-export-path #:invalid-import-path
                              #:invalid-network-settings
                              #:invalid-per-unit-storage-throughput
                              #:invalid-region #:invalid-request
                              #:invalid-source-kms-key #:iops #:ip-address
                              #:ip-address-range #:junction-path #:kms-key-id
                              #:last-updated-time #:lifecycle-transition-reason
                              #:limited-max-results #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:lustre-access-audit-log-level
                              #:lustre-deployment-type
                              #:lustre-file-system-configuration
                              #:lustre-file-system-mount-name
                              #:lustre-log-configuration
                              #:lustre-log-create-configuration
                              #:lustre-no-squash-nid #:lustre-no-squash-nids
                              #:lustre-read-cache-configuration
                              #:lustre-read-cache-sizing-mode
                              #:lustre-root-squash
                              #:lustre-root-squash-configuration #:max-results
                              #:megabytes #:megabytes-per-second
                              #:metadata-configuration-mode #:metadata-iops
                              #:metadata-storage-capacity
                              #:missing-file-cache-configuration
                              #:missing-file-system-configuration
                              #:missing-volume-configuration
                              #:nfsdata-repository-configuration #:namespace
                              #:net-bios-alias #:network-interface-id
                              #:network-interface-ids #:next-token
                              #:nfs-version #:not-service-resource-error
                              #:ontap-deployment-type
                              #:ontap-endpoint-ip-addresses
                              #:ontap-file-system-configuration
                              #:ontap-volume-configuration #:ontap-volume-type
                              #:open-zfsclient-configuration
                              #:open-zfsclient-configurations #:open-zfsclients
                              #:open-zfscopy-strategy
                              #:open-zfscreate-root-volume-configuration
                              #:open-zfsdata-compression-type
                              #:open-zfsdeployment-type
                              #:open-zfsfile-system-configuration
                              #:open-zfsfile-system-identity
                              #:open-zfsfile-system-user-type
                              #:open-zfsnfs-export #:open-zfsnfs-export-option
                              #:open-zfsnfs-export-options
                              #:open-zfsnfs-exports
                              #:open-zfsorigin-snapshot-configuration
                              #:open-zfsposix-file-system-user
                              #:open-zfsquota-type
                              #:open-zfsread-cache-configuration
                              #:open-zfsread-cache-sizing-mode
                              #:open-zfsuser-and-group-quotas
                              #:open-zfsuser-or-group-quota
                              #:open-zfsvolume-configuration
                              #:organizational-unit-distinguished-name
                              #:parameter #:per-unit-storage-throughput
                              #:privileged-delete #:progress-percent
                              #:read-only #:region #:release-configuration
                              #:release-file-system-nfs-v3locks
                              #:release-file-system-nfs-v3locks-request
                              #:release-file-system-nfs-v3locks-response
                              #:released-capacity #:remaining-transfer-bytes
                              #:report-format #:report-scope
                              #:repository-dns-ips #:request-time
                              #:resource-arn
                              #:resource-does-not-support-tagging
                              #:resource-not-found #:resource-type
                              #:restore-open-zfsvolume-option
                              #:restore-open-zfsvolume-options
                              #:restore-volume-from-snapshot
                              #:restore-volume-from-snapshot-request
                              #:restore-volume-from-snapshot-response
                              #:retention-period #:retention-period-type
                              #:retention-period-value #:route-table-id
                              #:route-table-ids #:s3access-point
                              #:s3access-point-alias
                              #:s3access-point-attachment
                              #:s3access-point-attachment-lifecycle
                              #:s3access-point-attachment-name
                              #:s3access-point-attachment-names
                              #:s3access-point-attachment-not-found
                              #:s3access-point-attachment-type
                              #:s3access-point-attachments
                              #:s3access-point-attachments-filter
                              #:s3access-point-attachments-filter-name
                              #:s3access-point-attachments-filter-value
                              #:s3access-point-attachments-filter-values
                              #:s3access-point-attachments-filters
                              #:s3access-point-open-zfsconfiguration
                              #:s3access-point-vpc-configuration
                              #:s3data-repository-configuration
                              #:security-group-id #:security-group-ids
                              #:security-style
                              #:self-managed-active-directory-attributes
                              #:self-managed-active-directory-configuration
                              #:self-managed-active-directory-configuration-updates
                              #:service-limit #:service-limit-exceeded
                              #:size-in-bytes #:snaplock-configuration
                              #:snaplock-retention-period #:snaplock-type
                              #:snapshot #:snapshot-filter
                              #:snapshot-filter-name #:snapshot-filter-value
                              #:snapshot-filter-values #:snapshot-filters
                              #:snapshot-id #:snapshot-ids #:snapshot-lifecycle
                              #:snapshot-name #:snapshot-not-found
                              #:snapshot-policy #:snapshots #:source-backup-id
                              #:source-backup-unavailable
                              #:start-misconfigured-state-recovery
                              #:start-misconfigured-state-recovery-request
                              #:start-misconfigured-state-recovery-response
                              #:start-time #:status #:storage-capacity
                              #:storage-type #:storage-virtual-machine
                              #:storage-virtual-machine-filter
                              #:storage-virtual-machine-filter-name
                              #:storage-virtual-machine-filter-value
                              #:storage-virtual-machine-filter-values
                              #:storage-virtual-machine-filters
                              #:storage-virtual-machine-id
                              #:storage-virtual-machine-ids
                              #:storage-virtual-machine-lifecycle
                              #:storage-virtual-machine-name
                              #:storage-virtual-machine-not-found
                              #:storage-virtual-machine-root-volume-security-style
                              #:storage-virtual-machine-subtype
                              #:storage-virtual-machines
                              #:sub-directories-paths #:subnet-id #:subnet-ids
                              #:succeeded-count
                              #:svm-active-directory-configuration
                              #:svm-endpoint #:svm-endpoints #:tag #:tag-key
                              #:tag-keys #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value #:tags
                              #:task-id #:task-ids #:throughput-capacity-mbps
                              #:throughput-capacity-per-hapair #:tiering-policy
                              #:tiering-policy-name #:too-many-access-points
                              #:total-constituents #:total-count
                              #:total-transfer-bytes #:uuid #:unit
                              #:unsupported-operation #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-data-repository-association
                              #:update-data-repository-association-request
                              #:update-data-repository-association-response
                              #:update-file-cache
                              #:update-file-cache-lustre-configuration
                              #:update-file-cache-request
                              #:update-file-cache-response #:update-file-system
                              #:update-file-system-lustre-configuration
                              #:update-file-system-lustre-metadata-configuration
                              #:update-file-system-ontap-configuration
                              #:update-file-system-open-zfsconfiguration
                              #:update-file-system-request
                              #:update-file-system-response
                              #:update-file-system-windows-configuration
                              #:update-ontap-volume-configuration
                              #:update-open-zfsvolume-configuration
                              #:update-open-zfsvolume-option
                              #:update-open-zfsvolume-options
                              #:update-shared-vpc-configuration
                              #:update-shared-vpc-configuration-request
                              #:update-shared-vpc-configuration-response
                              #:update-snaplock-configuration #:update-snapshot
                              #:update-snapshot-request
                              #:update-snapshot-response
                              #:update-storage-virtual-machine
                              #:update-storage-virtual-machine-request
                              #:update-storage-virtual-machine-response
                              #:update-svm-active-directory-configuration
                              #:update-volume #:update-volume-request
                              #:update-volume-response #:value #:verbose-flag
                              #:volume #:volume-capacity
                              #:volume-capacity-bytes #:volume-filter
                              #:volume-filter-name #:volume-filter-value
                              #:volume-filter-values #:volume-filters
                              #:volume-id #:volume-ids #:volume-lifecycle
                              #:volume-name #:volume-not-found #:volume-path
                              #:volume-style #:volume-type #:volumes #:vpc-id
                              #:weekly-time #:windows-access-audit-log-level
                              #:windows-audit-log-configuration
                              #:windows-audit-log-create-configuration
                              #:windows-deployment-type
                              #:windows-file-system-configuration))
(common-lisp:in-package #:pira/fsx)

(smithy/sdk/service:define-service awssimba-apiservice-v20180301 :shape-name
                                   "AWSSimbaAPIService_v20180301" :version
                                   "2018-03-01" :title "Amazon FSx" :traits
                                   '(("aws.api#service" ("sdkId" . "FSx")
                                      ("arnNamespace" . "fsx")
                                      ("cloudFormationName" . "FSx")
                                      ("cloudTrailEventSource"
                                       . "fsx.amazonaws.com")
                                      ("endpointPrefix" . "fsx"))
                                     ("aws.auth#sigv4" ("name" . "fsx"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type awsaccount-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-point-already-owned-by-you
                                common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessPointAlreadyOwnedByYou")
                                (:error-code 409) (:xml-name "Error"))

(smithy/sdk/shapes:define-type access-point-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure active-directory-backup-attributes
                                    common-lisp:nil
                                    ((domain-name :target-type
                                      active-directory-fully-qualified-name
                                      :member-name "DomainName")
                                     (active-directory-id :target-type
                                      directory-id :member-name
                                      "ActiveDirectoryId")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN"))
                                    (:shape-name
                                     "ActiveDirectoryBackupAttributes"))

(smithy/sdk/shapes:define-error active-directory-error common-lisp:nil
                                ((active-directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ActiveDirectoryId")
                                 (type :target-type active-directory-error-type
                                  :member-name "Type")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ActiveDirectoryError")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum active-directory-error-type
    common-lisp:nil
  (:domain-not-found "DOMAIN_NOT_FOUND")
  (:incompatible-domain-mode "INCOMPATIBLE_DOMAIN_MODE")
  (:wrong-vpc "WRONG_VPC")
  (:invalid-domain-stage "INVALID_DOMAIN_STAGE"))

(smithy/sdk/shapes:define-type active-directory-fully-qualified-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type admin-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure administrative-action common-lisp:nil
                                    ((administrative-action-type :target-type
                                      administrative-action-type :member-name
                                      "AdministrativeActionType")
                                     (progress-percent :target-type
                                      progress-percent :member-name
                                      "ProgressPercent")
                                     (request-time :target-type request-time
                                      :member-name "RequestTime")
                                     (status :target-type status :member-name
                                      "Status")
                                     (target-file-system-values :target-type
                                      file-system :member-name
                                      "TargetFileSystemValues")
                                     (failure-details :target-type
                                      administrative-action-failure-details
                                      :member-name "FailureDetails")
                                     (target-volume-values :target-type volume
                                      :member-name "TargetVolumeValues")
                                     (target-snapshot-values :target-type
                                      snapshot :member-name
                                      "TargetSnapshotValues")
                                     (total-transfer-bytes :target-type
                                      total-transfer-bytes :member-name
                                      "TotalTransferBytes")
                                     (remaining-transfer-bytes :target-type
                                      remaining-transfer-bytes :member-name
                                      "RemainingTransferBytes"))
                                    (:shape-name "AdministrativeAction"))

(smithy/sdk/shapes:define-structure administrative-action-failure-details
                                    common-lisp:nil
                                    ((message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name
                                     "AdministrativeActionFailureDetails"))

(smithy/sdk/shapes:define-enum administrative-action-type
    common-lisp:nil
  (:file-system-update "FILE_SYSTEM_UPDATE")
  (:storage-optimization "STORAGE_OPTIMIZATION")
  (:file-system-alias-association "FILE_SYSTEM_ALIAS_ASSOCIATION")
  (:file-system-alias-disassociation "FILE_SYSTEM_ALIAS_DISASSOCIATION")
  (:volume-update "VOLUME_UPDATE")
  (:snapshot-update "SNAPSHOT_UPDATE")
  (:release-nfs-v3-locks "RELEASE_NFS_V3_LOCKS")
  (:volume-restore "VOLUME_RESTORE")
  (:throughput-optimization "THROUGHPUT_OPTIMIZATION")
  (:iops-optimization "IOPS_OPTIMIZATION")
  (:storage-type-optimization "STORAGE_TYPE_OPTIMIZATION")
  (:misconfigured-state-recovery "MISCONFIGURED_STATE_RECOVERY")
  (:volume-update-with-snapshot "VOLUME_UPDATE_WITH_SNAPSHOT")
  (:volume-initialize-with-snapshot "VOLUME_INITIALIZE_WITH_SNAPSHOT")
  (:download-data-from-backup "DOWNLOAD_DATA_FROM_BACKUP"))

(smithy/sdk/shapes:define-list administrative-actions :member
                               administrative-action)

(smithy/sdk/shapes:define-type aggregate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aggregate-configuration common-lisp:nil
                                    ((aggregates :target-type aggregates
                                      :member-name "Aggregates")
                                     (total-constituents :target-type
                                      total-constituents :member-name
                                      "TotalConstituents"))
                                    (:shape-name "AggregateConfiguration"))

(smithy/sdk/shapes:define-type aggregate-list-multiplier
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list aggregates :member aggregate)

(smithy/sdk/shapes:define-structure alias common-lisp:nil
                                    ((name :target-type alternate-dnsname
                                      :member-name "Name")
                                     (lifecycle :target-type alias-lifecycle
                                      :member-name "Lifecycle"))
                                    (:shape-name "Alias"))

(smithy/sdk/shapes:define-enum alias-lifecycle
    common-lisp:nil
  (:available "AVAILABLE")
  (:creating "CREATING")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-list aliases :member alias)

(smithy/sdk/shapes:define-type alternate-dnsname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list alternate-dnsnames :member alternate-dnsname)

(smithy/sdk/shapes:define-type archive-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-file-system-aliases-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (aliases :target-type alternate-dnsnames
                                  :required common-lisp:t :member-name
                                  "Aliases"))
                                (:shape-name
                                 "AssociateFileSystemAliasesRequest"))

(smithy/sdk/shapes:define-output associate-file-system-aliases-response
                                 common-lisp:nil
                                 ((aliases :target-type aliases :member-name
                                   "Aliases"))
                                 (:shape-name
                                  "AssociateFileSystemAliasesResponse"))

(smithy/sdk/shapes:define-structure auto-export-policy common-lisp:nil
                                    ((events :target-type event-types
                                      :member-name "Events"))
                                    (:shape-name "AutoExportPolicy"))

(smithy/sdk/shapes:define-structure auto-import-policy common-lisp:nil
                                    ((events :target-type event-types
                                      :member-name "Events"))
                                    (:shape-name "AutoImportPolicy"))

(smithy/sdk/shapes:define-enum auto-import-policy-type
    common-lisp:nil
  (:none "NONE")
  (:new "NEW")
  (:new-changed "NEW_CHANGED")
  (:new-changed-deleted "NEW_CHANGED_DELETED"))

(smithy/sdk/shapes:define-structure autocommit-period common-lisp:nil
                                    ((type :target-type autocommit-period-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (value :target-type
                                      autocommit-period-value :member-name
                                      "Value"))
                                    (:shape-name "AutocommitPeriod"))

(smithy/sdk/shapes:define-enum autocommit-period-type
    common-lisp:nil
  (:minutes "MINUTES")
  (:hours "HOURS")
  (:days "DAYS")
  (:months "MONTHS")
  (:years "YEARS")
  (:none "NONE"))

(smithy/sdk/shapes:define-type autocommit-period-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type automatic-backup-retention-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure backup common-lisp:nil
                                    ((backup-id :target-type backup-id
                                      :required common-lisp:t :member-name
                                      "BackupId")
                                     (lifecycle :target-type backup-lifecycle
                                      :required common-lisp:t :member-name
                                      "Lifecycle")
                                     (failure-details :target-type
                                      backup-failure-details :member-name
                                      "FailureDetails")
                                     (type :target-type backup-type :required
                                      common-lisp:t :member-name "Type")
                                     (progress-percent :target-type
                                      progress-percent :member-name
                                      "ProgressPercent")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (file-system :target-type file-system
                                      :required common-lisp:t :member-name
                                      "FileSystem")
                                     (directory-information :target-type
                                      active-directory-backup-attributes
                                      :member-name "DirectoryInformation")
                                     (owner-id :target-type awsaccount-id
                                      :member-name "OwnerId")
                                     (source-backup-id :target-type backup-id
                                      :member-name "SourceBackupId")
                                     (source-backup-region :target-type region
                                      :member-name "SourceBackupRegion")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (volume :target-type volume :member-name
                                      "Volume")
                                     (size-in-bytes :target-type size-in-bytes
                                      :member-name "SizeInBytes"))
                                    (:shape-name "Backup"))

(smithy/sdk/shapes:define-error backup-being-copied common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (backup-id :target-type backup-id :member-name
                                  "BackupId"))
                                (:shape-name "BackupBeingCopied")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure backup-failure-details common-lisp:nil
                                    ((message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name "BackupFailureDetails"))

(smithy/sdk/shapes:define-type backup-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list backup-ids :member backup-id)

(smithy/sdk/shapes:define-error backup-in-progress common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BackupInProgress")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum backup-lifecycle
    common-lisp:nil
  (:available "AVAILABLE")
  (:creating "CREATING")
  (:transferring "TRANSFERRING")
  (:deleted "DELETED")
  (:failed "FAILED")
  (:pending "PENDING")
  (:copying "COPYING"))

(smithy/sdk/shapes:define-error backup-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BackupNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-error backup-restoring common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (file-system-id :target-type file-system-id
                                  :member-name "FileSystemId"))
                                (:shape-name "BackupRestoring")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum backup-type
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:user-initiated "USER_INITIATED")
  (:aws-backup "AWS_BACKUP"))

(smithy/sdk/shapes:define-list backups :member backup)

(smithy/sdk/shapes:define-error bad-request common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BadRequest") (:error-code 400))

(smithy/sdk/shapes:define-type batch-import-meta-data-on-create
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-data-repository-task-request
                                common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "TaskId"))
                                (:shape-name "CancelDataRepositoryTaskRequest"))

(smithy/sdk/shapes:define-output cancel-data-repository-task-response
                                 common-lisp:nil
                                 ((lifecycle :target-type
                                   data-repository-task-lifecycle :member-name
                                   "Lifecycle")
                                  (task-id :target-type task-id :member-name
                                   "TaskId"))
                                 (:shape-name
                                  "CancelDataRepositoryTaskResponse"))

(smithy/sdk/shapes:define-type capacity-to-release smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure completion-report common-lisp:nil
                                    ((enabled :target-type flag :required
                                      common-lisp:t :member-name "Enabled")
                                     (path :target-type archive-path
                                      :member-name "Path")
                                     (format :target-type report-format
                                      :member-name "Format")
                                     (scope :target-type report-scope
                                      :member-name "Scope"))
                                    (:shape-name "CompletionReport"))

(smithy/sdk/shapes:define-type cooling-period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input copy-backup-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (source-backup-id :target-type
                                  source-backup-id :required common-lisp:t
                                  :member-name "SourceBackupId")
                                 (source-region :target-type region
                                  :member-name "SourceRegion")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (copy-tags :target-type flag :member-name
                                  "CopyTags")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CopyBackupRequest"))

(smithy/sdk/shapes:define-output copy-backup-response common-lisp:nil
                                 ((backup :target-type backup :member-name
                                   "Backup"))
                                 (:shape-name "CopyBackupResponse"))

(smithy/sdk/shapes:define-input copy-snapshot-and-update-volume-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (volume-id :target-type volume-id :required
                                  common-lisp:t :member-name "VolumeId")
                                 (source-snapshot-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "SourceSnapshotARN")
                                 (copy-strategy :target-type
                                  open-zfscopy-strategy :member-name
                                  "CopyStrategy")
                                 (options :target-type
                                  update-open-zfsvolume-options :member-name
                                  "Options"))
                                (:shape-name
                                 "CopySnapshotAndUpdateVolumeRequest"))

(smithy/sdk/shapes:define-output copy-snapshot-and-update-volume-response
                                 common-lisp:nil
                                 ((volume-id :target-type volume-id
                                   :member-name "VolumeId")
                                  (lifecycle :target-type volume-lifecycle
                                   :member-name "Lifecycle")
                                  (administrative-actions :target-type
                                   administrative-actions :member-name
                                   "AdministrativeActions"))
                                 (:shape-name
                                  "CopySnapshotAndUpdateVolumeResponse"))

(smithy/sdk/shapes:define-type copy-tags-to-data-repository-associations
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure create-aggregate-configuration
                                    common-lisp:nil
                                    ((aggregates :target-type aggregates
                                      :member-name "Aggregates")
                                     (constituents-per-aggregate :target-type
                                      aggregate-list-multiplier :member-name
                                      "ConstituentsPerAggregate"))
                                    (:shape-name
                                     "CreateAggregateConfiguration"))

(smithy/sdk/shapes:define-structure
 create-and-attach-s3access-point-open-zfsconfiguration common-lisp:nil
 ((volume-id :target-type volume-id :required common-lisp:t :member-name
   "VolumeId")
  (file-system-identity :target-type open-zfsfile-system-identity :required
   common-lisp:t :member-name "FileSystemIdentity"))
 (:shape-name "CreateAndAttachS3AccessPointOpenZFSConfiguration"))

(smithy/sdk/shapes:define-input create-and-attach-s3access-point-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (name :target-type
                                  s3access-point-attachment-name :required
                                  common-lisp:t :member-name "Name")
                                 (type :target-type
                                  s3access-point-attachment-type :required
                                  common-lisp:t :member-name "Type")
                                 (open-zfsconfiguration :target-type
                                  create-and-attach-s3access-point-open-zfsconfiguration
                                  :member-name "OpenZFSConfiguration")
                                 (s3access-point :target-type
                                  create-and-attach-s3access-point-s3configuration
                                  :member-name "S3AccessPoint"))
                                (:shape-name
                                 "CreateAndAttachS3AccessPointRequest"))

(smithy/sdk/shapes:define-output create-and-attach-s3access-point-response
                                 common-lisp:nil
                                 ((s3access-point-attachment :target-type
                                   s3access-point-attachment :member-name
                                   "S3AccessPointAttachment"))
                                 (:shape-name
                                  "CreateAndAttachS3AccessPointResponse"))

(smithy/sdk/shapes:define-structure
 create-and-attach-s3access-point-s3configuration common-lisp:nil
 ((vpc-configuration :target-type s3access-point-vpc-configuration :member-name
   "VpcConfiguration")
  (policy :target-type access-point-policy :member-name "Policy"))
 (:shape-name "CreateAndAttachS3AccessPointS3Configuration"))

(smithy/sdk/shapes:define-input create-backup-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :member-name "FileSystemId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tags :member-name "Tags")
                                 (volume-id :target-type volume-id :member-name
                                  "VolumeId"))
                                (:shape-name "CreateBackupRequest"))

(smithy/sdk/shapes:define-output create-backup-response common-lisp:nil
                                 ((backup :target-type backup :member-name
                                   "Backup"))
                                 (:shape-name "CreateBackupResponse"))

(smithy/sdk/shapes:define-input create-data-repository-association-request
                                common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (file-system-path :target-type namespace
                                  :member-name "FileSystemPath")
                                 (data-repository-path :target-type
                                  archive-path :required common-lisp:t
                                  :member-name "DataRepositoryPath")
                                 (batch-import-meta-data-on-create :target-type
                                  batch-import-meta-data-on-create :member-name
                                  "BatchImportMetaDataOnCreate")
                                 (imported-file-chunk-size :target-type
                                  megabytes :member-name
                                  "ImportedFileChunkSize")
                                 (s3 :target-type
                                  s3data-repository-configuration :member-name
                                  "S3")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateDataRepositoryAssociationRequest"))

(smithy/sdk/shapes:define-output create-data-repository-association-response
                                 common-lisp:nil
                                 ((association :target-type
                                   data-repository-association :member-name
                                   "Association"))
                                 (:shape-name
                                  "CreateDataRepositoryAssociationResponse"))

(smithy/sdk/shapes:define-input create-data-repository-task-request
                                common-lisp:nil
                                ((type :target-type data-repository-task-type
                                  :required common-lisp:t :member-name "Type")
                                 (paths :target-type data-repository-task-paths
                                  :member-name "Paths")
                                 (file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (report :target-type completion-report
                                  :required common-lisp:t :member-name
                                  "Report")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tags :member-name "Tags")
                                 (capacity-to-release :target-type
                                  capacity-to-release :member-name
                                  "CapacityToRelease")
                                 (release-configuration :target-type
                                  release-configuration :member-name
                                  "ReleaseConfiguration"))
                                (:shape-name "CreateDataRepositoryTaskRequest"))

(smithy/sdk/shapes:define-output create-data-repository-task-response
                                 common-lisp:nil
                                 ((data-repository-task :target-type
                                   data-repository-task :member-name
                                   "DataRepositoryTask"))
                                 (:shape-name
                                  "CreateDataRepositoryTaskResponse"))

(smithy/sdk/shapes:define-list create-file-cache-data-repository-associations
                               :member file-cache-data-repository-association)

(smithy/sdk/shapes:define-structure create-file-cache-lustre-configuration
                                    common-lisp:nil
                                    ((per-unit-storage-throughput :target-type
                                      per-unit-storage-throughput :required
                                      common-lisp:t :member-name
                                      "PerUnitStorageThroughput")
                                     (deployment-type :target-type
                                      file-cache-lustre-deployment-type
                                      :required common-lisp:t :member-name
                                      "DeploymentType")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (metadata-configuration :target-type
                                      file-cache-lustre-metadata-configuration
                                      :required common-lisp:t :member-name
                                      "MetadataConfiguration"))
                                    (:shape-name
                                     "CreateFileCacheLustreConfiguration"))

(smithy/sdk/shapes:define-input create-file-cache-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (file-cache-type :target-type file-cache-type
                                  :required common-lisp:t :member-name
                                  "FileCacheType")
                                 (file-cache-type-version :target-type
                                  file-system-type-version :required
                                  common-lisp:t :member-name
                                  "FileCacheTypeVersion")
                                 (storage-capacity :target-type
                                  storage-capacity :required common-lisp:t
                                  :member-name "StorageCapacity")
                                 (subnet-ids :target-type subnet-ids :required
                                  common-lisp:t :member-name "SubnetIds")
                                 (security-group-ids :target-type
                                  security-group-ids :member-name
                                  "SecurityGroupIds")
                                 (tags :target-type tags :member-name "Tags")
                                 (copy-tags-to-data-repository-associations
                                  :target-type
                                  copy-tags-to-data-repository-associations
                                  :member-name
                                  "CopyTagsToDataRepositoryAssociations")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (lustre-configuration :target-type
                                  create-file-cache-lustre-configuration
                                  :member-name "LustreConfiguration")
                                 (data-repository-associations :target-type
                                  create-file-cache-data-repository-associations
                                  :member-name "DataRepositoryAssociations"))
                                (:shape-name "CreateFileCacheRequest"))

(smithy/sdk/shapes:define-output create-file-cache-response common-lisp:nil
                                 ((file-cache :target-type file-cache-creating
                                   :member-name "FileCache"))
                                 (:shape-name "CreateFileCacheResponse"))

(smithy/sdk/shapes:define-input create-file-system-from-backup-request
                                common-lisp:nil
                                ((backup-id :target-type backup-id :required
                                  common-lisp:t :member-name "BackupId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (subnet-ids :target-type subnet-ids :required
                                  common-lisp:t :member-name "SubnetIds")
                                 (security-group-ids :target-type
                                  security-group-ids :member-name
                                  "SecurityGroupIds")
                                 (tags :target-type tags :member-name "Tags")
                                 (windows-configuration :target-type
                                  create-file-system-windows-configuration
                                  :member-name "WindowsConfiguration")
                                 (lustre-configuration :target-type
                                  create-file-system-lustre-configuration
                                  :member-name "LustreConfiguration")
                                 (storage-type :target-type storage-type
                                  :member-name "StorageType")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (file-system-type-version :target-type
                                  file-system-type-version :member-name
                                  "FileSystemTypeVersion")
                                 (open-zfsconfiguration :target-type
                                  create-file-system-open-zfsconfiguration
                                  :member-name "OpenZFSConfiguration")
                                 (storage-capacity :target-type
                                  storage-capacity :member-name
                                  "StorageCapacity"))
                                (:shape-name
                                 "CreateFileSystemFromBackupRequest"))

(smithy/sdk/shapes:define-output create-file-system-from-backup-response
                                 common-lisp:nil
                                 ((file-system :target-type file-system
                                   :member-name "FileSystem"))
                                 (:shape-name
                                  "CreateFileSystemFromBackupResponse"))

(smithy/sdk/shapes:define-structure create-file-system-lustre-configuration
                                    common-lisp:nil
                                    ((weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (import-path :target-type archive-path
                                      :member-name "ImportPath")
                                     (export-path :target-type archive-path
                                      :member-name "ExportPath")
                                     (imported-file-chunk-size :target-type
                                      megabytes :member-name
                                      "ImportedFileChunkSize")
                                     (deployment-type :target-type
                                      lustre-deployment-type :member-name
                                      "DeploymentType")
                                     (auto-import-policy :target-type
                                      auto-import-policy-type :member-name
                                      "AutoImportPolicy")
                                     (per-unit-storage-throughput :target-type
                                      per-unit-storage-throughput :member-name
                                      "PerUnitStorageThroughput")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (drive-cache-type :target-type
                                      drive-cache-type :member-name
                                      "DriveCacheType")
                                     (data-compression-type :target-type
                                      data-compression-type :member-name
                                      "DataCompressionType")
                                     (efa-enabled :target-type flag
                                      :member-name "EfaEnabled")
                                     (log-configuration :target-type
                                      lustre-log-create-configuration
                                      :member-name "LogConfiguration")
                                     (root-squash-configuration :target-type
                                      lustre-root-squash-configuration
                                      :member-name "RootSquashConfiguration")
                                     (metadata-configuration :target-type
                                      create-file-system-lustre-metadata-configuration
                                      :member-name "MetadataConfiguration")
                                     (throughput-capacity :target-type
                                      throughput-capacity-mbps :member-name
                                      "ThroughputCapacity")
                                     (data-read-cache-configuration
                                      :target-type
                                      lustre-read-cache-configuration
                                      :member-name
                                      "DataReadCacheConfiguration"))
                                    (:shape-name
                                     "CreateFileSystemLustreConfiguration"))

(smithy/sdk/shapes:define-structure
 create-file-system-lustre-metadata-configuration common-lisp:nil
 ((iops :target-type metadata-iops :member-name "Iops")
  (mode :target-type metadata-configuration-mode :required common-lisp:t
   :member-name "Mode"))
 (:shape-name "CreateFileSystemLustreMetadataConfiguration"))

(smithy/sdk/shapes:define-structure create-file-system-ontap-configuration
                                    common-lisp:nil
                                    ((automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (deployment-type :target-type
                                      ontap-deployment-type :required
                                      common-lisp:t :member-name
                                      "DeploymentType")
                                     (endpoint-ip-address-range :target-type
                                      ip-address-range :member-name
                                      "EndpointIpAddressRange")
                                     (fsx-admin-password :target-type
                                      admin-password :member-name
                                      "FsxAdminPassword")
                                     (disk-iops-configuration :target-type
                                      disk-iops-configuration :member-name
                                      "DiskIopsConfiguration")
                                     (preferred-subnet-id :target-type
                                      subnet-id :member-name
                                      "PreferredSubnetId")
                                     (route-table-ids :target-type
                                      route-table-ids :member-name
                                      "RouteTableIds")
                                     (throughput-capacity :target-type
                                      megabytes-per-second :member-name
                                      "ThroughputCapacity")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (hapairs :target-type hapairs :member-name
                                      "HAPairs")
                                     (throughput-capacity-per-hapair
                                      :target-type
                                      throughput-capacity-per-hapair
                                      :member-name
                                      "ThroughputCapacityPerHAPair"))
                                    (:shape-name
                                     "CreateFileSystemOntapConfiguration"))

(smithy/sdk/shapes:define-structure create-file-system-open-zfsconfiguration
                                    common-lisp:nil
                                    ((automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (copy-tags-to-volumes :target-type flag
                                      :member-name "CopyTagsToVolumes")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (deployment-type :target-type
                                      open-zfsdeployment-type :required
                                      common-lisp:t :member-name
                                      "DeploymentType")
                                     (throughput-capacity :target-type
                                      megabytes-per-second :required
                                      common-lisp:t :member-name
                                      "ThroughputCapacity")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (disk-iops-configuration :target-type
                                      disk-iops-configuration :member-name
                                      "DiskIopsConfiguration")
                                     (root-volume-configuration :target-type
                                      open-zfscreate-root-volume-configuration
                                      :member-name "RootVolumeConfiguration")
                                     (preferred-subnet-id :target-type
                                      subnet-id :member-name
                                      "PreferredSubnetId")
                                     (endpoint-ip-address-range :target-type
                                      ip-address-range :member-name
                                      "EndpointIpAddressRange")
                                     (route-table-ids :target-type
                                      route-table-ids :member-name
                                      "RouteTableIds")
                                     (read-cache-configuration :target-type
                                      open-zfsread-cache-configuration
                                      :member-name "ReadCacheConfiguration"))
                                    (:shape-name
                                     "CreateFileSystemOpenZFSConfiguration"))

(smithy/sdk/shapes:define-input create-file-system-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (file-system-type :target-type
                                  file-system-type :required common-lisp:t
                                  :member-name "FileSystemType")
                                 (storage-capacity :target-type
                                  storage-capacity :member-name
                                  "StorageCapacity")
                                 (storage-type :target-type storage-type
                                  :member-name "StorageType")
                                 (subnet-ids :target-type subnet-ids :required
                                  common-lisp:t :member-name "SubnetIds")
                                 (security-group-ids :target-type
                                  security-group-ids :member-name
                                  "SecurityGroupIds")
                                 (tags :target-type tags :member-name "Tags")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (windows-configuration :target-type
                                  create-file-system-windows-configuration
                                  :member-name "WindowsConfiguration")
                                 (lustre-configuration :target-type
                                  create-file-system-lustre-configuration
                                  :member-name "LustreConfiguration")
                                 (ontap-configuration :target-type
                                  create-file-system-ontap-configuration
                                  :member-name "OntapConfiguration")
                                 (file-system-type-version :target-type
                                  file-system-type-version :member-name
                                  "FileSystemTypeVersion")
                                 (open-zfsconfiguration :target-type
                                  create-file-system-open-zfsconfiguration
                                  :member-name "OpenZFSConfiguration"))
                                (:shape-name "CreateFileSystemRequest"))

(smithy/sdk/shapes:define-output create-file-system-response common-lisp:nil
                                 ((file-system :target-type file-system
                                   :member-name "FileSystem"))
                                 (:shape-name "CreateFileSystemResponse"))

(smithy/sdk/shapes:define-structure create-file-system-windows-configuration
                                    common-lisp:nil
                                    ((active-directory-id :target-type
                                      directory-id :member-name
                                      "ActiveDirectoryId")
                                     (self-managed-active-directory-configuration
                                      :target-type
                                      self-managed-active-directory-configuration
                                      :member-name
                                      "SelfManagedActiveDirectoryConfiguration")
                                     (deployment-type :target-type
                                      windows-deployment-type :member-name
                                      "DeploymentType")
                                     (preferred-subnet-id :target-type
                                      subnet-id :member-name
                                      "PreferredSubnetId")
                                     (throughput-capacity :target-type
                                      megabytes-per-second :required
                                      common-lisp:t :member-name
                                      "ThroughputCapacity")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (aliases :target-type alternate-dnsnames
                                      :member-name "Aliases")
                                     (audit-log-configuration :target-type
                                      windows-audit-log-create-configuration
                                      :member-name "AuditLogConfiguration")
                                     (disk-iops-configuration :target-type
                                      disk-iops-configuration :member-name
                                      "DiskIopsConfiguration"))
                                    (:shape-name
                                     "CreateFileSystemWindowsConfiguration"))

(smithy/sdk/shapes:define-structure create-ontap-volume-configuration
                                    common-lisp:nil
                                    ((junction-path :target-type junction-path
                                      :member-name "JunctionPath")
                                     (security-style :target-type
                                      security-style :member-name
                                      "SecurityStyle")
                                     (size-in-megabytes :target-type
                                      volume-capacity :member-name
                                      "SizeInMegabytes")
                                     (storage-efficiency-enabled :target-type
                                      flag :member-name
                                      "StorageEfficiencyEnabled")
                                     (storage-virtual-machine-id :target-type
                                      storage-virtual-machine-id :required
                                      common-lisp:t :member-name
                                      "StorageVirtualMachineId")
                                     (tiering-policy :target-type
                                      tiering-policy :member-name
                                      "TieringPolicy")
                                     (ontap-volume-type :target-type
                                      input-ontap-volume-type :member-name
                                      "OntapVolumeType")
                                     (snapshot-policy :target-type
                                      snapshot-policy :member-name
                                      "SnapshotPolicy")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (snaplock-configuration :target-type
                                      create-snaplock-configuration
                                      :member-name "SnaplockConfiguration")
                                     (volume-style :target-type volume-style
                                      :member-name "VolumeStyle")
                                     (aggregate-configuration :target-type
                                      create-aggregate-configuration
                                      :member-name "AggregateConfiguration")
                                     (size-in-bytes :target-type
                                      volume-capacity-bytes :member-name
                                      "SizeInBytes"))
                                    (:shape-name
                                     "CreateOntapVolumeConfiguration"))

(smithy/sdk/shapes:define-structure
 create-open-zfsorigin-snapshot-configuration common-lisp:nil
 ((snapshot-arn :target-type resource-arn :required common-lisp:t :member-name
   "SnapshotARN")
  (copy-strategy :target-type open-zfscopy-strategy :required common-lisp:t
   :member-name "CopyStrategy"))
 (:shape-name "CreateOpenZFSOriginSnapshotConfiguration"))

(smithy/sdk/shapes:define-structure create-open-zfsvolume-configuration
                                    common-lisp:nil
                                    ((parent-volume-id :target-type volume-id
                                      :required common-lisp:t :member-name
                                      "ParentVolumeId")
                                     (storage-capacity-reservation-gi-b
                                      :target-type
                                      integer-no-max-from-negative-one
                                      :member-name
                                      "StorageCapacityReservationGiB")
                                     (storage-capacity-quota-gi-b :target-type
                                      integer-no-max-from-negative-one
                                      :member-name "StorageCapacityQuotaGiB")
                                     (record-size-ki-b :target-type
                                      integer-record-size-ki-b :member-name
                                      "RecordSizeKiB")
                                     (data-compression-type :target-type
                                      open-zfsdata-compression-type
                                      :member-name "DataCompressionType")
                                     (copy-tags-to-snapshots :target-type flag
                                      :member-name "CopyTagsToSnapshots")
                                     (origin-snapshot :target-type
                                      create-open-zfsorigin-snapshot-configuration
                                      :member-name "OriginSnapshot")
                                     (read-only :target-type read-only
                                      :member-name "ReadOnly")
                                     (nfs-exports :target-type
                                      open-zfsnfs-exports :member-name
                                      "NfsExports")
                                     (user-and-group-quotas :target-type
                                      open-zfsuser-and-group-quotas
                                      :member-name "UserAndGroupQuotas"))
                                    (:shape-name
                                     "CreateOpenZFSVolumeConfiguration"))

(smithy/sdk/shapes:define-structure create-snaplock-configuration
                                    common-lisp:nil
                                    ((audit-log-volume :target-type flag
                                      :member-name "AuditLogVolume")
                                     (autocommit-period :target-type
                                      autocommit-period :member-name
                                      "AutocommitPeriod")
                                     (privileged-delete :target-type
                                      privileged-delete :member-name
                                      "PrivilegedDelete")
                                     (retention-period :target-type
                                      snaplock-retention-period :member-name
                                      "RetentionPeriod")
                                     (snaplock-type :target-type snaplock-type
                                      :required common-lisp:t :member-name
                                      "SnaplockType")
                                     (volume-append-mode-enabled :target-type
                                      flag :member-name
                                      "VolumeAppendModeEnabled"))
                                    (:shape-name "CreateSnaplockConfiguration"))

(smithy/sdk/shapes:define-input create-snapshot-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (name :target-type snapshot-name :required
                                  common-lisp:t :member-name "Name")
                                 (volume-id :target-type volume-id :required
                                  common-lisp:t :member-name "VolumeId")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateSnapshotRequest"))

(smithy/sdk/shapes:define-output create-snapshot-response common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "CreateSnapshotResponse"))

(smithy/sdk/shapes:define-input create-storage-virtual-machine-request
                                common-lisp:nil
                                ((active-directory-configuration :target-type
                                  create-svm-active-directory-configuration
                                  :member-name "ActiveDirectoryConfiguration")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (name :target-type
                                  storage-virtual-machine-name :required
                                  common-lisp:t :member-name "Name")
                                 (svm-admin-password :target-type
                                  admin-password :member-name
                                  "SvmAdminPassword")
                                 (tags :target-type tags :member-name "Tags")
                                 (root-volume-security-style :target-type
                                  storage-virtual-machine-root-volume-security-style
                                  :member-name "RootVolumeSecurityStyle"))
                                (:shape-name
                                 "CreateStorageVirtualMachineRequest"))

(smithy/sdk/shapes:define-output create-storage-virtual-machine-response
                                 common-lisp:nil
                                 ((storage-virtual-machine :target-type
                                   storage-virtual-machine :member-name
                                   "StorageVirtualMachine"))
                                 (:shape-name
                                  "CreateStorageVirtualMachineResponse"))

(smithy/sdk/shapes:define-structure create-svm-active-directory-configuration
                                    common-lisp:nil
                                    ((net-bios-name :target-type net-bios-alias
                                      :required common-lisp:t :member-name
                                      "NetBiosName")
                                     (self-managed-active-directory-configuration
                                      :target-type
                                      self-managed-active-directory-configuration
                                      :member-name
                                      "SelfManagedActiveDirectoryConfiguration"))
                                    (:shape-name
                                     "CreateSvmActiveDirectoryConfiguration"))

(smithy/sdk/shapes:define-input create-volume-from-backup-request
                                common-lisp:nil
                                ((backup-id :target-type backup-id :required
                                  common-lisp:t :member-name "BackupId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (name :target-type volume-name :required
                                  common-lisp:t :member-name "Name")
                                 (ontap-configuration :target-type
                                  create-ontap-volume-configuration
                                  :member-name "OntapConfiguration")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateVolumeFromBackupRequest"))

(smithy/sdk/shapes:define-output create-volume-from-backup-response
                                 common-lisp:nil
                                 ((volume :target-type volume :member-name
                                   "Volume"))
                                 (:shape-name "CreateVolumeFromBackupResponse"))

(smithy/sdk/shapes:define-input create-volume-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (volume-type :target-type volume-type
                                  :required common-lisp:t :member-name
                                  "VolumeType")
                                 (name :target-type volume-name :required
                                  common-lisp:t :member-name "Name")
                                 (ontap-configuration :target-type
                                  create-ontap-volume-configuration
                                  :member-name "OntapConfiguration")
                                 (tags :target-type tags :member-name "Tags")
                                 (open-zfsconfiguration :target-type
                                  create-open-zfsvolume-configuration
                                  :member-name "OpenZFSConfiguration"))
                                (:shape-name "CreateVolumeRequest"))

(smithy/sdk/shapes:define-output create-volume-response common-lisp:nil
                                 ((volume :target-type volume :member-name
                                   "Volume"))
                                 (:shape-name "CreateVolumeResponse"))

(smithy/sdk/shapes:define-type creation-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type dnsname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type daily-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-compression-type
    common-lisp:nil
  (:none "NONE")
  (:lz4 "LZ4"))

(smithy/sdk/shapes:define-structure data-repository-association common-lisp:nil
                                    ((association-id :target-type
                                      data-repository-association-id
                                      :member-name "AssociationId")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (file-system-id :target-type
                                      file-system-id :member-name
                                      "FileSystemId")
                                     (lifecycle :target-type
                                      data-repository-lifecycle :member-name
                                      "Lifecycle")
                                     (failure-details :target-type
                                      data-repository-failure-details
                                      :member-name "FailureDetails")
                                     (file-system-path :target-type namespace
                                      :member-name "FileSystemPath")
                                     (data-repository-path :target-type
                                      archive-path :member-name
                                      "DataRepositoryPath")
                                     (batch-import-meta-data-on-create
                                      :target-type
                                      batch-import-meta-data-on-create
                                      :member-name
                                      "BatchImportMetaDataOnCreate")
                                     (imported-file-chunk-size :target-type
                                      megabytes :member-name
                                      "ImportedFileChunkSize")
                                     (s3 :target-type
                                      s3data-repository-configuration
                                      :member-name "S3")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (file-cache-id :target-type file-cache-id
                                      :member-name "FileCacheId")
                                     (file-cache-path :target-type namespace
                                      :member-name "FileCachePath")
                                     (data-repository-subdirectories
                                      :target-type sub-directories-paths
                                      :member-name
                                      "DataRepositorySubdirectories")
                                     (nfs :target-type
                                      nfsdata-repository-configuration
                                      :member-name "NFS"))
                                    (:shape-name "DataRepositoryAssociation"))

(smithy/sdk/shapes:define-type data-repository-association-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-repository-association-ids :member
                               data-repository-association-id)

(smithy/sdk/shapes:define-error data-repository-association-not-found
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DataRepositoryAssociationNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list data-repository-associations :member
                               data-repository-association)

(smithy/sdk/shapes:define-structure data-repository-configuration
                                    common-lisp:nil
                                    ((lifecycle :target-type
                                      data-repository-lifecycle :member-name
                                      "Lifecycle")
                                     (import-path :target-type archive-path
                                      :member-name "ImportPath")
                                     (export-path :target-type archive-path
                                      :member-name "ExportPath")
                                     (imported-file-chunk-size :target-type
                                      megabytes :member-name
                                      "ImportedFileChunkSize")
                                     (auto-import-policy :target-type
                                      auto-import-policy-type :member-name
                                      "AutoImportPolicy")
                                     (failure-details :target-type
                                      data-repository-failure-details
                                      :member-name "FailureDetails"))
                                    (:shape-name "DataRepositoryConfiguration"))

(smithy/sdk/shapes:define-structure data-repository-failure-details
                                    common-lisp:nil
                                    ((message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name
                                     "DataRepositoryFailureDetails"))

(smithy/sdk/shapes:define-enum data-repository-lifecycle
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:misconfigured "MISCONFIGURED")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure data-repository-task common-lisp:nil
                                    ((task-id :target-type task-id :required
                                      common-lisp:t :member-name "TaskId")
                                     (lifecycle :target-type
                                      data-repository-task-lifecycle :required
                                      common-lisp:t :member-name "Lifecycle")
                                     (type :target-type
                                      data-repository-task-type :required
                                      common-lisp:t :member-name "Type")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (start-time :target-type start-time
                                      :member-name "StartTime")
                                     (end-time :target-type end-time
                                      :member-name "EndTime")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (file-system-id :target-type
                                      file-system-id :member-name
                                      "FileSystemId")
                                     (paths :target-type
                                      data-repository-task-paths :member-name
                                      "Paths")
                                     (failure-details :target-type
                                      data-repository-task-failure-details
                                      :member-name "FailureDetails")
                                     (status :target-type
                                      data-repository-task-status :member-name
                                      "Status")
                                     (report :target-type completion-report
                                      :member-name "Report")
                                     (capacity-to-release :target-type
                                      capacity-to-release :member-name
                                      "CapacityToRelease")
                                     (file-cache-id :target-type file-cache-id
                                      :member-name "FileCacheId")
                                     (release-configuration :target-type
                                      release-configuration :member-name
                                      "ReleaseConfiguration"))
                                    (:shape-name "DataRepositoryTask"))

(smithy/sdk/shapes:define-error data-repository-task-ended common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DataRepositoryTaskEnded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error data-repository-task-executing common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DataRepositoryTaskExecuting")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure data-repository-task-failure-details
                                    common-lisp:nil
                                    ((message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name
                                     "DataRepositoryTaskFailureDetails"))

(smithy/sdk/shapes:define-structure data-repository-task-filter common-lisp:nil
                                    ((name :target-type
                                      data-repository-task-filter-name
                                      :member-name "Name")
                                     (values :target-type
                                      data-repository-task-filter-values
                                      :member-name "Values"))
                                    (:shape-name "DataRepositoryTaskFilter"))

(smithy/sdk/shapes:define-enum data-repository-task-filter-name
    common-lisp:nil
  (:file-system-id "file-system-id")
  (:task-lifecycle "task-lifecycle")
  (:data-repo-association-id "data-repository-association-id")
  (:file-cache-id "file-cache-id"))

(smithy/sdk/shapes:define-type data-repository-task-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-repository-task-filter-values :member
                               data-repository-task-filter-value)

(smithy/sdk/shapes:define-list data-repository-task-filters :member
                               data-repository-task-filter)

(smithy/sdk/shapes:define-enum data-repository-task-lifecycle
    common-lisp:nil
  (:pending "PENDING")
  (:executing "EXECUTING")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:canceled "CANCELED")
  (:canceling "CANCELING"))

(smithy/sdk/shapes:define-error data-repository-task-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DataRepositoryTaskNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type data-repository-task-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-repository-task-paths :member
                               data-repository-task-path)

(smithy/sdk/shapes:define-structure data-repository-task-status common-lisp:nil
                                    ((total-count :target-type total-count
                                      :member-name "TotalCount")
                                     (succeeded-count :target-type
                                      succeeded-count :member-name
                                      "SucceededCount")
                                     (failed-count :target-type failed-count
                                      :member-name "FailedCount")
                                     (last-updated-time :target-type
                                      last-updated-time :member-name
                                      "LastUpdatedTime")
                                     (released-capacity :target-type
                                      released-capacity :member-name
                                      "ReleasedCapacity"))
                                    (:shape-name "DataRepositoryTaskStatus"))

(smithy/sdk/shapes:define-enum data-repository-task-type
    common-lisp:nil
  (:export "EXPORT_TO_REPOSITORY")
  (:import "IMPORT_METADATA_FROM_REPOSITORY")
  (:eviction "RELEASE_DATA_FROM_FILESYSTEM")
  (:auto-triggered-eviction "AUTO_RELEASE_DATA"))

(smithy/sdk/shapes:define-list data-repository-tasks :member
                               data-repository-task)

(smithy/sdk/shapes:define-input delete-backup-request common-lisp:nil
                                ((backup-id :target-type backup-id :required
                                  common-lisp:t :member-name "BackupId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "DeleteBackupRequest"))

(smithy/sdk/shapes:define-output delete-backup-response common-lisp:nil
                                 ((backup-id :target-type backup-id
                                   :member-name "BackupId")
                                  (lifecycle :target-type backup-lifecycle
                                   :member-name "Lifecycle"))
                                 (:shape-name "DeleteBackupResponse"))

(smithy/sdk/shapes:define-type delete-data-in-file-system
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-data-repository-association-request
                                common-lisp:nil
                                ((association-id :target-type
                                  data-repository-association-id :required
                                  common-lisp:t :member-name "AssociationId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (delete-data-in-file-system :target-type
                                  delete-data-in-file-system :member-name
                                  "DeleteDataInFileSystem"))
                                (:shape-name
                                 "DeleteDataRepositoryAssociationRequest"))

(smithy/sdk/shapes:define-output delete-data-repository-association-response
                                 common-lisp:nil
                                 ((association-id :target-type
                                   data-repository-association-id :member-name
                                   "AssociationId")
                                  (lifecycle :target-type
                                   data-repository-lifecycle :member-name
                                   "Lifecycle")
                                  (delete-data-in-file-system :target-type
                                   delete-data-in-file-system :member-name
                                   "DeleteDataInFileSystem"))
                                 (:shape-name
                                  "DeleteDataRepositoryAssociationResponse"))

(smithy/sdk/shapes:define-input delete-file-cache-request common-lisp:nil
                                ((file-cache-id :target-type file-cache-id
                                  :required common-lisp:t :member-name
                                  "FileCacheId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "DeleteFileCacheRequest"))

(smithy/sdk/shapes:define-output delete-file-cache-response common-lisp:nil
                                 ((file-cache-id :target-type file-cache-id
                                   :member-name "FileCacheId")
                                  (lifecycle :target-type file-cache-lifecycle
                                   :member-name "Lifecycle"))
                                 (:shape-name "DeleteFileCacheResponse"))

(smithy/sdk/shapes:define-structure delete-file-system-lustre-configuration
                                    common-lisp:nil
                                    ((skip-final-backup :target-type flag
                                      :member-name "SkipFinalBackup")
                                     (final-backup-tags :target-type tags
                                      :member-name "FinalBackupTags"))
                                    (:shape-name
                                     "DeleteFileSystemLustreConfiguration"))

(smithy/sdk/shapes:define-structure delete-file-system-lustre-response
                                    common-lisp:nil
                                    ((final-backup-id :target-type backup-id
                                      :member-name "FinalBackupId")
                                     (final-backup-tags :target-type tags
                                      :member-name "FinalBackupTags"))
                                    (:shape-name
                                     "DeleteFileSystemLustreResponse"))

(smithy/sdk/shapes:define-structure delete-file-system-open-zfsconfiguration
                                    common-lisp:nil
                                    ((skip-final-backup :target-type flag
                                      :member-name "SkipFinalBackup")
                                     (final-backup-tags :target-type tags
                                      :member-name "FinalBackupTags")
                                     (options :target-type
                                      delete-file-system-open-zfsoptions
                                      :member-name "Options"))
                                    (:shape-name
                                     "DeleteFileSystemOpenZFSConfiguration"))

(smithy/sdk/shapes:define-enum delete-file-system-open-zfsoption
    common-lisp:nil
  (:delete-child-volumes-and-snapshots "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"))

(smithy/sdk/shapes:define-list delete-file-system-open-zfsoptions :member
                               delete-file-system-open-zfsoption)

(smithy/sdk/shapes:define-structure delete-file-system-open-zfsresponse
                                    common-lisp:nil
                                    ((final-backup-id :target-type backup-id
                                      :member-name "FinalBackupId")
                                     (final-backup-tags :target-type tags
                                      :member-name "FinalBackupTags"))
                                    (:shape-name
                                     "DeleteFileSystemOpenZFSResponse"))

(smithy/sdk/shapes:define-input delete-file-system-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (windows-configuration :target-type
                                  delete-file-system-windows-configuration
                                  :member-name "WindowsConfiguration")
                                 (lustre-configuration :target-type
                                  delete-file-system-lustre-configuration
                                  :member-name "LustreConfiguration")
                                 (open-zfsconfiguration :target-type
                                  delete-file-system-open-zfsconfiguration
                                  :member-name "OpenZFSConfiguration"))
                                (:shape-name "DeleteFileSystemRequest"))

(smithy/sdk/shapes:define-output delete-file-system-response common-lisp:nil
                                 ((file-system-id :target-type file-system-id
                                   :member-name "FileSystemId")
                                  (lifecycle :target-type file-system-lifecycle
                                   :member-name "Lifecycle")
                                  (windows-response :target-type
                                   delete-file-system-windows-response
                                   :member-name "WindowsResponse")
                                  (lustre-response :target-type
                                   delete-file-system-lustre-response
                                   :member-name "LustreResponse")
                                  (open-zfsresponse :target-type
                                   delete-file-system-open-zfsresponse
                                   :member-name "OpenZFSResponse"))
                                 (:shape-name "DeleteFileSystemResponse"))

(smithy/sdk/shapes:define-structure delete-file-system-windows-configuration
                                    common-lisp:nil
                                    ((skip-final-backup :target-type flag
                                      :member-name "SkipFinalBackup")
                                     (final-backup-tags :target-type tags
                                      :member-name "FinalBackupTags"))
                                    (:shape-name
                                     "DeleteFileSystemWindowsConfiguration"))

(smithy/sdk/shapes:define-structure delete-file-system-windows-response
                                    common-lisp:nil
                                    ((final-backup-id :target-type backup-id
                                      :member-name "FinalBackupId")
                                     (final-backup-tags :target-type tags
                                      :member-name "FinalBackupTags"))
                                    (:shape-name
                                     "DeleteFileSystemWindowsResponse"))

(smithy/sdk/shapes:define-enum delete-open-zfsvolume-option
    common-lisp:nil
  (:delete-child-volumes-and-snapshots "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"))

(smithy/sdk/shapes:define-list delete-open-zfsvolume-options :member
                               delete-open-zfsvolume-option)

(smithy/sdk/shapes:define-input delete-snapshot-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SnapshotId"))
                                (:shape-name "DeleteSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-snapshot-response common-lisp:nil
                                 ((snapshot-id :target-type snapshot-id
                                   :member-name "SnapshotId")
                                  (lifecycle :target-type snapshot-lifecycle
                                   :member-name "Lifecycle"))
                                 (:shape-name "DeleteSnapshotResponse"))

(smithy/sdk/shapes:define-input delete-storage-virtual-machine-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (storage-virtual-machine-id :target-type
                                  storage-virtual-machine-id :required
                                  common-lisp:t :member-name
                                  "StorageVirtualMachineId"))
                                (:shape-name
                                 "DeleteStorageVirtualMachineRequest"))

(smithy/sdk/shapes:define-output delete-storage-virtual-machine-response
                                 common-lisp:nil
                                 ((storage-virtual-machine-id :target-type
                                   storage-virtual-machine-id :member-name
                                   "StorageVirtualMachineId")
                                  (lifecycle :target-type
                                   storage-virtual-machine-lifecycle
                                   :member-name "Lifecycle"))
                                 (:shape-name
                                  "DeleteStorageVirtualMachineResponse"))

(smithy/sdk/shapes:define-structure delete-volume-ontap-configuration
                                    common-lisp:nil
                                    ((skip-final-backup :target-type flag
                                      :member-name "SkipFinalBackup")
                                     (final-backup-tags :target-type tags
                                      :member-name "FinalBackupTags")
                                     (bypass-snaplock-enterprise-retention
                                      :target-type flag :member-name
                                      "BypassSnaplockEnterpriseRetention"))
                                    (:shape-name
                                     "DeleteVolumeOntapConfiguration"))

(smithy/sdk/shapes:define-structure delete-volume-ontap-response
                                    common-lisp:nil
                                    ((final-backup-id :target-type backup-id
                                      :member-name "FinalBackupId")
                                     (final-backup-tags :target-type tags
                                      :member-name "FinalBackupTags"))
                                    (:shape-name "DeleteVolumeOntapResponse"))

(smithy/sdk/shapes:define-structure delete-volume-open-zfsconfiguration
                                    common-lisp:nil
                                    ((options :target-type
                                      delete-open-zfsvolume-options
                                      :member-name "Options"))
                                    (:shape-name
                                     "DeleteVolumeOpenZFSConfiguration"))

(smithy/sdk/shapes:define-input delete-volume-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (volume-id :target-type volume-id :required
                                  common-lisp:t :member-name "VolumeId")
                                 (ontap-configuration :target-type
                                  delete-volume-ontap-configuration
                                  :member-name "OntapConfiguration")
                                 (open-zfsconfiguration :target-type
                                  delete-volume-open-zfsconfiguration
                                  :member-name "OpenZFSConfiguration"))
                                (:shape-name "DeleteVolumeRequest"))

(smithy/sdk/shapes:define-output delete-volume-response common-lisp:nil
                                 ((volume-id :target-type volume-id
                                   :member-name "VolumeId")
                                  (lifecycle :target-type volume-lifecycle
                                   :member-name "Lifecycle")
                                  (ontap-response :target-type
                                   delete-volume-ontap-response :member-name
                                   "OntapResponse"))
                                 (:shape-name "DeleteVolumeResponse"))

(smithy/sdk/shapes:define-input describe-backups-request common-lisp:nil
                                ((backup-ids :target-type backup-ids
                                  :member-name "BackupIds")
                                 (filters :target-type filters :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeBackupsRequest"))

(smithy/sdk/shapes:define-output describe-backups-response common-lisp:nil
                                 ((backups :target-type backups :member-name
                                   "Backups")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeBackupsResponse"))

(smithy/sdk/shapes:define-input describe-data-repository-associations-request
                                common-lisp:nil
                                ((association-ids :target-type
                                  data-repository-association-ids :member-name
                                  "AssociationIds")
                                 (filters :target-type filters :member-name
                                  "Filters")
                                 (max-results :target-type limited-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeDataRepositoryAssociationsRequest"))

(smithy/sdk/shapes:define-output describe-data-repository-associations-response
                                 common-lisp:nil
                                 ((associations :target-type
                                   data-repository-associations :member-name
                                   "Associations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeDataRepositoryAssociationsResponse"))

(smithy/sdk/shapes:define-input describe-data-repository-tasks-request
                                common-lisp:nil
                                ((task-ids :target-type task-ids :member-name
                                  "TaskIds")
                                 (filters :target-type
                                  data-repository-task-filters :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeDataRepositoryTasksRequest"))

(smithy/sdk/shapes:define-output describe-data-repository-tasks-response
                                 common-lisp:nil
                                 ((data-repository-tasks :target-type
                                   data-repository-tasks :member-name
                                   "DataRepositoryTasks")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeDataRepositoryTasksResponse"))

(smithy/sdk/shapes:define-input describe-file-caches-request common-lisp:nil
                                ((file-cache-ids :target-type file-cache-ids
                                  :member-name "FileCacheIds")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeFileCachesRequest"))

(smithy/sdk/shapes:define-output describe-file-caches-response common-lisp:nil
                                 ((file-caches :target-type file-caches
                                   :member-name "FileCaches")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeFileCachesResponse"))

(smithy/sdk/shapes:define-input describe-file-system-aliases-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeFileSystemAliasesRequest"))

(smithy/sdk/shapes:define-output describe-file-system-aliases-response
                                 common-lisp:nil
                                 ((aliases :target-type aliases :member-name
                                   "Aliases")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeFileSystemAliasesResponse"))

(smithy/sdk/shapes:define-input describe-file-systems-request common-lisp:nil
                                ((file-system-ids :target-type file-system-ids
                                  :member-name "FileSystemIds")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeFileSystemsRequest"))

(smithy/sdk/shapes:define-output describe-file-systems-response common-lisp:nil
                                 ((file-systems :target-type file-systems
                                   :member-name "FileSystems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeFileSystemsResponse"))

(smithy/sdk/shapes:define-input describe-s3access-point-attachments-request
                                common-lisp:nil
                                ((names :target-type
                                  s3access-point-attachment-names :member-name
                                  "Names")
                                 (filters :target-type
                                  s3access-point-attachments-filters
                                  :member-name "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeS3AccessPointAttachmentsRequest"))

(smithy/sdk/shapes:define-output describe-s3access-point-attachments-response
                                 common-lisp:nil
                                 ((s3access-point-attachments :target-type
                                   s3access-point-attachments :member-name
                                   "S3AccessPointAttachments")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeS3AccessPointAttachmentsResponse"))

(smithy/sdk/shapes:define-input describe-shared-vpc-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeSharedVpcConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-shared-vpc-configuration-response
                                 common-lisp:nil
                                 ((enable-fsx-route-table-updates-from-participant-accounts
                                   :target-type verbose-flag :member-name
                                   "EnableFsxRouteTableUpdatesFromParticipantAccounts"))
                                 (:shape-name
                                  "DescribeSharedVpcConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-snapshots-request common-lisp:nil
                                ((snapshot-ids :target-type snapshot-ids
                                  :member-name "SnapshotIds")
                                 (filters :target-type snapshot-filters
                                  :member-name "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (include-shared :target-type include-shared
                                  :member-name "IncludeShared"))
                                (:shape-name "DescribeSnapshotsRequest"))

(smithy/sdk/shapes:define-output describe-snapshots-response common-lisp:nil
                                 ((snapshots :target-type snapshots
                                   :member-name "Snapshots")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeSnapshotsResponse"))

(smithy/sdk/shapes:define-input describe-storage-virtual-machines-request
                                common-lisp:nil
                                ((storage-virtual-machine-ids :target-type
                                  storage-virtual-machine-ids :member-name
                                  "StorageVirtualMachineIds")
                                 (filters :target-type
                                  storage-virtual-machine-filters :member-name
                                  "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeStorageVirtualMachinesRequest"))

(smithy/sdk/shapes:define-output describe-storage-virtual-machines-response
                                 common-lisp:nil
                                 ((storage-virtual-machines :target-type
                                   storage-virtual-machines :member-name
                                   "StorageVirtualMachines")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeStorageVirtualMachinesResponse"))

(smithy/sdk/shapes:define-input describe-volumes-request common-lisp:nil
                                ((volume-ids :target-type volume-ids
                                  :member-name "VolumeIds")
                                 (filters :target-type volume-filters
                                  :member-name "Filters")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeVolumesRequest"))

(smithy/sdk/shapes:define-output describe-volumes-response common-lisp:nil
                                 ((volumes :target-type volumes :member-name
                                   "Volumes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeVolumesResponse"))

(smithy/sdk/shapes:define-input detach-and-delete-s3access-point-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (name :target-type
                                  s3access-point-attachment-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name
                                 "DetachAndDeleteS3AccessPointRequest"))

(smithy/sdk/shapes:define-output detach-and-delete-s3access-point-response
                                 common-lisp:nil
                                 ((lifecycle :target-type
                                   s3access-point-attachment-lifecycle
                                   :member-name "Lifecycle")
                                  (name :target-type
                                   s3access-point-attachment-name :member-name
                                   "Name"))
                                 (:shape-name
                                  "DetachAndDeleteS3AccessPointResponse"))

(smithy/sdk/shapes:define-type directory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type directory-password
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type directory-user-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-file-system-aliases-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (aliases :target-type alternate-dnsnames
                                  :required common-lisp:t :member-name
                                  "Aliases"))
                                (:shape-name
                                 "DisassociateFileSystemAliasesRequest"))

(smithy/sdk/shapes:define-output disassociate-file-system-aliases-response
                                 common-lisp:nil
                                 ((aliases :target-type aliases :member-name
                                   "Aliases"))
                                 (:shape-name
                                  "DisassociateFileSystemAliasesResponse"))

(smithy/sdk/shapes:define-structure disk-iops-configuration common-lisp:nil
                                    ((mode :target-type
                                      disk-iops-configuration-mode :member-name
                                      "Mode")
                                     (iops :target-type iops :member-name
                                      "Iops"))
                                    (:shape-name "DiskIopsConfiguration"))

(smithy/sdk/shapes:define-enum disk-iops-configuration-mode
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:user-provisioned "USER_PROVISIONED"))

(smithy/sdk/shapes:define-list dns-ips :member ip-address)

(smithy/sdk/shapes:define-enum drive-cache-type
    common-lisp:nil
  (:none "NONE")
  (:read "READ"))

(smithy/sdk/shapes:define-structure duration-since-last-access common-lisp:nil
                                    ((unit :target-type unit :member-name
                                      "Unit")
                                     (value :target-type value :member-name
                                      "Value"))
                                    (:shape-name "DurationSinceLastAccess"))

(smithy/sdk/shapes:define-type end-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:new "NEW")
  (:changed "CHANGED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list event-types :member event-type)

(smithy/sdk/shapes:define-type failed-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure file-cache common-lisp:nil
                                    ((owner-id :target-type awsaccount-id
                                      :member-name "OwnerId")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (file-cache-id :target-type file-cache-id
                                      :member-name "FileCacheId")
                                     (file-cache-type :target-type
                                      file-cache-type :member-name
                                      "FileCacheType")
                                     (file-cache-type-version :target-type
                                      file-system-type-version :member-name
                                      "FileCacheTypeVersion")
                                     (lifecycle :target-type
                                      file-cache-lifecycle :member-name
                                      "Lifecycle")
                                     (failure-details :target-type
                                      file-cache-failure-details :member-name
                                      "FailureDetails")
                                     (storage-capacity :target-type
                                      storage-capacity :member-name
                                      "StorageCapacity")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (network-interface-ids :target-type
                                      network-interface-ids :member-name
                                      "NetworkInterfaceIds")
                                     (dnsname :target-type dnsname :member-name
                                      "DNSName")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (lustre-configuration :target-type
                                      file-cache-lustre-configuration
                                      :member-name "LustreConfiguration")
                                     (data-repository-association-ids
                                      :target-type
                                      data-repository-association-ids
                                      :member-name
                                      "DataRepositoryAssociationIds"))
                                    (:shape-name "FileCache"))

(smithy/sdk/shapes:define-structure file-cache-creating common-lisp:nil
                                    ((owner-id :target-type awsaccount-id
                                      :member-name "OwnerId")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (file-cache-id :target-type file-cache-id
                                      :member-name "FileCacheId")
                                     (file-cache-type :target-type
                                      file-cache-type :member-name
                                      "FileCacheType")
                                     (file-cache-type-version :target-type
                                      file-system-type-version :member-name
                                      "FileCacheTypeVersion")
                                     (lifecycle :target-type
                                      file-cache-lifecycle :member-name
                                      "Lifecycle")
                                     (failure-details :target-type
                                      file-cache-failure-details :member-name
                                      "FailureDetails")
                                     (storage-capacity :target-type
                                      storage-capacity :member-name
                                      "StorageCapacity")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (network-interface-ids :target-type
                                      network-interface-ids :member-name
                                      "NetworkInterfaceIds")
                                     (dnsname :target-type dnsname :member-name
                                      "DNSName")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (copy-tags-to-data-repository-associations
                                      :target-type
                                      copy-tags-to-data-repository-associations
                                      :member-name
                                      "CopyTagsToDataRepositoryAssociations")
                                     (lustre-configuration :target-type
                                      file-cache-lustre-configuration
                                      :member-name "LustreConfiguration")
                                     (data-repository-association-ids
                                      :target-type
                                      data-repository-association-ids
                                      :member-name
                                      "DataRepositoryAssociationIds"))
                                    (:shape-name "FileCacheCreating"))

(smithy/sdk/shapes:define-structure file-cache-data-repository-association
                                    common-lisp:nil
                                    ((file-cache-path :target-type namespace
                                      :required common-lisp:t :member-name
                                      "FileCachePath")
                                     (data-repository-path :target-type
                                      archive-path :required common-lisp:t
                                      :member-name "DataRepositoryPath")
                                     (data-repository-subdirectories
                                      :target-type sub-directories-paths
                                      :member-name
                                      "DataRepositorySubdirectories")
                                     (nfs :target-type
                                      file-cache-nfsconfiguration :member-name
                                      "NFS"))
                                    (:shape-name
                                     "FileCacheDataRepositoryAssociation"))

(smithy/sdk/shapes:define-structure file-cache-failure-details common-lisp:nil
                                    ((message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name "FileCacheFailureDetails"))

(smithy/sdk/shapes:define-type file-cache-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list file-cache-ids :member file-cache-id)

(smithy/sdk/shapes:define-enum file-cache-lifecycle
    common-lisp:nil
  (:available "AVAILABLE")
  (:creating "CREATING")
  (:deleting "DELETING")
  (:updating "UPDATING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure file-cache-lustre-configuration
                                    common-lisp:nil
                                    ((per-unit-storage-throughput :target-type
                                      per-unit-storage-throughput :member-name
                                      "PerUnitStorageThroughput")
                                     (deployment-type :target-type
                                      file-cache-lustre-deployment-type
                                      :member-name "DeploymentType")
                                     (mount-name :target-type
                                      lustre-file-system-mount-name
                                      :member-name "MountName")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (metadata-configuration :target-type
                                      file-cache-lustre-metadata-configuration
                                      :member-name "MetadataConfiguration")
                                     (log-configuration :target-type
                                      lustre-log-configuration :member-name
                                      "LogConfiguration"))
                                    (:shape-name
                                     "FileCacheLustreConfiguration"))

(smithy/sdk/shapes:define-enum file-cache-lustre-deployment-type
    common-lisp:nil
  (:cache-1 "CACHE_1"))

(smithy/sdk/shapes:define-structure file-cache-lustre-metadata-configuration
                                    common-lisp:nil
                                    ((storage-capacity :target-type
                                      metadata-storage-capacity :required
                                      common-lisp:t :member-name
                                      "StorageCapacity"))
                                    (:shape-name
                                     "FileCacheLustreMetadataConfiguration"))

(smithy/sdk/shapes:define-structure file-cache-nfsconfiguration common-lisp:nil
                                    ((version :target-type nfs-version
                                      :required common-lisp:t :member-name
                                      "Version")
                                     (dns-ips :target-type repository-dns-ips
                                      :member-name "DnsIps"))
                                    (:shape-name "FileCacheNFSConfiguration"))

(smithy/sdk/shapes:define-error file-cache-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "FileCacheNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum file-cache-type
    common-lisp:nil
  (:lustre "LUSTRE"))

(smithy/sdk/shapes:define-list file-caches :member file-cache)

(smithy/sdk/shapes:define-structure file-system common-lisp:nil
                                    ((owner-id :target-type awsaccount-id
                                      :member-name "OwnerId")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (file-system-id :target-type
                                      file-system-id :member-name
                                      "FileSystemId")
                                     (file-system-type :target-type
                                      file-system-type :member-name
                                      "FileSystemType")
                                     (lifecycle :target-type
                                      file-system-lifecycle :member-name
                                      "Lifecycle")
                                     (failure-details :target-type
                                      file-system-failure-details :member-name
                                      "FailureDetails")
                                     (storage-capacity :target-type
                                      storage-capacity :member-name
                                      "StorageCapacity")
                                     (storage-type :target-type storage-type
                                      :member-name "StorageType")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (network-interface-ids :target-type
                                      network-interface-ids :member-name
                                      "NetworkInterfaceIds")
                                     (dnsname :target-type dnsname :member-name
                                      "DNSName")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (windows-configuration :target-type
                                      windows-file-system-configuration
                                      :member-name "WindowsConfiguration")
                                     (lustre-configuration :target-type
                                      lustre-file-system-configuration
                                      :member-name "LustreConfiguration")
                                     (administrative-actions :target-type
                                      administrative-actions :member-name
                                      "AdministrativeActions")
                                     (ontap-configuration :target-type
                                      ontap-file-system-configuration
                                      :member-name "OntapConfiguration")
                                     (file-system-type-version :target-type
                                      file-system-type-version :member-name
                                      "FileSystemTypeVersion")
                                     (open-zfsconfiguration :target-type
                                      open-zfsfile-system-configuration
                                      :member-name "OpenZFSConfiguration"))
                                    (:shape-name "FileSystem"))

(smithy/sdk/shapes:define-type file-system-administrators-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-system-endpoint common-lisp:nil
                                    ((dnsname :target-type dnsname :member-name
                                      "DNSName")
                                     (ip-addresses :target-type
                                      ontap-endpoint-ip-addresses :member-name
                                      "IpAddresses"))
                                    (:shape-name "FileSystemEndpoint"))

(smithy/sdk/shapes:define-structure file-system-endpoints common-lisp:nil
                                    ((intercluster :target-type
                                      file-system-endpoint :member-name
                                      "Intercluster")
                                     (management :target-type
                                      file-system-endpoint :member-name
                                      "Management"))
                                    (:shape-name "FileSystemEndpoints"))

(smithy/sdk/shapes:define-structure file-system-failure-details common-lisp:nil
                                    ((message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name "FileSystemFailureDetails"))

(smithy/sdk/shapes:define-type file-system-gid smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type file-system-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list file-system-ids :member file-system-id)

(smithy/sdk/shapes:define-enum file-system-lifecycle
    common-lisp:nil
  (:available "AVAILABLE")
  (:creating "CREATING")
  (:failed "FAILED")
  (:deleting "DELETING")
  (:misconfigured "MISCONFIGURED")
  (:updating "UPDATING")
  (:misconfigured-unavailable "MISCONFIGURED_UNAVAILABLE"))

(smithy/sdk/shapes:define-structure file-system-lustre-metadata-configuration
                                    common-lisp:nil
                                    ((iops :target-type metadata-iops
                                      :member-name "Iops")
                                     (mode :target-type
                                      metadata-configuration-mode :required
                                      common-lisp:t :member-name "Mode"))
                                    (:shape-name
                                     "FileSystemLustreMetadataConfiguration"))

(smithy/sdk/shapes:define-enum file-system-maintenance-operation
    common-lisp:nil
  (:patching "PATCHING")
  (:backing-up "BACKING_UP"))

(smithy/sdk/shapes:define-list file-system-maintenance-operations :member
                               file-system-maintenance-operation)

(smithy/sdk/shapes:define-error file-system-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "FileSystemNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list file-system-secondary-gids :member
                               file-system-gid)

(smithy/sdk/shapes:define-enum file-system-type
    common-lisp:nil
  (:windows "WINDOWS")
  (:lustre "LUSTRE")
  (:ontap "ONTAP")
  (:openzfs "OPENZFS"))

(smithy/sdk/shapes:define-type file-system-type-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-system-uid smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list file-systems :member file-system)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type filter-name
                                      :member-name "Name")
                                     (values :target-type filter-values
                                      :member-name "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-enum filter-name
    common-lisp:nil
  (:file-system-id "file-system-id")
  (:backup-type "backup-type")
  (:file-system-type "file-system-type")
  (:volume-id "volume-id")
  (:data-repository-type "data-repository-type")
  (:file-cache-id "file-cache-id")
  (:file-cache-type "file-cache-type"))

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member filter-value)

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-type flag smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum flex-cache-endpoint-type
    common-lisp:nil
  (:none "NONE")
  (:origin "ORIGIN")
  (:cache "CACHE"))

(smithy/sdk/shapes:define-type general-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hapairs smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type include-shared smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error incompatible-parameter-error common-lisp:nil
                                ((parameter :target-type parameter :required
                                  common-lisp:t :member-name "Parameter")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "IncompatibleParameterError")
                                (:error-code 400))

(smithy/sdk/shapes:define-error incompatible-region-for-multi-az
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "IncompatibleRegionForMultiAZ")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum input-ontap-volume-type
    common-lisp:nil
  (:rw "RW")
  (:dp "DP"))

(smithy/sdk/shapes:define-type integer-no-max smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-no-max-from-negative-one
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-record-size-ki-b
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-access-point common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidAccessPoint")
                                (:error-code 400) (:xml-name "Error"))

(smithy/sdk/shapes:define-error invalid-data-repository-type common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidDataRepositoryType")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-destination-kms-key common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidDestinationKmsKey")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-export-path common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidExportPath")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-import-path common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidImportPath")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-network-settings common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (invalid-subnet-id :target-type subnet-id
                                  :member-name "InvalidSubnetId")
                                 (invalid-security-group-id :target-type
                                  security-group-id :member-name
                                  "InvalidSecurityGroupId")
                                 (invalid-route-table-id :target-type
                                  route-table-id :member-name
                                  "InvalidRouteTableId"))
                                (:shape-name "InvalidNetworkSettings")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-per-unit-storage-throughput
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidPerUnitStorageThroughput")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-region common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRegion") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequest")
                                (:error-code 400) (:xml-name "Error"))

(smithy/sdk/shapes:define-error invalid-source-kms-key common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidSourceKmsKey")
                                (:error-code 400))

(smithy/sdk/shapes:define-type iops smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-address-range smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type junction-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-updated-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure lifecycle-transition-reason common-lisp:nil
                                    ((message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name "LifecycleTransitionReason"))

(smithy/sdk/shapes:define-type limited-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum lustre-access-audit-log-level
    common-lisp:nil
  (:disabled "DISABLED")
  (:warn-only "WARN_ONLY")
  (:error-only "ERROR_ONLY")
  (:warn-error "WARN_ERROR"))

(smithy/sdk/shapes:define-enum lustre-deployment-type
    common-lisp:nil
  (:scratch-1 "SCRATCH_1")
  (:scratch-2 "SCRATCH_2")
  (:persistent-1 "PERSISTENT_1")
  (:persistent-2 "PERSISTENT_2"))

(smithy/sdk/shapes:define-structure lustre-file-system-configuration
                                    common-lisp:nil
                                    ((weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (data-repository-configuration
                                      :target-type
                                      data-repository-configuration
                                      :member-name
                                      "DataRepositoryConfiguration")
                                     (deployment-type :target-type
                                      lustre-deployment-type :member-name
                                      "DeploymentType")
                                     (per-unit-storage-throughput :target-type
                                      per-unit-storage-throughput :member-name
                                      "PerUnitStorageThroughput")
                                     (mount-name :target-type
                                      lustre-file-system-mount-name
                                      :member-name "MountName")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (drive-cache-type :target-type
                                      drive-cache-type :member-name
                                      "DriveCacheType")
                                     (data-compression-type :target-type
                                      data-compression-type :member-name
                                      "DataCompressionType")
                                     (log-configuration :target-type
                                      lustre-log-configuration :member-name
                                      "LogConfiguration")
                                     (root-squash-configuration :target-type
                                      lustre-root-squash-configuration
                                      :member-name "RootSquashConfiguration")
                                     (metadata-configuration :target-type
                                      file-system-lustre-metadata-configuration
                                      :member-name "MetadataConfiguration")
                                     (efa-enabled :target-type flag
                                      :member-name "EfaEnabled")
                                     (throughput-capacity :target-type
                                      throughput-capacity-mbps :member-name
                                      "ThroughputCapacity")
                                     (data-read-cache-configuration
                                      :target-type
                                      lustre-read-cache-configuration
                                      :member-name
                                      "DataReadCacheConfiguration"))
                                    (:shape-name
                                     "LustreFileSystemConfiguration"))

(smithy/sdk/shapes:define-type lustre-file-system-mount-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lustre-log-configuration common-lisp:nil
                                    ((level :target-type
                                      lustre-access-audit-log-level :required
                                      common-lisp:t :member-name "Level")
                                     (destination :target-type general-arn
                                      :member-name "Destination"))
                                    (:shape-name "LustreLogConfiguration"))

(smithy/sdk/shapes:define-structure lustre-log-create-configuration
                                    common-lisp:nil
                                    ((level :target-type
                                      lustre-access-audit-log-level :required
                                      common-lisp:t :member-name "Level")
                                     (destination :target-type general-arn
                                      :member-name "Destination"))
                                    (:shape-name
                                     "LustreLogCreateConfiguration"))

(smithy/sdk/shapes:define-type lustre-no-squash-nid
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lustre-no-squash-nids :member
                               lustre-no-squash-nid)

(smithy/sdk/shapes:define-structure lustre-read-cache-configuration
                                    common-lisp:nil
                                    ((sizing-mode :target-type
                                      lustre-read-cache-sizing-mode
                                      :member-name "SizingMode")
                                     (size-gi-b :target-type storage-capacity
                                      :member-name "SizeGiB"))
                                    (:shape-name
                                     "LustreReadCacheConfiguration"))

(smithy/sdk/shapes:define-enum lustre-read-cache-sizing-mode
    common-lisp:nil
  (:no-cache "NO_CACHE")
  (:user-provisioned "USER_PROVISIONED")
  (:proportional-to-throughput-capacity "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"))

(smithy/sdk/shapes:define-type lustre-root-squash
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lustre-root-squash-configuration
                                    common-lisp:nil
                                    ((root-squash :target-type
                                      lustre-root-squash :member-name
                                      "RootSquash")
                                     (no-squash-nids :target-type
                                      lustre-no-squash-nids :member-name
                                      "NoSquashNids"))
                                    (:shape-name
                                     "LustreRootSquashConfiguration"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type megabytes smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type megabytes-per-second
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum metadata-configuration-mode
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:user-provisioned "USER_PROVISIONED"))

(smithy/sdk/shapes:define-type metadata-iops smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type metadata-storage-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error missing-file-cache-configuration
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "MissingFileCacheConfiguration")
                                (:error-code 400))

(smithy/sdk/shapes:define-error missing-file-system-configuration
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "MissingFileSystemConfiguration")
                                (:error-code 400))

(smithy/sdk/shapes:define-error missing-volume-configuration common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "MissingVolumeConfiguration")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure nfsdata-repository-configuration
                                    common-lisp:nil
                                    ((version :target-type nfs-version
                                      :required common-lisp:t :member-name
                                      "Version")
                                     (dns-ips :target-type repository-dns-ips
                                      :member-name "DnsIps")
                                     (auto-export-policy :target-type
                                      auto-export-policy :member-name
                                      "AutoExportPolicy"))
                                    (:shape-name
                                     "NFSDataRepositoryConfiguration"))

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type net-bios-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type network-interface-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-interface-ids :member
                               network-interface-id)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum nfs-version
    common-lisp:nil
  (:nfs3 "NFS3"))

(smithy/sdk/shapes:define-error not-service-resource-error common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotServiceResourceError")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum ontap-deployment-type
    common-lisp:nil
  (:multi-az-1 "MULTI_AZ_1")
  (:single-az-1 "SINGLE_AZ_1")
  (:single-az-2 "SINGLE_AZ_2")
  (:multi-az-2 "MULTI_AZ_2"))

(smithy/sdk/shapes:define-list ontap-endpoint-ip-addresses :member ip-address)

(smithy/sdk/shapes:define-structure ontap-file-system-configuration
                                    common-lisp:nil
                                    ((automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (deployment-type :target-type
                                      ontap-deployment-type :member-name
                                      "DeploymentType")
                                     (endpoint-ip-address-range :target-type
                                      ip-address-range :member-name
                                      "EndpointIpAddressRange")
                                     (endpoints :target-type
                                      file-system-endpoints :member-name
                                      "Endpoints")
                                     (disk-iops-configuration :target-type
                                      disk-iops-configuration :member-name
                                      "DiskIopsConfiguration")
                                     (preferred-subnet-id :target-type
                                      subnet-id :member-name
                                      "PreferredSubnetId")
                                     (route-table-ids :target-type
                                      route-table-ids :member-name
                                      "RouteTableIds")
                                     (throughput-capacity :target-type
                                      megabytes-per-second :member-name
                                      "ThroughputCapacity")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (fsx-admin-password :target-type
                                      admin-password :member-name
                                      "FsxAdminPassword")
                                     (hapairs :target-type hapairs :member-name
                                      "HAPairs")
                                     (throughput-capacity-per-hapair
                                      :target-type
                                      throughput-capacity-per-hapair
                                      :member-name
                                      "ThroughputCapacityPerHAPair"))
                                    (:shape-name
                                     "OntapFileSystemConfiguration"))

(smithy/sdk/shapes:define-structure ontap-volume-configuration common-lisp:nil
                                    ((flex-cache-endpoint-type :target-type
                                      flex-cache-endpoint-type :member-name
                                      "FlexCacheEndpointType")
                                     (junction-path :target-type junction-path
                                      :member-name "JunctionPath")
                                     (security-style :target-type
                                      security-style :member-name
                                      "SecurityStyle")
                                     (size-in-megabytes :target-type
                                      volume-capacity :member-name
                                      "SizeInMegabytes")
                                     (storage-efficiency-enabled :target-type
                                      flag :member-name
                                      "StorageEfficiencyEnabled")
                                     (storage-virtual-machine-id :target-type
                                      storage-virtual-machine-id :member-name
                                      "StorageVirtualMachineId")
                                     (storage-virtual-machine-root :target-type
                                      flag :member-name
                                      "StorageVirtualMachineRoot")
                                     (tiering-policy :target-type
                                      tiering-policy :member-name
                                      "TieringPolicy")
                                     (uuid :target-type uuid :member-name
                                      "UUID")
                                     (ontap-volume-type :target-type
                                      ontap-volume-type :member-name
                                      "OntapVolumeType")
                                     (snapshot-policy :target-type
                                      snapshot-policy :member-name
                                      "SnapshotPolicy")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (snaplock-configuration :target-type
                                      snaplock-configuration :member-name
                                      "SnaplockConfiguration")
                                     (volume-style :target-type volume-style
                                      :member-name "VolumeStyle")
                                     (aggregate-configuration :target-type
                                      aggregate-configuration :member-name
                                      "AggregateConfiguration")
                                     (size-in-bytes :target-type
                                      volume-capacity-bytes :member-name
                                      "SizeInBytes"))
                                    (:shape-name "OntapVolumeConfiguration"))

(smithy/sdk/shapes:define-enum ontap-volume-type
    common-lisp:nil
  (:rw "RW")
  (:dp "DP")
  (:ls "LS"))

(smithy/sdk/shapes:define-structure open-zfsclient-configuration
                                    common-lisp:nil
                                    ((clients :target-type open-zfsclients
                                      :required common-lisp:t :member-name
                                      "Clients")
                                     (options :target-type
                                      open-zfsnfs-export-options :required
                                      common-lisp:t :member-name "Options"))
                                    (:shape-name "OpenZFSClientConfiguration"))

(smithy/sdk/shapes:define-list open-zfsclient-configurations :member
                               open-zfsclient-configuration)

(smithy/sdk/shapes:define-type open-zfsclients smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum open-zfscopy-strategy
    common-lisp:nil
  (:clone "CLONE")
  (:full-copy "FULL_COPY")
  (:incremental-copy "INCREMENTAL_COPY"))

(smithy/sdk/shapes:define-structure open-zfscreate-root-volume-configuration
                                    common-lisp:nil
                                    ((record-size-ki-b :target-type
                                      integer-record-size-ki-b :member-name
                                      "RecordSizeKiB")
                                     (data-compression-type :target-type
                                      open-zfsdata-compression-type
                                      :member-name "DataCompressionType")
                                     (nfs-exports :target-type
                                      open-zfsnfs-exports :member-name
                                      "NfsExports")
                                     (user-and-group-quotas :target-type
                                      open-zfsuser-and-group-quotas
                                      :member-name "UserAndGroupQuotas")
                                     (copy-tags-to-snapshots :target-type flag
                                      :member-name "CopyTagsToSnapshots")
                                     (read-only :target-type read-only
                                      :member-name "ReadOnly"))
                                    (:shape-name
                                     "OpenZFSCreateRootVolumeConfiguration"))

(smithy/sdk/shapes:define-enum open-zfsdata-compression-type
    common-lisp:nil
  (:none "NONE")
  (:zstd "ZSTD")
  (:lz4 "LZ4"))

(smithy/sdk/shapes:define-enum open-zfsdeployment-type
    common-lisp:nil
  (:single-az-1 "SINGLE_AZ_1")
  (:single-az-2 "SINGLE_AZ_2")
  (:single-az-ha-1 "SINGLE_AZ_HA_1")
  (:single-az-ha-2 "SINGLE_AZ_HA_2")
  (:multi-az-1 "MULTI_AZ_1"))

(smithy/sdk/shapes:define-structure open-zfsfile-system-configuration
                                    common-lisp:nil
                                    ((automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (copy-tags-to-volumes :target-type flag
                                      :member-name "CopyTagsToVolumes")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (deployment-type :target-type
                                      open-zfsdeployment-type :member-name
                                      "DeploymentType")
                                     (throughput-capacity :target-type
                                      megabytes-per-second :member-name
                                      "ThroughputCapacity")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (disk-iops-configuration :target-type
                                      disk-iops-configuration :member-name
                                      "DiskIopsConfiguration")
                                     (root-volume-id :target-type volume-id
                                      :member-name "RootVolumeId")
                                     (preferred-subnet-id :target-type
                                      subnet-id :member-name
                                      "PreferredSubnetId")
                                     (endpoint-ip-address-range :target-type
                                      ip-address-range :member-name
                                      "EndpointIpAddressRange")
                                     (route-table-ids :target-type
                                      route-table-ids :member-name
                                      "RouteTableIds")
                                     (endpoint-ip-address :target-type
                                      ip-address :member-name
                                      "EndpointIpAddress")
                                     (read-cache-configuration :target-type
                                      open-zfsread-cache-configuration
                                      :member-name "ReadCacheConfiguration"))
                                    (:shape-name
                                     "OpenZFSFileSystemConfiguration"))

(smithy/sdk/shapes:define-structure open-zfsfile-system-identity
                                    common-lisp:nil
                                    ((type :target-type
                                      open-zfsfile-system-user-type :required
                                      common-lisp:t :member-name "Type")
                                     (posix-user :target-type
                                      open-zfsposix-file-system-user
                                      :member-name "PosixUser"))
                                    (:shape-name "OpenZFSFileSystemIdentity"))

(smithy/sdk/shapes:define-enum open-zfsfile-system-user-type
    common-lisp:nil
  (:posix "POSIX"))

(smithy/sdk/shapes:define-structure open-zfsnfs-export common-lisp:nil
                                    ((client-configurations :target-type
                                      open-zfsclient-configurations :required
                                      common-lisp:t :member-name
                                      "ClientConfigurations"))
                                    (:shape-name "OpenZFSNfsExport"))

(smithy/sdk/shapes:define-type open-zfsnfs-export-option
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list open-zfsnfs-export-options :member
                               open-zfsnfs-export-option)

(smithy/sdk/shapes:define-list open-zfsnfs-exports :member open-zfsnfs-export)

(smithy/sdk/shapes:define-structure open-zfsorigin-snapshot-configuration
                                    common-lisp:nil
                                    ((snapshot-arn :target-type resource-arn
                                      :member-name "SnapshotARN")
                                     (copy-strategy :target-type
                                      open-zfscopy-strategy :member-name
                                      "CopyStrategy"))
                                    (:shape-name
                                     "OpenZFSOriginSnapshotConfiguration"))

(smithy/sdk/shapes:define-structure open-zfsposix-file-system-user
                                    common-lisp:nil
                                    ((uid :target-type file-system-uid
                                      :required common-lisp:t :member-name
                                      "Uid")
                                     (gid :target-type file-system-gid
                                      :required common-lisp:t :member-name
                                      "Gid")
                                     (secondary-gids :target-type
                                      file-system-secondary-gids :member-name
                                      "SecondaryGids"))
                                    (:shape-name "OpenZFSPosixFileSystemUser"))

(smithy/sdk/shapes:define-enum open-zfsquota-type
    common-lisp:nil
  (:user "USER")
  (:group "GROUP"))

(smithy/sdk/shapes:define-structure open-zfsread-cache-configuration
                                    common-lisp:nil
                                    ((sizing-mode :target-type
                                      open-zfsread-cache-sizing-mode
                                      :member-name "SizingMode")
                                     (size-gi-b :target-type storage-capacity
                                      :member-name "SizeGiB"))
                                    (:shape-name
                                     "OpenZFSReadCacheConfiguration"))

(smithy/sdk/shapes:define-enum open-zfsread-cache-sizing-mode
    common-lisp:nil
  (:no-cache "NO_CACHE")
  (:user-provisioned "USER_PROVISIONED")
  (:proportional-to-throughput-capacity "PROPORTIONAL_TO_THROUGHPUT_CAPACITY"))

(smithy/sdk/shapes:define-list open-zfsuser-and-group-quotas :member
                               open-zfsuser-or-group-quota)

(smithy/sdk/shapes:define-structure open-zfsuser-or-group-quota common-lisp:nil
                                    ((type :target-type open-zfsquota-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (id :target-type integer-no-max :required
                                      common-lisp:t :member-name "Id")
                                     (storage-capacity-quota-gi-b :target-type
                                      integer-no-max :required common-lisp:t
                                      :member-name "StorageCapacityQuotaGiB"))
                                    (:shape-name "OpenZFSUserOrGroupQuota"))

(smithy/sdk/shapes:define-structure open-zfsvolume-configuration
                                    common-lisp:nil
                                    ((parent-volume-id :target-type volume-id
                                      :member-name "ParentVolumeId")
                                     (volume-path :target-type volume-path
                                      :member-name "VolumePath")
                                     (storage-capacity-reservation-gi-b
                                      :target-type integer-no-max :member-name
                                      "StorageCapacityReservationGiB")
                                     (storage-capacity-quota-gi-b :target-type
                                      integer-no-max :member-name
                                      "StorageCapacityQuotaGiB")
                                     (record-size-ki-b :target-type
                                      integer-record-size-ki-b :member-name
                                      "RecordSizeKiB")
                                     (data-compression-type :target-type
                                      open-zfsdata-compression-type
                                      :member-name "DataCompressionType")
                                     (copy-tags-to-snapshots :target-type flag
                                      :member-name "CopyTagsToSnapshots")
                                     (origin-snapshot :target-type
                                      open-zfsorigin-snapshot-configuration
                                      :member-name "OriginSnapshot")
                                     (read-only :target-type read-only
                                      :member-name "ReadOnly")
                                     (nfs-exports :target-type
                                      open-zfsnfs-exports :member-name
                                      "NfsExports")
                                     (user-and-group-quotas :target-type
                                      open-zfsuser-and-group-quotas
                                      :member-name "UserAndGroupQuotas")
                                     (restore-to-snapshot :target-type
                                      snapshot-id :member-name
                                      "RestoreToSnapshot")
                                     (delete-intermediate-snaphots :target-type
                                      flag :member-name
                                      "DeleteIntermediateSnaphots")
                                     (delete-cloned-volumes :target-type flag
                                      :member-name "DeleteClonedVolumes")
                                     (delete-intermediate-data :target-type
                                      flag :member-name
                                      "DeleteIntermediateData")
                                     (source-snapshot-arn :target-type
                                      resource-arn :member-name
                                      "SourceSnapshotARN")
                                     (destination-snapshot :target-type
                                      snapshot-id :member-name
                                      "DestinationSnapshot")
                                     (copy-strategy :target-type
                                      open-zfscopy-strategy :member-name
                                      "CopyStrategy"))
                                    (:shape-name "OpenZFSVolumeConfiguration"))

(smithy/sdk/shapes:define-type organizational-unit-distinguished-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type per-unit-storage-throughput
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum privileged-delete
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:permanently-disabled "PERMANENTLY_DISABLED"))

(smithy/sdk/shapes:define-type progress-percent smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type read-only smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure release-configuration common-lisp:nil
                                    ((duration-since-last-access :target-type
                                      duration-since-last-access :member-name
                                      "DurationSinceLastAccess"))
                                    (:shape-name "ReleaseConfiguration"))

(smithy/sdk/shapes:define-input release-file-system-nfs-v3locks-request
                                common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name
                                 "ReleaseFileSystemNfsV3LocksRequest"))

(smithy/sdk/shapes:define-output release-file-system-nfs-v3locks-response
                                 common-lisp:nil
                                 ((file-system :target-type file-system
                                   :member-name "FileSystem"))
                                 (:shape-name
                                  "ReleaseFileSystemNfsV3LocksResponse"))

(smithy/sdk/shapes:define-type released-capacity smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type remaining-transfer-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum report-format
    common-lisp:nil
  (:report-csv-20191124 "REPORT_CSV_20191124"))

(smithy/sdk/shapes:define-enum report-scope
    common-lisp:nil
  (:failed-files-only "FAILED_FILES_ONLY"))

(smithy/sdk/shapes:define-list repository-dns-ips :member ip-address)

(smithy/sdk/shapes:define-type request-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-does-not-support-tagging
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceDoesNotSupportTagging")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:file-system "FILE_SYSTEM")
  (:volume "VOLUME"))

(smithy/sdk/shapes:define-enum restore-open-zfsvolume-option
    common-lisp:nil
  (:delete-intermediate-snapshots "DELETE_INTERMEDIATE_SNAPSHOTS")
  (:delete-cloned-volumes "DELETE_CLONED_VOLUMES"))

(smithy/sdk/shapes:define-list restore-open-zfsvolume-options :member
                               restore-open-zfsvolume-option)

(smithy/sdk/shapes:define-input restore-volume-from-snapshot-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (volume-id :target-type volume-id :required
                                  common-lisp:t :member-name "VolumeId")
                                 (snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SnapshotId")
                                 (options :target-type
                                  restore-open-zfsvolume-options :member-name
                                  "Options"))
                                (:shape-name
                                 "RestoreVolumeFromSnapshotRequest"))

(smithy/sdk/shapes:define-output restore-volume-from-snapshot-response
                                 common-lisp:nil
                                 ((volume-id :target-type volume-id
                                   :member-name "VolumeId")
                                  (lifecycle :target-type volume-lifecycle
                                   :member-name "Lifecycle")
                                  (administrative-actions :target-type
                                   administrative-actions :member-name
                                   "AdministrativeActions"))
                                 (:shape-name
                                  "RestoreVolumeFromSnapshotResponse"))

(smithy/sdk/shapes:define-structure retention-period common-lisp:nil
                                    ((type :target-type retention-period-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (value :target-type retention-period-value
                                      :member-name "Value"))
                                    (:shape-name "RetentionPeriod"))

(smithy/sdk/shapes:define-enum retention-period-type
    common-lisp:nil
  (:seconds "SECONDS")
  (:minutes "MINUTES")
  (:hours "HOURS")
  (:days "DAYS")
  (:months "MONTHS")
  (:years "YEARS")
  (:infinite "INFINITE")
  (:unspecified "UNSPECIFIED"))

(smithy/sdk/shapes:define-type retention-period-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type route-table-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-table-ids :member route-table-id)

(smithy/sdk/shapes:define-structure s3access-point common-lisp:nil
                                    ((resource-arn :target-type general-arn
                                      :member-name "ResourceARN")
                                     (alias :target-type s3access-point-alias
                                      :member-name "Alias")
                                     (vpc-configuration :target-type
                                      s3access-point-vpc-configuration
                                      :member-name "VpcConfiguration"))
                                    (:shape-name "S3AccessPoint"))

(smithy/sdk/shapes:define-type s3access-point-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3access-point-attachment common-lisp:nil
                                    ((lifecycle :target-type
                                      s3access-point-attachment-lifecycle
                                      :member-name "Lifecycle")
                                     (lifecycle-transition-reason :target-type
                                      lifecycle-transition-reason :member-name
                                      "LifecycleTransitionReason")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (name :target-type
                                      s3access-point-attachment-name
                                      :member-name "Name")
                                     (type :target-type
                                      s3access-point-attachment-type
                                      :member-name "Type")
                                     (open-zfsconfiguration :target-type
                                      s3access-point-open-zfsconfiguration
                                      :member-name "OpenZFSConfiguration")
                                     (s3access-point :target-type
                                      s3access-point :member-name
                                      "S3AccessPoint"))
                                    (:shape-name "S3AccessPointAttachment"))

(smithy/sdk/shapes:define-enum s3access-point-attachment-lifecycle
    common-lisp:nil
  (:available "AVAILABLE")
  (:creating "CREATING")
  (:deleting "DELETING")
  (:updating "UPDATING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type s3access-point-attachment-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list s3access-point-attachment-names :member
                               s3access-point-attachment-name)

(smithy/sdk/shapes:define-error s3access-point-attachment-not-found
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "S3AccessPointAttachmentNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum s3access-point-attachment-type
    common-lisp:nil
  (:openzfs "OPENZFS"))

(smithy/sdk/shapes:define-list s3access-point-attachments :member
                               s3access-point-attachment)

(smithy/sdk/shapes:define-structure s3access-point-attachments-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      s3access-point-attachments-filter-name
                                      :member-name "Name")
                                     (values :target-type
                                      s3access-point-attachments-filter-values
                                      :member-name "Values"))
                                    (:shape-name
                                     "S3AccessPointAttachmentsFilter"))

(smithy/sdk/shapes:define-enum s3access-point-attachments-filter-name
    common-lisp:nil
  (:file-system-id "file-system-id")
  (:volume-id "volume-id")
  (:type "type"))

(smithy/sdk/shapes:define-type s3access-point-attachments-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list s3access-point-attachments-filter-values :member
                               s3access-point-attachments-filter-value)

(smithy/sdk/shapes:define-list s3access-point-attachments-filters :member
                               s3access-point-attachments-filter)

(smithy/sdk/shapes:define-structure s3access-point-open-zfsconfiguration
                                    common-lisp:nil
                                    ((volume-id :target-type volume-id
                                      :member-name "VolumeId")
                                     (file-system-identity :target-type
                                      open-zfsfile-system-identity :member-name
                                      "FileSystemIdentity"))
                                    (:shape-name
                                     "S3AccessPointOpenZFSConfiguration"))

(smithy/sdk/shapes:define-structure s3access-point-vpc-configuration
                                    common-lisp:nil
                                    ((vpc-id :target-type vpc-id :member-name
                                      "VpcId"))
                                    (:shape-name
                                     "S3AccessPointVpcConfiguration"))

(smithy/sdk/shapes:define-structure s3data-repository-configuration
                                    common-lisp:nil
                                    ((auto-import-policy :target-type
                                      auto-import-policy :member-name
                                      "AutoImportPolicy")
                                     (auto-export-policy :target-type
                                      auto-export-policy :member-name
                                      "AutoExportPolicy"))
                                    (:shape-name
                                     "S3DataRepositoryConfiguration"))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-enum security-style
    common-lisp:nil
  (:unix "UNIX")
  (:ntfs "NTFS")
  (:mixed "MIXED"))

(smithy/sdk/shapes:define-structure self-managed-active-directory-attributes
                                    common-lisp:nil
                                    ((domain-name :target-type
                                      active-directory-fully-qualified-name
                                      :member-name "DomainName")
                                     (organizational-unit-distinguished-name
                                      :target-type
                                      organizational-unit-distinguished-name
                                      :member-name
                                      "OrganizationalUnitDistinguishedName")
                                     (file-system-administrators-group
                                      :target-type
                                      file-system-administrators-group-name
                                      :member-name
                                      "FileSystemAdministratorsGroup")
                                     (user-name :target-type
                                      directory-user-name :member-name
                                      "UserName")
                                     (dns-ips :target-type dns-ips :member-name
                                      "DnsIps"))
                                    (:shape-name
                                     "SelfManagedActiveDirectoryAttributes"))

(smithy/sdk/shapes:define-structure self-managed-active-directory-configuration
                                    common-lisp:nil
                                    ((domain-name :target-type
                                      active-directory-fully-qualified-name
                                      :required common-lisp:t :member-name
                                      "DomainName")
                                     (organizational-unit-distinguished-name
                                      :target-type
                                      organizational-unit-distinguished-name
                                      :member-name
                                      "OrganizationalUnitDistinguishedName")
                                     (file-system-administrators-group
                                      :target-type
                                      file-system-administrators-group-name
                                      :member-name
                                      "FileSystemAdministratorsGroup")
                                     (user-name :target-type
                                      directory-user-name :required
                                      common-lisp:t :member-name "UserName")
                                     (password :target-type directory-password
                                      :required common-lisp:t :member-name
                                      "Password")
                                     (dns-ips :target-type dns-ips :required
                                      common-lisp:t :member-name "DnsIps"))
                                    (:shape-name
                                     "SelfManagedActiveDirectoryConfiguration"))

(smithy/sdk/shapes:define-structure
 self-managed-active-directory-configuration-updates common-lisp:nil
 ((user-name :target-type directory-user-name :member-name "UserName")
  (password :target-type directory-password :member-name "Password")
  (dns-ips :target-type dns-ips :member-name "DnsIps")
  (domain-name :target-type active-directory-fully-qualified-name :member-name
   "DomainName")
  (organizational-unit-distinguished-name :target-type
   organizational-unit-distinguished-name :member-name
   "OrganizationalUnitDistinguishedName")
  (file-system-administrators-group :target-type
   file-system-administrators-group-name :member-name
   "FileSystemAdministratorsGroup"))
 (:shape-name "SelfManagedActiveDirectoryConfigurationUpdates"))

(smithy/sdk/shapes:define-enum service-limit
    common-lisp:nil
  (:file-system-count "FILE_SYSTEM_COUNT")
  (:total-throughput-capacity "TOTAL_THROUGHPUT_CAPACITY")
  (:total-storage "TOTAL_STORAGE")
  (:total-user-initiated-backups "TOTAL_USER_INITIATED_BACKUPS")
  (:total-user-tags "TOTAL_USER_TAGS")
  (:total-in-progress-copy-backups "TOTAL_IN_PROGRESS_COPY_BACKUPS")
  (:storage-virtual-machines-per-file-system
   "STORAGE_VIRTUAL_MACHINES_PER_FILE_SYSTEM")
  (:volumes-per-file-system "VOLUMES_PER_FILE_SYSTEM")
  (:total-ssd-iops "TOTAL_SSD_IOPS")
  (:file-cache-count "FILE_CACHE_COUNT"))

(smithy/sdk/shapes:define-error service-limit-exceeded common-lisp:nil
                                ((limit :target-type service-limit :required
                                  common-lisp:t :member-name "Limit")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-type size-in-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure snaplock-configuration common-lisp:nil
                                    ((audit-log-volume :target-type flag
                                      :member-name "AuditLogVolume")
                                     (autocommit-period :target-type
                                      autocommit-period :member-name
                                      "AutocommitPeriod")
                                     (privileged-delete :target-type
                                      privileged-delete :member-name
                                      "PrivilegedDelete")
                                     (retention-period :target-type
                                      snaplock-retention-period :member-name
                                      "RetentionPeriod")
                                     (snaplock-type :target-type snaplock-type
                                      :member-name "SnaplockType")
                                     (volume-append-mode-enabled :target-type
                                      flag :member-name
                                      "VolumeAppendModeEnabled"))
                                    (:shape-name "SnaplockConfiguration"))

(smithy/sdk/shapes:define-structure snaplock-retention-period common-lisp:nil
                                    ((default-retention :target-type
                                      retention-period :required common-lisp:t
                                      :member-name "DefaultRetention")
                                     (minimum-retention :target-type
                                      retention-period :required common-lisp:t
                                      :member-name "MinimumRetention")
                                     (maximum-retention :target-type
                                      retention-period :required common-lisp:t
                                      :member-name "MaximumRetention"))
                                    (:shape-name "SnaplockRetentionPeriod"))

(smithy/sdk/shapes:define-enum snaplock-type
    common-lisp:nil
  (:compliance "COMPLIANCE")
  (:enterprise "ENTERPRISE"))

(smithy/sdk/shapes:define-structure snapshot common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (snapshot-id :target-type snapshot-id
                                      :member-name "SnapshotId")
                                     (name :target-type snapshot-name
                                      :member-name "Name")
                                     (volume-id :target-type volume-id
                                      :member-name "VolumeId")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (lifecycle :target-type snapshot-lifecycle
                                      :member-name "Lifecycle")
                                     (lifecycle-transition-reason :target-type
                                      lifecycle-transition-reason :member-name
                                      "LifecycleTransitionReason")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (administrative-actions :target-type
                                      administrative-actions :member-name
                                      "AdministrativeActions"))
                                    (:shape-name "Snapshot"))

(smithy/sdk/shapes:define-structure snapshot-filter common-lisp:nil
                                    ((name :target-type snapshot-filter-name
                                      :member-name "Name")
                                     (values :target-type
                                      snapshot-filter-values :member-name
                                      "Values"))
                                    (:shape-name "SnapshotFilter"))

(smithy/sdk/shapes:define-enum snapshot-filter-name
    common-lisp:nil
  (:file-system-id "file-system-id")
  (:volume-id "volume-id"))

(smithy/sdk/shapes:define-type snapshot-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list snapshot-filter-values :member
                               snapshot-filter-value)

(smithy/sdk/shapes:define-list snapshot-filters :member snapshot-filter)

(smithy/sdk/shapes:define-type snapshot-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list snapshot-ids :member snapshot-id)

(smithy/sdk/shapes:define-enum snapshot-lifecycle
    common-lisp:nil
  (:pending "PENDING")
  (:creating "CREATING")
  (:deleting "DELETING")
  (:available "AVAILABLE"))

(smithy/sdk/shapes:define-type snapshot-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error snapshot-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "SnapshotNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type snapshot-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list snapshots :member snapshot)

(smithy/sdk/shapes:define-type source-backup-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error source-backup-unavailable common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (backup-id :target-type backup-id :member-name
                                  "BackupId"))
                                (:shape-name "SourceBackupUnavailable")
                                (:error-code 400))

(smithy/sdk/shapes:define-input start-misconfigured-state-recovery-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId"))
                                (:shape-name
                                 "StartMisconfiguredStateRecoveryRequest"))

(smithy/sdk/shapes:define-output start-misconfigured-state-recovery-response
                                 common-lisp:nil
                                 ((file-system :target-type file-system
                                   :member-name "FileSystem"))
                                 (:shape-name
                                  "StartMisconfiguredStateRecoveryResponse"))

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS")
  (:pending "PENDING")
  (:completed "COMPLETED")
  (:updated-optimizing "UPDATED_OPTIMIZING")
  (:optimizing "OPTIMIZING"))

(smithy/sdk/shapes:define-type storage-capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum storage-type
    common-lisp:nil
  (:ssd "SSD")
  (:hdd "HDD")
  (:intelligent-tiering "INTELLIGENT_TIERING"))

(smithy/sdk/shapes:define-structure storage-virtual-machine common-lisp:nil
                                    ((active-directory-configuration
                                      :target-type
                                      svm-active-directory-configuration
                                      :member-name
                                      "ActiveDirectoryConfiguration")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (endpoints :target-type svm-endpoints
                                      :member-name "Endpoints")
                                     (file-system-id :target-type
                                      file-system-id :member-name
                                      "FileSystemId")
                                     (lifecycle :target-type
                                      storage-virtual-machine-lifecycle
                                      :member-name "Lifecycle")
                                     (name :target-type
                                      storage-virtual-machine-name :member-name
                                      "Name")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (storage-virtual-machine-id :target-type
                                      storage-virtual-machine-id :member-name
                                      "StorageVirtualMachineId")
                                     (subtype :target-type
                                      storage-virtual-machine-subtype
                                      :member-name "Subtype")
                                     (uuid :target-type uuid :member-name
                                      "UUID")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (lifecycle-transition-reason :target-type
                                      lifecycle-transition-reason :member-name
                                      "LifecycleTransitionReason")
                                     (root-volume-security-style :target-type
                                      storage-virtual-machine-root-volume-security-style
                                      :member-name "RootVolumeSecurityStyle"))
                                    (:shape-name "StorageVirtualMachine"))

(smithy/sdk/shapes:define-structure storage-virtual-machine-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      storage-virtual-machine-filter-name
                                      :member-name "Name")
                                     (values :target-type
                                      storage-virtual-machine-filter-values
                                      :member-name "Values"))
                                    (:shape-name "StorageVirtualMachineFilter"))

(smithy/sdk/shapes:define-enum storage-virtual-machine-filter-name
    common-lisp:nil
  (:file-system-id "file-system-id"))

(smithy/sdk/shapes:define-type storage-virtual-machine-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list storage-virtual-machine-filter-values :member
                               storage-virtual-machine-filter-value)

(smithy/sdk/shapes:define-list storage-virtual-machine-filters :member
                               storage-virtual-machine-filter)

(smithy/sdk/shapes:define-type storage-virtual-machine-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list storage-virtual-machine-ids :member
                               storage-virtual-machine-id)

(smithy/sdk/shapes:define-enum storage-virtual-machine-lifecycle
    common-lisp:nil
  (:created "CREATED")
  (:creating "CREATING")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:misconfigured "MISCONFIGURED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-type storage-virtual-machine-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error storage-virtual-machine-not-found
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "StorageVirtualMachineNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum storage-virtual-machine-root-volume-security-style
    common-lisp:nil
  (:unix "UNIX")
  (:ntfs "NTFS")
  (:mixed "MIXED"))

(smithy/sdk/shapes:define-enum storage-virtual-machine-subtype
    common-lisp:nil
  (:default "DEFAULT")
  (:dp-destination "DP_DESTINATION")
  (:sync-destination "SYNC_DESTINATION")
  (:sync-source "SYNC_SOURCE"))

(smithy/sdk/shapes:define-list storage-virtual-machines :member
                               storage-virtual-machine)

(smithy/sdk/shapes:define-list sub-directories-paths :member namespace)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-type succeeded-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure svm-active-directory-configuration
                                    common-lisp:nil
                                    ((net-bios-name :target-type net-bios-alias
                                      :member-name "NetBiosName")
                                     (self-managed-active-directory-configuration
                                      :target-type
                                      self-managed-active-directory-attributes
                                      :member-name
                                      "SelfManagedActiveDirectoryConfiguration"))
                                    (:shape-name
                                     "SvmActiveDirectoryConfiguration"))

(smithy/sdk/shapes:define-structure svm-endpoint common-lisp:nil
                                    ((dnsname :target-type dnsname :member-name
                                      "DNSName")
                                     (ip-addresses :target-type
                                      ontap-endpoint-ip-addresses :member-name
                                      "IpAddresses"))
                                    (:shape-name "SvmEndpoint"))

(smithy/sdk/shapes:define-structure svm-endpoints common-lisp:nil
                                    ((iscsi :target-type svm-endpoint
                                      :member-name "Iscsi")
                                     (management :target-type svm-endpoint
                                      :member-name "Management")
                                     (nfs :target-type svm-endpoint
                                      :member-name "Nfs")
                                     (smb :target-type svm-endpoint
                                      :member-name "Smb"))
                                    (:shape-name "SvmEndpoints"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list task-ids :member task-id)

(smithy/sdk/shapes:define-type throughput-capacity-mbps
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type throughput-capacity-per-hapair
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure tiering-policy common-lisp:nil
                                    ((cooling-period :target-type
                                      cooling-period :member-name
                                      "CoolingPeriod")
                                     (name :target-type tiering-policy-name
                                      :member-name "Name"))
                                    (:shape-name "TieringPolicy"))

(smithy/sdk/shapes:define-enum tiering-policy-name
    common-lisp:nil
  (:snapshot-only "SNAPSHOT_ONLY")
  (:auto "AUTO")
  (:all "ALL")
  (:none "NONE"))

(smithy/sdk/shapes:define-error too-many-access-points common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TooManyAccessPoints")
                                (:error-code 400) (:xml-name "Error"))

(smithy/sdk/shapes:define-type total-constituents
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type total-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type total-transfer-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum unit
    common-lisp:nil
  (:days "DAYS"))

(smithy/sdk/shapes:define-error unsupported-operation common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnsupportedOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-data-repository-association-request
                                common-lisp:nil
                                ((association-id :target-type
                                  data-repository-association-id :required
                                  common-lisp:t :member-name "AssociationId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (imported-file-chunk-size :target-type
                                  megabytes :member-name
                                  "ImportedFileChunkSize")
                                 (s3 :target-type
                                  s3data-repository-configuration :member-name
                                  "S3"))
                                (:shape-name
                                 "UpdateDataRepositoryAssociationRequest"))

(smithy/sdk/shapes:define-output update-data-repository-association-response
                                 common-lisp:nil
                                 ((association :target-type
                                   data-repository-association :member-name
                                   "Association"))
                                 (:shape-name
                                  "UpdateDataRepositoryAssociationResponse"))

(smithy/sdk/shapes:define-structure update-file-cache-lustre-configuration
                                    common-lisp:nil
                                    ((weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime"))
                                    (:shape-name
                                     "UpdateFileCacheLustreConfiguration"))

(smithy/sdk/shapes:define-input update-file-cache-request common-lisp:nil
                                ((file-cache-id :target-type file-cache-id
                                  :required common-lisp:t :member-name
                                  "FileCacheId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (lustre-configuration :target-type
                                  update-file-cache-lustre-configuration
                                  :member-name "LustreConfiguration"))
                                (:shape-name "UpdateFileCacheRequest"))

(smithy/sdk/shapes:define-output update-file-cache-response common-lisp:nil
                                 ((file-cache :target-type file-cache
                                   :member-name "FileCache"))
                                 (:shape-name "UpdateFileCacheResponse"))

(smithy/sdk/shapes:define-structure update-file-system-lustre-configuration
                                    common-lisp:nil
                                    ((weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (auto-import-policy :target-type
                                      auto-import-policy-type :member-name
                                      "AutoImportPolicy")
                                     (data-compression-type :target-type
                                      data-compression-type :member-name
                                      "DataCompressionType")
                                     (log-configuration :target-type
                                      lustre-log-create-configuration
                                      :member-name "LogConfiguration")
                                     (root-squash-configuration :target-type
                                      lustre-root-squash-configuration
                                      :member-name "RootSquashConfiguration")
                                     (per-unit-storage-throughput :target-type
                                      per-unit-storage-throughput :member-name
                                      "PerUnitStorageThroughput")
                                     (metadata-configuration :target-type
                                      update-file-system-lustre-metadata-configuration
                                      :member-name "MetadataConfiguration")
                                     (throughput-capacity :target-type
                                      throughput-capacity-mbps :member-name
                                      "ThroughputCapacity")
                                     (data-read-cache-configuration
                                      :target-type
                                      lustre-read-cache-configuration
                                      :member-name
                                      "DataReadCacheConfiguration"))
                                    (:shape-name
                                     "UpdateFileSystemLustreConfiguration"))

(smithy/sdk/shapes:define-structure
 update-file-system-lustre-metadata-configuration common-lisp:nil
 ((iops :target-type metadata-iops :member-name "Iops")
  (mode :target-type metadata-configuration-mode :member-name "Mode"))
 (:shape-name "UpdateFileSystemLustreMetadataConfiguration"))

(smithy/sdk/shapes:define-structure update-file-system-ontap-configuration
                                    common-lisp:nil
                                    ((automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (fsx-admin-password :target-type
                                      admin-password :member-name
                                      "FsxAdminPassword")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (disk-iops-configuration :target-type
                                      disk-iops-configuration :member-name
                                      "DiskIopsConfiguration")
                                     (throughput-capacity :target-type
                                      megabytes-per-second :member-name
                                      "ThroughputCapacity")
                                     (add-route-table-ids :target-type
                                      route-table-ids :member-name
                                      "AddRouteTableIds")
                                     (remove-route-table-ids :target-type
                                      route-table-ids :member-name
                                      "RemoveRouteTableIds")
                                     (throughput-capacity-per-hapair
                                      :target-type
                                      throughput-capacity-per-hapair
                                      :member-name
                                      "ThroughputCapacityPerHAPair")
                                     (hapairs :target-type hapairs :member-name
                                      "HAPairs"))
                                    (:shape-name
                                     "UpdateFileSystemOntapConfiguration"))

(smithy/sdk/shapes:define-structure update-file-system-open-zfsconfiguration
                                    common-lisp:nil
                                    ((automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (copy-tags-to-volumes :target-type flag
                                      :member-name "CopyTagsToVolumes")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (throughput-capacity :target-type
                                      megabytes-per-second :member-name
                                      "ThroughputCapacity")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (disk-iops-configuration :target-type
                                      disk-iops-configuration :member-name
                                      "DiskIopsConfiguration")
                                     (add-route-table-ids :target-type
                                      route-table-ids :member-name
                                      "AddRouteTableIds")
                                     (remove-route-table-ids :target-type
                                      route-table-ids :member-name
                                      "RemoveRouteTableIds")
                                     (read-cache-configuration :target-type
                                      open-zfsread-cache-configuration
                                      :member-name "ReadCacheConfiguration"))
                                    (:shape-name
                                     "UpdateFileSystemOpenZFSConfiguration"))

(smithy/sdk/shapes:define-input update-file-system-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (storage-capacity :target-type
                                  storage-capacity :member-name
                                  "StorageCapacity")
                                 (windows-configuration :target-type
                                  update-file-system-windows-configuration
                                  :member-name "WindowsConfiguration")
                                 (lustre-configuration :target-type
                                  update-file-system-lustre-configuration
                                  :member-name "LustreConfiguration")
                                 (ontap-configuration :target-type
                                  update-file-system-ontap-configuration
                                  :member-name "OntapConfiguration")
                                 (open-zfsconfiguration :target-type
                                  update-file-system-open-zfsconfiguration
                                  :member-name "OpenZFSConfiguration")
                                 (storage-type :target-type storage-type
                                  :member-name "StorageType")
                                 (file-system-type-version :target-type
                                  file-system-type-version :member-name
                                  "FileSystemTypeVersion"))
                                (:shape-name "UpdateFileSystemRequest"))

(smithy/sdk/shapes:define-output update-file-system-response common-lisp:nil
                                 ((file-system :target-type file-system
                                   :member-name "FileSystem"))
                                 (:shape-name "UpdateFileSystemResponse"))

(smithy/sdk/shapes:define-structure update-file-system-windows-configuration
                                    common-lisp:nil
                                    ((weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (throughput-capacity :target-type
                                      megabytes-per-second :member-name
                                      "ThroughputCapacity")
                                     (self-managed-active-directory-configuration
                                      :target-type
                                      self-managed-active-directory-configuration-updates
                                      :member-name
                                      "SelfManagedActiveDirectoryConfiguration")
                                     (audit-log-configuration :target-type
                                      windows-audit-log-create-configuration
                                      :member-name "AuditLogConfiguration")
                                     (disk-iops-configuration :target-type
                                      disk-iops-configuration :member-name
                                      "DiskIopsConfiguration"))
                                    (:shape-name
                                     "UpdateFileSystemWindowsConfiguration"))

(smithy/sdk/shapes:define-structure update-ontap-volume-configuration
                                    common-lisp:nil
                                    ((junction-path :target-type junction-path
                                      :member-name "JunctionPath")
                                     (security-style :target-type
                                      security-style :member-name
                                      "SecurityStyle")
                                     (size-in-megabytes :target-type
                                      volume-capacity :member-name
                                      "SizeInMegabytes")
                                     (storage-efficiency-enabled :target-type
                                      flag :member-name
                                      "StorageEfficiencyEnabled")
                                     (tiering-policy :target-type
                                      tiering-policy :member-name
                                      "TieringPolicy")
                                     (snapshot-policy :target-type
                                      snapshot-policy :member-name
                                      "SnapshotPolicy")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (snaplock-configuration :target-type
                                      update-snaplock-configuration
                                      :member-name "SnaplockConfiguration")
                                     (size-in-bytes :target-type
                                      volume-capacity-bytes :member-name
                                      "SizeInBytes"))
                                    (:shape-name
                                     "UpdateOntapVolumeConfiguration"))

(smithy/sdk/shapes:define-structure update-open-zfsvolume-configuration
                                    common-lisp:nil
                                    ((storage-capacity-reservation-gi-b
                                      :target-type
                                      integer-no-max-from-negative-one
                                      :member-name
                                      "StorageCapacityReservationGiB")
                                     (storage-capacity-quota-gi-b :target-type
                                      integer-no-max-from-negative-one
                                      :member-name "StorageCapacityQuotaGiB")
                                     (record-size-ki-b :target-type
                                      integer-record-size-ki-b :member-name
                                      "RecordSizeKiB")
                                     (data-compression-type :target-type
                                      open-zfsdata-compression-type
                                      :member-name "DataCompressionType")
                                     (nfs-exports :target-type
                                      open-zfsnfs-exports :member-name
                                      "NfsExports")
                                     (user-and-group-quotas :target-type
                                      open-zfsuser-and-group-quotas
                                      :member-name "UserAndGroupQuotas")
                                     (read-only :target-type read-only
                                      :member-name "ReadOnly"))
                                    (:shape-name
                                     "UpdateOpenZFSVolumeConfiguration"))

(smithy/sdk/shapes:define-enum update-open-zfsvolume-option
    common-lisp:nil
  (:delete-intermediate-snapshots "DELETE_INTERMEDIATE_SNAPSHOTS")
  (:delete-cloned-volumes "DELETE_CLONED_VOLUMES")
  (:delete-intermediate-data "DELETE_INTERMEDIATE_DATA"))

(smithy/sdk/shapes:define-list update-open-zfsvolume-options :member
                               update-open-zfsvolume-option)

(smithy/sdk/shapes:define-input update-shared-vpc-configuration-request
                                common-lisp:nil
                                ((enable-fsx-route-table-updates-from-participant-accounts
                                  :target-type verbose-flag :member-name
                                  "EnableFsxRouteTableUpdatesFromParticipantAccounts")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name
                                 "UpdateSharedVpcConfigurationRequest"))

(smithy/sdk/shapes:define-output update-shared-vpc-configuration-response
                                 common-lisp:nil
                                 ((enable-fsx-route-table-updates-from-participant-accounts
                                   :target-type verbose-flag :member-name
                                   "EnableFsxRouteTableUpdatesFromParticipantAccounts"))
                                 (:shape-name
                                  "UpdateSharedVpcConfigurationResponse"))

(smithy/sdk/shapes:define-structure update-snaplock-configuration
                                    common-lisp:nil
                                    ((audit-log-volume :target-type flag
                                      :member-name "AuditLogVolume")
                                     (autocommit-period :target-type
                                      autocommit-period :member-name
                                      "AutocommitPeriod")
                                     (privileged-delete :target-type
                                      privileged-delete :member-name
                                      "PrivilegedDelete")
                                     (retention-period :target-type
                                      snaplock-retention-period :member-name
                                      "RetentionPeriod")
                                     (volume-append-mode-enabled :target-type
                                      flag :member-name
                                      "VolumeAppendModeEnabled"))
                                    (:shape-name "UpdateSnaplockConfiguration"))

(smithy/sdk/shapes:define-input update-snapshot-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (name :target-type snapshot-name :required
                                  common-lisp:t :member-name "Name")
                                 (snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SnapshotId"))
                                (:shape-name "UpdateSnapshotRequest"))

(smithy/sdk/shapes:define-output update-snapshot-response common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "Snapshot"))
                                 (:shape-name "UpdateSnapshotResponse"))

(smithy/sdk/shapes:define-input update-storage-virtual-machine-request
                                common-lisp:nil
                                ((active-directory-configuration :target-type
                                  update-svm-active-directory-configuration
                                  :member-name "ActiveDirectoryConfiguration")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (storage-virtual-machine-id :target-type
                                  storage-virtual-machine-id :required
                                  common-lisp:t :member-name
                                  "StorageVirtualMachineId")
                                 (svm-admin-password :target-type
                                  admin-password :member-name
                                  "SvmAdminPassword"))
                                (:shape-name
                                 "UpdateStorageVirtualMachineRequest"))

(smithy/sdk/shapes:define-output update-storage-virtual-machine-response
                                 common-lisp:nil
                                 ((storage-virtual-machine :target-type
                                   storage-virtual-machine :member-name
                                   "StorageVirtualMachine"))
                                 (:shape-name
                                  "UpdateStorageVirtualMachineResponse"))

(smithy/sdk/shapes:define-structure update-svm-active-directory-configuration
                                    common-lisp:nil
                                    ((self-managed-active-directory-configuration
                                      :target-type
                                      self-managed-active-directory-configuration-updates
                                      :member-name
                                      "SelfManagedActiveDirectoryConfiguration")
                                     (net-bios-name :target-type net-bios-alias
                                      :member-name "NetBiosName"))
                                    (:shape-name
                                     "UpdateSvmActiveDirectoryConfiguration"))

(smithy/sdk/shapes:define-input update-volume-request common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (volume-id :target-type volume-id :required
                                  common-lisp:t :member-name "VolumeId")
                                 (ontap-configuration :target-type
                                  update-ontap-volume-configuration
                                  :member-name "OntapConfiguration")
                                 (name :target-type volume-name :member-name
                                  "Name")
                                 (open-zfsconfiguration :target-type
                                  update-open-zfsvolume-configuration
                                  :member-name "OpenZFSConfiguration"))
                                (:shape-name "UpdateVolumeRequest"))

(smithy/sdk/shapes:define-output update-volume-response common-lisp:nil
                                 ((volume :target-type volume :member-name
                                   "Volume"))
                                 (:shape-name "UpdateVolumeResponse"))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type verbose-flag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure volume common-lisp:nil
                                    ((creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (file-system-id :target-type
                                      file-system-id :member-name
                                      "FileSystemId")
                                     (lifecycle :target-type volume-lifecycle
                                      :member-name "Lifecycle")
                                     (name :target-type volume-name
                                      :member-name "Name")
                                     (ontap-configuration :target-type
                                      ontap-volume-configuration :member-name
                                      "OntapConfiguration")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (volume-id :target-type volume-id
                                      :member-name "VolumeId")
                                     (volume-type :target-type volume-type
                                      :member-name "VolumeType")
                                     (lifecycle-transition-reason :target-type
                                      lifecycle-transition-reason :member-name
                                      "LifecycleTransitionReason")
                                     (administrative-actions :target-type
                                      administrative-actions :member-name
                                      "AdministrativeActions")
                                     (open-zfsconfiguration :target-type
                                      open-zfsvolume-configuration :member-name
                                      "OpenZFSConfiguration"))
                                    (:shape-name "Volume"))

(smithy/sdk/shapes:define-type volume-capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type volume-capacity-bytes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure volume-filter common-lisp:nil
                                    ((name :target-type volume-filter-name
                                      :member-name "Name")
                                     (values :target-type volume-filter-values
                                      :member-name "Values"))
                                    (:shape-name "VolumeFilter"))

(smithy/sdk/shapes:define-enum volume-filter-name
    common-lisp:nil
  (:file-system-id "file-system-id")
  (:storage-virtual-machine-id "storage-virtual-machine-id"))

(smithy/sdk/shapes:define-type volume-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list volume-filter-values :member volume-filter-value)

(smithy/sdk/shapes:define-list volume-filters :member volume-filter)

(smithy/sdk/shapes:define-type volume-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list volume-ids :member volume-id)

(smithy/sdk/shapes:define-enum volume-lifecycle
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:misconfigured "MISCONFIGURED")
  (:pending "PENDING")
  (:available "AVAILABLE"))

(smithy/sdk/shapes:define-type volume-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error volume-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "VolumeNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type volume-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum volume-style
    common-lisp:nil
  (:flexvol "FLEXVOL")
  (:flexgroup "FLEXGROUP"))

(smithy/sdk/shapes:define-enum volume-type
    common-lisp:nil
  (:ontap "ONTAP")
  (:openzfs "OPENZFS"))

(smithy/sdk/shapes:define-list volumes :member volume)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type weekly-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum windows-access-audit-log-level
    common-lisp:nil
  (:disabled "DISABLED")
  (:success-only "SUCCESS_ONLY")
  (:failure-only "FAILURE_ONLY")
  (:success-and-failure "SUCCESS_AND_FAILURE"))

(smithy/sdk/shapes:define-structure windows-audit-log-configuration
                                    common-lisp:nil
                                    ((file-access-audit-log-level :target-type
                                      windows-access-audit-log-level :required
                                      common-lisp:t :member-name
                                      "FileAccessAuditLogLevel")
                                     (file-share-access-audit-log-level
                                      :target-type
                                      windows-access-audit-log-level :required
                                      common-lisp:t :member-name
                                      "FileShareAccessAuditLogLevel")
                                     (audit-log-destination :target-type
                                      general-arn :member-name
                                      "AuditLogDestination"))
                                    (:shape-name
                                     "WindowsAuditLogConfiguration"))

(smithy/sdk/shapes:define-structure windows-audit-log-create-configuration
                                    common-lisp:nil
                                    ((file-access-audit-log-level :target-type
                                      windows-access-audit-log-level :required
                                      common-lisp:t :member-name
                                      "FileAccessAuditLogLevel")
                                     (file-share-access-audit-log-level
                                      :target-type
                                      windows-access-audit-log-level :required
                                      common-lisp:t :member-name
                                      "FileShareAccessAuditLogLevel")
                                     (audit-log-destination :target-type
                                      general-arn :member-name
                                      "AuditLogDestination"))
                                    (:shape-name
                                     "WindowsAuditLogCreateConfiguration"))

(smithy/sdk/shapes:define-enum windows-deployment-type
    common-lisp:nil
  (:multi-az-1 "MULTI_AZ_1")
  (:single-az-1 "SINGLE_AZ_1")
  (:single-az-2 "SINGLE_AZ_2"))

(smithy/sdk/shapes:define-structure windows-file-system-configuration
                                    common-lisp:nil
                                    ((active-directory-id :target-type
                                      directory-id :member-name
                                      "ActiveDirectoryId")
                                     (self-managed-active-directory-configuration
                                      :target-type
                                      self-managed-active-directory-attributes
                                      :member-name
                                      "SelfManagedActiveDirectoryConfiguration")
                                     (deployment-type :target-type
                                      windows-deployment-type :member-name
                                      "DeploymentType")
                                     (remote-administration-endpoint
                                      :target-type dnsname :member-name
                                      "RemoteAdministrationEndpoint")
                                     (preferred-subnet-id :target-type
                                      subnet-id :member-name
                                      "PreferredSubnetId")
                                     (preferred-file-server-ip :target-type
                                      ip-address :member-name
                                      "PreferredFileServerIp")
                                     (throughput-capacity :target-type
                                      megabytes-per-second :member-name
                                      "ThroughputCapacity")
                                     (maintenance-operations-in-progress
                                      :target-type
                                      file-system-maintenance-operations
                                      :member-name
                                      "MaintenanceOperationsInProgress")
                                     (weekly-maintenance-start-time
                                      :target-type weekly-time :member-name
                                      "WeeklyMaintenanceStartTime")
                                     (daily-automatic-backup-start-time
                                      :target-type daily-time :member-name
                                      "DailyAutomaticBackupStartTime")
                                     (automatic-backup-retention-days
                                      :target-type
                                      automatic-backup-retention-days
                                      :member-name
                                      "AutomaticBackupRetentionDays")
                                     (copy-tags-to-backups :target-type flag
                                      :member-name "CopyTagsToBackups")
                                     (aliases :target-type aliases :member-name
                                      "Aliases")
                                     (audit-log-configuration :target-type
                                      windows-audit-log-configuration
                                      :member-name "AuditLogConfiguration")
                                     (disk-iops-configuration :target-type
                                      disk-iops-configuration :member-name
                                      "DiskIopsConfiguration"))
                                    (:shape-name
                                     "WindowsFileSystemConfiguration"))

(smithy/sdk/operation:define-operation associate-file-system-aliases
                                       :shape-name "AssociateFileSystemAliases"
                                       :input
                                       associate-file-system-aliases-request
                                       :output
                                       associate-file-system-aliases-response
                                       :errors
                                       (bad-request file-system-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation cancel-data-repository-task :shape-name
                                       "CancelDataRepositoryTask" :input
                                       cancel-data-repository-task-request
                                       :output
                                       cancel-data-repository-task-response
                                       :errors
                                       (bad-request data-repository-task-ended
                                        data-repository-task-not-found
                                        internal-server-error
                                        unsupported-operation))

(smithy/sdk/operation:define-operation copy-backup :shape-name "CopyBackup"
                                       :input copy-backup-request :output
                                       copy-backup-response :errors
                                       (backup-not-found bad-request
                                        incompatible-parameter-error
                                        incompatible-region-for-multi-az
                                        internal-server-error
                                        invalid-destination-kms-key
                                        invalid-region invalid-source-kms-key
                                        service-limit-exceeded
                                        source-backup-unavailable
                                        unsupported-operation))

(smithy/sdk/operation:define-operation copy-snapshot-and-update-volume
                                       :shape-name
                                       "CopySnapshotAndUpdateVolume" :input
                                       copy-snapshot-and-update-volume-request
                                       :output
                                       copy-snapshot-and-update-volume-response
                                       :errors
                                       (bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded))

(smithy/sdk/operation:define-operation create-and-attach-s3access-point
                                       :shape-name
                                       "CreateAndAttachS3AccessPoint" :input
                                       create-and-attach-s3access-point-request
                                       :output
                                       create-and-attach-s3access-point-response
                                       :errors
                                       (access-point-already-owned-by-you
                                        bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        invalid-access-point invalid-request
                                        too-many-access-points
                                        unsupported-operation volume-not-found))

(smithy/sdk/operation:define-operation create-backup :shape-name "CreateBackup"
                                       :input create-backup-request :output
                                       create-backup-response :errors
                                       (backup-in-progress bad-request
                                        file-system-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded
                                        unsupported-operation volume-not-found))

(smithy/sdk/operation:define-operation create-data-repository-association
                                       :shape-name
                                       "CreateDataRepositoryAssociation" :input
                                       create-data-repository-association-request
                                       :output
                                       create-data-repository-association-response
                                       :errors
                                       (bad-request file-system-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded
                                        unsupported-operation))

(smithy/sdk/operation:define-operation create-data-repository-task :shape-name
                                       "CreateDataRepositoryTask" :input
                                       create-data-repository-task-request
                                       :output
                                       create-data-repository-task-response
                                       :errors
                                       (bad-request
                                        data-repository-task-executing
                                        file-system-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded
                                        unsupported-operation))

(smithy/sdk/operation:define-operation create-file-cache :shape-name
                                       "CreateFileCache" :input
                                       create-file-cache-request :output
                                       create-file-cache-response :errors
                                       (bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        invalid-network-settings
                                        invalid-per-unit-storage-throughput
                                        missing-file-cache-configuration
                                        service-limit-exceeded))

(smithy/sdk/operation:define-operation create-file-system :shape-name
                                       "CreateFileSystem" :input
                                       create-file-system-request :output
                                       create-file-system-response :errors
                                       (active-directory-error bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        invalid-export-path invalid-import-path
                                        invalid-network-settings
                                        invalid-per-unit-storage-throughput
                                        missing-file-system-configuration
                                        service-limit-exceeded))

(smithy/sdk/operation:define-operation create-file-system-from-backup
                                       :shape-name "CreateFileSystemFromBackup"
                                       :input
                                       create-file-system-from-backup-request
                                       :output
                                       create-file-system-from-backup-response
                                       :errors
                                       (active-directory-error backup-not-found
                                        bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        invalid-network-settings
                                        invalid-per-unit-storage-throughput
                                        missing-file-system-configuration
                                        service-limit-exceeded))

(smithy/sdk/operation:define-operation create-snapshot :shape-name
                                       "CreateSnapshot" :input
                                       create-snapshot-request :output
                                       create-snapshot-response :errors
                                       (bad-request internal-server-error
                                        service-limit-exceeded
                                        volume-not-found))

(smithy/sdk/operation:define-operation create-storage-virtual-machine
                                       :shape-name
                                       "CreateStorageVirtualMachine" :input
                                       create-storage-virtual-machine-request
                                       :output
                                       create-storage-virtual-machine-response
                                       :errors
                                       (active-directory-error bad-request
                                        file-system-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded
                                        unsupported-operation))

(smithy/sdk/operation:define-operation create-volume :shape-name "CreateVolume"
                                       :input create-volume-request :output
                                       create-volume-response :errors
                                       (bad-request file-system-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        missing-volume-configuration
                                        service-limit-exceeded
                                        storage-virtual-machine-not-found
                                        unsupported-operation))

(smithy/sdk/operation:define-operation create-volume-from-backup :shape-name
                                       "CreateVolumeFromBackup" :input
                                       create-volume-from-backup-request
                                       :output
                                       create-volume-from-backup-response
                                       :errors
                                       (backup-not-found bad-request
                                        file-system-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        missing-volume-configuration
                                        service-limit-exceeded
                                        storage-virtual-machine-not-found))

(smithy/sdk/operation:define-operation delete-backup :shape-name "DeleteBackup"
                                       :input delete-backup-request :output
                                       delete-backup-response :errors
                                       (backup-being-copied backup-in-progress
                                        backup-not-found backup-restoring
                                        bad-request
                                        incompatible-parameter-error
                                        internal-server-error))

(smithy/sdk/operation:define-operation delete-data-repository-association
                                       :shape-name
                                       "DeleteDataRepositoryAssociation" :input
                                       delete-data-repository-association-request
                                       :output
                                       delete-data-repository-association-response
                                       :errors
                                       (bad-request
                                        data-repository-association-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded))

(smithy/sdk/operation:define-operation delete-file-cache :shape-name
                                       "DeleteFileCache" :input
                                       delete-file-cache-request :output
                                       delete-file-cache-response :errors
                                       (bad-request file-cache-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded))

(smithy/sdk/operation:define-operation delete-file-system :shape-name
                                       "DeleteFileSystem" :input
                                       delete-file-system-request :output
                                       delete-file-system-response :errors
                                       (bad-request file-system-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded))

(smithy/sdk/operation:define-operation delete-snapshot :shape-name
                                       "DeleteSnapshot" :input
                                       delete-snapshot-request :output
                                       delete-snapshot-response :errors
                                       (bad-request internal-server-error
                                        snapshot-not-found))

(smithy/sdk/operation:define-operation delete-storage-virtual-machine
                                       :shape-name
                                       "DeleteStorageVirtualMachine" :input
                                       delete-storage-virtual-machine-request
                                       :output
                                       delete-storage-virtual-machine-response
                                       :errors
                                       (bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        storage-virtual-machine-not-found))

(smithy/sdk/operation:define-operation delete-volume :shape-name "DeleteVolume"
                                       :input delete-volume-request :output
                                       delete-volume-response :errors
                                       (bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded
                                        volume-not-found))

(smithy/sdk/operation:define-operation describe-backups :shape-name
                                       "DescribeBackups" :input
                                       describe-backups-request :output
                                       describe-backups-response :errors
                                       (backup-not-found bad-request
                                        file-system-not-found
                                        internal-server-error volume-not-found))

(smithy/sdk/operation:define-operation describe-data-repository-associations
                                       :shape-name
                                       "DescribeDataRepositoryAssociations"
                                       :input
                                       describe-data-repository-associations-request
                                       :output
                                       describe-data-repository-associations-response
                                       :errors
                                       (bad-request
                                        data-repository-association-not-found
                                        file-system-not-found
                                        internal-server-error
                                        invalid-data-repository-type))

(smithy/sdk/operation:define-operation describe-data-repository-tasks
                                       :shape-name
                                       "DescribeDataRepositoryTasks" :input
                                       describe-data-repository-tasks-request
                                       :output
                                       describe-data-repository-tasks-response
                                       :errors
                                       (bad-request
                                        data-repository-task-not-found
                                        file-system-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-file-caches :shape-name
                                       "DescribeFileCaches" :input
                                       describe-file-caches-request :output
                                       describe-file-caches-response :errors
                                       (bad-request file-cache-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-file-system-aliases :shape-name
                                       "DescribeFileSystemAliases" :input
                                       describe-file-system-aliases-request
                                       :output
                                       describe-file-system-aliases-response
                                       :errors
                                       (bad-request file-system-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-file-systems :shape-name
                                       "DescribeFileSystems" :input
                                       describe-file-systems-request :output
                                       describe-file-systems-response :errors
                                       (bad-request file-system-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation describe-s3access-point-attachments
                                       :shape-name
                                       "DescribeS3AccessPointAttachments"
                                       :input
                                       describe-s3access-point-attachments-request
                                       :output
                                       describe-s3access-point-attachments-response
                                       :errors
                                       (bad-request internal-server-error
                                        s3access-point-attachment-not-found
                                        unsupported-operation))

(smithy/sdk/operation:define-operation describe-shared-vpc-configuration
                                       :shape-name
                                       "DescribeSharedVpcConfiguration" :input
                                       describe-shared-vpc-configuration-request
                                       :output
                                       describe-shared-vpc-configuration-response
                                       :errors
                                       (bad-request internal-server-error))

(smithy/sdk/operation:define-operation describe-snapshots :shape-name
                                       "DescribeSnapshots" :input
                                       describe-snapshots-request :output
                                       describe-snapshots-response :errors
                                       (bad-request internal-server-error
                                        snapshot-not-found))

(smithy/sdk/operation:define-operation describe-storage-virtual-machines
                                       :shape-name
                                       "DescribeStorageVirtualMachines" :input
                                       describe-storage-virtual-machines-request
                                       :output
                                       describe-storage-virtual-machines-response
                                       :errors
                                       (bad-request internal-server-error
                                        storage-virtual-machine-not-found))

(smithy/sdk/operation:define-operation describe-volumes :shape-name
                                       "DescribeVolumes" :input
                                       describe-volumes-request :output
                                       describe-volumes-response :errors
                                       (bad-request internal-server-error
                                        volume-not-found))

(smithy/sdk/operation:define-operation detach-and-delete-s3access-point
                                       :shape-name
                                       "DetachAndDeleteS3AccessPoint" :input
                                       detach-and-delete-s3access-point-request
                                       :output
                                       detach-and-delete-s3access-point-response
                                       :errors
                                       (bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        s3access-point-attachment-not-found
                                        unsupported-operation))

(smithy/sdk/operation:define-operation disassociate-file-system-aliases
                                       :shape-name
                                       "DisassociateFileSystemAliases" :input
                                       disassociate-file-system-aliases-request
                                       :output
                                       disassociate-file-system-aliases-response
                                       :errors
                                       (bad-request file-system-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request internal-server-error
                                        not-service-resource-error
                                        resource-does-not-support-tagging
                                        resource-not-found))

(smithy/sdk/operation:define-operation release-file-system-nfs-v3locks
                                       :shape-name
                                       "ReleaseFileSystemNfsV3Locks" :input
                                       release-file-system-nfs-v3locks-request
                                       :output
                                       release-file-system-nfs-v3locks-response
                                       :errors
                                       (bad-request file-system-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded))

(smithy/sdk/operation:define-operation restore-volume-from-snapshot :shape-name
                                       "RestoreVolumeFromSnapshot" :input
                                       restore-volume-from-snapshot-request
                                       :output
                                       restore-volume-from-snapshot-response
                                       :errors
                                       (bad-request internal-server-error
                                        volume-not-found))

(smithy/sdk/operation:define-operation start-misconfigured-state-recovery
                                       :shape-name
                                       "StartMisconfiguredStateRecovery" :input
                                       start-misconfigured-state-recovery-request
                                       :output
                                       start-misconfigured-state-recovery-response
                                       :errors
                                       (bad-request file-system-not-found
                                        internal-server-error))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request internal-server-error
                                        not-service-resource-error
                                        resource-does-not-support-tagging
                                        resource-not-found))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request internal-server-error
                                        not-service-resource-error
                                        resource-does-not-support-tagging
                                        resource-not-found))

(smithy/sdk/operation:define-operation update-data-repository-association
                                       :shape-name
                                       "UpdateDataRepositoryAssociation" :input
                                       update-data-repository-association-request
                                       :output
                                       update-data-repository-association-response
                                       :errors
                                       (bad-request
                                        data-repository-association-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        service-limit-exceeded))

(smithy/sdk/operation:define-operation update-file-cache :shape-name
                                       "UpdateFileCache" :input
                                       update-file-cache-request :output
                                       update-file-cache-response :errors
                                       (bad-request file-cache-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        missing-file-cache-configuration
                                        service-limit-exceeded
                                        unsupported-operation))

(smithy/sdk/operation:define-operation update-file-system :shape-name
                                       "UpdateFileSystem" :input
                                       update-file-system-request :output
                                       update-file-system-response :errors
                                       (bad-request file-system-not-found
                                        incompatible-parameter-error
                                        internal-server-error
                                        invalid-network-settings
                                        missing-file-system-configuration
                                        service-limit-exceeded
                                        unsupported-operation))

(smithy/sdk/operation:define-operation update-shared-vpc-configuration
                                       :shape-name
                                       "UpdateSharedVpcConfiguration" :input
                                       update-shared-vpc-configuration-request
                                       :output
                                       update-shared-vpc-configuration-response
                                       :errors
                                       (bad-request
                                        incompatible-parameter-error
                                        internal-server-error))

(smithy/sdk/operation:define-operation update-snapshot :shape-name
                                       "UpdateSnapshot" :input
                                       update-snapshot-request :output
                                       update-snapshot-response :errors
                                       (bad-request internal-server-error
                                        snapshot-not-found))

(smithy/sdk/operation:define-operation update-storage-virtual-machine
                                       :shape-name
                                       "UpdateStorageVirtualMachine" :input
                                       update-storage-virtual-machine-request
                                       :output
                                       update-storage-virtual-machine-response
                                       :errors
                                       (bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        storage-virtual-machine-not-found
                                        unsupported-operation))

(smithy/sdk/operation:define-operation update-volume :shape-name "UpdateVolume"
                                       :input update-volume-request :output
                                       update-volume-response :errors
                                       (bad-request
                                        incompatible-parameter-error
                                        internal-server-error
                                        missing-volume-configuration
                                        volume-not-found))
