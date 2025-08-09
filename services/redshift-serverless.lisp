(uiop/package:define-package #:pira/redshift-serverless (:use)
                             (:export #:account-id-list #:amazon-resource-name
                              #:association #:association-list #:capacity
                              #:charge #:config-parameter
                              #:config-parameter-list
                              #:convert-recovery-point-to-snapshot
                              #:create-custom-domain-association
                              #:create-endpoint-access #:create-namespace
                              #:create-reservation #:create-scheduled-action
                              #:create-snapshot
                              #:create-snapshot-copy-configuration
                              #:create-snapshot-schedule-action-parameters
                              #:create-usage-limit #:create-workgroup
                              #:cross-vpc-endpoint-resource #:currency-code
                              #:custom-domain-certificate-arn-string
                              #:custom-domain-name #:db-name #:db-password
                              #:db-user #:delete-custom-domain-association
                              #:delete-endpoint-access #:delete-namespace
                              #:delete-resource-policy
                              #:delete-scheduled-action #:delete-snapshot
                              #:delete-snapshot-copy-configuration
                              #:delete-usage-limit #:delete-workgroup
                              #:duration #:endpoint #:endpoint-access
                              #:endpoint-access-list #:get-credentials
                              #:get-custom-domain-association
                              #:get-endpoint-access #:get-namespace
                              #:get-recovery-point #:get-reservation
                              #:get-reservation-offering #:get-resource-policy
                              #:get-scheduled-action #:get-snapshot
                              #:get-table-restore-status #:get-track
                              #:get-usage-limit #:get-workgroup #:iam-role-arn
                              #:iam-role-arn-list #:ip-address-type
                              #:kms-key-id #:list-custom-domain-associations
                              #:list-endpoint-access #:list-managed-workgroups
                              #:list-namespaces #:list-recovery-points
                              #:list-reservation-offerings #:list-reservations
                              #:list-scheduled-actions
                              #:list-snapshot-copy-configurations
                              #:list-snapshots #:list-table-restore-status
                              #:list-tags-for-resource #:list-tracks
                              #:list-usage-limits #:list-workgroups
                              #:log-export #:log-export-list
                              #:managed-workgroup-list-item
                              #:managed-workgroup-name
                              #:managed-workgroup-resource
                              #:managed-workgroup-status #:managed-workgroups
                              #:namespace #:namespace-list #:namespace-name
                              #:namespace-resource #:namespace-status
                              #:network-interface #:network-interface-list
                              #:next-invocations-list #:offering-id
                              #:offering-type #:owner-account
                              #:pagination-token #:parameter-key
                              #:parameter-value #:performance-target
                              #:performance-target-status #:put-resource-policy
                              #:recovery-point #:recovery-point-list
                              #:recovery-point-resource
                              #:redshift-idc-application-arn
                              #:redshift-serverless #:reservation
                              #:reservation-arn #:reservation-id
                              #:reservation-offering
                              #:reservation-offerings-list
                              #:reservation-resource #:reservations-list
                              #:resource-policy #:restore-from-recovery-point
                              #:restore-from-snapshot
                              #:restore-table-from-recovery-point
                              #:restore-table-from-snapshot #:schedule
                              #:scheduled-action-association
                              #:scheduled-action-name
                              #:scheduled-action-resource
                              #:scheduled-action-response
                              #:scheduled-actions-list #:security-group-id
                              #:security-group-id-list #:serverless-track
                              #:snapshot #:snapshot-copy-configuration
                              #:snapshot-copy-configurations #:snapshot-list
                              #:snapshot-name-prefix #:snapshot-resource
                              #:snapshot-status #:source-arn #:state #:status
                              #:subnet-id #:subnet-id-list
                              #:table-restore-status
                              #:table-restore-status-list #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:target-action #:track-list
                              #:track-name #:untag-resource
                              #:update-custom-domain-association
                              #:update-endpoint-access #:update-namespace
                              #:update-scheduled-action #:update-snapshot
                              #:update-snapshot-copy-configuration
                              #:update-target #:update-targets-list
                              #:update-usage-limit #:update-workgroup
                              #:usage-limit #:usage-limit-breach-action
                              #:usage-limit-period #:usage-limit-resource
                              #:usage-limit-usage-type #:usage-limits
                              #:vpc-endpoint #:vpc-endpoint-list #:vpc-ids
                              #:vpc-security-group-id
                              #:vpc-security-group-id-list
                              #:vpc-security-group-membership
                              #:vpc-security-group-membership-list #:workgroup
                              #:workgroup-list #:workgroup-name
                              #:workgroup-resource #:workgroup-status))
(common-lisp:in-package #:pira/redshift-serverless)

(smithy/sdk/service:define-service redshift-serverless :shape-name
                                   "RedshiftServerless" :version "2021-04-21"
                                   :title "Redshift Serverless" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Redshift Serverless")
                                      ("arnNamespace" . "redshift-serverless"))
                                     ("aws.auth#sigv4"
                                      ("name" . "redshift-serverless"))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "code")
                                 (message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list account-id-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure association common-lisp:nil
                                    ((custom-domain-certificate-arn
                                      :target-type
                                      custom-domain-certificate-arn-string
                                      :member-name
                                      "customDomainCertificateArn")
                                     (custom-domain-certificate-expiry-time
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "customDomainCertificateExpiryTime"
                                      :timestamp-format "date-time")
                                     (custom-domain-name :target-type
                                      custom-domain-name :member-name
                                      "customDomainName")
                                     (workgroup-name :target-type
                                      workgroup-name :member-name
                                      "workgroupName"))
                                    (:shape-name "Association"))

(smithy/sdk/shapes:define-list association-list :member association)

(smithy/sdk/shapes:define-type capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type charge smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure config-parameter common-lisp:nil
                                    ((parameter-key :target-type parameter-key
                                      :member-name "parameterKey")
                                     (parameter-value :target-type
                                      parameter-value :member-name
                                      "parameterValue"))
                                    (:shape-name "ConfigParameter"))

(smithy/sdk/shapes:define-list config-parameter-list :member config-parameter)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input convert-recovery-point-to-snapshot-request
                                common-lisp:nil
                                ((recovery-point-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "recoveryPointId")
                                 (snapshot-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "snapshotName")
                                 (retention-period :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retentionPeriod")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name
                                 "ConvertRecoveryPointToSnapshotRequest"))

(smithy/sdk/shapes:define-output convert-recovery-point-to-snapshot-response
                                 common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "snapshot"))
                                 (:shape-name
                                  "ConvertRecoveryPointToSnapshotResponse"))

(smithy/sdk/shapes:define-input create-custom-domain-association-request
                                common-lisp:nil
                                ((workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName")
                                 (custom-domain-name :target-type
                                  custom-domain-name :required common-lisp:t
                                  :member-name "customDomainName")
                                 (custom-domain-certificate-arn :target-type
                                  custom-domain-certificate-arn-string
                                  :required common-lisp:t :member-name
                                  "customDomainCertificateArn"))
                                (:shape-name
                                 "CreateCustomDomainAssociationRequest"))

(smithy/sdk/shapes:define-output create-custom-domain-association-response
                                 common-lisp:nil
                                 ((custom-domain-name :target-type
                                   custom-domain-name :member-name
                                   "customDomainName")
                                  (workgroup-name :target-type workgroup-name
                                   :member-name "workgroupName")
                                  (custom-domain-certificate-arn :target-type
                                   custom-domain-certificate-arn-string
                                   :member-name "customDomainCertificateArn")
                                  (custom-domain-certificate-expiry-time
                                   :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name
                                   "customDomainCertificateExpiryTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name
                                  "CreateCustomDomainAssociationResponse"))

(smithy/sdk/shapes:define-input create-endpoint-access-request common-lisp:nil
                                ((endpoint-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "endpointName")
                                 (subnet-ids :target-type subnet-id-list
                                  :required common-lisp:t :member-name
                                  "subnetIds")
                                 (workgroup-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "workgroupName")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "vpcSecurityGroupIds")
                                 (owner-account :target-type owner-account
                                  :member-name "ownerAccount"))
                                (:shape-name "CreateEndpointAccessRequest"))

(smithy/sdk/shapes:define-output create-endpoint-access-response
                                 common-lisp:nil
                                 ((endpoint :target-type endpoint-access
                                   :member-name "endpoint"))
                                 (:shape-name "CreateEndpointAccessResponse"))

(smithy/sdk/shapes:define-input create-namespace-request common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespaceName")
                                 (admin-username :target-type db-user
                                  :member-name "adminUsername")
                                 (admin-user-password :target-type db-password
                                  :member-name "adminUserPassword")
                                 (db-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "dbName")
                                 (kms-key-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "kmsKeyId")
                                 (default-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "defaultIamRoleArn")
                                 (iam-roles :target-type iam-role-arn-list
                                  :member-name "iamRoles")
                                 (log-exports :target-type log-export-list
                                  :member-name "logExports")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (manage-admin-password :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "manageAdminPassword")
                                 (admin-password-secret-kms-key-id :target-type
                                  kms-key-id :member-name
                                  "adminPasswordSecretKmsKeyId")
                                 (redshift-idc-application-arn :target-type
                                  redshift-idc-application-arn :member-name
                                  "redshiftIdcApplicationArn"))
                                (:shape-name "CreateNamespaceRequest"))

