(uiop/package:define-package #:pira/datasync (:use)
                             (:export #:activation-key #:agent-arn
                              #:agent-arn-list #:agent-list #:agent-list-entry
                              #:agent-status #:agent-version #:atime
                              #:azure-access-tier
                              #:azure-blob-authentication-type
                              #:azure-blob-container-url
                              #:azure-blob-sas-configuration
                              #:azure-blob-sas-token #:azure-blob-subdirectory
                              #:azure-blob-type #:bytes-per-second
                              #:cancel-task-execution
                              #:cancel-task-execution-request
                              #:cancel-task-execution-response
                              #:cmk-secret-config #:create-agent
                              #:create-agent-request #:create-agent-response
                              #:create-location-azure-blob
                              #:create-location-azure-blob-request
                              #:create-location-azure-blob-response
                              #:create-location-efs
                              #:create-location-efs-request
                              #:create-location-efs-response
                              #:create-location-fsx-lustre
                              #:create-location-fsx-lustre-request
                              #:create-location-fsx-lustre-response
                              #:create-location-fsx-ontap
                              #:create-location-fsx-ontap-request
                              #:create-location-fsx-ontap-response
                              #:create-location-fsx-open-zfs
                              #:create-location-fsx-open-zfs-request
                              #:create-location-fsx-open-zfs-response
                              #:create-location-fsx-windows
                              #:create-location-fsx-windows-request
                              #:create-location-fsx-windows-response
                              #:create-location-hdfs
                              #:create-location-hdfs-request
                              #:create-location-hdfs-response
                              #:create-location-nfs
                              #:create-location-nfs-request
                              #:create-location-nfs-response
                              #:create-location-object-storage
                              #:create-location-object-storage-request
                              #:create-location-object-storage-response
                              #:create-location-s3 #:create-location-s3request
                              #:create-location-s3response
                              #:create-location-smb
                              #:create-location-smb-request
                              #:create-location-smb-response #:create-task
                              #:create-task-request #:create-task-response
                              #:custom-secret-config #:delete-agent
                              #:delete-agent-request #:delete-agent-response
                              #:delete-location #:delete-location-request
                              #:delete-location-response #:delete-task
                              #:delete-task-request #:delete-task-response
                              #:describe-agent #:describe-agent-request
                              #:describe-agent-response
                              #:describe-location-azure-blob
                              #:describe-location-azure-blob-request
                              #:describe-location-azure-blob-response
                              #:describe-location-efs
                              #:describe-location-efs-request
                              #:describe-location-efs-response
                              #:describe-location-fsx-lustre
                              #:describe-location-fsx-lustre-request
                              #:describe-location-fsx-lustre-response
                              #:describe-location-fsx-ontap
                              #:describe-location-fsx-ontap-request
                              #:describe-location-fsx-ontap-response
                              #:describe-location-fsx-open-zfs
                              #:describe-location-fsx-open-zfs-request
                              #:describe-location-fsx-open-zfs-response
                              #:describe-location-fsx-windows
                              #:describe-location-fsx-windows-request
                              #:describe-location-fsx-windows-response
                              #:describe-location-hdfs
                              #:describe-location-hdfs-request
                              #:describe-location-hdfs-response
                              #:describe-location-nfs
                              #:describe-location-nfs-request
                              #:describe-location-nfs-response
                              #:describe-location-object-storage
                              #:describe-location-object-storage-request
                              #:describe-location-object-storage-response
                              #:describe-location-s3
                              #:describe-location-s3request
                              #:describe-location-s3response
                              #:describe-location-smb
                              #:describe-location-smb-request
                              #:describe-location-smb-response #:describe-task
                              #:describe-task-execution
                              #:describe-task-execution-request
                              #:describe-task-execution-response
                              #:describe-task-request #:describe-task-response
                              #:destination-network-interface-arns
                              #:dns-ip-list #:duration #:ec2config
                              #:ec2security-group-arn
                              #:ec2security-group-arn-list #:ec2subnet-arn
                              #:efs-access-point-arn #:efs-filesystem-arn
                              #:efs-in-transit-encryption #:efs-subdirectory
                              #:endpoint #:endpoint-type
                              #:filter-attribute-value #:filter-list
                              #:filter-rule #:filter-type #:filter-value
                              #:filter-values #:fmrs-service
                              #:fsx-filesystem-arn #:fsx-lustre-subdirectory
                              #:fsx-ontap-subdirectory
                              #:fsx-open-zfs-subdirectory #:fsx-protocol
                              #:fsx-protocol-nfs #:fsx-protocol-smb
                              #:fsx-update-protocol #:fsx-update-protocol-smb
                              #:fsx-windows-subdirectory #:gid
                              #:hdfs-authentication-type #:hdfs-block-size
                              #:hdfs-data-transfer-protection #:hdfs-name-node
                              #:hdfs-name-node-list #:hdfs-replication-factor
                              #:hdfs-rpc-protection #:hdfs-server-hostname
                              #:hdfs-server-port #:hdfs-subdirectory
                              #:hdfs-user #:iam-role-arn
                              #:iam-role-arn-or-empty-string #:input-tag-list
                              #:internal-exception #:invalid-request-exception
                              #:kerberos-keytab-file #:kerberos-krb5conf-file
                              #:kerberos-principal #:kms-key-arn
                              #:kms-key-provider-uri #:list-agents
                              #:list-agents-request #:list-agents-response
                              #:list-locations #:list-locations-request
                              #:list-locations-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-task-executions
                              #:list-task-executions-request
                              #:list-task-executions-response #:list-tasks
                              #:list-tasks-request #:list-tasks-response
                              #:location-arn #:location-filter
                              #:location-filter-name #:location-filters
                              #:location-list #:location-list-entry
                              #:location-uri #:log-group-arn #:log-level
                              #:managed-secret-config #:manifest-action
                              #:manifest-config #:manifest-format #:max-results
                              #:mtime #:network-interface-arn #:next-token
                              #:nfs-mount-options #:nfs-subdirectory
                              #:nfs-version #:object-storage-access-key
                              #:object-storage-bucket-name
                              #:object-storage-certificate
                              #:object-storage-secret-key
                              #:object-storage-server-port
                              #:object-storage-server-protocol #:object-tags
                              #:object-version-ids #:on-prem-config #:operator
                              #:options #:output-tag-list #:overwrite-mode
                              #:plsecurity-group-arn-list #:plsubnet-arn-list
                              #:phase-status #:platform #:posix-permissions
                              #:preserve-deleted-files #:preserve-devices
                              #:private-link-config #:qop-configuration
                              #:report-destination #:report-destination-s3
                              #:report-level #:report-output-type
                              #:report-override #:report-overrides
                              #:report-result #:s3bucket-arn #:s3config
                              #:s3manifest-config #:s3object-version-id
                              #:s3storage-class #:s3subdirectory
                              #:schedule-disabled-by #:schedule-disabled-reason
                              #:schedule-expression-cron #:schedule-status
                              #:secret-arn #:server-hostname
                              #:server-ip-address #:smb-authentication-type
                              #:smb-domain #:smb-mount-options #:smb-password
                              #:smb-security-descriptor-copy-flags
                              #:smb-subdirectory #:smb-user #:smb-version
                              #:source-manifest-config
                              #:source-network-interface-arns
                              #:start-task-execution
                              #:start-task-execution-request
                              #:start-task-execution-response
                              #:storage-virtual-machine-arn #:tag-key
                              #:tag-key-list #:tag-list-entry #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:taggable-resource-arn #:task-arn
                              #:task-execution-arn
                              #:task-execution-files-failed-detail
                              #:task-execution-files-listed-detail
                              #:task-execution-list #:task-execution-list-entry
                              #:task-execution-result-detail
                              #:task-execution-status #:task-filter
                              #:task-filter-name #:task-filters #:task-list
                              #:task-list-entry #:task-mode #:task-queueing
                              #:task-report-config #:task-schedule
                              #:task-schedule-details #:task-status #:time
                              #:transfer-mode #:uid #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-agent
                              #:update-agent-request #:update-agent-response
                              #:update-location-azure-blob
                              #:update-location-azure-blob-request
                              #:update-location-azure-blob-response
                              #:update-location-efs
                              #:update-location-efs-request
                              #:update-location-efs-response
                              #:update-location-fsx-lustre
                              #:update-location-fsx-lustre-request
                              #:update-location-fsx-lustre-response
                              #:update-location-fsx-ontap
                              #:update-location-fsx-ontap-request
                              #:update-location-fsx-ontap-response
                              #:update-location-fsx-open-zfs
                              #:update-location-fsx-open-zfs-request
                              #:update-location-fsx-open-zfs-response
                              #:update-location-fsx-windows
                              #:update-location-fsx-windows-request
                              #:update-location-fsx-windows-response
                              #:update-location-hdfs
                              #:update-location-hdfs-request
                              #:update-location-hdfs-response
                              #:update-location-nfs
                              #:update-location-nfs-request
                              #:update-location-nfs-response
                              #:update-location-object-storage
                              #:update-location-object-storage-request
                              #:update-location-object-storage-response
                              #:update-location-s3 #:update-location-s3request
                              #:update-location-s3response
                              #:update-location-smb
                              #:update-location-smb-request
                              #:update-location-smb-response
                              #:update-smb-domain #:update-task
                              #:update-task-execution
                              #:update-task-execution-request
                              #:update-task-execution-response
                              #:update-task-request #:update-task-response
                              #:updated-efs-access-point-arn
                              #:updated-efs-iam-role-arn #:verify-mode
                              #:vpc-endpoint-id #:long #:string))
(common-lisp:in-package #:pira/datasync)

(smithy/sdk/service:define-service fmrs-service :shape-name "FmrsService"
                                   :version "2018-11-09" :title "AWS DataSync"
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "DataSync")
                                      ("arnNamespace" . "datasync")
                                      ("cloudFormationName" . "DataSync")
                                      ("cloudTrailEventSource"
                                       . "datasync.amazonaws.com")
                                      ("endpointPrefix" . "datasync"))
                                     ("aws.auth#sigv4" ("name" . "datasync"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type activation-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list agent-arn-list :member agent-arn)

(smithy/sdk/shapes:define-list agent-list :member agent-list-entry)

(smithy/sdk/shapes:define-structure agent-list-entry common-lisp:nil
                                    ((agent-arn :target-type agent-arn
                                      :member-name "AgentArn")
                                     (name :target-type tag-value :member-name
                                      "Name")
                                     (status :target-type agent-status
                                      :member-name "Status")
                                     (platform :target-type platform
                                      :member-name "Platform"))
                                    (:shape-name "AgentListEntry"))

(smithy/sdk/shapes:define-enum agent-status
    common-lisp:nil
  (:online "ONLINE")
  (:offline "OFFLINE"))

(smithy/sdk/shapes:define-type agent-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum atime
    common-lisp:nil
  (:none "NONE")
  (:best-effort "BEST_EFFORT"))

(smithy/sdk/shapes:define-enum azure-access-tier
    common-lisp:nil
  (:hot "HOT")
  (:cool "COOL")
  (:archive "ARCHIVE"))

(smithy/sdk/shapes:define-enum azure-blob-authentication-type
    common-lisp:nil
  (:sas "SAS")
  (:none "NONE"))

(smithy/sdk/shapes:define-type azure-blob-container-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure azure-blob-sas-configuration
                                    common-lisp:nil
                                    ((token :target-type azure-blob-sas-token
                                      :required common-lisp:t :member-name
                                      "Token"))
                                    (:shape-name "AzureBlobSasConfiguration"))

(smithy/sdk/shapes:define-type azure-blob-sas-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type azure-blob-subdirectory
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum azure-blob-type
    common-lisp:nil
  (:block "BLOCK"))

(smithy/sdk/shapes:define-type bytes-per-second smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input cancel-task-execution-request common-lisp:nil
                                ((task-execution-arn :target-type
                                  task-execution-arn :required common-lisp:t
                                  :member-name "TaskExecutionArn"))
                                (:shape-name "CancelTaskExecutionRequest"))

(smithy/sdk/shapes:define-output cancel-task-execution-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelTaskExecutionResponse"))

(smithy/sdk/shapes:define-structure cmk-secret-config common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :member-name "SecretArn")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyArn"))
                                    (:shape-name "CmkSecretConfig"))

(smithy/sdk/shapes:define-input create-agent-request common-lisp:nil
                                ((activation-key :target-type activation-key
                                  :required common-lisp:t :member-name
                                  "ActivationKey")
                                 (agent-name :target-type tag-value
                                  :member-name "AgentName")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags")
                                 (vpc-endpoint-id :target-type vpc-endpoint-id
                                  :member-name "VpcEndpointId")
                                 (subnet-arns :target-type plsubnet-arn-list
                                  :member-name "SubnetArns")
                                 (security-group-arns :target-type
                                  plsecurity-group-arn-list :member-name
                                  "SecurityGroupArns"))
                                (:shape-name "CreateAgentRequest"))

(smithy/sdk/shapes:define-output create-agent-response common-lisp:nil
                                 ((agent-arn :target-type agent-arn
                                   :member-name "AgentArn"))
                                 (:shape-name "CreateAgentResponse"))

(smithy/sdk/shapes:define-input create-location-azure-blob-request
                                common-lisp:nil
                                ((container-url :target-type
                                  azure-blob-container-url :required
                                  common-lisp:t :member-name "ContainerUrl")
                                 (authentication-type :target-type
                                  azure-blob-authentication-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationType")
                                 (sas-configuration :target-type
                                  azure-blob-sas-configuration :member-name
                                  "SasConfiguration")
                                 (blob-type :target-type azure-blob-type
                                  :member-name "BlobType")
                                 (access-tier :target-type azure-access-tier
                                  :member-name "AccessTier")
                                 (subdirectory :target-type
                                  azure-blob-subdirectory :member-name
                                  "Subdirectory")
                                 (agent-arns :target-type agent-arn-list
                                  :member-name "AgentArns")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags")
                                 (cmk-secret-config :target-type
                                  cmk-secret-config :member-name
                                  "CmkSecretConfig")
                                 (custom-secret-config :target-type
                                  custom-secret-config :member-name
                                  "CustomSecretConfig"))
                                (:shape-name "CreateLocationAzureBlobRequest"))

(smithy/sdk/shapes:define-output create-location-azure-blob-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name
                                  "CreateLocationAzureBlobResponse"))

(smithy/sdk/shapes:define-input create-location-efs-request common-lisp:nil
                                ((subdirectory :target-type efs-subdirectory
                                  :member-name "Subdirectory")
                                 (efs-filesystem-arn :target-type
                                  efs-filesystem-arn :required common-lisp:t
                                  :member-name "EfsFilesystemArn")
                                 (ec2config :target-type ec2config :required
                                  common-lisp:t :member-name "Ec2Config")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags")
                                 (access-point-arn :target-type
                                  efs-access-point-arn :member-name
                                  "AccessPointArn")
                                 (file-system-access-role-arn :target-type
                                  iam-role-arn :member-name
                                  "FileSystemAccessRoleArn")
                                 (in-transit-encryption :target-type
                                  efs-in-transit-encryption :member-name
                                  "InTransitEncryption"))
                                (:shape-name "CreateLocationEfsRequest"))

(smithy/sdk/shapes:define-output create-location-efs-response common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name "CreateLocationEfsResponse"))

(smithy/sdk/shapes:define-input create-location-fsx-lustre-request
                                common-lisp:nil
                                ((fsx-filesystem-arn :target-type
                                  fsx-filesystem-arn :required common-lisp:t
                                  :member-name "FsxFilesystemArn")
                                 (security-group-arns :target-type
                                  ec2security-group-arn-list :required
                                  common-lisp:t :member-name
                                  "SecurityGroupArns")
                                 (subdirectory :target-type
                                  fsx-lustre-subdirectory :member-name
                                  "Subdirectory")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLocationFsxLustreRequest"))

(smithy/sdk/shapes:define-output create-location-fsx-lustre-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name
                                  "CreateLocationFsxLustreResponse"))

(smithy/sdk/shapes:define-input create-location-fsx-ontap-request
                                common-lisp:nil
                                ((protocol :target-type fsx-protocol :required
                                  common-lisp:t :member-name "Protocol")
                                 (security-group-arns :target-type
                                  ec2security-group-arn-list :required
                                  common-lisp:t :member-name
                                  "SecurityGroupArns")
                                 (storage-virtual-machine-arn :target-type
                                  storage-virtual-machine-arn :required
                                  common-lisp:t :member-name
                                  "StorageVirtualMachineArn")
                                 (subdirectory :target-type
                                  fsx-ontap-subdirectory :member-name
                                  "Subdirectory")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLocationFsxOntapRequest"))

(smithy/sdk/shapes:define-output create-location-fsx-ontap-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name "CreateLocationFsxOntapResponse"))

(smithy/sdk/shapes:define-input create-location-fsx-open-zfs-request
                                common-lisp:nil
                                ((fsx-filesystem-arn :target-type
                                  fsx-filesystem-arn :required common-lisp:t
                                  :member-name "FsxFilesystemArn")
                                 (protocol :target-type fsx-protocol :required
                                  common-lisp:t :member-name "Protocol")
                                 (security-group-arns :target-type
                                  ec2security-group-arn-list :required
                                  common-lisp:t :member-name
                                  "SecurityGroupArns")
                                 (subdirectory :target-type
                                  fsx-open-zfs-subdirectory :member-name
                                  "Subdirectory")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLocationFsxOpenZfsRequest"))

(smithy/sdk/shapes:define-output create-location-fsx-open-zfs-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name
                                  "CreateLocationFsxOpenZfsResponse"))

(smithy/sdk/shapes:define-input create-location-fsx-windows-request
                                common-lisp:nil
                                ((subdirectory :target-type
                                  fsx-windows-subdirectory :member-name
                                  "Subdirectory")
                                 (fsx-filesystem-arn :target-type
                                  fsx-filesystem-arn :required common-lisp:t
                                  :member-name "FsxFilesystemArn")
                                 (security-group-arns :target-type
                                  ec2security-group-arn-list :required
                                  common-lisp:t :member-name
                                  "SecurityGroupArns")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags")
                                 (user :target-type smb-user :required
                                  common-lisp:t :member-name "User")
                                 (domain :target-type smb-domain :member-name
                                  "Domain")
                                 (password :target-type smb-password :required
                                  common-lisp:t :member-name "Password"))
                                (:shape-name "CreateLocationFsxWindowsRequest"))

(smithy/sdk/shapes:define-output create-location-fsx-windows-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name
                                  "CreateLocationFsxWindowsResponse"))

(smithy/sdk/shapes:define-input create-location-hdfs-request common-lisp:nil
                                ((subdirectory :target-type hdfs-subdirectory
                                  :member-name "Subdirectory")
                                 (name-nodes :target-type hdfs-name-node-list
                                  :required common-lisp:t :member-name
                                  "NameNodes")
                                 (block-size :target-type hdfs-block-size
                                  :member-name "BlockSize")
                                 (replication-factor :target-type
                                  hdfs-replication-factor :member-name
                                  "ReplicationFactor")
                                 (kms-key-provider-uri :target-type
                                  kms-key-provider-uri :member-name
                                  "KmsKeyProviderUri")
                                 (qop-configuration :target-type
                                  qop-configuration :member-name
                                  "QopConfiguration")
                                 (authentication-type :target-type
                                  hdfs-authentication-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationType")
                                 (simple-user :target-type hdfs-user
                                  :member-name "SimpleUser")
                                 (kerberos-principal :target-type
                                  kerberos-principal :member-name
                                  "KerberosPrincipal")
                                 (kerberos-keytab :target-type
                                  kerberos-keytab-file :member-name
                                  "KerberosKeytab")
                                 (kerberos-krb5conf :target-type
                                  kerberos-krb5conf-file :member-name
                                  "KerberosKrb5Conf")
                                 (agent-arns :target-type agent-arn-list
                                  :required common-lisp:t :member-name
                                  "AgentArns")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLocationHdfsRequest"))

(smithy/sdk/shapes:define-output create-location-hdfs-response common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name "CreateLocationHdfsResponse"))

(smithy/sdk/shapes:define-input create-location-nfs-request common-lisp:nil
                                ((subdirectory :target-type nfs-subdirectory
                                  :required common-lisp:t :member-name
                                  "Subdirectory")
                                 (server-hostname :target-type server-hostname
                                  :required common-lisp:t :member-name
                                  "ServerHostname")
                                 (on-prem-config :target-type on-prem-config
                                  :required common-lisp:t :member-name
                                  "OnPremConfig")
                                 (mount-options :target-type nfs-mount-options
                                  :member-name "MountOptions")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLocationNfsRequest"))

(smithy/sdk/shapes:define-output create-location-nfs-response common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name "CreateLocationNfsResponse"))

(smithy/sdk/shapes:define-input create-location-object-storage-request
                                common-lisp:nil
                                ((server-hostname :target-type server-hostname
                                  :required common-lisp:t :member-name
                                  "ServerHostname")
                                 (server-port :target-type
                                  object-storage-server-port :member-name
                                  "ServerPort")
                                 (server-protocol :target-type
                                  object-storage-server-protocol :member-name
                                  "ServerProtocol")
                                 (subdirectory :target-type s3subdirectory
                                  :member-name "Subdirectory")
                                 (bucket-name :target-type
                                  object-storage-bucket-name :required
                                  common-lisp:t :member-name "BucketName")
                                 (access-key :target-type
                                  object-storage-access-key :member-name
                                  "AccessKey")
                                 (secret-key :target-type
                                  object-storage-secret-key :member-name
                                  "SecretKey")
                                 (agent-arns :target-type agent-arn-list
                                  :member-name "AgentArns")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags")
                                 (server-certificate :target-type
                                  object-storage-certificate :member-name
                                  "ServerCertificate")
                                 (cmk-secret-config :target-type
                                  cmk-secret-config :member-name
                                  "CmkSecretConfig")
                                 (custom-secret-config :target-type
                                  custom-secret-config :member-name
                                  "CustomSecretConfig"))
                                (:shape-name
                                 "CreateLocationObjectStorageRequest"))

(smithy/sdk/shapes:define-output create-location-object-storage-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name
                                  "CreateLocationObjectStorageResponse"))

(smithy/sdk/shapes:define-input create-location-s3request common-lisp:nil
                                ((subdirectory :target-type s3subdirectory
                                  :member-name "Subdirectory")
                                 (s3bucket-arn :target-type s3bucket-arn
                                  :required common-lisp:t :member-name
                                  "S3BucketArn")
                                 (s3storage-class :target-type s3storage-class
                                  :member-name "S3StorageClass")
                                 (s3config :target-type s3config :required
                                  common-lisp:t :member-name "S3Config")
                                 (agent-arns :target-type agent-arn-list
                                  :member-name "AgentArns")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLocationS3Request"))

(smithy/sdk/shapes:define-output create-location-s3response common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name "CreateLocationS3Response"))

(smithy/sdk/shapes:define-input create-location-smb-request common-lisp:nil
                                ((subdirectory :target-type smb-subdirectory
                                  :required common-lisp:t :member-name
                                  "Subdirectory")
                                 (server-hostname :target-type server-hostname
                                  :required common-lisp:t :member-name
                                  "ServerHostname")
                                 (user :target-type smb-user :member-name
                                  "User")
                                 (domain :target-type smb-domain :member-name
                                  "Domain")
                                 (password :target-type smb-password
                                  :member-name "Password")
                                 (agent-arns :target-type agent-arn-list
                                  :required common-lisp:t :member-name
                                  "AgentArns")
                                 (mount-options :target-type smb-mount-options
                                  :member-name "MountOptions")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags")
                                 (authentication-type :target-type
                                  smb-authentication-type :member-name
                                  "AuthenticationType")
                                 (dns-ip-addresses :target-type dns-ip-list
                                  :member-name "DnsIpAddresses")
                                 (kerberos-principal :target-type
                                  kerberos-principal :member-name
                                  "KerberosPrincipal")
                                 (kerberos-keytab :target-type
                                  kerberos-keytab-file :member-name
                                  "KerberosKeytab")
                                 (kerberos-krb5conf :target-type
                                  kerberos-krb5conf-file :member-name
                                  "KerberosKrb5Conf"))
                                (:shape-name "CreateLocationSmbRequest"))

(smithy/sdk/shapes:define-output create-location-smb-response common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn"))
                                 (:shape-name "CreateLocationSmbResponse"))

(smithy/sdk/shapes:define-input create-task-request common-lisp:nil
                                ((source-location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "SourceLocationArn")
                                 (destination-location-arn :target-type
                                  location-arn :required common-lisp:t
                                  :member-name "DestinationLocationArn")
                                 (cloud-watch-log-group-arn :target-type
                                  log-group-arn :member-name
                                  "CloudWatchLogGroupArn")
                                 (name :target-type tag-value :member-name
                                  "Name")
                                 (options :target-type options :member-name
                                  "Options")
                                 (excludes :target-type filter-list
                                  :member-name "Excludes")
                                 (schedule :target-type task-schedule
                                  :member-name "Schedule")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags")
                                 (includes :target-type filter-list
                                  :member-name "Includes")
                                 (manifest-config :target-type manifest-config
                                  :member-name "ManifestConfig")
                                 (task-report-config :target-type
                                  task-report-config :member-name
                                  "TaskReportConfig")
                                 (task-mode :target-type task-mode :member-name
                                  "TaskMode"))
                                (:shape-name "CreateTaskRequest"))

(smithy/sdk/shapes:define-output create-task-response common-lisp:nil
                                 ((task-arn :target-type task-arn :member-name
                                   "TaskArn"))
                                 (:shape-name "CreateTaskResponse"))

(smithy/sdk/shapes:define-structure custom-secret-config common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :member-name "SecretArn")
                                     (secret-access-role-arn :target-type
                                      iam-role-arn-or-empty-string :member-name
                                      "SecretAccessRoleArn"))
                                    (:shape-name "CustomSecretConfig"))

(smithy/sdk/shapes:define-input delete-agent-request common-lisp:nil
                                ((agent-arn :target-type agent-arn :required
                                  common-lisp:t :member-name "AgentArn"))
                                (:shape-name "DeleteAgentRequest"))

(smithy/sdk/shapes:define-output delete-agent-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAgentResponse"))

(smithy/sdk/shapes:define-input delete-location-request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name "DeleteLocationRequest"))

(smithy/sdk/shapes:define-output delete-location-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLocationResponse"))

(smithy/sdk/shapes:define-input delete-task-request common-lisp:nil
                                ((task-arn :target-type task-arn :required
                                  common-lisp:t :member-name "TaskArn"))
                                (:shape-name "DeleteTaskRequest"))

(smithy/sdk/shapes:define-output delete-task-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTaskResponse"))

(smithy/sdk/shapes:define-input describe-agent-request common-lisp:nil
                                ((agent-arn :target-type agent-arn :required
                                  common-lisp:t :member-name "AgentArn"))
                                (:shape-name "DescribeAgentRequest"))

(smithy/sdk/shapes:define-output describe-agent-response common-lisp:nil
                                 ((agent-arn :target-type agent-arn
                                   :member-name "AgentArn")
                                  (name :target-type tag-value :member-name
                                   "Name")
                                  (status :target-type agent-status
                                   :member-name "Status")
                                  (last-connection-time :target-type time
                                   :member-name "LastConnectionTime")
                                  (creation-time :target-type time :member-name
                                   "CreationTime")
                                  (endpoint-type :target-type endpoint-type
                                   :member-name "EndpointType")
                                  (private-link-config :target-type
                                   private-link-config :member-name
                                   "PrivateLinkConfig")
                                  (platform :target-type platform :member-name
                                   "Platform"))
                                 (:shape-name "DescribeAgentResponse"))

(smithy/sdk/shapes:define-input describe-location-azure-blob-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name
                                 "DescribeLocationAzureBlobRequest"))

(smithy/sdk/shapes:define-output describe-location-azure-blob-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (authentication-type :target-type
                                   azure-blob-authentication-type :member-name
                                   "AuthenticationType")
                                  (blob-type :target-type azure-blob-type
                                   :member-name "BlobType")
                                  (access-tier :target-type azure-access-tier
                                   :member-name "AccessTier")
                                  (agent-arns :target-type agent-arn-list
                                   :member-name "AgentArns")
                                  (creation-time :target-type time :member-name
                                   "CreationTime")
                                  (managed-secret-config :target-type
                                   managed-secret-config :member-name
                                   "ManagedSecretConfig")
                                  (cmk-secret-config :target-type
                                   cmk-secret-config :member-name
                                   "CmkSecretConfig")
                                  (custom-secret-config :target-type
                                   custom-secret-config :member-name
                                   "CustomSecretConfig"))
                                 (:shape-name
                                  "DescribeLocationAzureBlobResponse"))

(smithy/sdk/shapes:define-input describe-location-efs-request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name "DescribeLocationEfsRequest"))

(smithy/sdk/shapes:define-output describe-location-efs-response common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (ec2config :target-type ec2config
                                   :member-name "Ec2Config")
                                  (creation-time :target-type time :member-name
                                   "CreationTime")
                                  (access-point-arn :target-type
                                   efs-access-point-arn :member-name
                                   "AccessPointArn")
                                  (file-system-access-role-arn :target-type
                                   iam-role-arn :member-name
                                   "FileSystemAccessRoleArn")
                                  (in-transit-encryption :target-type
                                   efs-in-transit-encryption :member-name
                                   "InTransitEncryption"))
                                 (:shape-name "DescribeLocationEfsResponse"))

(smithy/sdk/shapes:define-input describe-location-fsx-lustre-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name
                                 "DescribeLocationFsxLustreRequest"))

(smithy/sdk/shapes:define-output describe-location-fsx-lustre-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (security-group-arns :target-type
                                   ec2security-group-arn-list :member-name
                                   "SecurityGroupArns")
                                  (creation-time :target-type time :member-name
                                   "CreationTime"))
                                 (:shape-name
                                  "DescribeLocationFsxLustreResponse"))

(smithy/sdk/shapes:define-input describe-location-fsx-ontap-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name "DescribeLocationFsxOntapRequest"))

