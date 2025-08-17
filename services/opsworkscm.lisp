(uiop/package:define-package #:pira/opsworkscm (:use)
                             (:export #:awsops-works-cmresource-arn
                              #:account-attribute #:account-attributes
                              #:associate-node #:attribute-name
                              #:attribute-value #:backup #:backup-id
                              #:backup-retention-count-definition
                              #:backup-status #:backup-type #:backups #:boolean
                              #:create-backup #:create-server
                              #:custom-certificate #:custom-domain
                              #:custom-private-key #:delete-backup
                              #:delete-server #:describe-account-attributes
                              #:describe-backups #:describe-events
                              #:describe-node-association-status
                              #:describe-servers #:disassociate-node
                              #:engine-attribute #:engine-attribute-name
                              #:engine-attribute-value #:engine-attributes
                              #:export-server-engine-attribute
                              #:instance-profile-arn #:integer #:key-pair
                              #:list-tags-for-resource #:maintenance-status
                              #:max-results #:next-token
                              #:node-association-status
                              #:node-association-status-token #:node-name
                              #:ops-works-cm-v2016-11-01 #:restore-server
                              #:server #:server-event #:server-events
                              #:server-name #:server-status #:servers
                              #:service-role-arn #:start-maintenance #:string
                              #:strings #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value
                              #:time-window-definition #:timestamp
                              #:untag-resource #:update-server
                              #:update-server-engine-attributes))
(common-lisp:in-package #:pira/opsworkscm)

(smithy/sdk/service:define-service ops-works-cm-v2016-11-01 :shape-name
                                   "OpsWorksCM_V2016_11_01" :version
                                   "2016-11-01" :title "AWS OpsWorks CM"
                                   :operations
                                   '(associate-node create-backup create-server
                                     delete-backup delete-server
                                     describe-account-attributes
                                     describe-backups describe-events
                                     describe-node-association-status
                                     describe-servers disassociate-node
                                     export-server-engine-attribute
                                     list-tags-for-resource restore-server
                                     start-maintenance tag-resource
                                     untag-resource update-server
                                     update-server-engine-attributes)
                                   :xml-namespace
                                   '(:uri
                                     "http://opsworks-cm.amazonaws.com/doc/2016-11-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "OpsWorksCM")
                                      ("arnNamespace" . "opsworks-cm")
                                      ("cloudFormationName" . "OpsWorksCM")
                                      ("cloudTrailEventSource"
                                       . "opsworkscm.amazonaws.com")
                                      ("endpointPrefix" . "opsworks-cm"))
                                     ("aws.auth#sigv4"
                                      ("name" . "opsworks-cm"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type awsops-works-cmresource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-attribute common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (maximum :target-type integer :member-name
                                      "Maximum")
                                     (used :target-type integer :member-name
                                      "Used"))
                                    (:shape-name "AccountAttribute"))

(smithy/sdk/shapes:define-list account-attributes :member account-attribute)

(smithy/sdk/shapes:define-input associate-node-request common-lisp:nil
                                ((server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (node-name :target-type node-name :required
                                  common-lisp:t :member-name "NodeName")
                                 (engine-attributes :target-type
                                  engine-attributes :required common-lisp:t
                                  :member-name "EngineAttributes"))
                                (:shape-name "AssociateNodeRequest"))

(smithy/sdk/shapes:define-output associate-node-response common-lisp:nil
                                 ((node-association-status-token :target-type
                                   node-association-status-token :member-name
                                   "NodeAssociationStatusToken"))
                                 (:shape-name "AssociateNodeResponse"))

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure backup common-lisp:nil
                                    ((backup-arn :target-type string
                                      :member-name "BackupArn")
                                     (backup-id :target-type backup-id
                                      :member-name "BackupId")
                                     (backup-type :target-type backup-type
                                      :member-name "BackupType")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (description :target-type string
                                      :member-name "Description")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-model :target-type string
                                      :member-name "EngineModel")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (instance-profile-arn :target-type string
                                      :member-name "InstanceProfileArn")
                                     (instance-type :target-type string
                                      :member-name "InstanceType")
                                     (key-pair :target-type string :member-name
                                      "KeyPair")
                                     (preferred-backup-window :target-type
                                      time-window-definition :member-name
                                      "PreferredBackupWindow")
                                     (preferred-maintenance-window :target-type
                                      time-window-definition :member-name
                                      "PreferredMaintenanceWindow")
                                     (s3data-size :target-type integer
                                      :member-name "S3DataSize")
                                     (s3data-url :target-type string
                                      :member-name "S3DataUrl")
                                     (s3log-url :target-type string
                                      :member-name "S3LogUrl")
                                     (security-group-ids :target-type strings
                                      :member-name "SecurityGroupIds")
                                     (server-name :target-type server-name
                                      :member-name "ServerName")
                                     (service-role-arn :target-type string
                                      :member-name "ServiceRoleArn")
                                     (status :target-type backup-status
                                      :member-name "Status")
                                     (status-description :target-type string
                                      :member-name "StatusDescription")
                                     (subnet-ids :target-type strings
                                      :member-name "SubnetIds")
                                     (tools-version :target-type string
                                      :member-name "ToolsVersion")
                                     (user-arn :target-type string :member-name
                                      "UserArn"))
                                    (:shape-name "Backup"))

(smithy/sdk/shapes:define-type backup-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type backup-retention-count-definition
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum backup-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:ok "OK")
  (:failed "FAILED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum backup-type
    common-lisp:nil
  (:automated "AUTOMATED")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-list backups :member backup)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input create-backup-request common-lisp:nil
                                ((server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateBackupRequest"))

(smithy/sdk/shapes:define-output create-backup-response common-lisp:nil
                                 ((backup :target-type backup :member-name
                                   "Backup"))
                                 (:shape-name "CreateBackupResponse"))

(smithy/sdk/shapes:define-input create-server-request common-lisp:nil
                                ((associate-public-ip-address :target-type
                                  boolean :member-name
                                  "AssociatePublicIpAddress")
                                 (custom-domain :target-type custom-domain
                                  :member-name "CustomDomain")
                                 (custom-certificate :target-type
                                  custom-certificate :member-name
                                  "CustomCertificate")
                                 (custom-private-key :target-type
                                  custom-private-key :member-name
                                  "CustomPrivateKey")
                                 (disable-automated-backup :target-type boolean
                                  :member-name "DisableAutomatedBackup")
                                 (engine :target-type string :required
                                  common-lisp:t :member-name "Engine")
                                 (engine-model :target-type string :member-name
                                  "EngineModel")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (engine-attributes :target-type
                                  engine-attributes :member-name
                                  "EngineAttributes")
                                 (backup-retention-count :target-type
                                  backup-retention-count-definition
                                  :member-name "BackupRetentionCount")
                                 (server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (instance-profile-arn :target-type
                                  instance-profile-arn :required common-lisp:t
                                  :member-name "InstanceProfileArn")
                                 (instance-type :target-type string :required
                                  common-lisp:t :member-name "InstanceType")
                                 (key-pair :target-type key-pair :member-name
                                  "KeyPair")
                                 (preferred-maintenance-window :target-type
                                  time-window-definition :member-name
                                  "PreferredMaintenanceWindow")
                                 (preferred-backup-window :target-type
                                  time-window-definition :member-name
                                  "PreferredBackupWindow")
                                 (security-group-ids :target-type strings
                                  :member-name "SecurityGroupIds")
                                 (service-role-arn :target-type
                                  service-role-arn :required common-lisp:t
                                  :member-name "ServiceRoleArn")
                                 (subnet-ids :target-type strings :member-name
                                  "SubnetIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (backup-id :target-type backup-id :member-name
                                  "BackupId"))
                                (:shape-name "CreateServerRequest"))

(smithy/sdk/shapes:define-output create-server-response common-lisp:nil
                                 ((server :target-type server :member-name
                                   "Server"))
                                 (:shape-name "CreateServerResponse"))

(smithy/sdk/shapes:define-type custom-certificate
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-private-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-backup-request common-lisp:nil
                                ((backup-id :target-type backup-id :required
                                  common-lisp:t :member-name "BackupId"))
                                (:shape-name "DeleteBackupRequest"))

(smithy/sdk/shapes:define-output delete-backup-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteBackupResponse"))

(smithy/sdk/shapes:define-input delete-server-request common-lisp:nil
                                ((server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName"))
                                (:shape-name "DeleteServerRequest"))

(smithy/sdk/shapes:define-output delete-server-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteServerResponse"))

(smithy/sdk/shapes:define-input describe-account-attributes-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeAccountAttributesRequest"))

(smithy/sdk/shapes:define-output describe-account-attributes-response
                                 common-lisp:nil
                                 ((attributes :target-type account-attributes
                                   :member-name "Attributes"))
                                 (:shape-name
                                  "DescribeAccountAttributesResponse"))

(smithy/sdk/shapes:define-input describe-backups-request common-lisp:nil
                                ((backup-id :target-type backup-id :member-name
                                  "BackupId")
                                 (server-name :target-type server-name
                                  :member-name "ServerName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeBackupsRequest"))

(smithy/sdk/shapes:define-output describe-backups-response common-lisp:nil
                                 ((backups :target-type backups :member-name
                                   "Backups")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeBackupsResponse"))

(smithy/sdk/shapes:define-input describe-events-request common-lisp:nil
                                ((server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeEventsRequest"))

(smithy/sdk/shapes:define-output describe-events-response common-lisp:nil
                                 ((server-events :target-type server-events
                                   :member-name "ServerEvents")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeEventsResponse"))

(smithy/sdk/shapes:define-input describe-node-association-status-request
                                common-lisp:nil
                                ((node-association-status-token :target-type
                                  node-association-status-token :required
                                  common-lisp:t :member-name
                                  "NodeAssociationStatusToken")
                                 (server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName"))
                                (:shape-name
                                 "DescribeNodeAssociationStatusRequest"))

(smithy/sdk/shapes:define-output describe-node-association-status-response
                                 common-lisp:nil
                                 ((node-association-status :target-type
                                   node-association-status :member-name
                                   "NodeAssociationStatus")
                                  (engine-attributes :target-type
                                   engine-attributes :member-name
                                   "EngineAttributes"))
                                 (:shape-name
                                  "DescribeNodeAssociationStatusResponse"))

(smithy/sdk/shapes:define-input describe-servers-request common-lisp:nil
                                ((server-name :target-type server-name
                                  :member-name "ServerName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeServersRequest"))

(smithy/sdk/shapes:define-output describe-servers-response common-lisp:nil
                                 ((servers :target-type servers :member-name
                                   "Servers")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeServersResponse"))

(smithy/sdk/shapes:define-input disassociate-node-request common-lisp:nil
                                ((server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (node-name :target-type node-name :required
                                  common-lisp:t :member-name "NodeName")
                                 (engine-attributes :target-type
                                  engine-attributes :member-name
                                  "EngineAttributes"))
                                (:shape-name "DisassociateNodeRequest"))

(smithy/sdk/shapes:define-output disassociate-node-response common-lisp:nil
                                 ((node-association-status-token :target-type
                                   node-association-status-token :member-name
                                   "NodeAssociationStatusToken"))
                                 (:shape-name "DisassociateNodeResponse"))

(smithy/sdk/shapes:define-structure engine-attribute common-lisp:nil
                                    ((name :target-type engine-attribute-name
                                      :member-name "Name")
                                     (value :target-type engine-attribute-value
                                      :member-name "Value"))
                                    (:shape-name "EngineAttribute"))

(smithy/sdk/shapes:define-type engine-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engine-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list engine-attributes :member engine-attribute)

(smithy/sdk/shapes:define-input export-server-engine-attribute-request
                                common-lisp:nil
                                ((export-attribute-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ExportAttributeName")
                                 (server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (input-attributes :target-type
                                  engine-attributes :member-name
                                  "InputAttributes"))
                                (:shape-name
                                 "ExportServerEngineAttributeRequest"))

(smithy/sdk/shapes:define-output export-server-engine-attribute-response
                                 common-lisp:nil
                                 ((engine-attribute :target-type
                                   engine-attribute :member-name
                                   "EngineAttribute")
                                  (server-name :target-type server-name
                                   :member-name "ServerName"))
                                 (:shape-name
                                  "ExportServerEngineAttributeResponse"))

(smithy/sdk/shapes:define-type instance-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type key-pair smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  awsops-works-cmresource-arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum maintenance-status
    common-lisp:nil
  (:success "SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum node-association-status
    common-lisp:nil
  (:success "SUCCESS")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-type node-association-status-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input restore-server-request common-lisp:nil
                                ((backup-id :target-type backup-id :required
                                  common-lisp:t :member-name "BackupId")
                                 (server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (instance-type :target-type string
                                  :member-name "InstanceType")
                                 (key-pair :target-type key-pair :member-name
                                  "KeyPair"))
                                (:shape-name "RestoreServerRequest"))

(smithy/sdk/shapes:define-output restore-server-response common-lisp:nil
                                 ((server :target-type server :member-name
                                   "Server"))
                                 (:shape-name "RestoreServerResponse"))

(smithy/sdk/shapes:define-structure server common-lisp:nil
                                    ((associate-public-ip-address :target-type
                                      boolean :member-name
                                      "AssociatePublicIpAddress")
                                     (backup-retention-count :target-type
                                      integer :member-name
                                      "BackupRetentionCount")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (cloud-formation-stack-arn :target-type
                                      string :member-name
                                      "CloudFormationStackArn")
                                     (custom-domain :target-type custom-domain
                                      :member-name "CustomDomain")
                                     (disable-automated-backup :target-type
                                      boolean :member-name
                                      "DisableAutomatedBackup")
                                     (endpoint :target-type string :member-name
                                      "Endpoint")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (engine-model :target-type string
                                      :member-name "EngineModel")
                                     (engine-attributes :target-type
                                      engine-attributes :member-name
                                      "EngineAttributes")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (instance-profile-arn :target-type string
                                      :member-name "InstanceProfileArn")
                                     (instance-type :target-type string
                                      :member-name "InstanceType")
                                     (key-pair :target-type string :member-name
                                      "KeyPair")
                                     (maintenance-status :target-type
                                      maintenance-status :member-name
                                      "MaintenanceStatus")
                                     (preferred-maintenance-window :target-type
                                      time-window-definition :member-name
                                      "PreferredMaintenanceWindow")
                                     (preferred-backup-window :target-type
                                      time-window-definition :member-name
                                      "PreferredBackupWindow")
                                     (security-group-ids :target-type strings
                                      :member-name "SecurityGroupIds")
                                     (service-role-arn :target-type string
                                      :member-name "ServiceRoleArn")
                                     (status :target-type server-status
                                      :member-name "Status")
                                     (status-reason :target-type string
                                      :member-name "StatusReason")
                                     (subnet-ids :target-type strings
                                      :member-name "SubnetIds")
                                     (server-arn :target-type string
                                      :member-name "ServerArn"))
                                    (:shape-name "Server"))

(smithy/sdk/shapes:define-structure server-event common-lisp:nil
                                    ((created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (message :target-type string :member-name
                                      "Message")
                                     (log-url :target-type string :member-name
                                      "LogUrl"))
                                    (:shape-name "ServerEvent"))

(smithy/sdk/shapes:define-list server-events :member server-event)

(smithy/sdk/shapes:define-type server-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum server-status
    common-lisp:nil
  (:backing-up "BACKING_UP")
  (:connection-lost "CONNECTION_LOST")
  (:creating "CREATING")
  (:deleting "DELETING")
  (:modifying "MODIFYING")
  (:failed "FAILED")
  (:healthy "HEALTHY")
  (:running "RUNNING")
  (:restoring "RESTORING")
  (:setup "SETUP")
  (:under-maintenance "UNDER_MAINTENANCE")
  (:unhealthy "UNHEALTHY")
  (:terminated "TERMINATED"))

(smithy/sdk/shapes:define-list servers :member server)

(smithy/sdk/shapes:define-type service-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-maintenance-request common-lisp:nil
                                ((server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (engine-attributes :target-type
                                  engine-attributes :member-name
                                  "EngineAttributes"))
                                (:shape-name "StartMaintenanceRequest"))

(smithy/sdk/shapes:define-output start-maintenance-response common-lisp:nil
                                 ((server :target-type server :member-name
                                   "Server"))
                                 (:shape-name "StartMaintenanceResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list strings :member string)

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
                                ((resource-arn :target-type
                                  awsops-works-cmresource-arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time-window-definition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  awsops-works-cmresource-arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-server-engine-attributes-request
                                common-lisp:nil
                                ((server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (attribute-name :target-type attribute-name
                                  :required common-lisp:t :member-name
                                  "AttributeName")
                                 (attribute-value :target-type attribute-value
                                  :member-name "AttributeValue"))
                                (:shape-name
                                 "UpdateServerEngineAttributesRequest"))

(smithy/sdk/shapes:define-output update-server-engine-attributes-response
                                 common-lisp:nil
                                 ((server :target-type server :member-name
                                   "Server"))
                                 (:shape-name
                                  "UpdateServerEngineAttributesResponse"))

(smithy/sdk/shapes:define-input update-server-request common-lisp:nil
                                ((disable-automated-backup :target-type boolean
                                  :member-name "DisableAutomatedBackup")
                                 (backup-retention-count :target-type integer
                                  :member-name "BackupRetentionCount")
                                 (server-name :target-type server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (preferred-maintenance-window :target-type
                                  time-window-definition :member-name
                                  "PreferredMaintenanceWindow")
                                 (preferred-backup-window :target-type
                                  time-window-definition :member-name
                                  "PreferredBackupWindow"))
                                (:shape-name "UpdateServerRequest"))

(smithy/sdk/shapes:define-output update-server-response common-lisp:nil
                                 ((server :target-type server :member-name
                                   "Server"))
                                 (:shape-name "UpdateServerResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation associate-node :shape-name
                                       "AssociateNode" :input
                                       associate-node-request :output
                                       associate-node-response :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-backup :shape-name "CreateBackup"
                                       :input create-backup-request :output
                                       create-backup-response :errors
                                       (invalid-state-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-server :shape-name "CreateServer"
                                       :input create-server-request :output
                                       create-server-response :errors
                                       (limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-backup :shape-name "DeleteBackup"
                                       :input delete-backup-request :output
                                       delete-backup-response :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-server :shape-name "DeleteServer"
                                       :input delete-server-request :output
                                       delete-server-response :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-account-attributes :shape-name
                                       "DescribeAccountAttributes" :input
                                       describe-account-attributes-request
                                       :output
                                       describe-account-attributes-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-backups :shape-name
                                       "DescribeBackups" :input
                                       describe-backups-request :output
                                       describe-backups-response :errors
                                       (invalid-next-token-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-events :shape-name
                                       "DescribeEvents" :input
                                       describe-events-request :output
                                       describe-events-response :errors
                                       (invalid-next-token-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-node-association-status
                                       :shape-name
                                       "DescribeNodeAssociationStatus" :input
                                       describe-node-association-status-request
                                       :output
                                       describe-node-association-status-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-servers :shape-name
                                       "DescribeServers" :input
                                       describe-servers-request :output
                                       describe-servers-response :errors
                                       (invalid-next-token-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation disassociate-node :shape-name
                                       "DisassociateNode" :input
                                       disassociate-node-request :output
                                       disassociate-node-response :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation export-server-engine-attribute
                                       :shape-name
                                       "ExportServerEngineAttribute" :input
                                       export-server-engine-attribute-request
                                       :output
                                       export-server-engine-attribute-response
                                       :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation restore-server :shape-name
                                       "RestoreServer" :input
                                       restore-server-request :output
                                       restore-server-response :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-maintenance :shape-name
                                       "StartMaintenance" :input
                                       start-maintenance-request :output
                                       start-maintenance-response :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-server :shape-name "UpdateServer"
                                       :input update-server-request :output
                                       update-server-response :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-server-engine-attributes
                                       :shape-name
                                       "UpdateServerEngineAttributes" :input
                                       update-server-engine-attributes-request
                                       :output
                                       update-server-engine-attributes-response
                                       :errors
                                       (invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception))
