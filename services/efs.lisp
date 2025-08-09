(uiop/package:define-package #:pira/efs (:use)
                             (:export #:access-point-arn
                              #:access-point-description
                              #:access-point-descriptions #:access-point-id
                              #:availability-zone-id #:availability-zone-name
                              #:aws-account-id #:backup #:backup-policy
                              #:backup-policy-description
                              #:bypass-policy-lockout-safety-check
                              #:client-token #:create-access-point
                              #:create-file-system #:create-mount-target
                              #:create-replication-configuration #:create-tags
                              #:creation-info #:creation-token
                              #:delete-access-point #:delete-file-system
                              #:delete-file-system-policy #:delete-mount-target
                              #:delete-replication-configuration #:delete-tags
                              #:deletion-mode #:describe-access-points
                              #:describe-account-preferences
                              #:describe-backup-policy
                              #:describe-file-system-policy
                              #:describe-file-systems
                              #:describe-lifecycle-configuration
                              #:describe-mount-target-security-groups
                              #:describe-mount-targets
                              #:describe-replication-configurations
                              #:describe-tags #:destination
                              #:destination-to-create #:destinations
                              #:destinations-to-create #:encrypted #:error-code
                              #:error-message #:file-system-arn
                              #:file-system-description
                              #:file-system-descriptions #:file-system-id
                              #:file-system-nullable-size-value
                              #:file-system-policy-description
                              #:file-system-protection-description
                              #:file-system-size #:file-system-size-value #:gid
                              #:ip-address #:ip-address-type #:ipv6address
                              #:kms-key-id #:life-cycle-state
                              #:lifecycle-configuration-description
                              #:lifecycle-policies #:lifecycle-policy
                              #:list-tags-for-resource
                              #:magnolio-apiservice-v20150201 #:marker
                              #:max-items #:max-results
                              #:modify-mount-target-security-groups
                              #:mount-target-count #:mount-target-description
                              #:mount-target-descriptions #:mount-target-id
                              #:name #:network-interface-id #:owner-gid
                              #:owner-uid #:path #:performance-mode
                              #:permissions #:policy #:posix-user
                              #:provisioned-throughput-in-mibps
                              #:put-account-preferences #:put-backup-policy
                              #:put-file-system-policy
                              #:put-lifecycle-configuration #:region-name
                              #:replication-configuration-description
                              #:replication-configuration-descriptions
                              #:replication-overwrite-protection
                              #:replication-status #:resource #:resource-id
                              #:resource-id-preference #:resource-id-type
                              #:resources #:role-arn #:root-directory
                              #:secondary-gids #:security-group
                              #:security-groups #:status #:status-message
                              #:subnet-id #:tag #:tag-key #:tag-keys
                              #:tag-resource #:tag-value #:tags
                              #:throughput-mode #:timestamp #:token
                              #:transition-to-archive-rules
                              #:transition-to-iarules
                              #:transition-to-primary-storage-class-rules #:uid
                              #:untag-resource #:update-file-system
                              #:update-file-system-protection #:vpc-id))
(common-lisp:in-package #:pira/efs)

(smithy/sdk/service:define-service magnolio-apiservice-v20150201 :shape-name
                                   "MagnolioAPIService_v20150201" :version
                                   "2015-02-01" :title
                                   "Amazon Elastic File System" :traits
                                   '(("aws.api#service" ("sdkId" . "EFS")
                                      ("arnNamespace" . "elasticfilesystem")
                                      ("cloudFormationName" . "EFS")
                                      ("cloudTrailEventSource"
                                       . "elasticfilesystem.amazonaws.com")
                                      ("docId"
                                       . "elasticfilesystem-2015-02-01")
                                      ("endpointPrefix" . "elasticfilesystem"))
                                     ("aws.auth#sigv4"
                                      ("name" . "elasticfilesystem"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-point-already-exists common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message")
                                 (access-point-id :target-type access-point-id
                                  :required common-lisp:t :member-name
                                  "AccessPointId"))
                                (:shape-name "AccessPointAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-type access-point-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-point-description common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (name :target-type name :member-name
                                      "Name")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (access-point-id :target-type
                                      access-point-id :member-name
                                      "AccessPointId")
                                     (access-point-arn :target-type
                                      access-point-arn :member-name
                                      "AccessPointArn")
                                     (file-system-id :target-type
                                      file-system-id :member-name
                                      "FileSystemId")
                                     (posix-user :target-type posix-user
                                      :member-name "PosixUser")
                                     (root-directory :target-type
                                      root-directory :member-name
                                      "RootDirectory")
                                     (owner-id :target-type aws-account-id
                                      :member-name "OwnerId")
                                     (life-cycle-state :target-type
                                      life-cycle-state :member-name
                                      "LifeCycleState"))
                                    (:shape-name "AccessPointDescription"))

(smithy/sdk/shapes:define-list access-point-descriptions :member
                               access-point-description)

(smithy/sdk/shapes:define-type access-point-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-point-limit-exceeded common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessPointLimitExceeded")
                                (:error-code 403))

(smithy/sdk/shapes:define-error access-point-not-found common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessPointNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-type availability-zone-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type availability-zone-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error availability-zones-mismatch common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AvailabilityZonesMismatch")
                                (:error-code 400))

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type backup smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure backup-policy common-lisp:nil
                                    ((status :target-type status :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name "BackupPolicy"))

(smithy/sdk/shapes:define-structure backup-policy-description common-lisp:nil
                                    ((backup-policy :target-type backup-policy
                                      :member-name "BackupPolicy"))
                                    (:shape-name "BackupPolicyDescription"))

(smithy/sdk/shapes:define-error bad-request common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "BadRequest") (:error-code 400))

(smithy/sdk/shapes:define-type bypass-policy-lockout-safety-check
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-access-point-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (tags :target-type tags :member-name "Tags")
                                 (file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (posix-user :target-type posix-user
                                  :member-name "PosixUser")
                                 (root-directory :target-type root-directory
                                  :member-name "RootDirectory"))
                                (:shape-name "CreateAccessPointRequest"))

(smithy/sdk/shapes:define-input create-file-system-request common-lisp:nil
                                ((creation-token :target-type creation-token
                                  :required common-lisp:t :member-name
                                  "CreationToken")
                                 (performance-mode :target-type
                                  performance-mode :member-name
                                  "PerformanceMode")
                                 (encrypted :target-type encrypted :member-name
                                  "Encrypted")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (throughput-mode :target-type throughput-mode
                                  :member-name "ThroughputMode")
                                 (provisioned-throughput-in-mibps :target-type
                                  provisioned-throughput-in-mibps :member-name
                                  "ProvisionedThroughputInMibps")
                                 (availability-zone-name :target-type
                                  availability-zone-name :member-name
                                  "AvailabilityZoneName")
                                 (backup :target-type backup :member-name
                                  "Backup")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateFileSystemRequest"))

(smithy/sdk/shapes:define-input create-mount-target-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId")
                                 (subnet-id :target-type subnet-id :required
                                  common-lisp:t :member-name "SubnetId")
                                 (ip-address :target-type ip-address
                                  :member-name "IpAddress")
                                 (ipv6address :target-type ipv6address
                                  :member-name "Ipv6Address")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType")
                                 (security-groups :target-type security-groups
                                  :member-name "SecurityGroups"))
                                (:shape-name "CreateMountTargetRequest"))

(smithy/sdk/shapes:define-input create-replication-configuration-request
                                common-lisp:nil
                                ((source-file-system-id :target-type
                                  file-system-id :required common-lisp:t
                                  :member-name "SourceFileSystemId" :http-label
                                  common-lisp:t)
                                 (destinations :target-type
                                  destinations-to-create :required
                                  common-lisp:t :member-name "Destinations"))
                                (:shape-name
                                 "CreateReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-input create-tags-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "CreateTagsRequest"))

(smithy/sdk/shapes:define-structure creation-info common-lisp:nil
                                    ((owner-uid :target-type owner-uid
                                      :required common-lisp:t :member-name
                                      "OwnerUid")
                                     (owner-gid :target-type owner-gid
                                      :required common-lisp:t :member-name
                                      "OwnerGid")
                                     (permissions :target-type permissions
                                      :required common-lisp:t :member-name
                                      "Permissions"))
                                    (:shape-name "CreationInfo"))

(smithy/sdk/shapes:define-type creation-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-access-point-request common-lisp:nil
                                ((access-point-id :target-type access-point-id
                                  :required common-lisp:t :member-name
                                  "AccessPointId" :http-label common-lisp:t))
                                (:shape-name "DeleteAccessPointRequest"))

(smithy/sdk/shapes:define-input delete-file-system-policy-request
                                common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t))
                                (:shape-name "DeleteFileSystemPolicyRequest"))

(smithy/sdk/shapes:define-input delete-file-system-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t))
                                (:shape-name "DeleteFileSystemRequest"))