(smithy/sdk/shapes:define-output describe-location-fsx-ontap-response
                                 common-lisp:nil
                                 ((creation-time :target-type time :member-name
                                   "CreationTime")
                                  (location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (protocol :target-type fsx-protocol
                                   :member-name "Protocol")
                                  (security-group-arns :target-type
                                   ec2security-group-arn-list :member-name
                                   "SecurityGroupArns")
                                  (storage-virtual-machine-arn :target-type
                                   storage-virtual-machine-arn :member-name
                                   "StorageVirtualMachineArn")
                                  (fsx-filesystem-arn :target-type
                                   fsx-filesystem-arn :member-name
                                   "FsxFilesystemArn"))
                                 (:shape-name
                                  "DescribeLocationFsxOntapResponse"))

(smithy/sdk/shapes:define-input describe-location-fsx-open-zfs-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name
                                 "DescribeLocationFsxOpenZfsRequest"))

(smithy/sdk/shapes:define-output describe-location-fsx-open-zfs-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (security-group-arns :target-type
                                   ec2security-group-arn-list :member-name
                                   "SecurityGroupArns")
                                  (protocol :target-type fsx-protocol
                                   :member-name "Protocol")
                                  (creation-time :target-type time :member-name
                                   "CreationTime"))
                                 (:shape-name
                                  "DescribeLocationFsxOpenZfsResponse"))