(smithy/sdk/shapes:define-output create-namespace-response common-lisp:nil
                                 ((namespace :target-type namespace
                                   :member-name "namespace"))
                                 (:shape-name "CreateNamespaceResponse"))

(smithy/sdk/shapes:define-input create-reservation-request common-lisp:nil
                                ((capacity :target-type capacity :required
                                  common-lisp:t :member-name "capacity")
                                 (offering-id :target-type offering-id
                                  :required common-lisp:t :member-name
                                  "offeringId")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "CreateReservationRequest"))

(smithy/sdk/shapes:define-output create-reservation-response common-lisp:nil
                                 ((reservation :target-type reservation
                                   :member-name "reservation"))
                                 (:shape-name "CreateReservationResponse"))

(smithy/sdk/shapes:define-input create-scheduled-action-request common-lisp:nil
                                ((scheduled-action-name :target-type
                                  scheduled-action-name :required common-lisp:t
                                  :member-name "scheduledActionName")
                                 (target-action :target-type target-action
                                  :required common-lisp:t :member-name
                                  "targetAction")
                                 (schedule :target-type schedule :required
                                  common-lisp:t :member-name "schedule")
                                 (role-arn :target-type iam-role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespaceName")
                                 (enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "enabled")
                                 (scheduled-action-description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "scheduledActionDescription")
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "startTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "endTime"))
                                (:shape-name "CreateScheduledActionRequest"))

(smithy/sdk/shapes:define-output create-scheduled-action-response
                                 common-lisp:nil
                                 ((scheduled-action :target-type
                                   scheduled-action-response :member-name
                                   "scheduledAction"))
                                 (:shape-name "CreateScheduledActionResponse"))

(smithy/sdk/shapes:define-input create-snapshot-copy-configuration-request
                                common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespaceName")
                                 (destination-region :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "destinationRegion")
                                 (snapshot-retention-period :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "snapshotRetentionPeriod")
                                 (destination-kms-key-id :target-type
                                  kms-key-id :member-name
                                  "destinationKmsKeyId"))
                                (:shape-name
                                 "CreateSnapshotCopyConfigurationRequest"))

(smithy/sdk/shapes:define-output create-snapshot-copy-configuration-response
                                 common-lisp:nil
                                 ((snapshot-copy-configuration :target-type
                                   snapshot-copy-configuration :required
                                   common-lisp:t :member-name
                                   "snapshotCopyConfiguration"))
                                 (:shape-name
                                  "CreateSnapshotCopyConfigurationResponse"))

(smithy/sdk/shapes:define-input create-snapshot-request common-lisp:nil
                                ((namespace-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "namespaceName")
                                 (snapshot-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "snapshotName")
                                 (retention-period :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retentionPeriod")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateSnapshotRequest"))

(smithy/sdk/shapes:define-output create-snapshot-response common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "snapshot"))
                                 (:shape-name "CreateSnapshotResponse"))

