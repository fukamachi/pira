(uiop/package:define-package #:pira/cloudhsm-v2 (:use)
                             (:export #:backup #:backup-arn #:backup-id
                              #:backup-policy #:backup-retention-policy
                              #:backup-retention-type #:backup-retention-value
                              #:backup-state #:backups #:backups-max-size
                              #:baldr-api-service #:boolean #:cert
                              #:certificates #:cloud-hsm-arn #:cluster
                              #:cluster-id #:cluster-mode #:cluster-state
                              #:clusters #:clusters-max-size
                              #:copy-backup-to-region #:create-cluster
                              #:create-hsm #:delete-backup #:delete-cluster
                              #:delete-hsm #:delete-resource-policy
                              #:describe-backups #:describe-clusters
                              #:destination-backup #:eni-id #:external-az
                              #:external-subnet-mapping #:field #:filters
                              #:get-resource-policy #:hsm #:hsm-id #:hsm-state
                              #:hsm-type #:hsms #:initialize-cluster
                              #:ip-address #:ip-v6address #:list-tags
                              #:max-size #:modify-backup-attributes
                              #:modify-cluster #:network-type #:next-token
                              #:pre-co-password #:put-resource-policy #:region
                              #:resource-id #:resource-policy #:restore-backup
                              #:security-group #:state-message #:string
                              #:strings #:subnet-id #:subnet-ids #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:timestamp
                              #:untag-resource #:vpc-id #:error-message))
(common-lisp:in-package #:pira/cloudhsm-v2)

(smithy/sdk/service:define-service baldr-api-service :shape-name
                                   "BaldrApiService" :version "2017-04-28"
                                   :title "AWS CloudHSM V2" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudHSM V2")
                                      ("arnNamespace" . "cloudhsm")
                                      ("cloudFormationName" . "CloudHSMV2")
                                      ("cloudTrailEventSource"
                                       . "cloudhsmv2.amazonaws.com")
                                      ("docId" . "cloudhsmv2-2017-04-28")
                                      ("endpointPrefix" . "cloudhsmv2"))
                                     ("aws.auth#sigv4" ("name" . "cloudhsm"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure backup common-lisp:nil
                                    ((backup-id :target-type backup-id
                                      :required common-lisp:t :member-name
                                      "BackupId")
                                     (backup-arn :target-type backup-arn
                                      :member-name "BackupArn")
                                     (backup-state :target-type backup-state
                                      :member-name "BackupState")
                                     (cluster-id :target-type cluster-id
                                      :member-name "ClusterId")
                                     (create-timestamp :target-type timestamp
                                      :member-name "CreateTimestamp")
                                     (copy-timestamp :target-type timestamp
                                      :member-name "CopyTimestamp")
                                     (never-expires :target-type boolean
                                      :member-name "NeverExpires")
                                     (source-region :target-type region
                                      :member-name "SourceRegion")
                                     (source-backup :target-type backup-id
                                      :member-name "SourceBackup")
                                     (source-cluster :target-type cluster-id
                                      :member-name "SourceCluster")
                                     (delete-timestamp :target-type timestamp
                                      :member-name "DeleteTimestamp")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList")
                                     (hsm-type :target-type hsm-type
                                      :member-name "HsmType")
                                     (mode :target-type cluster-mode
                                      :member-name "Mode"))
                                    (:shape-name "Backup"))

(smithy/sdk/shapes:define-type backup-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type backup-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum backup-policy
    common-lisp:nil
  (:default "DEFAULT"))

(smithy/sdk/shapes:define-structure backup-retention-policy common-lisp:nil
                                    ((type :target-type backup-retention-type
                                      :member-name "Type")
                                     (value :target-type backup-retention-value
                                      :member-name "Value"))
                                    (:shape-name "BackupRetentionPolicy"))

(smithy/sdk/shapes:define-enum backup-retention-type
    common-lisp:nil
  (:days "DAYS"))

(smithy/sdk/shapes:define-type backup-retention-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum backup-state
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:ready "READY")
  (:deleted "DELETED")
  (:pending-deletion "PENDING_DELETION"))

(smithy/sdk/shapes:define-list backups :member backup)

(smithy/sdk/shapes:define-type backups-max-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type cert smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure certificates common-lisp:nil
                                    ((cluster-csr :target-type cert
                                      :member-name "ClusterCsr")
                                     (hsm-certificate :target-type cert
                                      :member-name "HsmCertificate")
                                     (aws-hardware-certificate :target-type
                                      cert :member-name
                                      "AwsHardwareCertificate")
                                     (manufacturer-hardware-certificate
                                      :target-type cert :member-name
                                      "ManufacturerHardwareCertificate")
                                     (cluster-certificate :target-type cert
                                      :member-name "ClusterCertificate"))
                                    (:shape-name "Certificates"))

(smithy/sdk/shapes:define-error cloud-hsm-access-denied-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CloudHsmAccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type cloud-hsm-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error cloud-hsm-internal-failure-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CloudHsmInternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error cloud-hsm-invalid-request-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CloudHsmInvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cloud-hsm-resource-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CloudHsmResourceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cloud-hsm-resource-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CloudHsmResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cloud-hsm-service-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CloudHsmServiceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cloud-hsm-tag-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CloudHsmTagException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((backup-policy :target-type backup-policy
                                      :member-name "BackupPolicy")
                                     (backup-retention-policy :target-type
                                      backup-retention-policy :member-name
                                      "BackupRetentionPolicy")
                                     (cluster-id :target-type cluster-id
                                      :member-name "ClusterId")
                                     (create-timestamp :target-type timestamp
                                      :member-name "CreateTimestamp")
                                     (hsms :target-type hsms :member-name
                                      "Hsms")
                                     (hsm-type :target-type hsm-type
                                      :member-name "HsmType")
                                     (hsm-type-rollback-expiration :target-type
                                      timestamp :member-name
                                      "HsmTypeRollbackExpiration")
                                     (pre-co-password :target-type
                                      pre-co-password :member-name
                                      "PreCoPassword")
                                     (security-group :target-type
                                      security-group :member-name
                                      "SecurityGroup")
                                     (source-backup-id :target-type backup-id
                                      :member-name "SourceBackupId")
                                     (state :target-type cluster-state
                                      :member-name "State")
                                     (state-message :target-type state-message
                                      :member-name "StateMessage")
                                     (subnet-mapping :target-type
                                      external-subnet-mapping :member-name
                                      "SubnetMapping")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (network-type :target-type network-type
                                      :member-name "NetworkType")
                                     (certificates :target-type certificates
                                      :member-name "Certificates")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList")
                                     (mode :target-type cluster-mode
                                      :member-name "Mode"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-type cluster-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cluster-mode
    common-lisp:nil
  (:fips "FIPS")
  (:non-fips "NON_FIPS"))

(smithy/sdk/shapes:define-enum cluster-state
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:uninitialized "UNINITIALIZED")
  (:initialize-in-progress "INITIALIZE_IN_PROGRESS")
  (:initialized "INITIALIZED")
  (:active "ACTIVE")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:modify-in-progress "MODIFY_IN_PROGRESS")
  (:rollback-in-progress "ROLLBACK_IN_PROGRESS")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:deleted "DELETED")
  (:degraded "DEGRADED"))

(smithy/sdk/shapes:define-list clusters :member cluster)

(smithy/sdk/shapes:define-type clusters-max-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input copy-backup-to-region-request common-lisp:nil
                                ((destination-region :target-type region
                                  :required common-lisp:t :member-name
                                  "DestinationRegion")
                                 (backup-id :target-type backup-id :required
                                  common-lisp:t :member-name "BackupId")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList"))
                                (:shape-name "CopyBackupToRegionRequest"))

(smithy/sdk/shapes:define-output copy-backup-to-region-response common-lisp:nil
                                 ((destination-backup :target-type
                                   destination-backup :member-name
                                   "DestinationBackup"))
                                 (:shape-name "CopyBackupToRegionResponse"))

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((backup-retention-policy :target-type
                                  backup-retention-policy :member-name
                                  "BackupRetentionPolicy")
                                 (hsm-type :target-type hsm-type :required
                                  common-lisp:t :member-name "HsmType")
                                 (source-backup-id :target-type backup-arn
                                  :member-name "SourceBackupId")
                                 (subnet-ids :target-type subnet-ids :required
                                  common-lisp:t :member-name "SubnetIds")
                                 (network-type :target-type network-type
                                  :member-name "NetworkType")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList")
                                 (mode :target-type cluster-mode :member-name
                                  "Mode"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "CreateClusterResponse"))

(smithy/sdk/shapes:define-input create-hsm-request common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (availability-zone :target-type external-az
                                  :required common-lisp:t :member-name
                                  "AvailabilityZone")
                                 (ip-address :target-type ip-address
                                  :member-name "IpAddress"))
                                (:shape-name "CreateHsmRequest"))

(smithy/sdk/shapes:define-output create-hsm-response common-lisp:nil
                                 ((hsm :target-type hsm :member-name "Hsm"))
                                 (:shape-name "CreateHsmResponse"))

(smithy/sdk/shapes:define-input delete-backup-request common-lisp:nil
                                ((backup-id :target-type backup-id :required
                                  common-lisp:t :member-name "BackupId"))
                                (:shape-name "DeleteBackupRequest"))

(smithy/sdk/shapes:define-output delete-backup-response common-lisp:nil
                                 ((backup :target-type backup :member-name
                                   "Backup"))
                                 (:shape-name "DeleteBackupResponse"))

(smithy/sdk/shapes:define-input delete-cluster-request common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId"))
                                (:shape-name "DeleteClusterRequest"))

(smithy/sdk/shapes:define-output delete-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "DeleteClusterResponse"))

(smithy/sdk/shapes:define-input delete-hsm-request common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (hsm-id :target-type hsm-id :member-name
                                  "HsmId")
                                 (eni-id :target-type eni-id :member-name
                                  "EniId")
                                 (eni-ip :target-type ip-address :member-name
                                  "EniIp"))
                                (:shape-name "DeleteHsmRequest"))