(smithy/sdk/shapes:define-input describe-location-fsx-windows-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name
                                 "DescribeLocationFsxWindowsRequest"))

(smithy/sdk/shapes:define-output describe-location-fsx-windows-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (security-group-arns :target-type
                                   ec2security-group-arn-list :member-name
                                   "SecurityGroupArns")
                                  (creation-time :target-type time :member-name
                                   "CreationTime")
                                  (user :target-type smb-user :member-name
                                   "User")
                                  (domain :target-type smb-domain :member-name
                                   "Domain"))
                                 (:shape-name
                                  "DescribeLocationFsxWindowsResponse"))

(smithy/sdk/shapes:define-input describe-location-hdfs-request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name "DescribeLocationHdfsRequest"))

(smithy/sdk/shapes:define-output describe-location-hdfs-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (name-nodes :target-type hdfs-name-node-list
                                   :member-name "NameNodes")
                                  (block-size :target-type hdfs-block-size
                                   :member-name "BlockSize")
                                  (replication-factor :target-type
                                   hdfs-replication-factor :member-name
                                   "ReplicationFactor")
                                  (kms-key-provider-uri :target-type
                                   kms-key-provider-uri :member-name
                                   "KmsKeyProviderUri")
                                  (qop-configuration :target-type
                                   qop-configuration :member-name
                                   "QopConfiguration")
                                  (authentication-type :target-type
                                   hdfs-authentication-type :member-name
                                   "AuthenticationType")
                                  (simple-user :target-type hdfs-user
                                   :member-name "SimpleUser")
                                  (kerberos-principal :target-type
                                   kerberos-principal :member-name
                                   "KerberosPrincipal")
                                  (agent-arns :target-type agent-arn-list
                                   :member-name "AgentArns")
                                  (creation-time :target-type time :member-name
                                   "CreationTime"))
                                 (:shape-name "DescribeLocationHdfsResponse"))