(smithy/sdk/shapes:define-input delete-mount-target-request common-lisp:nil
                                ((mount-target-id :target-type mount-target-id
                                  :required common-lisp:t :member-name
                                  "MountTargetId" :http-label common-lisp:t))
                                (:shape-name "DeleteMountTargetRequest"))

(smithy/sdk/shapes:define-input delete-replication-configuration-request
                                common-lisp:nil
                                ((source-file-system-id :target-type
                                  file-system-id :required common-lisp:t
                                  :member-name "SourceFileSystemId" :http-label
                                  common-lisp:t)
                                 (deletion-mode :target-type deletion-mode
                                  :member-name "DeletionMode" :http-query
                                  "deletionMode"))
                                (:shape-name
                                 "DeleteReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-tags-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "DeleteTagsRequest"))

(smithy/sdk/shapes:define-enum deletion-mode
    common-lisp:nil
  (:all-configurations "ALL_CONFIGURATIONS")
  (:local-configuration-only "LOCAL_CONFIGURATION_ONLY"))

(smithy/sdk/shapes:define-error dependency-timeout common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DependencyTimeout")
                                (:error-code 504))

(smithy/sdk/shapes:define-input describe-access-points-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (access-point-id :target-type access-point-id
                                  :member-name "AccessPointId" :http-query
                                  "AccessPointId")
                                 (file-system-id :target-type file-system-id
                                  :member-name "FileSystemId" :http-query
                                  "FileSystemId"))
                                (:shape-name "DescribeAccessPointsRequest"))

(smithy/sdk/shapes:define-output describe-access-points-response
                                 common-lisp:nil
                                 ((access-points :target-type
                                   access-point-descriptions :member-name
                                   "AccessPoints")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeAccessPointsResponse"))

(smithy/sdk/shapes:define-input describe-account-preferences-request
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeAccountPreferencesRequest"))

(smithy/sdk/shapes:define-output describe-account-preferences-response
                                 common-lisp:nil
                                 ((resource-id-preference :target-type
                                   resource-id-preference :member-name
                                   "ResourceIdPreference")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeAccountPreferencesResponse"))

(smithy/sdk/shapes:define-input describe-backup-policy-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t))
                                (:shape-name "DescribeBackupPolicyRequest"))

(smithy/sdk/shapes:define-input describe-file-system-policy-request
                                common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t))
                                (:shape-name "DescribeFileSystemPolicyRequest"))

(smithy/sdk/shapes:define-input describe-file-systems-request common-lisp:nil
                                ((max-items :target-type max-items :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (marker :target-type marker :member-name
                                  "Marker" :http-query "Marker")
                                 (creation-token :target-type creation-token
                                  :member-name "CreationToken" :http-query
                                  "CreationToken")
                                 (file-system-id :target-type file-system-id
                                  :member-name "FileSystemId" :http-query
                                  "FileSystemId"))
                                (:shape-name "DescribeFileSystemsRequest"))

(smithy/sdk/shapes:define-output describe-file-systems-response common-lisp:nil
                                 ((marker :target-type marker :member-name
                                   "Marker")
                                  (file-systems :target-type
                                   file-system-descriptions :member-name
                                   "FileSystems")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeFileSystemsResponse"))

(smithy/sdk/shapes:define-input describe-lifecycle-configuration-request
                                common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeLifecycleConfigurationRequest"))

(smithy/sdk/shapes:define-input describe-mount-target-security-groups-request
                                common-lisp:nil
                                ((mount-target-id :target-type mount-target-id
                                  :required common-lisp:t :member-name
                                  "MountTargetId" :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeMountTargetSecurityGroupsRequest"))

(smithy/sdk/shapes:define-output describe-mount-target-security-groups-response
                                 common-lisp:nil
                                 ((security-groups :target-type security-groups
                                   :required common-lisp:t :member-name
                                   "SecurityGroups"))
                                 (:shape-name
                                  "DescribeMountTargetSecurityGroupsResponse"))

(smithy/sdk/shapes:define-input describe-mount-targets-request common-lisp:nil
                                ((max-items :target-type max-items :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (marker :target-type marker :member-name
                                  "Marker" :http-query "Marker")
                                 (file-system-id :target-type file-system-id
                                  :member-name "FileSystemId" :http-query
                                  "FileSystemId")
                                 (mount-target-id :target-type mount-target-id
                                  :member-name "MountTargetId" :http-query
                                  "MountTargetId")
                                 (access-point-id :target-type access-point-id
                                  :member-name "AccessPointId" :http-query
                                  "AccessPointId"))
                                (:shape-name "DescribeMountTargetsRequest"))

(smithy/sdk/shapes:define-output describe-mount-targets-response
                                 common-lisp:nil
                                 ((marker :target-type marker :member-name
                                   "Marker")
                                  (mount-targets :target-type
                                   mount-target-descriptions :member-name
                                   "MountTargets")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeMountTargetsResponse"))

(smithy/sdk/shapes:define-input describe-replication-configurations-request
                                common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :member-name "FileSystemId" :http-query
                                  "FileSystemId")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name
                                 "DescribeReplicationConfigurationsRequest"))

(smithy/sdk/shapes:define-output describe-replication-configurations-response
                                 common-lisp:nil
                                 ((replications :target-type
                                   replication-configuration-descriptions
                                   :member-name "Replications")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeReplicationConfigurationsResponse"))

(smithy/sdk/shapes:define-input describe-tags-request common-lisp:nil
                                ((max-items :target-type max-items :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (marker :target-type marker :member-name
                                  "Marker" :http-query "Marker")
                                 (file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t))
                                (:shape-name "DescribeTagsRequest"))

(smithy/sdk/shapes:define-output describe-tags-response common-lisp:nil
                                 ((marker :target-type marker :member-name
                                   "Marker")
                                  (tags :target-type tags :required
                                   common-lisp:t :member-name "Tags")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeTagsResponse"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((status :target-type replication-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (file-system-id :target-type
                                      file-system-id :required common-lisp:t
                                      :member-name "FileSystemId")
                                     (region :target-type region-name :required
                                      common-lisp:t :member-name "Region")
                                     (last-replicated-timestamp :target-type
                                      timestamp :member-name
                                      "LastReplicatedTimestamp")
                                     (owner-id :target-type aws-account-id
                                      :member-name "OwnerId")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-structure destination-to-create common-lisp:nil
                                    ((region :target-type region-name
                                      :member-name "Region")
                                     (availability-zone-name :target-type
                                      availability-zone-name :member-name
                                      "AvailabilityZoneName")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (file-system-id :target-type
                                      file-system-id :member-name
                                      "FileSystemId")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn"))
                                    (:shape-name "DestinationToCreate"))

(smithy/sdk/shapes:define-list destinations :member destination)

(smithy/sdk/shapes:define-list destinations-to-create :member
                               destination-to-create)

(smithy/sdk/shapes:define-type encrypted smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error file-system-already-exists common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message")
                                 (file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId"))
                                (:shape-name "FileSystemAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-type file-system-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-system-description common-lisp:nil
                                    ((owner-id :target-type aws-account-id
                                      :required common-lisp:t :member-name
                                      "OwnerId")
                                     (creation-token :target-type
                                      creation-token :required common-lisp:t
                                      :member-name "CreationToken")
                                     (file-system-id :target-type
                                      file-system-id :required common-lisp:t
                                      :member-name "FileSystemId")
                                     (file-system-arn :target-type
                                      file-system-arn :member-name
                                      "FileSystemArn")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (life-cycle-state :target-type
                                      life-cycle-state :required common-lisp:t
                                      :member-name "LifeCycleState")
                                     (name :target-type tag-value :member-name
                                      "Name")
                                     (number-of-mount-targets :target-type
                                      mount-target-count :required
                                      common-lisp:t :member-name
                                      "NumberOfMountTargets")
                                     (size-in-bytes :target-type
                                      file-system-size :required common-lisp:t
                                      :member-name "SizeInBytes")
                                     (performance-mode :target-type
                                      performance-mode :required common-lisp:t
                                      :member-name "PerformanceMode")
                                     (encrypted :target-type encrypted
                                      :member-name "Encrypted")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (throughput-mode :target-type
                                      throughput-mode :member-name
                                      "ThroughputMode")
                                     (provisioned-throughput-in-mibps
                                      :target-type
                                      provisioned-throughput-in-mibps
                                      :member-name
                                      "ProvisionedThroughputInMibps")
                                     (availability-zone-name :target-type
                                      availability-zone-name :member-name
                                      "AvailabilityZoneName")
                                     (availability-zone-id :target-type
                                      availability-zone-id :member-name
                                      "AvailabilityZoneId")
                                     (tags :target-type tags :required
                                      common-lisp:t :member-name "Tags")
                                     (file-system-protection :target-type
                                      file-system-protection-description
                                      :member-name "FileSystemProtection"))
                                    (:shape-name "FileSystemDescription"))

(smithy/sdk/shapes:define-list file-system-descriptions :member
                               file-system-description)

(smithy/sdk/shapes:define-type file-system-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error file-system-in-use common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "FileSystemInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-error file-system-limit-exceeded common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "FileSystemLimitExceeded")
                                (:error-code 403))

(smithy/sdk/shapes:define-error file-system-not-found common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "FileSystemNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-type file-system-nullable-size-value
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure file-system-policy-description
                                    common-lisp:nil
                                    ((file-system-id :target-type
                                      file-system-id :member-name
                                      "FileSystemId")
                                     (policy :target-type policy :member-name
                                      "Policy"))
                                    (:shape-name "FileSystemPolicyDescription"))

(smithy/sdk/shapes:define-structure file-system-protection-description
                                    common-lisp:nil
                                    ((replication-overwrite-protection
                                      :target-type
                                      replication-overwrite-protection
                                      :member-name
                                      "ReplicationOverwriteProtection"))
                                    (:shape-name
                                     "FileSystemProtectionDescription"))

(smithy/sdk/shapes:define-structure file-system-size common-lisp:nil
                                    ((value :target-type file-system-size-value
                                      :required common-lisp:t :member-name
                                      "Value")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (value-in-ia :target-type
                                      file-system-nullable-size-value
                                      :member-name "ValueInIA")
                                     (value-in-standard :target-type
                                      file-system-nullable-size-value
                                      :member-name "ValueInStandard")
                                     (value-in-archive :target-type
                                      file-system-nullable-size-value
                                      :member-name "ValueInArchive"))
                                    (:shape-name "FileSystemSize"))

(smithy/sdk/shapes:define-type file-system-size-value
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type gid smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error incorrect-file-system-life-cycle-state
                                common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "IncorrectFileSystemLifeCycleState")
                                (:error-code 409))

(smithy/sdk/shapes:define-error incorrect-mount-target-state common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "IncorrectMountTargetState")
                                (:error-code 409))

(smithy/sdk/shapes:define-error insufficient-throughput-capacity
                                common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InsufficientThroughputCapacity")
                                (:error-code 503))

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-policy-exception common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error ip-address-in-use common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "IpAddressInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum ip-address-type
    common-lisp:nil
  (:ipv4-only "IPV4_ONLY")
  (:ipv6-only "IPV6_ONLY")
  (:dual-stack "DUAL_STACK"))

(smithy/sdk/shapes:define-type ipv6address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum life-cycle-state
    common-lisp:nil
  (:creating "creating")
  (:available "available")
  (:updating "updating")
  (:deleting "deleting")
  (:deleted "deleted")
  (:error "error"))

(smithy/sdk/shapes:define-structure lifecycle-configuration-description
                                    common-lisp:nil
                                    ((lifecycle-policies :target-type
                                      lifecycle-policies :member-name
                                      "LifecyclePolicies"))
                                    (:shape-name
                                     "LifecycleConfigurationDescription"))

(smithy/sdk/shapes:define-list lifecycle-policies :member lifecycle-policy)

(smithy/sdk/shapes:define-structure lifecycle-policy common-lisp:nil
                                    ((transition-to-ia :target-type
                                      transition-to-iarules :member-name
                                      "TransitionToIA")
                                     (transition-to-primary-storage-class
                                      :target-type
                                      transition-to-primary-storage-class-rules
                                      :member-name
                                      "TransitionToPrimaryStorageClass")
                                     (transition-to-archive :target-type
                                      transition-to-archive-rules :member-name
                                      "TransitionToArchive"))
                                    (:shape-name "LifecyclePolicy"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input modify-mount-target-security-groups-request
                                common-lisp:nil
                                ((mount-target-id :target-type mount-target-id
                                  :required common-lisp:t :member-name
                                  "MountTargetId" :http-label common-lisp:t)
                                 (security-groups :target-type security-groups
                                  :member-name "SecurityGroups"))
                                (:shape-name
                                 "ModifyMountTargetSecurityGroupsRequest"))

(smithy/sdk/shapes:define-error mount-target-conflict common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "MountTargetConflict")
                                (:error-code 409))

(smithy/sdk/shapes:define-type mount-target-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure mount-target-description common-lisp:nil
                                    ((owner-id :target-type aws-account-id
                                      :member-name "OwnerId")
                                     (mount-target-id :target-type
                                      mount-target-id :required common-lisp:t
                                      :member-name "MountTargetId")
                                     (file-system-id :target-type
                                      file-system-id :required common-lisp:t
                                      :member-name "FileSystemId")
                                     (subnet-id :target-type subnet-id
                                      :required common-lisp:t :member-name
                                      "SubnetId")
                                     (life-cycle-state :target-type
                                      life-cycle-state :required common-lisp:t
                                      :member-name "LifeCycleState")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (ipv6address :target-type ipv6address
                                      :member-name "Ipv6Address")
                                     (network-interface-id :target-type
                                      network-interface-id :member-name
                                      "NetworkInterfaceId")
                                     (availability-zone-id :target-type
                                      availability-zone-id :member-name
                                      "AvailabilityZoneId")
                                     (availability-zone-name :target-type
                                      availability-zone-name :member-name
                                      "AvailabilityZoneName")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId"))
                                    (:shape-name "MountTargetDescription"))

(smithy/sdk/shapes:define-list mount-target-descriptions :member
                               mount-target-description)

(smithy/sdk/shapes:define-type mount-target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error mount-target-not-found common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "MountTargetNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type network-interface-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error network-interface-limit-exceeded
                                common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NetworkInterfaceLimitExceeded")
                                (:error-code 409))

(smithy/sdk/shapes:define-error no-free-addresses-in-subnet common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NoFreeAddressesInSubnet")
                                (:error-code 409))

(smithy/sdk/shapes:define-type owner-gid smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type owner-uid smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum performance-mode
    common-lisp:nil
  (:general-purpose "generalPurpose")
  (:max-io "maxIO"))

(smithy/sdk/shapes:define-type permissions smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error policy-not-found common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "PolicyNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure posix-user common-lisp:nil
                                    ((uid :target-type uid :required
                                      common-lisp:t :member-name "Uid")
                                     (gid :target-type gid :required
                                      common-lisp:t :member-name "Gid")
                                     (secondary-gids :target-type
                                      secondary-gids :member-name
                                      "SecondaryGids"))
                                    (:shape-name "PosixUser"))

(smithy/sdk/shapes:define-type provisioned-throughput-in-mibps
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input put-account-preferences-request common-lisp:nil
                                ((resource-id-type :target-type
                                  resource-id-type :required common-lisp:t
                                  :member-name "ResourceIdType"))
                                (:shape-name "PutAccountPreferencesRequest"))

(smithy/sdk/shapes:define-output put-account-preferences-response
                                 common-lisp:nil
                                 ((resource-id-preference :target-type
                                   resource-id-preference :member-name
                                   "ResourceIdPreference"))
                                 (:shape-name "PutAccountPreferencesResponse"))

(smithy/sdk/shapes:define-input put-backup-policy-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t)
                                 (backup-policy :target-type backup-policy
                                  :required common-lisp:t :member-name
                                  "BackupPolicy"))
                                (:shape-name "PutBackupPolicyRequest"))

(smithy/sdk/shapes:define-input put-file-system-policy-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t)
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy")
                                 (bypass-policy-lockout-safety-check
                                  :target-type
                                  bypass-policy-lockout-safety-check
                                  :member-name
                                  "BypassPolicyLockoutSafetyCheck"))
                                (:shape-name "PutFileSystemPolicyRequest"))

(smithy/sdk/shapes:define-input put-lifecycle-configuration-request
                                common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t)
                                 (lifecycle-policies :target-type
                                  lifecycle-policies :required common-lisp:t
                                  :member-name "LifecyclePolicies"))
                                (:shape-name
                                 "PutLifecycleConfigurationRequest"))

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error replication-already-exists common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ReplicationAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure replication-configuration-description
                                    common-lisp:nil
                                    ((source-file-system-id :target-type
                                      file-system-id :required common-lisp:t
                                      :member-name "SourceFileSystemId")
                                     (source-file-system-region :target-type
                                      region-name :required common-lisp:t
                                      :member-name "SourceFileSystemRegion")
                                     (source-file-system-arn :target-type
                                      file-system-arn :required common-lisp:t
                                      :member-name "SourceFileSystemArn")
                                     (original-source-file-system-arn
                                      :target-type file-system-arn :required
                                      common-lisp:t :member-name
                                      "OriginalSourceFileSystemArn")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (destinations :target-type destinations
                                      :required common-lisp:t :member-name
                                      "Destinations")
                                     (source-file-system-owner-id :target-type
                                      aws-account-id :member-name
                                      "SourceFileSystemOwnerId"))
                                    (:shape-name
                                     "ReplicationConfigurationDescription"))

(smithy/sdk/shapes:define-list replication-configuration-descriptions :member
                               replication-configuration-description)

(smithy/sdk/shapes:define-error replication-not-found common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ReplicationNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum replication-overwrite-protection
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:replicating "REPLICATING"))

(smithy/sdk/shapes:define-enum replication-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:enabling "ENABLING")
  (:deleting "DELETING")
  (:error "ERROR")
  (:paused "PAUSED")
  (:pausing "PAUSING"))

(smithy/sdk/shapes:define-enum resource
    common-lisp:nil
  (:file-system "FILE_SYSTEM")
  (:mount-target "MOUNT_TARGET"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-id-preference common-lisp:nil
                                    ((resource-id-type :target-type
                                      resource-id-type :member-name
                                      "ResourceIdType")
                                     (resources :target-type resources
                                      :member-name "Resources"))
                                    (:shape-name "ResourceIdPreference"))

(smithy/sdk/shapes:define-enum resource-id-type
    common-lisp:nil
  (:long-id "LONG_ID")
  (:short-id "SHORT_ID"))

(smithy/sdk/shapes:define-list resources :member resource)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure root-directory common-lisp:nil
                                    ((path :target-type path :member-name
                                      "Path")
                                     (creation-info :target-type creation-info
                                      :member-name "CreationInfo"))
                                    (:shape-name "RootDirectory"))

(smithy/sdk/shapes:define-list secondary-gids :member gid)

(smithy/sdk/shapes:define-type security-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error security-group-limit-exceeded common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "SecurityGroupLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error security-group-not-found common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "SecurityGroupNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list security-groups :member security-group)

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:enabled "ENABLED")
  (:enabling "ENABLING")
  (:disabled "DISABLED")
  (:disabling "DISABLING"))

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error subnet-not-found common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "SubnetNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error throughput-limit-exceeded common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThroughputLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum throughput-mode
    common-lisp:nil
  (:bursting "bursting")
  (:provisioned "provisioned")
  (:elastic "elastic"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-requests common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TooManyRequests")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum transition-to-archive-rules
    common-lisp:nil
  (:after-1-day "AFTER_1_DAY")
  (:after-7-days "AFTER_7_DAYS")
  (:after-14-days "AFTER_14_DAYS")
  (:after-30-days "AFTER_30_DAYS")
  (:after-60-days "AFTER_60_DAYS")
  (:after-90-days "AFTER_90_DAYS")
  (:after-180-days "AFTER_180_DAYS")
  (:after-270-days "AFTER_270_DAYS")
  (:after-365-days "AFTER_365_DAYS"))

(smithy/sdk/shapes:define-enum transition-to-iarules
    common-lisp:nil
  (:after-7-days "AFTER_7_DAYS")
  (:after-14-days "AFTER_14_DAYS")
  (:after-30-days "AFTER_30_DAYS")
  (:after-60-days "AFTER_60_DAYS")
  (:after-90-days "AFTER_90_DAYS")
  (:after-1-day "AFTER_1_DAY")
  (:after-180-days "AFTER_180_DAYS")
  (:after-270-days "AFTER_270_DAYS")
  (:after-365-days "AFTER_365_DAYS"))

(smithy/sdk/shapes:define-enum transition-to-primary-storage-class-rules
    common-lisp:nil
  (:after-1-access "AFTER_1_ACCESS"))

(smithy/sdk/shapes:define-type uid smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error unsupported-availability-zone common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnsupportedAvailabilityZone")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-file-system-protection-request
                                common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t)
                                 (replication-overwrite-protection :target-type
                                  replication-overwrite-protection :member-name
                                  "ReplicationOverwriteProtection"))
                                (:shape-name
                                 "UpdateFileSystemProtectionRequest"))

(smithy/sdk/shapes:define-input update-file-system-request common-lisp:nil
                                ((file-system-id :target-type file-system-id
                                  :required common-lisp:t :member-name
                                  "FileSystemId" :http-label common-lisp:t)
                                 (throughput-mode :target-type throughput-mode
                                  :member-name "ThroughputMode")
                                 (provisioned-throughput-in-mibps :target-type
                                  provisioned-throughput-in-mibps :member-name
                                  "ProvisionedThroughputInMibps"))
                                (:shape-name "UpdateFileSystemRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((error-code :target-type error-code :required
                                  common-lisp:t :member-name "ErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-access-point :shape-name
                                       "CreateAccessPoint" :input
                                       create-access-point-request :output
                                       access-point-description :errors
                                       (access-point-already-exists
                                        access-point-limit-exceeded bad-request
                                        file-system-not-found
                                        incorrect-file-system-life-cycle-state
                                        internal-server-error
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/2015-02-01/access-points" :code 200)

(smithy/sdk/operation:define-operation create-file-system :shape-name
                                       "CreateFileSystem" :input
                                       create-file-system-request :output
                                       file-system-description :errors
                                       (bad-request file-system-already-exists
                                        file-system-limit-exceeded
                                        insufficient-throughput-capacity
                                        internal-server-error
                                        throughput-limit-exceeded
                                        unsupported-availability-zone)
                                       :method "POST" :uri
                                       "/2015-02-01/file-systems" :code 201)

(smithy/sdk/operation:define-operation create-mount-target :shape-name
                                       "CreateMountTarget" :input
                                       create-mount-target-request :output
                                       mount-target-description :errors
                                       (availability-zones-mismatch bad-request
                                        file-system-not-found
                                        incorrect-file-system-life-cycle-state
                                        internal-server-error ip-address-in-use
                                        mount-target-conflict
                                        network-interface-limit-exceeded
                                        no-free-addresses-in-subnet
                                        security-group-limit-exceeded
                                        security-group-not-found
                                        subnet-not-found
                                        unsupported-availability-zone)
                                       :method "POST" :uri
                                       "/2015-02-01/mount-targets" :code 200)

(smithy/sdk/operation:define-operation create-replication-configuration
                                       :shape-name
                                       "CreateReplicationConfiguration" :input
                                       create-replication-configuration-request
                                       :output
                                       replication-configuration-description
                                       :errors
                                       (bad-request conflict-exception
                                        file-system-limit-exceeded
                                        file-system-not-found
                                        incorrect-file-system-life-cycle-state
                                        insufficient-throughput-capacity
                                        internal-server-error
                                        replication-not-found
                                        throughput-limit-exceeded
                                        unsupported-availability-zone
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation create-tags :shape-name "CreateTags"
                                       :input create-tags-request :output
                                       common-lisp:null :errors
                                       (bad-request file-system-not-found
                                        internal-server-error)
                                       :method "POST" :uri
                                       "/2015-02-01/create-tags/{FileSystemId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-access-point :shape-name
                                       "DeleteAccessPoint" :input
                                       delete-access-point-request :output
                                       common-lisp:null :errors
                                       (access-point-not-found bad-request
                                        internal-server-error)
                                       :method "DELETE" :uri
                                       "/2015-02-01/access-points/{AccessPointId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-file-system :shape-name
                                       "DeleteFileSystem" :input
                                       delete-file-system-request :output
                                       common-lisp:null :errors
                                       (bad-request file-system-in-use
                                        file-system-not-found
                                        internal-server-error)
                                       :method "DELETE" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-file-system-policy :shape-name
                                       "DeleteFileSystemPolicy" :input
                                       delete-file-system-policy-request
                                       :output common-lisp:null :errors
                                       (bad-request file-system-not-found
                                        incorrect-file-system-life-cycle-state
                                        internal-server-error)
                                       :method "DELETE" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-mount-target :shape-name
                                       "DeleteMountTarget" :input
                                       delete-mount-target-request :output
                                       common-lisp:null :errors
                                       (bad-request dependency-timeout
                                        internal-server-error
                                        mount-target-not-found)
                                       :method "DELETE" :uri
                                       "/2015-02-01/mount-targets/{MountTargetId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-replication-configuration
                                       :shape-name
                                       "DeleteReplicationConfiguration" :input
                                       delete-replication-configuration-request
                                       :output common-lisp:null :errors
                                       (bad-request file-system-not-found
                                        internal-server-error
                                        replication-not-found)
                                       :method "DELETE" :uri
                                       "/2015-02-01/file-systems/{SourceFileSystemId}/replication-configuration"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-tags :shape-name "DeleteTags"
                                       :input delete-tags-request :output
                                       common-lisp:null :errors
                                       (bad-request file-system-not-found
                                        internal-server-error)
                                       :method "POST" :uri
                                       "/2015-02-01/delete-tags/{FileSystemId}"
                                       :code 204)

(smithy/sdk/operation:define-operation describe-access-points :shape-name
                                       "DescribeAccessPoints" :input
                                       describe-access-points-request :output
                                       describe-access-points-response :errors
                                       (access-point-not-found bad-request
                                        file-system-not-found
                                        internal-server-error)
                                       :method "GET" :uri
                                       "/2015-02-01/access-points" :code 200)

(smithy/sdk/operation:define-operation describe-account-preferences :shape-name
                                       "DescribeAccountPreferences" :input
                                       describe-account-preferences-request
                                       :output
                                       describe-account-preferences-response
                                       :errors (internal-server-error) :method
                                       "GET" :uri
                                       "/2015-02-01/account-preferences" :code
                                       200)

(smithy/sdk/operation:define-operation describe-backup-policy :shape-name
                                       "DescribeBackupPolicy" :input
                                       describe-backup-policy-request :output
                                       backup-policy-description :errors
                                       (bad-request file-system-not-found
                                        internal-server-error policy-not-found
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}/backup-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-file-system-policy :shape-name
                                       "DescribeFileSystemPolicy" :input
                                       describe-file-system-policy-request
                                       :output file-system-policy-description
                                       :errors
                                       (bad-request file-system-not-found
                                        internal-server-error policy-not-found)
                                       :method "GET" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-file-systems :shape-name
                                       "DescribeFileSystems" :input
                                       describe-file-systems-request :output
                                       describe-file-systems-response :errors
                                       (bad-request file-system-not-found
                                        internal-server-error)
                                       :method "GET" :uri
                                       "/2015-02-01/file-systems" :code 200)

(smithy/sdk/operation:define-operation describe-lifecycle-configuration
                                       :shape-name
                                       "DescribeLifecycleConfiguration" :input
                                       describe-lifecycle-configuration-request
                                       :output
                                       lifecycle-configuration-description
                                       :errors
                                       (bad-request file-system-not-found
                                        internal-server-error)
                                       :method "GET" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-mount-target-security-groups
                                       :shape-name
                                       "DescribeMountTargetSecurityGroups"
                                       :input
                                       describe-mount-target-security-groups-request
                                       :output
                                       describe-mount-target-security-groups-response
                                       :errors
                                       (bad-request
                                        incorrect-mount-target-state
                                        internal-server-error
                                        mount-target-not-found)
                                       :method "GET" :uri
                                       "/2015-02-01/mount-targets/{MountTargetId}/security-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-mount-targets :shape-name
                                       "DescribeMountTargets" :input
                                       describe-mount-targets-request :output
                                       describe-mount-targets-response :errors
                                       (access-point-not-found bad-request
                                        file-system-not-found
                                        internal-server-error
                                        mount-target-not-found)
                                       :method "GET" :uri
                                       "/2015-02-01/mount-targets" :code 200)

(smithy/sdk/operation:define-operation describe-replication-configurations
                                       :shape-name
                                       "DescribeReplicationConfigurations"
                                       :input
                                       describe-replication-configurations-request
                                       :output
                                       describe-replication-configurations-response
                                       :errors
                                       (bad-request file-system-not-found
                                        internal-server-error
                                        replication-not-found
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2015-02-01/file-systems/replication-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-tags :shape-name "DescribeTags"
                                       :input describe-tags-request :output
                                       describe-tags-response :errors
                                       (bad-request file-system-not-found
                                        internal-server-error)
                                       :method "GET" :uri
                                       "/2015-02-01/tags/{FileSystemId}" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-point-not-found bad-request
                                        file-system-not-found
                                        internal-server-error)
                                       :method "GET" :uri
                                       "/2015-02-01/resource-tags/{ResourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation modify-mount-target-security-groups
                                       :shape-name
                                       "ModifyMountTargetSecurityGroups" :input
                                       modify-mount-target-security-groups-request
                                       :output common-lisp:null :errors
                                       (bad-request
                                        incorrect-mount-target-state
                                        internal-server-error
                                        mount-target-not-found
                                        security-group-limit-exceeded
                                        security-group-not-found)
                                       :method "PUT" :uri
                                       "/2015-02-01/mount-targets/{MountTargetId}/security-groups"
                                       :code 204)

(smithy/sdk/operation:define-operation put-account-preferences :shape-name
                                       "PutAccountPreferences" :input
                                       put-account-preferences-request :output
                                       put-account-preferences-response :errors
                                       (bad-request internal-server-error)
                                       :method "PUT" :uri
                                       "/2015-02-01/account-preferences" :code
                                       200)

(smithy/sdk/operation:define-operation put-backup-policy :shape-name
                                       "PutBackupPolicy" :input
                                       put-backup-policy-request :output
                                       backup-policy-description :errors
                                       (bad-request file-system-not-found
                                        incorrect-file-system-life-cycle-state
                                        internal-server-error
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}/backup-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation put-file-system-policy :shape-name
                                       "PutFileSystemPolicy" :input
                                       put-file-system-policy-request :output
                                       file-system-policy-description :errors
                                       (bad-request file-system-not-found
                                        incorrect-file-system-life-cycle-state
                                        internal-server-error
                                        invalid-policy-exception)
                                       :method "PUT" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation put-lifecycle-configuration :shape-name
                                       "PutLifecycleConfiguration" :input
                                       put-lifecycle-configuration-request
                                       :output
                                       lifecycle-configuration-description
                                       :errors
                                       (bad-request file-system-not-found
                                        incorrect-file-system-life-cycle-state
                                        internal-server-error)
                                       :method "PUT" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-point-not-found bad-request
                                        file-system-not-found
                                        internal-server-error)
                                       :method "POST" :uri
                                       "/2015-02-01/resource-tags/{ResourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-point-not-found bad-request
                                        file-system-not-found
                                        internal-server-error)
                                       :method "DELETE" :uri
                                       "/2015-02-01/resource-tags/{ResourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-file-system :shape-name
                                       "UpdateFileSystem" :input
                                       update-file-system-request :output
                                       file-system-description :errors
                                       (bad-request file-system-not-found
                                        incorrect-file-system-life-cycle-state
                                        insufficient-throughput-capacity
                                        internal-server-error
                                        throughput-limit-exceeded
                                        too-many-requests)
                                       :method "PUT" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-file-system-protection
                                       :shape-name "UpdateFileSystemProtection"
                                       :input
                                       update-file-system-protection-request
                                       :output
                                       file-system-protection-description
                                       :errors
                                       (bad-request file-system-not-found
                                        incorrect-file-system-life-cycle-state
                                        insufficient-throughput-capacity
                                        internal-server-error
                                        replication-already-exists
                                        throughput-limit-exceeded
                                        too-many-requests)
                                       :method "PUT" :uri
                                       "/2015-02-01/file-systems/{FileSystemId}/protection"
                                       :code 200)