(smithy/sdk/shapes:define-output delete-hsm-response common-lisp:nil
                                 ((hsm-id :target-type hsm-id :member-name
                                   "HsmId"))
                                 (:shape-name "DeleteHsmResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type cloud-hsm-arn
                                  :member-name "ResourceArn"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil
                                 ((resource-arn :target-type cloud-hsm-arn
                                   :member-name "ResourceArn")
                                  (policy :target-type resource-policy
                                   :member-name "Policy"))
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input describe-backups-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type backups-max-size
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters")
                                 (shared :target-type boolean :member-name
                                  "Shared")
                                 (sort-ascending :target-type boolean
                                  :member-name "SortAscending"))
                                (:shape-name "DescribeBackupsRequest"))

(smithy/sdk/shapes:define-output describe-backups-response common-lisp:nil
                                 ((backups :target-type backups :member-name
                                   "Backups")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeBackupsResponse"))

(smithy/sdk/shapes:define-input describe-clusters-request common-lisp:nil
                                ((filters :target-type filters :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type clusters-max-size
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeClustersRequest"))

(smithy/sdk/shapes:define-output describe-clusters-response common-lisp:nil
                                 ((clusters :target-type clusters :member-name
                                   "Clusters")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeClustersResponse"))

(smithy/sdk/shapes:define-structure destination-backup common-lisp:nil
                                    ((create-timestamp :target-type timestamp
                                      :member-name "CreateTimestamp")
                                     (source-region :target-type region
                                      :member-name "SourceRegion")
                                     (source-backup :target-type backup-id
                                      :member-name "SourceBackup")
                                     (source-cluster :target-type cluster-id
                                      :member-name "SourceCluster"))
                                    (:shape-name "DestinationBackup"))

(smithy/sdk/shapes:define-type eni-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-az smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map external-subnet-mapping :key external-az :value
                              subnet-id)

(smithy/sdk/shapes:define-type field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map filters :key field :value strings)

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type cloud-hsm-arn
                                  :member-name "ResourceArn"))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((policy :target-type resource-policy
                                   :member-name "Policy"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure hsm common-lisp:nil
                                    ((availability-zone :target-type
                                      external-az :member-name
                                      "AvailabilityZone")
                                     (cluster-id :target-type cluster-id
                                      :member-name "ClusterId")
                                     (subnet-id :target-type subnet-id
                                      :member-name "SubnetId")
                                     (eni-id :target-type eni-id :member-name
                                      "EniId")
                                     (eni-ip :target-type ip-address
                                      :member-name "EniIp")
                                     (eni-ip-v6 :target-type ip-v6address
                                      :member-name "EniIpV6")
                                     (hsm-id :target-type hsm-id :required
                                      common-lisp:t :member-name "HsmId")
                                     (hsm-type :target-type hsm-type
                                      :member-name "HsmType")
                                     (state :target-type hsm-state :member-name
                                      "State")
                                     (state-message :target-type string
                                      :member-name "StateMessage"))
                                    (:shape-name "Hsm"))

(smithy/sdk/shapes:define-type hsm-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum hsm-state
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:active "ACTIVE")
  (:degraded "DEGRADED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type hsm-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list hsms :member hsm)

(smithy/sdk/shapes:define-input initialize-cluster-request common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (signed-cert :target-type cert :required
                                  common-lisp:t :member-name "SignedCert")
                                 (trust-anchor :target-type cert :required
                                  common-lisp:t :member-name "TrustAnchor"))
                                (:shape-name "InitializeClusterRequest"))

(smithy/sdk/shapes:define-output initialize-cluster-response common-lisp:nil
                                 ((state :target-type cluster-state
                                   :member-name "State")
                                  (state-message :target-type state-message
                                   :member-name "StateMessage"))
                                 (:shape-name "InitializeClusterResponse"))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-v6address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-size
                                  :member-name "MaxResults"))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-response common-lisp:nil
                                 ((tag-list :target-type tag-list :required
                                   common-lisp:t :member-name "TagList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsResponse"))

(smithy/sdk/shapes:define-type max-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input modify-backup-attributes-request
                                common-lisp:nil
                                ((backup-id :target-type backup-id :required
                                  common-lisp:t :member-name "BackupId")
                                 (never-expires :target-type boolean :required
                                  common-lisp:t :member-name "NeverExpires"))
                                (:shape-name "ModifyBackupAttributesRequest"))

(smithy/sdk/shapes:define-output modify-backup-attributes-response
                                 common-lisp:nil
                                 ((backup :target-type backup :member-name
                                   "Backup"))
                                 (:shape-name "ModifyBackupAttributesResponse"))

(smithy/sdk/shapes:define-input modify-cluster-request common-lisp:nil
                                ((hsm-type :target-type hsm-type :member-name
                                  "HsmType")
                                 (backup-retention-policy :target-type
                                  backup-retention-policy :member-name
                                  "BackupRetentionPolicy")
                                 (cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId"))
                                (:shape-name "ModifyClusterRequest"))

(smithy/sdk/shapes:define-output modify-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "ModifyClusterResponse"))

(smithy/sdk/shapes:define-enum network-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:dualstack "DUALSTACK"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pre-co-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type cloud-hsm-arn
                                  :member-name "ResourceArn")
                                 (policy :target-type resource-policy
                                  :member-name "Policy"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((resource-arn :target-type cloud-hsm-arn
                                   :member-name "ResourceArn")
                                  (policy :target-type resource-policy
                                   :member-name "Policy"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input restore-backup-request common-lisp:nil
                                ((backup-id :target-type backup-id :required
                                  common-lisp:t :member-name "BackupId"))
                                (:shape-name "RestoreBackupRequest"))

(smithy/sdk/shapes:define-output restore-backup-response common-lisp:nil
                                 ((backup :target-type backup :member-name
                                   "Backup"))
                                 (:shape-name "RestoreBackupResponse"))

(smithy/sdk/shapes:define-type security-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type state-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list strings :member string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tag-list :target-type tag-list :required
                                  common-lisp:t :member-name "TagList"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tag-key-list :target-type tag-key-list
                                  :required common-lisp:t :member-name
                                  "TagKeyList"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation copy-backup-to-region :shape-name
                                       "CopyBackupToRegion" :input
                                       copy-backup-to-region-request :output
                                       copy-backup-to-region-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception
                                        cloud-hsm-tag-exception))

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception
                                        cloud-hsm-tag-exception))

(smithy/sdk/operation:define-operation create-hsm :shape-name "CreateHsm"
                                       :input create-hsm-request :output
                                       create-hsm-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation delete-backup :shape-name "DeleteBackup"
                                       :input delete-backup-request :output
                                       delete-backup-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-request :output
                                       delete-cluster-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception
                                        cloud-hsm-tag-exception))

(smithy/sdk/operation:define-operation delete-hsm :shape-name "DeleteHsm"
                                       :input delete-hsm-request :output
                                       delete-hsm-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation describe-backups :shape-name
                                       "DescribeBackups" :input
                                       describe-backups-request :output
                                       describe-backups-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception
                                        cloud-hsm-tag-exception))

(smithy/sdk/operation:define-operation describe-clusters :shape-name
                                       "DescribeClusters" :input
                                       describe-clusters-request :output
                                       describe-clusters-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-service-exception
                                        cloud-hsm-tag-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation initialize-cluster :shape-name
                                       "InitializeCluster" :input
                                       initialize-cluster-request :output
                                       initialize-cluster-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception
                                        cloud-hsm-tag-exception))

(smithy/sdk/operation:define-operation modify-backup-attributes :shape-name
                                       "ModifyBackupAttributes" :input
                                       modify-backup-attributes-request :output
                                       modify-backup-attributes-response
                                       :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation modify-cluster :shape-name
                                       "ModifyCluster" :input
                                       modify-cluster-request :output
                                       modify-cluster-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation restore-backup :shape-name
                                       "RestoreBackup" :input
                                       restore-backup-request :output
                                       restore-backup-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-limit-exceeded-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception
                                        cloud-hsm-tag-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (cloud-hsm-access-denied-exception
                                        cloud-hsm-internal-failure-exception
                                        cloud-hsm-invalid-request-exception
                                        cloud-hsm-resource-not-found-exception
                                        cloud-hsm-service-exception
                                        cloud-hsm-tag-exception))