(smithy/sdk/shapes:define-input describe-location-nfs-request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name "DescribeLocationNfsRequest"))

(smithy/sdk/shapes:define-output describe-location-nfs-response common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (on-prem-config :target-type on-prem-config
                                   :member-name "OnPremConfig")
                                  (mount-options :target-type nfs-mount-options
                                   :member-name "MountOptions")
                                  (creation-time :target-type time :member-name
                                   "CreationTime"))
                                 (:shape-name "DescribeLocationNfsResponse"))

(smithy/sdk/shapes:define-input describe-location-object-storage-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name
                                 "DescribeLocationObjectStorageRequest"))

(smithy/sdk/shapes:define-output describe-location-object-storage-response
                                 common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (access-key :target-type
                                   object-storage-access-key :member-name
                                   "AccessKey")
                                  (server-port :target-type
                                   object-storage-server-port :member-name
                                   "ServerPort")
                                  (server-protocol :target-type
                                   object-storage-server-protocol :member-name
                                   "ServerProtocol")
                                  (agent-arns :target-type agent-arn-list
                                   :member-name "AgentArns")
                                  (creation-time :target-type time :member-name
                                   "CreationTime")
                                  (server-certificate :target-type
                                   object-storage-certificate :member-name
                                   "ServerCertificate")
                                  (managed-secret-config :target-type
                                   managed-secret-config :member-name
                                   "ManagedSecretConfig")
                                  (cmk-secret-config :target-type
                                   cmk-secret-config :member-name
                                   "CmkSecretConfig")
                                  (custom-secret-config :target-type
                                   custom-secret-config :member-name
                                   "CustomSecretConfig"))
                                 (:shape-name
                                  "DescribeLocationObjectStorageResponse"))

(smithy/sdk/shapes:define-input describe-location-s3request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name "DescribeLocationS3Request"))

(smithy/sdk/shapes:define-output describe-location-s3response common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (s3storage-class :target-type s3storage-class
                                   :member-name "S3StorageClass")
                                  (s3config :target-type s3config :member-name
                                   "S3Config")
                                  (agent-arns :target-type agent-arn-list
                                   :member-name "AgentArns")
                                  (creation-time :target-type time :member-name
                                   "CreationTime"))
                                 (:shape-name "DescribeLocationS3Response"))

(smithy/sdk/shapes:define-input describe-location-smb-request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn"))
                                (:shape-name "DescribeLocationSmbRequest"))

(smithy/sdk/shapes:define-output describe-location-smb-response common-lisp:nil
                                 ((location-arn :target-type location-arn
                                   :member-name "LocationArn")
                                  (location-uri :target-type location-uri
                                   :member-name "LocationUri")
                                  (agent-arns :target-type agent-arn-list
                                   :member-name "AgentArns")
                                  (user :target-type smb-user :member-name
                                   "User")
                                  (domain :target-type smb-domain :member-name
                                   "Domain")
                                  (mount-options :target-type smb-mount-options
                                   :member-name "MountOptions")
                                  (creation-time :target-type time :member-name
                                   "CreationTime")
                                  (dns-ip-addresses :target-type dns-ip-list
                                   :member-name "DnsIpAddresses")
                                  (kerberos-principal :target-type
                                   kerberos-principal :member-name
                                   "KerberosPrincipal")
                                  (authentication-type :target-type
                                   smb-authentication-type :member-name
                                   "AuthenticationType"))
                                 (:shape-name "DescribeLocationSmbResponse"))

(smithy/sdk/shapes:define-input describe-task-execution-request common-lisp:nil
                                ((task-execution-arn :target-type
                                  task-execution-arn :required common-lisp:t
                                  :member-name "TaskExecutionArn"))
                                (:shape-name "DescribeTaskExecutionRequest"))

(smithy/sdk/shapes:define-output describe-task-execution-response
                                 common-lisp:nil
                                 ((task-execution-arn :target-type
                                   task-execution-arn :member-name
                                   "TaskExecutionArn")
                                  (status :target-type task-execution-status
                                   :member-name "Status")
                                  (options :target-type options :member-name
                                   "Options")
                                  (excludes :target-type filter-list
                                   :member-name "Excludes")
                                  (includes :target-type filter-list
                                   :member-name "Includes")
                                  (manifest-config :target-type manifest-config
                                   :member-name "ManifestConfig")
                                  (start-time :target-type time :member-name
                                   "StartTime")
                                  (estimated-files-to-transfer :target-type
                                   long :member-name
                                   "EstimatedFilesToTransfer")
                                  (estimated-bytes-to-transfer :target-type
                                   long :member-name
                                   "EstimatedBytesToTransfer")
                                  (files-transferred :target-type long
                                   :member-name "FilesTransferred")
                                  (bytes-written :target-type long :member-name
                                   "BytesWritten")
                                  (bytes-transferred :target-type long
                                   :member-name "BytesTransferred")
                                  (bytes-compressed :target-type long
                                   :member-name "BytesCompressed")
                                  (result :target-type
                                   task-execution-result-detail :member-name
                                   "Result")
                                  (task-report-config :target-type
                                   task-report-config :member-name
                                   "TaskReportConfig")
                                  (files-deleted :target-type long :member-name
                                   "FilesDeleted")
                                  (files-skipped :target-type long :member-name
                                   "FilesSkipped")
                                  (files-verified :target-type long
                                   :member-name "FilesVerified")
                                  (report-result :target-type report-result
                                   :member-name "ReportResult")
                                  (estimated-files-to-delete :target-type long
                                   :member-name "EstimatedFilesToDelete")
                                  (task-mode :target-type task-mode
                                   :member-name "TaskMode")
                                  (files-prepared :target-type long
                                   :member-name "FilesPrepared")
                                  (files-listed :target-type
                                   task-execution-files-listed-detail
                                   :member-name "FilesListed")
                                  (files-failed :target-type
                                   task-execution-files-failed-detail
                                   :member-name "FilesFailed")
                                  (launch-time :target-type time :member-name
                                   "LaunchTime")
                                  (end-time :target-type time :member-name
                                   "EndTime"))
                                 (:shape-name "DescribeTaskExecutionResponse"))

(smithy/sdk/shapes:define-input describe-task-request common-lisp:nil
                                ((task-arn :target-type task-arn :required
                                  common-lisp:t :member-name "TaskArn"))
                                (:shape-name "DescribeTaskRequest"))

(smithy/sdk/shapes:define-output describe-task-response common-lisp:nil
                                 ((task-arn :target-type task-arn :member-name
                                   "TaskArn")
                                  (status :target-type task-status :member-name
                                   "Status")
                                  (name :target-type tag-value :member-name
                                   "Name")
                                  (current-task-execution-arn :target-type
                                   task-execution-arn :member-name
                                   "CurrentTaskExecutionArn")
                                  (source-location-arn :target-type
                                   location-arn :member-name
                                   "SourceLocationArn")
                                  (destination-location-arn :target-type
                                   location-arn :member-name
                                   "DestinationLocationArn")
                                  (cloud-watch-log-group-arn :target-type
                                   log-group-arn :member-name
                                   "CloudWatchLogGroupArn")
                                  (source-network-interface-arns :target-type
                                   source-network-interface-arns :member-name
                                   "SourceNetworkInterfaceArns")
                                  (destination-network-interface-arns
                                   :target-type
                                   destination-network-interface-arns
                                   :member-name
                                   "DestinationNetworkInterfaceArns")
                                  (options :target-type options :member-name
                                   "Options")
                                  (excludes :target-type filter-list
                                   :member-name "Excludes")
                                  (schedule :target-type task-schedule
                                   :member-name "Schedule")
                                  (error-code :target-type string :member-name
                                   "ErrorCode")
                                  (error-detail :target-type string
                                   :member-name "ErrorDetail")
                                  (creation-time :target-type time :member-name
                                   "CreationTime")
                                  (includes :target-type filter-list
                                   :member-name "Includes")
                                  (manifest-config :target-type manifest-config
                                   :member-name "ManifestConfig")
                                  (task-report-config :target-type
                                   task-report-config :member-name
                                   "TaskReportConfig")
                                  (schedule-details :target-type
                                   task-schedule-details :member-name
                                   "ScheduleDetails")
                                  (task-mode :target-type task-mode
                                   :member-name "TaskMode"))
                                 (:shape-name "DescribeTaskResponse"))

(smithy/sdk/shapes:define-list destination-network-interface-arns :member
                               network-interface-arn)

(smithy/sdk/shapes:define-list dns-ip-list :member server-ip-address)

(smithy/sdk/shapes:define-type duration smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure ec2config common-lisp:nil
                                    ((subnet-arn :target-type ec2subnet-arn
                                      :required common-lisp:t :member-name
                                      "SubnetArn")
                                     (security-group-arns :target-type
                                      ec2security-group-arn-list :required
                                      common-lisp:t :member-name
                                      "SecurityGroupArns"))
                                    (:shape-name "Ec2Config"))

(smithy/sdk/shapes:define-type ec2security-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ec2security-group-arn-list :member
                               ec2security-group-arn)