(smithy/sdk/shapes:define-structure create-snapshot-schedule-action-parameters
                                    common-lisp:nil
                                    ((namespace-name :target-type
                                      namespace-name :required common-lisp:t
                                      :member-name "namespaceName")
                                     (snapshot-name-prefix :target-type
                                      snapshot-name-prefix :required
                                      common-lisp:t :member-name
                                      "snapshotNamePrefix")
                                     (retention-period :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "retentionPeriod")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateSnapshotScheduleActionParameters"))

(smithy/sdk/shapes:define-input create-usage-limit-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn")
                                 (usage-type :target-type
                                  usage-limit-usage-type :required
                                  common-lisp:t :member-name "usageType")
                                 (amount :target-type
                                  smithy/sdk/smithy-types:long :required
                                  common-lisp:t :member-name "amount")
                                 (period :target-type usage-limit-period
                                  :member-name "period")
                                 (breach-action :target-type
                                  usage-limit-breach-action :member-name
                                  "breachAction"))
                                (:shape-name "CreateUsageLimitRequest"))

(smithy/sdk/shapes:define-output create-usage-limit-response common-lisp:nil
                                 ((usage-limit :target-type usage-limit
                                   :member-name "usageLimit"))
                                 (:shape-name "CreateUsageLimitResponse"))

(smithy/sdk/shapes:define-input create-workgroup-request common-lisp:nil
                                ((workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName")
                                 (namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespaceName")
                                 (base-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "baseCapacity")
                                 (enhanced-vpc-routing :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "enhancedVpcRouting")
                                 (config-parameters :target-type
                                  config-parameter-list :member-name
                                  "configParameters")
                                 (security-group-ids :target-type
                                  security-group-id-list :member-name
                                  "securityGroupIds")
                                 (subnet-ids :target-type subnet-id-list
                                  :member-name "subnetIds")
                                 (publicly-accessible :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publiclyAccessible")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (port :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "port")
                                 (max-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxCapacity")
                                 (price-performance-target :target-type
                                  performance-target :member-name
                                  "pricePerformanceTarget")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "ipAddressType")
                                 (track-name :target-type track-name
                                  :member-name "trackName"))
                                (:shape-name "CreateWorkgroupRequest"))

(smithy/sdk/shapes:define-output create-workgroup-response common-lisp:nil
                                 ((workgroup :target-type workgroup
                                   :member-name "workgroup"))
                                 (:shape-name "CreateWorkgroupResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-type currency-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-domain-certificate-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-user smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-custom-domain-association-request
                                common-lisp:nil
                                ((workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName")
                                 (custom-domain-name :target-type
                                  custom-domain-name :required common-lisp:t
                                  :member-name "customDomainName"))
                                (:shape-name
                                 "DeleteCustomDomainAssociationRequest"))

(smithy/sdk/shapes:define-output delete-custom-domain-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCustomDomainAssociationResponse"))

(smithy/sdk/shapes:define-input delete-endpoint-access-request common-lisp:nil
                                ((endpoint-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "endpointName"))
                                (:shape-name "DeleteEndpointAccessRequest"))

(smithy/sdk/shapes:define-output delete-endpoint-access-response
                                 common-lisp:nil
                                 ((endpoint :target-type endpoint-access
                                   :member-name "endpoint"))
                                 (:shape-name "DeleteEndpointAccessResponse"))

(smithy/sdk/shapes:define-input delete-namespace-request common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespaceName")
                                 (final-snapshot-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "finalSnapshotName")
                                 (final-snapshot-retention-period :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "finalSnapshotRetentionPeriod"))
                                (:shape-name "DeleteNamespaceRequest"))

(smithy/sdk/shapes:define-output delete-namespace-response common-lisp:nil
                                 ((namespace :target-type namespace :required
                                   common-lisp:t :member-name "namespace"))
                                 (:shape-name "DeleteNamespaceResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input delete-scheduled-action-request common-lisp:nil
                                ((scheduled-action-name :target-type
                                  scheduled-action-name :required common-lisp:t
                                  :member-name "scheduledActionName"))
                                (:shape-name "DeleteScheduledActionRequest"))

(smithy/sdk/shapes:define-output delete-scheduled-action-response
                                 common-lisp:nil
                                 ((scheduled-action :target-type
                                   scheduled-action-response :member-name
                                   "scheduledAction"))
                                 (:shape-name "DeleteScheduledActionResponse"))

(smithy/sdk/shapes:define-input delete-snapshot-copy-configuration-request
                                common-lisp:nil
                                ((snapshot-copy-configuration-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "snapshotCopyConfigurationId"))
                                (:shape-name
                                 "DeleteSnapshotCopyConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-snapshot-copy-configuration-response
                                 common-lisp:nil
                                 ((snapshot-copy-configuration :target-type
                                   snapshot-copy-configuration :required
                                   common-lisp:t :member-name
                                   "snapshotCopyConfiguration"))
                                 (:shape-name
                                  "DeleteSnapshotCopyConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-snapshot-request common-lisp:nil
                                ((snapshot-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "snapshotName"))
                                (:shape-name "DeleteSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-snapshot-response common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "snapshot"))
                                 (:shape-name "DeleteSnapshotResponse"))

(smithy/sdk/shapes:define-input delete-usage-limit-request common-lisp:nil
                                ((usage-limit-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "usageLimitId"))
                                (:shape-name "DeleteUsageLimitRequest"))

(smithy/sdk/shapes:define-output delete-usage-limit-response common-lisp:nil
                                 ((usage-limit :target-type usage-limit
                                   :member-name "usageLimit"))
                                 (:shape-name "DeleteUsageLimitResponse"))

(smithy/sdk/shapes:define-input delete-workgroup-request common-lisp:nil
                                ((workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName"))
                                (:shape-name "DeleteWorkgroupRequest"))

(smithy/sdk/shapes:define-output delete-workgroup-response common-lisp:nil
                                 ((workgroup :target-type workgroup :required
                                   common-lisp:t :member-name "workgroup"))
                                 (:shape-name "DeleteWorkgroupResponse"))

(smithy/sdk/shapes:define-type duration smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "address")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "port")
                                     (vpc-endpoints :target-type
                                      vpc-endpoint-list :member-name
                                      "vpcEndpoints"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-structure endpoint-access common-lisp:nil
                                    ((endpoint-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "endpointName")
                                     (endpoint-status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "endpointStatus")
                                     (workgroup-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupName")
                                     (endpoint-create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endpointCreateTime"
                                      :timestamp-format "date-time")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "port")
                                     (address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "address")
                                     (subnet-ids :target-type subnet-id-list
                                      :member-name "subnetIds")
                                     (vpc-security-groups :target-type
                                      vpc-security-group-membership-list
                                      :member-name "vpcSecurityGroups")
                                     (vpc-endpoint :target-type vpc-endpoint
                                      :member-name "vpcEndpoint")
                                     (endpoint-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "endpointArn"))
                                    (:shape-name "EndpointAccess"))

(smithy/sdk/shapes:define-list endpoint-access-list :member endpoint-access)

(smithy/sdk/shapes:define-input get-credentials-request common-lisp:nil
                                ((db-name :target-type db-name :member-name
                                  "dbName")
                                 (duration-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "durationSeconds")
                                 (workgroup-name :target-type workgroup-name
                                  :member-name "workgroupName")
                                 (custom-domain-name :target-type
                                  custom-domain-name :member-name
                                  "customDomainName"))
                                (:shape-name "GetCredentialsRequest"))

(smithy/sdk/shapes:define-output get-credentials-response common-lisp:nil
                                 ((db-user :target-type db-user :member-name
                                   "dbUser")
                                  (db-password :target-type db-password
                                   :member-name "dbPassword")
                                  (expiration :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiration")
                                  (next-refresh-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "nextRefreshTime"))
                                 (:shape-name "GetCredentialsResponse"))

(smithy/sdk/shapes:define-input get-custom-domain-association-request
                                common-lisp:nil
                                ((custom-domain-name :target-type
                                  custom-domain-name :required common-lisp:t
                                  :member-name "customDomainName")
                                 (workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName"))
                                (:shape-name
                                 "GetCustomDomainAssociationRequest"))

(smithy/sdk/shapes:define-output get-custom-domain-association-response
                                 common-lisp:nil
                                 ((custom-domain-name :target-type
                                   custom-domain-name :member-name
                                   "customDomainName")
                                  (workgroup-name :target-type workgroup-name
                                   :member-name "workgroupName")
                                  (custom-domain-certificate-arn :target-type
                                   custom-domain-certificate-arn-string
                                   :member-name "customDomainCertificateArn")
                                  (custom-domain-certificate-expiry-time
                                   :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name
                                   "customDomainCertificateExpiryTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name
                                  "GetCustomDomainAssociationResponse"))

(smithy/sdk/shapes:define-input get-endpoint-access-request common-lisp:nil
                                ((endpoint-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "endpointName"))
                                (:shape-name "GetEndpointAccessRequest"))

(smithy/sdk/shapes:define-output get-endpoint-access-response common-lisp:nil
                                 ((endpoint :target-type endpoint-access
                                   :member-name "endpoint"))
                                 (:shape-name "GetEndpointAccessResponse"))

(smithy/sdk/shapes:define-input get-namespace-request common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespaceName"))
                                (:shape-name "GetNamespaceRequest"))

(smithy/sdk/shapes:define-output get-namespace-response common-lisp:nil
                                 ((namespace :target-type namespace :required
                                   common-lisp:t :member-name "namespace"))
                                 (:shape-name "GetNamespaceResponse"))

(smithy/sdk/shapes:define-input get-recovery-point-request common-lisp:nil
                                ((recovery-point-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "recoveryPointId"))
                                (:shape-name "GetRecoveryPointRequest"))

(smithy/sdk/shapes:define-output get-recovery-point-response common-lisp:nil
                                 ((recovery-point :target-type recovery-point
                                   :member-name "recoveryPoint"))
                                 (:shape-name "GetRecoveryPointResponse"))

(smithy/sdk/shapes:define-input get-reservation-offering-request
                                common-lisp:nil
                                ((offering-id :target-type offering-id
                                  :required common-lisp:t :member-name
                                  "offeringId"))
                                (:shape-name "GetReservationOfferingRequest"))

(smithy/sdk/shapes:define-output get-reservation-offering-response
                                 common-lisp:nil
                                 ((reservation-offering :target-type
                                   reservation-offering :required common-lisp:t
                                   :member-name "reservationOffering"))
                                 (:shape-name "GetReservationOfferingResponse"))

(smithy/sdk/shapes:define-input get-reservation-request common-lisp:nil
                                ((reservation-id :target-type reservation-id
                                  :required common-lisp:t :member-name
                                  "reservationId"))
                                (:shape-name "GetReservationRequest"))

(smithy/sdk/shapes:define-output get-reservation-response common-lisp:nil
                                 ((reservation :target-type reservation
                                   :required common-lisp:t :member-name
                                   "reservation"))
                                 (:shape-name "GetReservationResponse"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :member-name "resourcePolicy"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-input get-scheduled-action-request common-lisp:nil
                                ((scheduled-action-name :target-type
                                  scheduled-action-name :required common-lisp:t
                                  :member-name "scheduledActionName"))
                                (:shape-name "GetScheduledActionRequest"))

(smithy/sdk/shapes:define-output get-scheduled-action-response common-lisp:nil
                                 ((scheduled-action :target-type
                                   scheduled-action-response :member-name
                                   "scheduledAction"))
                                 (:shape-name "GetScheduledActionResponse"))

(smithy/sdk/shapes:define-input get-snapshot-request common-lisp:nil
                                ((snapshot-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "snapshotName")
                                 (owner-account :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ownerAccount")
                                 (snapshot-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "snapshotArn"))
                                (:shape-name "GetSnapshotRequest"))

(smithy/sdk/shapes:define-output get-snapshot-response common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "snapshot"))
                                 (:shape-name "GetSnapshotResponse"))

(smithy/sdk/shapes:define-input get-table-restore-status-request
                                common-lisp:nil
                                ((table-restore-request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "tableRestoreRequestId"))
                                (:shape-name "GetTableRestoreStatusRequest"))

(smithy/sdk/shapes:define-output get-table-restore-status-response
                                 common-lisp:nil
                                 ((table-restore-status :target-type
                                   table-restore-status :member-name
                                   "tableRestoreStatus"))
                                 (:shape-name "GetTableRestoreStatusResponse"))

(smithy/sdk/shapes:define-input get-track-request common-lisp:nil
                                ((track-name :target-type track-name :required
                                  common-lisp:t :member-name "trackName"))
                                (:shape-name "GetTrackRequest"))

(smithy/sdk/shapes:define-output get-track-response common-lisp:nil
                                 ((track :target-type serverless-track
                                   :member-name "track"))
                                 (:shape-name "GetTrackResponse"))

(smithy/sdk/shapes:define-input get-usage-limit-request common-lisp:nil
                                ((usage-limit-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "usageLimitId"))
                                (:shape-name "GetUsageLimitRequest"))

(smithy/sdk/shapes:define-output get-usage-limit-response common-lisp:nil
                                 ((usage-limit :target-type usage-limit
                                   :member-name "usageLimit"))
                                 (:shape-name "GetUsageLimitResponse"))

(smithy/sdk/shapes:define-input get-workgroup-request common-lisp:nil
                                ((workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName"))
                                (:shape-name "GetWorkgroupRequest"))

(smithy/sdk/shapes:define-output get-workgroup-response common-lisp:nil
                                 ((workgroup :target-type workgroup :required
                                   common-lisp:t :member-name "workgroup"))
                                 (:shape-name "GetWorkgroupResponse"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list iam-role-arn-list :member iam-role-arn)

(smithy/sdk/shapes:define-error insufficient-capacity-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InsufficientCapacityException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-pagination-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidPaginationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ip-address-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error ipv6cidr-block-not-found-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "Ipv6CidrBlockNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-custom-domain-associations-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (custom-domain-name :target-type
                                  custom-domain-name :member-name
                                  "customDomainName")
                                 (custom-domain-certificate-arn :target-type
                                  custom-domain-certificate-arn-string
                                  :member-name "customDomainCertificateArn"))
                                (:shape-name
                                 "ListCustomDomainAssociationsRequest"))

(smithy/sdk/shapes:define-output list-custom-domain-associations-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (associations :target-type association-list
                                   :member-name "associations"))
                                 (:shape-name
                                  "ListCustomDomainAssociationsResponse"))

(smithy/sdk/shapes:define-input list-endpoint-access-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (workgroup-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "workgroupName")
                                 (vpc-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "vpcId")
                                 (owner-account :target-type owner-account
                                  :member-name "ownerAccount"))
                                (:shape-name "ListEndpointAccessRequest"))

(smithy/sdk/shapes:define-output list-endpoint-access-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (endpoints :target-type endpoint-access-list
                                   :required common-lisp:t :member-name
                                   "endpoints"))
                                 (:shape-name "ListEndpointAccessResponse"))

(smithy/sdk/shapes:define-input list-managed-workgroups-request common-lisp:nil
                                ((source-arn :target-type source-arn
                                  :member-name "sourceArn")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListManagedWorkgroupsRequest"))

(smithy/sdk/shapes:define-output list-managed-workgroups-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (managed-workgroups :target-type
                                   managed-workgroups :member-name
                                   "managedWorkgroups"))
                                 (:shape-name "ListManagedWorkgroupsResponse"))

(smithy/sdk/shapes:define-input list-namespaces-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListNamespacesRequest"))

(smithy/sdk/shapes:define-output list-namespaces-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (namespaces :target-type namespace-list
                                   :required common-lisp:t :member-name
                                   "namespaces"))
                                 (:shape-name "ListNamespacesResponse"))

(smithy/sdk/shapes:define-input list-recovery-points-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "startTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "endTime")
                                 (namespace-name :target-type namespace-name
                                  :member-name "namespaceName")
                                 (namespace-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "namespaceArn"))
                                (:shape-name "ListRecoveryPointsRequest"))

(smithy/sdk/shapes:define-output list-recovery-points-response common-lisp:nil
                                 ((recovery-points :target-type
                                   recovery-point-list :member-name
                                   "recoveryPoints")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListRecoveryPointsResponse"))

(smithy/sdk/shapes:define-input list-reservation-offerings-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListReservationOfferingsRequest"))

(smithy/sdk/shapes:define-output list-reservation-offerings-response
                                 common-lisp:nil
                                 ((reservation-offerings-list :target-type
                                   reservation-offerings-list :required
                                   common-lisp:t :member-name
                                   "reservationOfferingsList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListReservationOfferingsResponse"))

(smithy/sdk/shapes:define-input list-reservations-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListReservationsRequest"))

(smithy/sdk/shapes:define-output list-reservations-response common-lisp:nil
                                 ((reservations-list :target-type
                                   reservations-list :required common-lisp:t
                                   :member-name "reservationsList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListReservationsResponse"))

(smithy/sdk/shapes:define-input list-scheduled-actions-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (namespace-name :target-type namespace-name
                                  :member-name "namespaceName"))
                                (:shape-name "ListScheduledActionsRequest"))

(smithy/sdk/shapes:define-output list-scheduled-actions-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (scheduled-actions :target-type
                                   scheduled-actions-list :member-name
                                   "scheduledActions"))
                                 (:shape-name "ListScheduledActionsResponse"))

(smithy/sdk/shapes:define-input list-snapshot-copy-configurations-request
                                common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :member-name "namespaceName")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name
                                 "ListSnapshotCopyConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-snapshot-copy-configurations-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (snapshot-copy-configurations :target-type
                                   snapshot-copy-configurations :required
                                   common-lisp:t :member-name
                                   "snapshotCopyConfigurations"))
                                 (:shape-name
                                  "ListSnapshotCopyConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-snapshots-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (namespace-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "namespaceName")
                                 (namespace-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "namespaceArn")
                                 (owner-account :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ownerAccount")
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "startTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "endTime"))
                                (:shape-name "ListSnapshotsRequest"))

(smithy/sdk/shapes:define-output list-snapshots-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (snapshots :target-type snapshot-list
                                   :member-name "snapshots"))
                                 (:shape-name "ListSnapshotsResponse"))

(smithy/sdk/shapes:define-input list-table-restore-status-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (namespace-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "namespaceName")
                                 (workgroup-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "workgroupName"))
                                (:shape-name "ListTableRestoreStatusRequest"))

(smithy/sdk/shapes:define-output list-table-restore-status-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (table-restore-statuses :target-type
                                   table-restore-status-list :member-name
                                   "tableRestoreStatuses"))
                                 (:shape-name "ListTableRestoreStatusResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-tracks-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListTracksRequest"))

(smithy/sdk/shapes:define-output list-tracks-response common-lisp:nil
                                 ((tracks :target-type track-list :member-name
                                   "tracks")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTracksResponse"))

(smithy/sdk/shapes:define-input list-usage-limits-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceArn")
                                 (usage-type :target-type
                                  usage-limit-usage-type :member-name
                                  "usageType")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListUsageLimitsRequest"))

(smithy/sdk/shapes:define-output list-usage-limits-response common-lisp:nil
                                 ((usage-limits :target-type usage-limits
                                   :member-name "usageLimits")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListUsageLimitsResponse"))

(smithy/sdk/shapes:define-input list-workgroups-request common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (owner-account :target-type owner-account
                                  :member-name "ownerAccount"))
                                (:shape-name "ListWorkgroupsRequest"))

(smithy/sdk/shapes:define-output list-workgroups-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (workgroups :target-type workgroup-list
                                   :required common-lisp:t :member-name
                                   "workgroups"))
                                 (:shape-name "ListWorkgroupsResponse"))

(smithy/sdk/shapes:define-type log-export smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-export-list :member log-export)

(smithy/sdk/shapes:define-structure managed-workgroup-list-item common-lisp:nil
                                    ((managed-workgroup-name :target-type
                                      managed-workgroup-name :member-name
                                      "managedWorkgroupName")
                                     (managed-workgroup-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "managedWorkgroupId")
                                     (source-arn :target-type source-arn
                                      :member-name "sourceArn")
                                     (status :target-type
                                      managed-workgroup-status :member-name
                                      "status")
                                     (creation-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationDate"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ManagedWorkgroupListItem"))

(smithy/sdk/shapes:define-type managed-workgroup-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum managed-workgroup-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:modifying "MODIFYING")
  (:available "AVAILABLE")
  (:not-available "NOT_AVAILABLE"))

(smithy/sdk/shapes:define-list managed-workgroups :member
                               managed-workgroup-list-item)

(smithy/sdk/shapes:define-structure namespace common-lisp:nil
                                    ((namespace-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "namespaceArn")
                                     (namespace-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "namespaceId")
                                     (namespace-name :target-type
                                      namespace-name :member-name
                                      "namespaceName")
                                     (admin-username :target-type db-user
                                      :member-name "adminUsername")
                                     (db-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dbName")
                                     (kms-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyId")
                                     (default-iam-role-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultIamRoleArn")
                                     (iam-roles :target-type iam-role-arn-list
                                      :member-name "iamRoles")
                                     (log-exports :target-type log-export-list
                                      :member-name "logExports")
                                     (status :target-type namespace-status
                                      :member-name "status")
                                     (creation-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationDate"
                                      :timestamp-format "date-time")
                                     (admin-password-secret-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "adminPasswordSecretArn")
                                     (admin-password-secret-kms-key-id
                                      :target-type kms-key-id :member-name
                                      "adminPasswordSecretKmsKeyId"))
                                    (:shape-name "Namespace"))

(smithy/sdk/shapes:define-list namespace-list :member namespace)

(smithy/sdk/shapes:define-type namespace-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type namespace-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((network-interface-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "networkInterfaceId")
                                     (subnet-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "subnetId")
                                     (private-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "privateIpAddress")
                                     (availability-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZone")
                                     (ipv6address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ipv6Address"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-list network-interface-list :member network-interface)

(smithy/sdk/shapes:define-list next-invocations-list :member
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type offering-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type offering-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type owner-account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure performance-target common-lisp:nil
                                    ((status :target-type
                                      performance-target-status :member-name
                                      "status")
                                     (level :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "level"))
                                    (:shape-name "PerformanceTarget"))

(smithy/sdk/shapes:define-type performance-target-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn")
                                 (policy :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "policy"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :member-name "resourcePolicy"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure recovery-point common-lisp:nil
                                    ((recovery-point-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "recoveryPointId")
                                     (recovery-point-create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "recoveryPointCreateTime"
                                      :timestamp-format "date-time")
                                     (total-size-in-mega-bytes :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "totalSizeInMegaBytes")
                                     (namespace-name :target-type
                                      namespace-name :member-name
                                      "namespaceName")
                                     (workgroup-name :target-type
                                      workgroup-name :member-name
                                      "workgroupName")
                                     (namespace-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "namespaceArn"))
                                    (:shape-name "RecoveryPoint"))

(smithy/sdk/shapes:define-list recovery-point-list :member recovery-point)

common-lisp:nil

(smithy/sdk/shapes:define-type redshift-idc-application-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reservation common-lisp:nil
                                    ((reservation-id :target-type
                                      reservation-id :member-name
                                      "reservationId")
                                     (reservation-arn :target-type
                                      reservation-arn :member-name
                                      "reservationArn")
                                     (start-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startDate"
                                      :timestamp-format "date-time")
                                     (end-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endDate" :timestamp-format
                                      "date-time")
                                     (capacity :target-type capacity
                                      :member-name "capacity")
                                     (offering :target-type
                                      reservation-offering :member-name
                                      "offering")
                                     (status :target-type status :member-name
                                      "status"))
                                    (:shape-name "Reservation"))

(smithy/sdk/shapes:define-type reservation-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reservation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reservation-offering common-lisp:nil
                                    ((offering-id :target-type offering-id
                                      :member-name "offeringId")
                                     (duration :target-type duration
                                      :member-name "duration")
                                     (upfront-charge :target-type charge
                                      :member-name "upfrontCharge")
                                     (hourly-charge :target-type charge
                                      :member-name "hourlyCharge")
                                     (currency-code :target-type currency-code
                                      :member-name "currencyCode")
                                     (offering-type :target-type offering-type
                                      :member-name "offeringType"))
                                    (:shape-name "ReservationOffering"))

(smithy/sdk/shapes:define-list reservation-offerings-list :member
                               reservation-offering)

common-lisp:nil

(smithy/sdk/shapes:define-list reservations-list :member reservation)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "resourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-policy common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceArn")
                                     (policy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "policy"))
                                    (:shape-name "ResourcePolicy"))

(smithy/sdk/shapes:define-input restore-from-recovery-point-request
                                common-lisp:nil
                                ((recovery-point-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "recoveryPointId")
                                 (namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespaceName")
                                 (workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName"))
                                (:shape-name "RestoreFromRecoveryPointRequest"))

(smithy/sdk/shapes:define-output restore-from-recovery-point-response
                                 common-lisp:nil
                                 ((recovery-point-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "recoveryPointId")
                                  (namespace :target-type namespace
                                   :member-name "namespace"))
                                 (:shape-name
                                  "RestoreFromRecoveryPointResponse"))

(smithy/sdk/shapes:define-input restore-from-snapshot-request common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespaceName")
                                 (workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName")
                                 (snapshot-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "snapshotName")
                                 (snapshot-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "snapshotArn")
                                 (owner-account :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ownerAccount")
                                 (manage-admin-password :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "manageAdminPassword")
                                 (admin-password-secret-kms-key-id :target-type
                                  kms-key-id :member-name
                                  "adminPasswordSecretKmsKeyId"))
                                (:shape-name "RestoreFromSnapshotRequest"))

(smithy/sdk/shapes:define-output restore-from-snapshot-response common-lisp:nil
                                 ((snapshot-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "snapshotName")
                                  (owner-account :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ownerAccount")
                                  (namespace :target-type namespace
                                   :member-name "namespace"))
                                 (:shape-name "RestoreFromSnapshotResponse"))

(smithy/sdk/shapes:define-input restore-table-from-recovery-point-request
                                common-lisp:nil
                                ((namespace-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "namespaceName")
                                 (workgroup-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "workgroupName")
                                 (recovery-point-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "recoveryPointId")
                                 (source-database-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "sourceDatabaseName")
                                 (source-schema-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "sourceSchemaName")
                                 (source-table-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "sourceTableName")
                                 (target-database-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "targetDatabaseName")
                                 (target-schema-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "targetSchemaName")
                                 (new-table-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "newTableName")
                                 (activate-case-sensitive-identifier
                                  :target-type smithy/sdk/smithy-types:boolean
                                  :member-name
                                  "activateCaseSensitiveIdentifier"))
                                (:shape-name
                                 "RestoreTableFromRecoveryPointRequest"))

(smithy/sdk/shapes:define-output restore-table-from-recovery-point-response
                                 common-lisp:nil
                                 ((table-restore-status :target-type
                                   table-restore-status :member-name
                                   "tableRestoreStatus"))
                                 (:shape-name
                                  "RestoreTableFromRecoveryPointResponse"))

(smithy/sdk/shapes:define-input restore-table-from-snapshot-request
                                common-lisp:nil
                                ((namespace-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "namespaceName")
                                 (workgroup-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "workgroupName")
                                 (snapshot-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "snapshotName")
                                 (source-database-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "sourceDatabaseName")
                                 (source-schema-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "sourceSchemaName")
                                 (source-table-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "sourceTableName")
                                 (target-database-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "targetDatabaseName")
                                 (target-schema-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "targetSchemaName")
                                 (new-table-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "newTableName")
                                 (activate-case-sensitive-identifier
                                  :target-type smithy/sdk/smithy-types:boolean
                                  :member-name
                                  "activateCaseSensitiveIdentifier"))
                                (:shape-name "RestoreTableFromSnapshotRequest"))

(smithy/sdk/shapes:define-output restore-table-from-snapshot-response
                                 common-lisp:nil
                                 ((table-restore-status :target-type
                                   table-restore-status :member-name
                                   "tableRestoreStatus"))
                                 (:shape-name
                                  "RestoreTableFromSnapshotResponse"))

(smithy/sdk/shapes:define-union schedule common-lisp:nil
                                ((at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "at")
                                 (cron :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "cron"))
                                (:shape-name "Schedule"))

(smithy/sdk/shapes:define-structure scheduled-action-association
                                    common-lisp:nil
                                    ((namespace-name :target-type
                                      namespace-name :member-name
                                      "namespaceName")
                                     (scheduled-action-name :target-type
                                      scheduled-action-name :member-name
                                      "scheduledActionName"))
                                    (:shape-name "ScheduledActionAssociation"))

(smithy/sdk/shapes:define-type scheduled-action-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure scheduled-action-response common-lisp:nil
                                    ((scheduled-action-name :target-type
                                      scheduled-action-name :member-name
                                      "scheduledActionName")
                                     (schedule :target-type schedule
                                      :member-name "schedule")
                                     (scheduled-action-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "scheduledActionDescription")
                                     (next-invocations :target-type
                                      next-invocations-list :member-name
                                      "nextInvocations")
                                     (role-arn :target-type iam-role-arn
                                      :member-name "roleArn")
                                     (state :target-type state :member-name
                                      "state")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (target-action :target-type target-action
                                      :member-name "targetAction")
                                     (namespace-name :target-type
                                      namespace-name :member-name
                                      "namespaceName")
                                     (scheduled-action-uuid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scheduledActionUuid"))
                                    (:shape-name "ScheduledActionResponse"))

(smithy/sdk/shapes:define-list scheduled-actions-list :member
                               scheduled-action-association)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-id-list :member security-group-id)

(smithy/sdk/shapes:define-structure serverless-track common-lisp:nil
                                    ((track-name :target-type track-name
                                      :member-name "trackName")
                                     (workgroup-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupVersion")
                                     (update-targets :target-type
                                      update-targets-list :member-name
                                      "updateTargets"))
                                    (:shape-name "ServerlessTrack"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure snapshot common-lisp:nil
                                    ((namespace-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "namespaceName")
                                     (namespace-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "namespaceArn")
                                     (snapshot-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "snapshotName")
                                     (snapshot-create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "snapshotCreateTime"
                                      :timestamp-format "date-time")
                                     (admin-username :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "adminUsername")
                                     (status :target-type snapshot-status
                                      :member-name "status")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (owner-account :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ownerAccount")
                                     (total-backup-size-in-mega-bytes
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "totalBackupSizeInMegaBytes")
                                     (actual-incremental-backup-size-in-mega-bytes
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "actualIncrementalBackupSizeInMegaBytes")
                                     (backup-progress-in-mega-bytes
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "backupProgressInMegaBytes")
                                     (current-backup-rate-in-mega-bytes-per-second
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "currentBackupRateInMegaBytesPerSecond")
                                     (estimated-seconds-to-completion
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "estimatedSecondsToCompletion")
                                     (elapsed-time-in-seconds :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "elapsedTimeInSeconds")
                                     (snapshot-retention-period :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "snapshotRetentionPeriod")
                                     (snapshot-remaining-days :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "snapshotRemainingDays")
                                     (snapshot-retention-start-time
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "snapshotRetentionStartTime"
                                      :timestamp-format "date-time")
                                     (snapshot-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "snapshotArn")
                                     (accounts-with-restore-access :target-type
                                      account-id-list :member-name
                                      "accountsWithRestoreAccess")
                                     (accounts-with-provisioned-restore-access
                                      :target-type account-id-list :member-name
                                      "accountsWithProvisionedRestoreAccess")
                                     (admin-password-secret-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "adminPasswordSecretArn")
                                     (admin-password-secret-kms-key-id
                                      :target-type kms-key-id :member-name
                                      "adminPasswordSecretKmsKeyId"))
                                    (:shape-name "Snapshot"))

(smithy/sdk/shapes:define-structure snapshot-copy-configuration common-lisp:nil
                                    ((snapshot-copy-configuration-id
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "snapshotCopyConfigurationId")
                                     (snapshot-copy-configuration-arn
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "snapshotCopyConfigurationArn")
                                     (namespace-name :target-type
                                      namespace-name :member-name
                                      "namespaceName")
                                     (destination-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "destinationRegion")
                                     (snapshot-retention-period :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "snapshotRetentionPeriod")
                                     (destination-kms-key-id :target-type
                                      kms-key-id :member-name
                                      "destinationKmsKeyId"))
                                    (:shape-name "SnapshotCopyConfiguration"))

(smithy/sdk/shapes:define-list snapshot-copy-configurations :member
                               snapshot-copy-configuration)

(smithy/sdk/shapes:define-list snapshot-list :member snapshot)

(smithy/sdk/shapes:define-type snapshot-name-prefix
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type snapshot-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id)

(smithy/sdk/shapes:define-structure table-restore-status common-lisp:nil
                                    ((table-restore-request-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "tableRestoreRequestId")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "status")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message")
                                     (request-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "requestTime")
                                     (namespace-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "namespaceName")
                                     (workgroup-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupName")
                                     (snapshot-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "snapshotName")
                                     (progress-in-mega-bytes :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "progressInMegaBytes")
                                     (total-data-in-mega-bytes :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "totalDataInMegaBytes")
                                     (source-database-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceDatabaseName")
                                     (source-schema-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceSchemaName")
                                     (source-table-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceTableName")
                                     (target-database-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "targetDatabaseName")
                                     (target-schema-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "targetSchemaName")
                                     (new-table-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "newTableName")
                                     (recovery-point-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "recoveryPointId"))
                                    (:shape-name "TableRestoreStatus"))

(smithy/sdk/shapes:define-list table-restore-status-list :member
                               table-restore-status)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union target-action common-lisp:nil
                                ((create-snapshot :target-type
                                  create-snapshot-schedule-action-parameters
                                  :member-name "createSnapshot"))
                                (:shape-name "TargetAction"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "code")
                                 (message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list track-list :member serverless-track)

(smithy/sdk/shapes:define-type track-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-custom-domain-association-request
                                common-lisp:nil
                                ((workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName")
                                 (custom-domain-name :target-type
                                  custom-domain-name :required common-lisp:t
                                  :member-name "customDomainName")
                                 (custom-domain-certificate-arn :target-type
                                  custom-domain-certificate-arn-string
                                  :required common-lisp:t :member-name
                                  "customDomainCertificateArn"))
                                (:shape-name
                                 "UpdateCustomDomainAssociationRequest"))

(smithy/sdk/shapes:define-output update-custom-domain-association-response
                                 common-lisp:nil
                                 ((custom-domain-name :target-type
                                   custom-domain-name :member-name
                                   "customDomainName")
                                  (workgroup-name :target-type workgroup-name
                                   :member-name "workgroupName")
                                  (custom-domain-certificate-arn :target-type
                                   custom-domain-certificate-arn-string
                                   :member-name "customDomainCertificateArn")
                                  (custom-domain-certificate-expiry-time
                                   :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name
                                   "customDomainCertificateExpiryTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name
                                  "UpdateCustomDomainAssociationResponse"))

(smithy/sdk/shapes:define-input update-endpoint-access-request common-lisp:nil
                                ((endpoint-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "endpointName")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "vpcSecurityGroupIds"))
                                (:shape-name "UpdateEndpointAccessRequest"))

(smithy/sdk/shapes:define-output update-endpoint-access-response
                                 common-lisp:nil
                                 ((endpoint :target-type endpoint-access
                                   :member-name "endpoint"))
                                 (:shape-name "UpdateEndpointAccessResponse"))

(smithy/sdk/shapes:define-input update-namespace-request common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespaceName")
                                 (admin-user-password :target-type db-password
                                  :member-name "adminUserPassword")
                                 (admin-username :target-type db-user
                                  :member-name "adminUsername")
                                 (kms-key-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "kmsKeyId")
                                 (default-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "defaultIamRoleArn")
                                 (iam-roles :target-type iam-role-arn-list
                                  :member-name "iamRoles")
                                 (log-exports :target-type log-export-list
                                  :member-name "logExports")
                                 (manage-admin-password :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "manageAdminPassword")
                                 (admin-password-secret-kms-key-id :target-type
                                  kms-key-id :member-name
                                  "adminPasswordSecretKmsKeyId"))
                                (:shape-name "UpdateNamespaceRequest"))

(smithy/sdk/shapes:define-output update-namespace-response common-lisp:nil
                                 ((namespace :target-type namespace :required
                                   common-lisp:t :member-name "namespace"))
                                 (:shape-name "UpdateNamespaceResponse"))

(smithy/sdk/shapes:define-input update-scheduled-action-request common-lisp:nil
                                ((scheduled-action-name :target-type
                                  scheduled-action-name :required common-lisp:t
                                  :member-name "scheduledActionName")
                                 (target-action :target-type target-action
                                  :member-name "targetAction")
                                 (schedule :target-type schedule :member-name
                                  "schedule")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "roleArn")
                                 (enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "enabled")
                                 (scheduled-action-description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "scheduledActionDescription")
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "startTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "endTime"))
                                (:shape-name "UpdateScheduledActionRequest"))

(smithy/sdk/shapes:define-output update-scheduled-action-response
                                 common-lisp:nil
                                 ((scheduled-action :target-type
                                   scheduled-action-response :member-name
                                   "scheduledAction"))
                                 (:shape-name "UpdateScheduledActionResponse"))

(smithy/sdk/shapes:define-input update-snapshot-copy-configuration-request
                                common-lisp:nil
                                ((snapshot-copy-configuration-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "snapshotCopyConfigurationId")
                                 (snapshot-retention-period :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "snapshotRetentionPeriod"))
                                (:shape-name
                                 "UpdateSnapshotCopyConfigurationRequest"))

(smithy/sdk/shapes:define-output update-snapshot-copy-configuration-response
                                 common-lisp:nil
                                 ((snapshot-copy-configuration :target-type
                                   snapshot-copy-configuration :required
                                   common-lisp:t :member-name
                                   "snapshotCopyConfiguration"))
                                 (:shape-name
                                  "UpdateSnapshotCopyConfigurationResponse"))

(smithy/sdk/shapes:define-input update-snapshot-request common-lisp:nil
                                ((snapshot-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "snapshotName")
                                 (retention-period :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retentionPeriod"))
                                (:shape-name "UpdateSnapshotRequest"))

(smithy/sdk/shapes:define-output update-snapshot-response common-lisp:nil
                                 ((snapshot :target-type snapshot :member-name
                                   "snapshot"))
                                 (:shape-name "UpdateSnapshotResponse"))

(smithy/sdk/shapes:define-structure update-target common-lisp:nil
                                    ((track-name :target-type track-name
                                      :member-name "trackName")
                                     (workgroup-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupVersion"))
                                    (:shape-name "UpdateTarget"))

(smithy/sdk/shapes:define-list update-targets-list :member update-target)

(smithy/sdk/shapes:define-input update-usage-limit-request common-lisp:nil
                                ((usage-limit-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "usageLimitId")
                                 (amount :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "amount")
                                 (breach-action :target-type
                                  usage-limit-breach-action :member-name
                                  "breachAction"))
                                (:shape-name "UpdateUsageLimitRequest"))

(smithy/sdk/shapes:define-output update-usage-limit-response common-lisp:nil
                                 ((usage-limit :target-type usage-limit
                                   :member-name "usageLimit"))
                                 (:shape-name "UpdateUsageLimitResponse"))

(smithy/sdk/shapes:define-input update-workgroup-request common-lisp:nil
                                ((workgroup-name :target-type workgroup-name
                                  :required common-lisp:t :member-name
                                  "workgroupName")
                                 (base-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "baseCapacity")
                                 (enhanced-vpc-routing :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "enhancedVpcRouting")
                                 (config-parameters :target-type
                                  config-parameter-list :member-name
                                  "configParameters")
                                 (publicly-accessible :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publiclyAccessible")
                                 (subnet-ids :target-type subnet-id-list
                                  :member-name "subnetIds")
                                 (security-group-ids :target-type
                                  security-group-id-list :member-name
                                  "securityGroupIds")
                                 (port :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "port")
                                 (max-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxCapacity")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "ipAddressType")
                                 (price-performance-target :target-type
                                  performance-target :member-name
                                  "pricePerformanceTarget")
                                 (track-name :target-type track-name
                                  :member-name "trackName"))
                                (:shape-name "UpdateWorkgroupRequest"))

(smithy/sdk/shapes:define-output update-workgroup-response common-lisp:nil
                                 ((workgroup :target-type workgroup :required
                                   common-lisp:t :member-name "workgroup"))
                                 (:shape-name "UpdateWorkgroupResponse"))

(smithy/sdk/shapes:define-structure usage-limit common-lisp:nil
                                    ((usage-limit-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "usageLimitId")
                                     (usage-limit-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "usageLimitArn")
                                     (resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceArn")
                                     (usage-type :target-type
                                      usage-limit-usage-type :member-name
                                      "usageType")
                                     (amount :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "amount")
                                     (period :target-type usage-limit-period
                                      :member-name "period")
                                     (breach-action :target-type
                                      usage-limit-breach-action :member-name
                                      "breachAction"))
                                    (:shape-name "UsageLimit"))

(smithy/sdk/shapes:define-type usage-limit-breach-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type usage-limit-period
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type usage-limit-usage-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list usage-limits :member usage-limit)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure vpc-endpoint common-lisp:nil
                                    ((vpc-endpoint-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vpcEndpointId")
                                     (vpc-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vpcId")
                                     (network-interfaces :target-type
                                      network-interface-list :member-name
                                      "networkInterfaces"))
                                    (:shape-name "VpcEndpoint"))

(smithy/sdk/shapes:define-list vpc-endpoint-list :member vpc-endpoint)

(smithy/sdk/shapes:define-list vpc-ids :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-security-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpc-security-group-id-list :member
                               vpc-security-group-id)

(smithy/sdk/shapes:define-structure vpc-security-group-membership
                                    common-lisp:nil
                                    ((vpc-security-group-id :target-type
                                      vpc-security-group-id :member-name
                                      "vpcSecurityGroupId")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "status"))
                                    (:shape-name "VpcSecurityGroupMembership"))

(smithy/sdk/shapes:define-list vpc-security-group-membership-list :member
                               vpc-security-group-membership)

(smithy/sdk/shapes:define-structure workgroup common-lisp:nil
                                    ((workgroup-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupId")
                                     (workgroup-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupArn")
                                     (workgroup-name :target-type
                                      workgroup-name :member-name
                                      "workgroupName")
                                     (namespace-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "namespaceName")
                                     (base-capacity :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "baseCapacity")
                                     (enhanced-vpc-routing :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enhancedVpcRouting")
                                     (config-parameters :target-type
                                      config-parameter-list :member-name
                                      "configParameters")
                                     (security-group-ids :target-type
                                      security-group-id-list :member-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type subnet-id-list
                                      :member-name "subnetIds")
                                     (status :target-type workgroup-status
                                      :member-name "status")
                                     (endpoint :target-type endpoint
                                      :member-name "endpoint")
                                     (publicly-accessible :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "publiclyAccessible")
                                     (creation-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationDate"
                                      :timestamp-format "date-time")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "port")
                                     (custom-domain-name :target-type
                                      custom-domain-name :member-name
                                      "customDomainName")
                                     (custom-domain-certificate-arn
                                      :target-type
                                      custom-domain-certificate-arn-string
                                      :member-name
                                      "customDomainCertificateArn")
                                     (custom-domain-certificate-expiry-time
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "customDomainCertificateExpiryTime"
                                      :timestamp-format "date-time")
                                     (workgroup-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workgroupVersion")
                                     (patch-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "patchVersion")
                                     (max-capacity :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxCapacity")
                                     (cross-account-vpcs :target-type vpc-ids
                                      :member-name "crossAccountVpcs")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "ipAddressType")
                                     (price-performance-target :target-type
                                      performance-target :member-name
                                      "pricePerformanceTarget")
                                     (track-name :target-type track-name
                                      :member-name "trackName")
                                     (pending-track-name :target-type
                                      track-name :member-name
                                      "pendingTrackName"))
                                    (:shape-name "Workgroup"))

(smithy/sdk/shapes:define-list workgroup-list :member workgroup)

(smithy/sdk/shapes:define-type workgroup-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type workgroup-status smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation convert-recovery-point-to-snapshot
                                       :shape-name
                                       "ConvertRecoveryPointToSnapshot" :input
                                       convert-recovery-point-to-snapshot-request
                                       :output
                                       convert-recovery-point-to-snapshot-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-custom-domain-association
                                       :shape-name
                                       "CreateCustomDomainAssociation" :input
                                       create-custom-domain-association-request
                                       :output
                                       create-custom-domain-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-endpoint-access :shape-name
                                       "CreateEndpointAccess" :input
                                       create-endpoint-access-request :output
                                       create-endpoint-access-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-namespace :shape-name
                                       "CreateNamespace" :input
                                       create-namespace-request :output
                                       create-namespace-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-reservation :shape-name
                                       "CreateReservation" :input
                                       create-reservation-request :output
                                       create-reservation-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-scheduled-action :shape-name
                                       "CreateScheduledAction" :input
                                       create-scheduled-action-request :output
                                       create-scheduled-action-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-snapshot :shape-name
                                       "CreateSnapshot" :input
                                       create-snapshot-request :output
                                       create-snapshot-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-snapshot-copy-configuration
                                       :shape-name
                                       "CreateSnapshotCopyConfiguration" :input
                                       create-snapshot-copy-configuration-request
                                       :output
                                       create-snapshot-copy-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-usage-limit :shape-name
                                       "CreateUsageLimit" :input
                                       create-usage-limit-request :output
                                       create-usage-limit-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-workgroup :shape-name
                                       "CreateWorkgroup" :input
                                       create-workgroup-request :output
                                       create-workgroup-response :errors
                                       (conflict-exception
                                        insufficient-capacity-exception
                                        internal-server-exception
                                        ipv6cidr-block-not-found-exception
                                        resource-not-found-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-custom-domain-association
                                       :shape-name
                                       "DeleteCustomDomainAssociation" :input
                                       delete-custom-domain-association-request
                                       :output
                                       delete-custom-domain-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-endpoint-access :shape-name
                                       "DeleteEndpointAccess" :input
                                       delete-endpoint-access-request :output
                                       delete-endpoint-access-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-namespace :shape-name
                                       "DeleteNamespace" :input
                                       delete-namespace-request :output
                                       delete-namespace-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-scheduled-action :shape-name
                                       "DeleteScheduledAction" :input
                                       delete-scheduled-action-request :output
                                       delete-scheduled-action-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-snapshot :shape-name
                                       "DeleteSnapshot" :input
                                       delete-snapshot-request :output
                                       delete-snapshot-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-snapshot-copy-configuration
                                       :shape-name
                                       "DeleteSnapshotCopyConfiguration" :input
                                       delete-snapshot-copy-configuration-request
                                       :output
                                       delete-snapshot-copy-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-usage-limit :shape-name
                                       "DeleteUsageLimit" :input
                                       delete-usage-limit-request :output
                                       delete-usage-limit-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-workgroup :shape-name
                                       "DeleteWorkgroup" :input
                                       delete-workgroup-request :output
                                       delete-workgroup-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-credentials :shape-name
                                       "GetCredentials" :input
                                       get-credentials-request :output
                                       get-credentials-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-custom-domain-association
                                       :shape-name "GetCustomDomainAssociation"
                                       :input
                                       get-custom-domain-association-request
                                       :output
                                       get-custom-domain-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-endpoint-access :shape-name
                                       "GetEndpointAccess" :input
                                       get-endpoint-access-request :output
                                       get-endpoint-access-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-namespace :shape-name "GetNamespace"
                                       :input get-namespace-request :output
                                       get-namespace-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-recovery-point :shape-name
                                       "GetRecoveryPoint" :input
                                       get-recovery-point-request :output
                                       get-recovery-point-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-reservation :shape-name
                                       "GetReservation" :input
                                       get-reservation-request :output
                                       get-reservation-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-reservation-offering :shape-name
                                       "GetReservationOffering" :input
                                       get-reservation-offering-request :output
                                       get-reservation-offering-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-scheduled-action :shape-name
                                       "GetScheduledAction" :input
                                       get-scheduled-action-request :output
                                       get-scheduled-action-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-snapshot :shape-name "GetSnapshot"
                                       :input get-snapshot-request :output
                                       get-snapshot-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-table-restore-status :shape-name
                                       "GetTableRestoreStatus" :input
                                       get-table-restore-status-request :output
                                       get-table-restore-status-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-track :shape-name "GetTrack" :input
                                       get-track-request :output
                                       get-track-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-usage-limit :shape-name
                                       "GetUsageLimit" :input
                                       get-usage-limit-request :output
                                       get-usage-limit-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-workgroup :shape-name "GetWorkgroup"
                                       :input get-workgroup-request :output
                                       get-workgroup-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-custom-domain-associations
                                       :shape-name
                                       "ListCustomDomainAssociations" :input
                                       list-custom-domain-associations-request
                                       :output
                                       list-custom-domain-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-pagination-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-endpoint-access :shape-name
                                       "ListEndpointAccess" :input
                                       list-endpoint-access-request :output
                                       list-endpoint-access-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-managed-workgroups :shape-name
                                       "ListManagedWorkgroups" :input
                                       list-managed-workgroups-request :output
                                       list-managed-workgroups-response :errors
                                       (access-denied-exception
                                        internal-server-exception))

(smithy/sdk/operation:define-operation list-namespaces :shape-name
                                       "ListNamespaces" :input
                                       list-namespaces-request :output
                                       list-namespaces-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-recovery-points :shape-name
                                       "ListRecoveryPoints" :input
                                       list-recovery-points-request :output
                                       list-recovery-points-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-reservation-offerings :shape-name
                                       "ListReservationOfferings" :input
                                       list-reservation-offerings-request
                                       :output
                                       list-reservation-offerings-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-reservations :shape-name
                                       "ListReservations" :input
                                       list-reservations-request :output
                                       list-reservations-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-scheduled-actions :shape-name
                                       "ListScheduledActions" :input
                                       list-scheduled-actions-request :output
                                       list-scheduled-actions-response :errors
                                       (internal-server-exception
                                        invalid-pagination-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-snapshot-copy-configurations
                                       :shape-name
                                       "ListSnapshotCopyConfigurations" :input
                                       list-snapshot-copy-configurations-request
                                       :output
                                       list-snapshot-copy-configurations-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        invalid-pagination-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-snapshots :shape-name
                                       "ListSnapshots" :input
                                       list-snapshots-request :output
                                       list-snapshots-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-table-restore-status :shape-name
                                       "ListTableRestoreStatus" :input
                                       list-table-restore-status-request
                                       :output
                                       list-table-restore-status-response
                                       :errors
                                       (invalid-pagination-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tracks :shape-name "ListTracks"
                                       :input list-tracks-request :output
                                       list-tracks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-pagination-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-usage-limits :shape-name
                                       "ListUsageLimits" :input
                                       list-usage-limits-request :output
                                       list-usage-limits-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        invalid-pagination-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-workgroups :shape-name
                                       "ListWorkgroups" :input
                                       list-workgroups-request :output
                                       list-workgroups-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation restore-from-recovery-point :shape-name
                                       "RestoreFromRecoveryPoint" :input
                                       restore-from-recovery-point-request
                                       :output
                                       restore-from-recovery-point-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation restore-from-snapshot :shape-name
                                       "RestoreFromSnapshot" :input
                                       restore-from-snapshot-request :output
                                       restore-from-snapshot-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation restore-table-from-recovery-point
                                       :shape-name
                                       "RestoreTableFromRecoveryPoint" :input
                                       restore-table-from-recovery-point-request
                                       :output
                                       restore-table-from-recovery-point-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation restore-table-from-snapshot :shape-name
                                       "RestoreTableFromSnapshot" :input
                                       restore-table-from-snapshot-request
                                       :output
                                       restore-table-from-snapshot-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-custom-domain-association
                                       :shape-name
                                       "UpdateCustomDomainAssociation" :input
                                       update-custom-domain-association-request
                                       :output
                                       update-custom-domain-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-endpoint-access :shape-name
                                       "UpdateEndpointAccess" :input
                                       update-endpoint-access-request :output
                                       update-endpoint-access-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-namespace :shape-name
                                       "UpdateNamespace" :input
                                       update-namespace-request :output
                                       update-namespace-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-scheduled-action :shape-name
                                       "UpdateScheduledAction" :input
                                       update-scheduled-action-request :output
                                       update-scheduled-action-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-snapshot :shape-name
                                       "UpdateSnapshot" :input
                                       update-snapshot-request :output
                                       update-snapshot-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-snapshot-copy-configuration
                                       :shape-name
                                       "UpdateSnapshotCopyConfiguration" :input
                                       update-snapshot-copy-configuration-request
                                       :output
                                       update-snapshot-copy-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-usage-limit :shape-name
                                       "UpdateUsageLimit" :input
                                       update-usage-limit-request :output
                                       update-usage-limit-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-workgroup :shape-name
                                       "UpdateWorkgroup" :input
                                       update-workgroup-request :output
                                       update-workgroup-response :errors
                                       (conflict-exception
                                        insufficient-capacity-exception
                                        internal-server-exception
                                        ipv6cidr-block-not-found-exception
                                        resource-not-found-exception
                                        validation-exception))