(smithy/sdk/shapes:define-type ec2subnet-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type efs-access-point-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type efs-filesystem-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum efs-in-transit-encryption
    common-lisp:nil
  (:none "NONE")
  (:tls1-2 "TLS1_2"))

(smithy/sdk/shapes:define-type efs-subdirectory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum endpoint-type
    common-lisp:nil
  (:public "PUBLIC")
  (:private-link "PRIVATE_LINK")
  (:fips "FIPS"))

(smithy/sdk/shapes:define-type filter-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-list :member filter-rule)

(smithy/sdk/shapes:define-structure filter-rule common-lisp:nil
                                    ((filter-type :target-type filter-type
                                      :member-name "FilterType")
                                     (value :target-type filter-value
                                      :member-name "Value"))
                                    (:shape-name "FilterRule"))

(smithy/sdk/shapes:define-enum filter-type
    common-lisp:nil
  (:simple-pattern "SIMPLE_PATTERN"))

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member filter-attribute-value)

(smithy/sdk/shapes:define-type fsx-filesystem-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fsx-lustre-subdirectory
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fsx-ontap-subdirectory
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fsx-open-zfs-subdirectory
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fsx-protocol common-lisp:nil
                                    ((nfs :target-type fsx-protocol-nfs
                                      :member-name "NFS")
                                     (smb :target-type fsx-protocol-smb
                                      :member-name "SMB"))
                                    (:shape-name "FsxProtocol"))

(smithy/sdk/shapes:define-structure fsx-protocol-nfs common-lisp:nil
                                    ((mount-options :target-type
                                      nfs-mount-options :member-name
                                      "MountOptions"))
                                    (:shape-name "FsxProtocolNfs"))

(smithy/sdk/shapes:define-structure fsx-protocol-smb common-lisp:nil
                                    ((domain :target-type smb-domain
                                      :member-name "Domain")
                                     (mount-options :target-type
                                      smb-mount-options :member-name
                                      "MountOptions")
                                     (password :target-type smb-password
                                      :required common-lisp:t :member-name
                                      "Password")
                                     (user :target-type smb-user :required
                                      common-lisp:t :member-name "User"))
                                    (:shape-name "FsxProtocolSmb"))

(smithy/sdk/shapes:define-structure fsx-update-protocol common-lisp:nil
                                    ((nfs :target-type fsx-protocol-nfs
                                      :member-name "NFS")
                                     (smb :target-type fsx-update-protocol-smb
                                      :member-name "SMB"))
                                    (:shape-name "FsxUpdateProtocol"))

(smithy/sdk/shapes:define-structure fsx-update-protocol-smb common-lisp:nil
                                    ((domain :target-type update-smb-domain
                                      :member-name "Domain")
                                     (mount-options :target-type
                                      smb-mount-options :member-name
                                      "MountOptions")
                                     (password :target-type smb-password
                                      :member-name "Password")
                                     (user :target-type smb-user :member-name
                                      "User"))
                                    (:shape-name "FsxUpdateProtocolSmb"))

(smithy/sdk/shapes:define-type fsx-windows-subdirectory
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum gid
    common-lisp:nil
  (:none "NONE")
  (:int-value "INT_VALUE")
  (:name "NAME")
  (:both "BOTH"))

(smithy/sdk/shapes:define-enum hdfs-authentication-type
    common-lisp:nil
  (:simple "SIMPLE")
  (:kerberos "KERBEROS"))

(smithy/sdk/shapes:define-type hdfs-block-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum hdfs-data-transfer-protection
    common-lisp:nil
  (:disabled "DISABLED")
  (:authentication "AUTHENTICATION")
  (:integrity "INTEGRITY")
  (:privacy "PRIVACY"))

(smithy/sdk/shapes:define-structure hdfs-name-node common-lisp:nil
                                    ((hostname :target-type
                                      hdfs-server-hostname :required
                                      common-lisp:t :member-name "Hostname")
                                     (port :target-type hdfs-server-port
                                      :required common-lisp:t :member-name
                                      "Port"))
                                    (:shape-name "HdfsNameNode"))

(smithy/sdk/shapes:define-list hdfs-name-node-list :member hdfs-name-node)

(smithy/sdk/shapes:define-type hdfs-replication-factor
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum hdfs-rpc-protection
    common-lisp:nil
  (:disabled "DISABLED")
  (:authentication "AUTHENTICATION")
  (:integrity "INTEGRITY")
  (:privacy "PRIVACY"))

(smithy/sdk/shapes:define-type hdfs-server-hostname
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hdfs-server-port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type hdfs-subdirectory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hdfs-user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn-or-empty-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list input-tag-list :member tag-list-entry)

(smithy/sdk/shapes:define-error internal-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (error-code :target-type string :member-name
                                  "errorCode"))
                                (:shape-name "InternalException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (error-code :target-type string :member-name
                                  "errorCode")
                                 (datasync-error-code :target-type string
                                  :member-name "datasyncErrorCode"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type kerberos-keytab-file
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type kerberos-krb5conf-file
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type kerberos-principal
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-provider-uri
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-agents-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListAgentsRequest"))

(smithy/sdk/shapes:define-output list-agents-response common-lisp:nil
                                 ((agents :target-type agent-list :member-name
                                   "Agents")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAgentsResponse"))

(smithy/sdk/shapes:define-input list-locations-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type location-filters
                                  :member-name "Filters"))
                                (:shape-name "ListLocationsRequest"))

(smithy/sdk/shapes:define-output list-locations-response common-lisp:nil
                                 ((locations :target-type location-list
                                   :member-name "Locations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLocationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type output-tag-list
                                   :member-name "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-task-executions-request common-lisp:nil
                                ((task-arn :target-type task-arn :member-name
                                  "TaskArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTaskExecutionsRequest"))

(smithy/sdk/shapes:define-output list-task-executions-response common-lisp:nil
                                 ((task-executions :target-type
                                   task-execution-list :member-name
                                   "TaskExecutions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTaskExecutionsResponse"))

(smithy/sdk/shapes:define-input list-tasks-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type task-filters
                                  :member-name "Filters"))
                                (:shape-name "ListTasksRequest"))

(smithy/sdk/shapes:define-output list-tasks-response common-lisp:nil
                                 ((tasks :target-type task-list :member-name
                                   "Tasks")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTasksResponse"))

(smithy/sdk/shapes:define-type location-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure location-filter common-lisp:nil
                                    ((name :target-type location-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (operator :target-type operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "LocationFilter"))

(smithy/sdk/shapes:define-enum location-filter-name
    common-lisp:nil
  (:location-uri "LocationUri")
  (:location-type "LocationType")
  (:creation-time "CreationTime"))

(smithy/sdk/shapes:define-list location-filters :member location-filter)

(smithy/sdk/shapes:define-list location-list :member location-list-entry)

(smithy/sdk/shapes:define-structure location-list-entry common-lisp:nil
                                    ((location-arn :target-type location-arn
                                      :member-name "LocationArn")
                                     (location-uri :target-type location-uri
                                      :member-name "LocationUri"))
                                    (:shape-name "LocationListEntry"))

(smithy/sdk/shapes:define-type location-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum log-level
    common-lisp:nil
  (:off "OFF")
  (:basic "BASIC")
  (:transfer "TRANSFER"))

(smithy/sdk/shapes:define-structure managed-secret-config common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :member-name "SecretArn"))
                                    (:shape-name "ManagedSecretConfig"))

(smithy/sdk/shapes:define-enum manifest-action
    common-lisp:nil
  (:transfer "TRANSFER"))

(smithy/sdk/shapes:define-structure manifest-config common-lisp:nil
                                    ((action :target-type manifest-action
                                      :member-name "Action")
                                     (format :target-type manifest-format
                                      :member-name "Format")
                                     (source :target-type
                                      source-manifest-config :member-name
                                      "Source"))
                                    (:shape-name "ManifestConfig"))

(smithy/sdk/shapes:define-enum manifest-format
    common-lisp:nil
  (:csv "CSV"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum mtime
    common-lisp:nil
  (:none "NONE")
  (:preserve "PRESERVE"))

(smithy/sdk/shapes:define-type network-interface-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure nfs-mount-options common-lisp:nil
                                    ((version :target-type nfs-version
                                      :member-name "Version"))
                                    (:shape-name "NfsMountOptions"))

(smithy/sdk/shapes:define-type nfs-subdirectory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum nfs-version
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:nfs3 "NFS3")
  (:nfs4-0 "NFS4_0")
  (:nfs4-1 "NFS4_1"))

(smithy/sdk/shapes:define-type object-storage-access-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-storage-bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-storage-certificate
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type object-storage-secret-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-storage-server-port
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum object-storage-server-protocol
    common-lisp:nil
  (:https "HTTPS")
  (:http "HTTP"))

(smithy/sdk/shapes:define-enum object-tags
    common-lisp:nil
  (:preserve "PRESERVE")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum object-version-ids
    common-lisp:nil
  (:include "INCLUDE")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure on-prem-config common-lisp:nil
                                    ((agent-arns :target-type agent-arn-list
                                      :required common-lisp:t :member-name
                                      "AgentArns"))
                                    (:shape-name "OnPremConfig"))

(smithy/sdk/shapes:define-enum operator
    common-lisp:nil
  (:eq "Equals")
  (:ne "NotEquals")
  (:in "In")
  (:le "LessThanOrEqual")
  (:lt "LessThan")
  (:ge "GreaterThanOrEqual")
  (:gt "GreaterThan")
  (:contains "Contains")
  (:not-contains "NotContains")
  (:begins-with "BeginsWith"))

(smithy/sdk/shapes:define-structure options common-lisp:nil
                                    ((verify-mode :target-type verify-mode
                                      :member-name "VerifyMode")
                                     (overwrite-mode :target-type
                                      overwrite-mode :member-name
                                      "OverwriteMode")
                                     (atime :target-type atime :member-name
                                      "Atime")
                                     (mtime :target-type mtime :member-name
                                      "Mtime")
                                     (uid :target-type uid :member-name "Uid")
                                     (gid :target-type gid :member-name "Gid")
                                     (preserve-deleted-files :target-type
                                      preserve-deleted-files :member-name
                                      "PreserveDeletedFiles")
                                     (preserve-devices :target-type
                                      preserve-devices :member-name
                                      "PreserveDevices")
                                     (posix-permissions :target-type
                                      posix-permissions :member-name
                                      "PosixPermissions")
                                     (bytes-per-second :target-type
                                      bytes-per-second :member-name
                                      "BytesPerSecond")
                                     (task-queueing :target-type task-queueing
                                      :member-name "TaskQueueing")
                                     (log-level :target-type log-level
                                      :member-name "LogLevel")
                                     (transfer-mode :target-type transfer-mode
                                      :member-name "TransferMode")
                                     (security-descriptor-copy-flags
                                      :target-type
                                      smb-security-descriptor-copy-flags
                                      :member-name
                                      "SecurityDescriptorCopyFlags")
                                     (object-tags :target-type object-tags
                                      :member-name "ObjectTags"))
                                    (:shape-name "Options"))

(smithy/sdk/shapes:define-list output-tag-list :member tag-list-entry)

(smithy/sdk/shapes:define-enum overwrite-mode
    common-lisp:nil
  (:always "ALWAYS")
  (:never "NEVER"))

(smithy/sdk/shapes:define-list plsecurity-group-arn-list :member
                               ec2security-group-arn)

(smithy/sdk/shapes:define-list plsubnet-arn-list :member ec2subnet-arn)

(smithy/sdk/shapes:define-enum phase-status
    common-lisp:nil
  (:pending "PENDING")
  (:success "SUCCESS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure platform common-lisp:nil
                                    ((version :target-type agent-version
                                      :member-name "Version"))
                                    (:shape-name "Platform"))

(smithy/sdk/shapes:define-enum posix-permissions
    common-lisp:nil
  (:none "NONE")
  (:preserve "PRESERVE"))

(smithy/sdk/shapes:define-enum preserve-deleted-files
    common-lisp:nil
  (:preserve "PRESERVE")
  (:remove "REMOVE"))

(smithy/sdk/shapes:define-enum preserve-devices
    common-lisp:nil
  (:none "NONE")
  (:preserve "PRESERVE"))

(smithy/sdk/shapes:define-structure private-link-config common-lisp:nil
                                    ((vpc-endpoint-id :target-type
                                      vpc-endpoint-id :member-name
                                      "VpcEndpointId")
                                     (private-link-endpoint :target-type
                                      endpoint :member-name
                                      "PrivateLinkEndpoint")
                                     (subnet-arns :target-type
                                      plsubnet-arn-list :member-name
                                      "SubnetArns")
                                     (security-group-arns :target-type
                                      plsecurity-group-arn-list :member-name
                                      "SecurityGroupArns"))
                                    (:shape-name "PrivateLinkConfig"))

(smithy/sdk/shapes:define-structure qop-configuration common-lisp:nil
                                    ((rpc-protection :target-type
                                      hdfs-rpc-protection :member-name
                                      "RpcProtection")
                                     (data-transfer-protection :target-type
                                      hdfs-data-transfer-protection
                                      :member-name "DataTransferProtection"))
                                    (:shape-name "QopConfiguration"))

(smithy/sdk/shapes:define-structure report-destination common-lisp:nil
                                    ((s3 :target-type report-destination-s3
                                      :member-name "S3"))
                                    (:shape-name "ReportDestination"))

(smithy/sdk/shapes:define-structure report-destination-s3 common-lisp:nil
                                    ((subdirectory :target-type s3subdirectory
                                      :member-name "Subdirectory")
                                     (s3bucket-arn :target-type s3bucket-arn
                                      :required common-lisp:t :member-name
                                      "S3BucketArn")
                                     (bucket-access-role-arn :target-type
                                      iam-role-arn :required common-lisp:t
                                      :member-name "BucketAccessRoleArn"))
                                    (:shape-name "ReportDestinationS3"))

(smithy/sdk/shapes:define-enum report-level
    common-lisp:nil
  (:errors-only "ERRORS_ONLY")
  (:successes-and-errors "SUCCESSES_AND_ERRORS"))

(smithy/sdk/shapes:define-enum report-output-type
    common-lisp:nil
  (:summary-only "SUMMARY_ONLY")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-structure report-override common-lisp:nil
                                    ((report-level :target-type report-level
                                      :member-name "ReportLevel"))
                                    (:shape-name "ReportOverride"))

(smithy/sdk/shapes:define-structure report-overrides common-lisp:nil
                                    ((transferred :target-type report-override
                                      :member-name "Transferred")
                                     (verified :target-type report-override
                                      :member-name "Verified")
                                     (deleted :target-type report-override
                                      :member-name "Deleted")
                                     (skipped :target-type report-override
                                      :member-name "Skipped"))
                                    (:shape-name "ReportOverrides"))

(smithy/sdk/shapes:define-structure report-result common-lisp:nil
                                    ((status :target-type phase-status
                                      :member-name "Status")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-detail :target-type string
                                      :member-name "ErrorDetail"))
                                    (:shape-name "ReportResult"))

(smithy/sdk/shapes:define-type s3bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3config common-lisp:nil
                                    ((bucket-access-role-arn :target-type
                                      iam-role-arn :required common-lisp:t
                                      :member-name "BucketAccessRoleArn"))
                                    (:shape-name "S3Config"))

(smithy/sdk/shapes:define-structure s3manifest-config common-lisp:nil
                                    ((manifest-object-path :target-type
                                      s3subdirectory :required common-lisp:t
                                      :member-name "ManifestObjectPath")
                                     (bucket-access-role-arn :target-type
                                      iam-role-arn :required common-lisp:t
                                      :member-name "BucketAccessRoleArn")
                                     (s3bucket-arn :target-type s3bucket-arn
                                      :required common-lisp:t :member-name
                                      "S3BucketArn")
                                     (manifest-object-version-id :target-type
                                      s3object-version-id :member-name
                                      "ManifestObjectVersionId"))
                                    (:shape-name "S3ManifestConfig"))

(smithy/sdk/shapes:define-type s3object-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum s3storage-class
    common-lisp:nil
  (:standard "STANDARD")
  (:standard-ia "STANDARD_IA")
  (:onezone-ia "ONEZONE_IA")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:glacier "GLACIER")
  (:deep-archive "DEEP_ARCHIVE")
  (:outposts "OUTPOSTS")
  (:glacier-instant-retrieval "GLACIER_INSTANT_RETRIEVAL"))

(smithy/sdk/shapes:define-type s3subdirectory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum schedule-disabled-by
    common-lisp:nil
  (:user "USER")
  (:service "SERVICE"))

(smithy/sdk/shapes:define-type schedule-disabled-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedule-expression-cron
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum schedule-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type server-hostname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type server-ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum smb-authentication-type
    common-lisp:nil
  (:ntlm "NTLM")
  (:kerberos "KERBEROS"))

(smithy/sdk/shapes:define-type smb-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure smb-mount-options common-lisp:nil
                                    ((version :target-type smb-version
                                      :member-name "Version"))
                                    (:shape-name "SmbMountOptions"))

(smithy/sdk/shapes:define-type smb-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum smb-security-descriptor-copy-flags
    common-lisp:nil
  (:none "NONE")
  (:owner-dacl "OWNER_DACL")
  (:owner-dacl-sacl "OWNER_DACL_SACL"))

(smithy/sdk/shapes:define-type smb-subdirectory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type smb-user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum smb-version
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:smb2 "SMB2")
  (:smb3 "SMB3")
  (:smb1 "SMB1")
  (:smb2-0 "SMB2_0"))

(smithy/sdk/shapes:define-structure source-manifest-config common-lisp:nil
                                    ((s3 :target-type s3manifest-config
                                      :required common-lisp:t :member-name
                                      "S3"))
                                    (:shape-name "SourceManifestConfig"))

(smithy/sdk/shapes:define-list source-network-interface-arns :member
                               network-interface-arn)

(smithy/sdk/shapes:define-input start-task-execution-request common-lisp:nil
                                ((task-arn :target-type task-arn :required
                                  common-lisp:t :member-name "TaskArn")
                                 (override-options :target-type options
                                  :member-name "OverrideOptions")
                                 (includes :target-type filter-list
                                  :member-name "Includes")
                                 (excludes :target-type filter-list
                                  :member-name "Excludes")
                                 (manifest-config :target-type manifest-config
                                  :member-name "ManifestConfig")
                                 (task-report-config :target-type
                                  task-report-config :member-name
                                  "TaskReportConfig")
                                 (tags :target-type input-tag-list :member-name
                                  "Tags"))
                                (:shape-name "StartTaskExecutionRequest"))

(smithy/sdk/shapes:define-output start-task-execution-response common-lisp:nil
                                 ((task-execution-arn :target-type
                                   task-execution-arn :member-name
                                   "TaskExecutionArn"))
                                 (:shape-name "StartTaskExecutionResponse"))

(smithy/sdk/shapes:define-type storage-virtual-machine-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-structure tag-list-entry common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "TagListEntry"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tags :target-type input-tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-execution-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure task-execution-files-failed-detail
                                    common-lisp:nil
                                    ((prepare :target-type long :member-name
                                      "Prepare")
                                     (transfer :target-type long :member-name
                                      "Transfer")
                                     (verify :target-type long :member-name
                                      "Verify")
                                     (delete :target-type long :member-name
                                      "Delete"))
                                    (:shape-name
                                     "TaskExecutionFilesFailedDetail"))

(smithy/sdk/shapes:define-structure task-execution-files-listed-detail
                                    common-lisp:nil
                                    ((at-source :target-type long :member-name
                                      "AtSource")
                                     (at-destination-for-delete :target-type
                                      long :member-name
                                      "AtDestinationForDelete"))
                                    (:shape-name
                                     "TaskExecutionFilesListedDetail"))

(smithy/sdk/shapes:define-list task-execution-list :member
                               task-execution-list-entry)

(smithy/sdk/shapes:define-structure task-execution-list-entry common-lisp:nil
                                    ((task-execution-arn :target-type
                                      task-execution-arn :member-name
                                      "TaskExecutionArn")
                                     (status :target-type task-execution-status
                                      :member-name "Status")
                                     (task-mode :target-type task-mode
                                      :member-name "TaskMode"))
                                    (:shape-name "TaskExecutionListEntry"))

(smithy/sdk/shapes:define-structure task-execution-result-detail
                                    common-lisp:nil
                                    ((prepare-duration :target-type duration
                                      :member-name "PrepareDuration")
                                     (prepare-status :target-type phase-status
                                      :member-name "PrepareStatus")
                                     (total-duration :target-type duration
                                      :member-name "TotalDuration")
                                     (transfer-duration :target-type duration
                                      :member-name "TransferDuration")
                                     (transfer-status :target-type phase-status
                                      :member-name "TransferStatus")
                                     (verify-duration :target-type duration
                                      :member-name "VerifyDuration")
                                     (verify-status :target-type phase-status
                                      :member-name "VerifyStatus")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-detail :target-type string
                                      :member-name "ErrorDetail"))
                                    (:shape-name "TaskExecutionResultDetail"))

(smithy/sdk/shapes:define-enum task-execution-status
    common-lisp:nil
  (:queued "QUEUED")
  (:cancelling "CANCELLING")
  (:launching "LAUNCHING")
  (:preparing "PREPARING")
  (:transferring "TRANSFERRING")
  (:verifying "VERIFYING")
  (:success "SUCCESS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure task-filter common-lisp:nil
                                    ((name :target-type task-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (operator :target-type operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "TaskFilter"))

(smithy/sdk/shapes:define-enum task-filter-name
    common-lisp:nil
  (:location-id "LocationId")
  (:creation-time "CreationTime"))

(smithy/sdk/shapes:define-list task-filters :member task-filter)

(smithy/sdk/shapes:define-list task-list :member task-list-entry)

(smithy/sdk/shapes:define-structure task-list-entry common-lisp:nil
                                    ((task-arn :target-type task-arn
                                      :member-name "TaskArn")
                                     (status :target-type task-status
                                      :member-name "Status")
                                     (name :target-type tag-value :member-name
                                      "Name")
                                     (task-mode :target-type task-mode
                                      :member-name "TaskMode"))
                                    (:shape-name "TaskListEntry"))

(smithy/sdk/shapes:define-enum task-mode
    common-lisp:nil
  (:basic "BASIC")
  (:enhanced "ENHANCED"))

(smithy/sdk/shapes:define-enum task-queueing
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure task-report-config common-lisp:nil
                                    ((destination :target-type
                                      report-destination :member-name
                                      "Destination")
                                     (output-type :target-type
                                      report-output-type :member-name
                                      "OutputType")
                                     (report-level :target-type report-level
                                      :member-name "ReportLevel")
                                     (object-version-ids :target-type
                                      object-version-ids :member-name
                                      "ObjectVersionIds")
                                     (overrides :target-type report-overrides
                                      :member-name "Overrides"))
                                    (:shape-name "TaskReportConfig"))

(smithy/sdk/shapes:define-structure task-schedule common-lisp:nil
                                    ((schedule-expression :target-type
                                      schedule-expression-cron :required
                                      common-lisp:t :member-name
                                      "ScheduleExpression")
                                     (status :target-type schedule-status
                                      :member-name "Status"))
                                    (:shape-name "TaskSchedule"))

(smithy/sdk/shapes:define-structure task-schedule-details common-lisp:nil
                                    ((status-update-time :target-type time
                                      :member-name "StatusUpdateTime")
                                     (disabled-reason :target-type
                                      schedule-disabled-reason :member-name
                                      "DisabledReason")
                                     (disabled-by :target-type
                                      schedule-disabled-by :member-name
                                      "DisabledBy"))
                                    (:shape-name "TaskScheduleDetails"))

(smithy/sdk/shapes:define-enum task-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:creating "CREATING")
  (:queued "QUEUED")
  (:running "RUNNING")
  (:unavailable "UNAVAILABLE"))

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum transfer-mode
    common-lisp:nil
  (:changed "CHANGED")
  (:all "ALL"))

(smithy/sdk/shapes:define-enum uid
    common-lisp:nil
  (:none "NONE")
  (:int-value "INT_VALUE")
  (:name "NAME")
  (:both "BOTH"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "Keys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-agent-request common-lisp:nil
                                ((agent-arn :target-type agent-arn :required
                                  common-lisp:t :member-name "AgentArn")
                                 (name :target-type tag-value :member-name
                                  "Name"))
                                (:shape-name "UpdateAgentRequest"))

(smithy/sdk/shapes:define-output update-agent-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateAgentResponse"))

(smithy/sdk/shapes:define-input update-location-azure-blob-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (subdirectory :target-type
                                  azure-blob-subdirectory :member-name
                                  "Subdirectory")
                                 (authentication-type :target-type
                                  azure-blob-authentication-type :member-name
                                  "AuthenticationType")
                                 (sas-configuration :target-type
                                  azure-blob-sas-configuration :member-name
                                  "SasConfiguration")
                                 (blob-type :target-type azure-blob-type
                                  :member-name "BlobType")
                                 (access-tier :target-type azure-access-tier
                                  :member-name "AccessTier")
                                 (agent-arns :target-type agent-arn-list
                                  :member-name "AgentArns")
                                 (cmk-secret-config :target-type
                                  cmk-secret-config :member-name
                                  "CmkSecretConfig")
                                 (custom-secret-config :target-type
                                  custom-secret-config :member-name
                                  "CustomSecretConfig"))
                                (:shape-name "UpdateLocationAzureBlobRequest"))

(smithy/sdk/shapes:define-output update-location-azure-blob-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateLocationAzureBlobResponse"))

(smithy/sdk/shapes:define-input update-location-efs-request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (subdirectory :target-type efs-subdirectory
                                  :member-name "Subdirectory")
                                 (access-point-arn :target-type
                                  updated-efs-access-point-arn :member-name
                                  "AccessPointArn")
                                 (file-system-access-role-arn :target-type
                                  updated-efs-iam-role-arn :member-name
                                  "FileSystemAccessRoleArn")
                                 (in-transit-encryption :target-type
                                  efs-in-transit-encryption :member-name
                                  "InTransitEncryption"))
                                (:shape-name "UpdateLocationEfsRequest"))

(smithy/sdk/shapes:define-output update-location-efs-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateLocationEfsResponse"))

(smithy/sdk/shapes:define-input update-location-fsx-lustre-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (subdirectory :target-type smb-subdirectory
                                  :member-name "Subdirectory"))
                                (:shape-name "UpdateLocationFsxLustreRequest"))

(smithy/sdk/shapes:define-output update-location-fsx-lustre-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateLocationFsxLustreResponse"))

(smithy/sdk/shapes:define-input update-location-fsx-ontap-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (protocol :target-type fsx-update-protocol
                                  :member-name "Protocol")
                                 (subdirectory :target-type
                                  fsx-ontap-subdirectory :member-name
                                  "Subdirectory"))
                                (:shape-name "UpdateLocationFsxOntapRequest"))

(smithy/sdk/shapes:define-output update-location-fsx-ontap-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateLocationFsxOntapResponse"))

(smithy/sdk/shapes:define-input update-location-fsx-open-zfs-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (protocol :target-type fsx-protocol
                                  :member-name "Protocol")
                                 (subdirectory :target-type smb-subdirectory
                                  :member-name "Subdirectory"))
                                (:shape-name "UpdateLocationFsxOpenZfsRequest"))

(smithy/sdk/shapes:define-output update-location-fsx-open-zfs-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateLocationFsxOpenZfsResponse"))

(smithy/sdk/shapes:define-input update-location-fsx-windows-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (subdirectory :target-type
                                  fsx-windows-subdirectory :member-name
                                  "Subdirectory")
                                 (domain :target-type update-smb-domain
                                  :member-name "Domain")
                                 (user :target-type smb-user :member-name
                                  "User")
                                 (password :target-type smb-password
                                  :member-name "Password"))
                                (:shape-name "UpdateLocationFsxWindowsRequest"))

(smithy/sdk/shapes:define-output update-location-fsx-windows-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateLocationFsxWindowsResponse"))

(smithy/sdk/shapes:define-input update-location-hdfs-request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (subdirectory :target-type hdfs-subdirectory
                                  :member-name "Subdirectory")
                                 (name-nodes :target-type hdfs-name-node-list
                                  :member-name "NameNodes")
                                 (block-size :target-type hdfs-block-size
                                  :member-name "BlockSize")
                                 (replication-factor :target-type
                                  hdfs-replication-factor :member-name
                                  "ReplicationFactor")
                                 (kms-key-provider-uri :target-type
                                  kms-key-provider-uri :member-name
                                  "KmsKeyProviderUri")
                                 (qop-configuration :target-type
                                  qop-configuration :member-name
                                  "QopConfiguration")
                                 (authentication-type :target-type
                                  hdfs-authentication-type :member-name
                                  "AuthenticationType")
                                 (simple-user :target-type hdfs-user
                                  :member-name "SimpleUser")
                                 (kerberos-principal :target-type
                                  kerberos-principal :member-name
                                  "KerberosPrincipal")
                                 (kerberos-keytab :target-type
                                  kerberos-keytab-file :member-name
                                  "KerberosKeytab")
                                 (kerberos-krb5conf :target-type
                                  kerberos-krb5conf-file :member-name
                                  "KerberosKrb5Conf")
                                 (agent-arns :target-type agent-arn-list
                                  :member-name "AgentArns"))
                                (:shape-name "UpdateLocationHdfsRequest"))

(smithy/sdk/shapes:define-output update-location-hdfs-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateLocationHdfsResponse"))

(smithy/sdk/shapes:define-input update-location-nfs-request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (subdirectory :target-type nfs-subdirectory
                                  :member-name "Subdirectory")
                                 (server-hostname :target-type server-hostname
                                  :member-name "ServerHostname")
                                 (on-prem-config :target-type on-prem-config
                                  :member-name "OnPremConfig")
                                 (mount-options :target-type nfs-mount-options
                                  :member-name "MountOptions"))
                                (:shape-name "UpdateLocationNfsRequest"))

(smithy/sdk/shapes:define-output update-location-nfs-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateLocationNfsResponse"))

(smithy/sdk/shapes:define-input update-location-object-storage-request
                                common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (server-port :target-type
                                  object-storage-server-port :member-name
                                  "ServerPort")
                                 (server-protocol :target-type
                                  object-storage-server-protocol :member-name
                                  "ServerProtocol")
                                 (subdirectory :target-type s3subdirectory
                                  :member-name "Subdirectory")
                                 (server-hostname :target-type server-hostname
                                  :member-name "ServerHostname")
                                 (access-key :target-type
                                  object-storage-access-key :member-name
                                  "AccessKey")
                                 (secret-key :target-type
                                  object-storage-secret-key :member-name
                                  "SecretKey")
                                 (agent-arns :target-type agent-arn-list
                                  :member-name "AgentArns")
                                 (server-certificate :target-type
                                  object-storage-certificate :member-name
                                  "ServerCertificate")
                                 (cmk-secret-config :target-type
                                  cmk-secret-config :member-name
                                  "CmkSecretConfig")
                                 (custom-secret-config :target-type
                                  custom-secret-config :member-name
                                  "CustomSecretConfig"))
                                (:shape-name
                                 "UpdateLocationObjectStorageRequest"))

(smithy/sdk/shapes:define-output update-location-object-storage-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateLocationObjectStorageResponse"))

(smithy/sdk/shapes:define-input update-location-s3request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (subdirectory :target-type s3subdirectory
                                  :member-name "Subdirectory")
                                 (s3storage-class :target-type s3storage-class
                                  :member-name "S3StorageClass")
                                 (s3config :target-type s3config :member-name
                                  "S3Config"))
                                (:shape-name "UpdateLocationS3Request"))

(smithy/sdk/shapes:define-output update-location-s3response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateLocationS3Response"))

(smithy/sdk/shapes:define-input update-location-smb-request common-lisp:nil
                                ((location-arn :target-type location-arn
                                  :required common-lisp:t :member-name
                                  "LocationArn")
                                 (subdirectory :target-type smb-subdirectory
                                  :member-name "Subdirectory")
                                 (server-hostname :target-type server-hostname
                                  :member-name "ServerHostname")
                                 (user :target-type smb-user :member-name
                                  "User")
                                 (domain :target-type smb-domain :member-name
                                  "Domain")
                                 (password :target-type smb-password
                                  :member-name "Password")
                                 (agent-arns :target-type agent-arn-list
                                  :member-name "AgentArns")
                                 (mount-options :target-type smb-mount-options
                                  :member-name "MountOptions")
                                 (authentication-type :target-type
                                  smb-authentication-type :member-name
                                  "AuthenticationType")
                                 (dns-ip-addresses :target-type dns-ip-list
                                  :member-name "DnsIpAddresses")
                                 (kerberos-principal :target-type
                                  kerberos-principal :member-name
                                  "KerberosPrincipal")
                                 (kerberos-keytab :target-type
                                  kerberos-keytab-file :member-name
                                  "KerberosKeytab")
                                 (kerberos-krb5conf :target-type
                                  kerberos-krb5conf-file :member-name
                                  "KerberosKrb5Conf"))
                                (:shape-name "UpdateLocationSmbRequest"))

(smithy/sdk/shapes:define-output update-location-smb-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateLocationSmbResponse"))

(smithy/sdk/shapes:define-type update-smb-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-task-execution-request common-lisp:nil
                                ((task-execution-arn :target-type
                                  task-execution-arn :required common-lisp:t
                                  :member-name "TaskExecutionArn")
                                 (options :target-type options :required
                                  common-lisp:t :member-name "Options"))
                                (:shape-name "UpdateTaskExecutionRequest"))

(smithy/sdk/shapes:define-output update-task-execution-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateTaskExecutionResponse"))

(smithy/sdk/shapes:define-input update-task-request common-lisp:nil
                                ((task-arn :target-type task-arn :required
                                  common-lisp:t :member-name "TaskArn")
                                 (options :target-type options :member-name
                                  "Options")
                                 (excludes :target-type filter-list
                                  :member-name "Excludes")
                                 (schedule :target-type task-schedule
                                  :member-name "Schedule")
                                 (name :target-type tag-value :member-name
                                  "Name")
                                 (cloud-watch-log-group-arn :target-type
                                  log-group-arn :member-name
                                  "CloudWatchLogGroupArn")
                                 (includes :target-type filter-list
                                  :member-name "Includes")
                                 (manifest-config :target-type manifest-config
                                  :member-name "ManifestConfig")
                                 (task-report-config :target-type
                                  task-report-config :member-name
                                  "TaskReportConfig"))
                                (:shape-name "UpdateTaskRequest"))

(smithy/sdk/shapes:define-output update-task-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateTaskResponse"))

(smithy/sdk/shapes:define-type updated-efs-access-point-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type updated-efs-iam-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum verify-mode
    common-lisp:nil
  (:point-in-time-consistent "POINT_IN_TIME_CONSISTENT")
  (:only-files-transferred "ONLY_FILES_TRANSFERRED")
  (:none "NONE"))

(smithy/sdk/shapes:define-type vpc-endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation cancel-task-execution :shape-name
                                       "CancelTaskExecution" :input
                                       cancel-task-execution-request :output
                                       cancel-task-execution-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-agent :shape-name "CreateAgent"
                                       :input create-agent-request :output
                                       create-agent-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-azure-blob :shape-name
                                       "CreateLocationAzureBlob" :input
                                       create-location-azure-blob-request
                                       :output
                                       create-location-azure-blob-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-efs :shape-name
                                       "CreateLocationEfs" :input
                                       create-location-efs-request :output
                                       create-location-efs-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-fsx-lustre :shape-name
                                       "CreateLocationFsxLustre" :input
                                       create-location-fsx-lustre-request
                                       :output
                                       create-location-fsx-lustre-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-fsx-ontap :shape-name
                                       "CreateLocationFsxOntap" :input
                                       create-location-fsx-ontap-request
                                       :output
                                       create-location-fsx-ontap-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-fsx-open-zfs :shape-name
                                       "CreateLocationFsxOpenZfs" :input
                                       create-location-fsx-open-zfs-request
                                       :output
                                       create-location-fsx-open-zfs-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-fsx-windows :shape-name
                                       "CreateLocationFsxWindows" :input
                                       create-location-fsx-windows-request
                                       :output
                                       create-location-fsx-windows-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-hdfs :shape-name
                                       "CreateLocationHdfs" :input
                                       create-location-hdfs-request :output
                                       create-location-hdfs-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-nfs :shape-name
                                       "CreateLocationNfs" :input
                                       create-location-nfs-request :output
                                       create-location-nfs-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-object-storage
                                       :shape-name
                                       "CreateLocationObjectStorage" :input
                                       create-location-object-storage-request
                                       :output
                                       create-location-object-storage-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-s3 :shape-name
                                       "CreateLocationS3" :input
                                       create-location-s3request :output
                                       create-location-s3response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-location-smb :shape-name
                                       "CreateLocationSmb" :input
                                       create-location-smb-request :output
                                       create-location-smb-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-task :shape-name "CreateTask"
                                       :input create-task-request :output
                                       create-task-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-agent :shape-name "DeleteAgent"
                                       :input delete-agent-request :output
                                       delete-agent-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-location :shape-name
                                       "DeleteLocation" :input
                                       delete-location-request :output
                                       delete-location-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-task :shape-name "DeleteTask"
                                       :input delete-task-request :output
                                       delete-task-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-agent :shape-name
                                       "DescribeAgent" :input
                                       describe-agent-request :output
                                       describe-agent-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-azure-blob :shape-name
                                       "DescribeLocationAzureBlob" :input
                                       describe-location-azure-blob-request
                                       :output
                                       describe-location-azure-blob-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-efs :shape-name
                                       "DescribeLocationEfs" :input
                                       describe-location-efs-request :output
                                       describe-location-efs-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-fsx-lustre :shape-name
                                       "DescribeLocationFsxLustre" :input
                                       describe-location-fsx-lustre-request
                                       :output
                                       describe-location-fsx-lustre-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-fsx-ontap :shape-name
                                       "DescribeLocationFsxOntap" :input
                                       describe-location-fsx-ontap-request
                                       :output
                                       describe-location-fsx-ontap-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-fsx-open-zfs
                                       :shape-name "DescribeLocationFsxOpenZfs"
                                       :input
                                       describe-location-fsx-open-zfs-request
                                       :output
                                       describe-location-fsx-open-zfs-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-fsx-windows
                                       :shape-name "DescribeLocationFsxWindows"
                                       :input
                                       describe-location-fsx-windows-request
                                       :output
                                       describe-location-fsx-windows-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-hdfs :shape-name
                                       "DescribeLocationHdfs" :input
                                       describe-location-hdfs-request :output
                                       describe-location-hdfs-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-nfs :shape-name
                                       "DescribeLocationNfs" :input
                                       describe-location-nfs-request :output
                                       describe-location-nfs-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-object-storage
                                       :shape-name
                                       "DescribeLocationObjectStorage" :input
                                       describe-location-object-storage-request
                                       :output
                                       describe-location-object-storage-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-s3 :shape-name
                                       "DescribeLocationS3" :input
                                       describe-location-s3request :output
                                       describe-location-s3response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-location-smb :shape-name
                                       "DescribeLocationSmb" :input
                                       describe-location-smb-request :output
                                       describe-location-smb-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-task :shape-name "DescribeTask"
                                       :input describe-task-request :output
                                       describe-task-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-task-execution :shape-name
                                       "DescribeTaskExecution" :input
                                       describe-task-execution-request :output
                                       describe-task-execution-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-agents :shape-name "ListAgents"
                                       :input list-agents-request :output
                                       list-agents-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-locations :shape-name
                                       "ListLocations" :input
                                       list-locations-request :output
                                       list-locations-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-task-executions :shape-name
                                       "ListTaskExecutions" :input
                                       list-task-executions-request :output
                                       list-task-executions-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-tasks :shape-name "ListTasks"
                                       :input list-tasks-request :output
                                       list-tasks-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation start-task-execution :shape-name
                                       "StartTaskExecution" :input
                                       start-task-execution-request :output
                                       start-task-execution-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-agent :shape-name "UpdateAgent"
                                       :input update-agent-request :output
                                       update-agent-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-azure-blob :shape-name
                                       "UpdateLocationAzureBlob" :input
                                       update-location-azure-blob-request
                                       :output
                                       update-location-azure-blob-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-efs :shape-name
                                       "UpdateLocationEfs" :input
                                       update-location-efs-request :output
                                       update-location-efs-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-fsx-lustre :shape-name
                                       "UpdateLocationFsxLustre" :input
                                       update-location-fsx-lustre-request
                                       :output
                                       update-location-fsx-lustre-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-fsx-ontap :shape-name
                                       "UpdateLocationFsxOntap" :input
                                       update-location-fsx-ontap-request
                                       :output
                                       update-location-fsx-ontap-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-fsx-open-zfs :shape-name
                                       "UpdateLocationFsxOpenZfs" :input
                                       update-location-fsx-open-zfs-request
                                       :output
                                       update-location-fsx-open-zfs-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-fsx-windows :shape-name
                                       "UpdateLocationFsxWindows" :input
                                       update-location-fsx-windows-request
                                       :output
                                       update-location-fsx-windows-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-hdfs :shape-name
                                       "UpdateLocationHdfs" :input
                                       update-location-hdfs-request :output
                                       update-location-hdfs-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-nfs :shape-name
                                       "UpdateLocationNfs" :input
                                       update-location-nfs-request :output
                                       update-location-nfs-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-object-storage
                                       :shape-name
                                       "UpdateLocationObjectStorage" :input
                                       update-location-object-storage-request
                                       :output
                                       update-location-object-storage-response
                                       :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-s3 :shape-name
                                       "UpdateLocationS3" :input
                                       update-location-s3request :output
                                       update-location-s3response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-location-smb :shape-name
                                       "UpdateLocationSmb" :input
                                       update-location-smb-request :output
                                       update-location-smb-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-task :shape-name "UpdateTask"
                                       :input update-task-request :output
                                       update-task-response :errors
                                       (internal-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-task-execution :shape-name
                                       "UpdateTaskExecution" :input
                                       update-task-execution-request :output
                                       update-task-execution-response :errors
                                       (internal-exception
                                        invalid-request-exception))
