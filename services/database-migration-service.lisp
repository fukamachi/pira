(uiop/package:define-package #:pira/database-migration-service (:use)
                             (:export #:account-quota #:account-quota-list
                              #:add-tags-to-resource #:amazon-dmsv20160101
                              #:apply-pending-maintenance-action #:arn-list
                              #:assessment-report-type
                              #:assessment-report-types-list
                              #:auth-mechanism-value #:auth-type-value
                              #:availability-zone #:availability-zones-list
                              #:available-upgrades-list
                              #:batch-start-recommendations
                              #:batch-start-recommendations-error-entry
                              #:batch-start-recommendations-error-entry-list
                              #:boolean #:boolean-optional
                              #:cancel-replication-task-assessment-run
                              #:canned-acl-for-objects-value #:certificate
                              #:certificate-list #:certificate-wallet
                              #:char-length-semantics #:collector-health-check
                              #:collector-response #:collector-responses
                              #:collector-short-info-response
                              #:collector-status #:collectors-list
                              #:compression-type-value #:compute-config
                              #:connection #:connection-list
                              #:create-data-migration #:create-data-provider
                              #:create-endpoint #:create-event-subscription
                              #:create-fleet-advisor-collector
                              #:create-instance-profile
                              #:create-migration-project
                              #:create-replication-config
                              #:create-replication-instance
                              #:create-replication-subnet-group
                              #:create-replication-task #:data-format-value
                              #:data-migration #:data-migration-cidr-block
                              #:data-migration-settings
                              #:data-migration-statistics #:data-migrations
                              #:data-provider #:data-provider-descriptor
                              #:data-provider-descriptor-definition
                              #:data-provider-descriptor-definition-list
                              #:data-provider-descriptor-list
                              #:data-provider-list #:data-provider-settings
                              #:database-instance-software-details-response
                              #:database-list #:database-mode
                              #:database-response
                              #:database-short-info-response
                              #:date-partition-delimiter-value
                              #:date-partition-sequence-value
                              #:default-error-details #:delete-certificate
                              #:delete-connection #:delete-data-migration
                              #:delete-data-provider #:delete-endpoint
                              #:delete-event-subscription
                              #:delete-fleet-advisor-collector
                              #:delete-fleet-advisor-databases
                              #:delete-instance-profile
                              #:delete-migration-project
                              #:delete-replication-config
                              #:delete-replication-instance
                              #:delete-replication-subnet-group
                              #:delete-replication-task
                              #:delete-replication-task-assessment-run
                              #:describe-account-attributes
                              #:describe-applicable-individual-assessments
                              #:describe-certificates #:describe-connections
                              #:describe-conversion-configuration
                              #:describe-data-migrations
                              #:describe-data-providers
                              #:describe-endpoint-settings
                              #:describe-endpoint-types #:describe-endpoints
                              #:describe-engine-versions
                              #:describe-event-categories
                              #:describe-event-subscriptions #:describe-events
                              #:describe-extension-pack-associations
                              #:describe-fleet-advisor-collectors
                              #:describe-fleet-advisor-databases
                              #:describe-fleet-advisor-lsa-analysis
                              #:describe-fleet-advisor-schema-object-summary
                              #:describe-fleet-advisor-schemas
                              #:describe-instance-profiles
                              #:describe-metadata-model-assessments
                              #:describe-metadata-model-conversions
                              #:describe-metadata-model-exports-as-script
                              #:describe-metadata-model-exports-to-target
                              #:describe-metadata-model-imports
                              #:describe-migration-projects
                              #:describe-orderable-replication-instances
                              #:describe-pending-maintenance-actions
                              #:describe-recommendation-limitations
                              #:describe-recommendations
                              #:describe-refresh-schemas-status
                              #:describe-replication-configs
                              #:describe-replication-instance-task-logs
                              #:describe-replication-instances
                              #:describe-replication-subnet-groups
                              #:describe-replication-table-statistics
                              #:describe-replication-task-assessment-results
                              #:describe-replication-task-assessment-runs
                              #:describe-replication-task-individual-assessments
                              #:describe-replication-tasks
                              #:describe-replications #:describe-schemas
                              #:describe-table-statistics #:dms-ssl-mode-value
                              #:dms-transfer-settings
                              #:doc-db-data-provider-settings #:doc-db-settings
                              #:double-optional #:dynamo-db-settings
                              #:elasticsearch-settings #:encoding-type-value
                              #:encryption-mode-value #:endpoint
                              #:endpoint-list #:endpoint-setting
                              #:endpoint-setting-enum-values
                              #:endpoint-setting-type-value
                              #:endpoint-settings-list #:engine-version
                              #:engine-version-list #:error-details #:event
                              #:event-categories-list #:event-category-group
                              #:event-category-group-list #:event-list
                              #:event-subscription #:event-subscriptions-list
                              #:exception-message #:exclude-test-list
                              #:export-metadata-model-assessment
                              #:export-metadata-model-assessment-result-entry
                              #:export-sql-details #:filter #:filter-list
                              #:filter-value-list
                              #:fleet-advisor-lsa-analysis-response
                              #:fleet-advisor-lsa-analysis-response-list
                              #:fleet-advisor-schema-list
                              #:fleet-advisor-schema-object-list
                              #:fleet-advisor-schema-object-response
                              #:gcp-my-sqlsettings #:ibmdb2settings
                              #:ibm-db2luw-data-provider-settings
                              #:ibm-db2z-os-data-provider-settings
                              #:import-certificate #:include-test-list
                              #:individual-assessment-name-list
                              #:instance-profile #:instance-profile-list
                              #:integer #:integer-list #:integer-optional
                              #:inventory-data #:iso8601date-time
                              #:kafka-sasl-mechanism #:kafka-security-protocol
                              #:kafka-settings
                              #:kafka-ssl-endpoint-identification-algorithm
                              #:kerberos-authentication-settings #:key-list
                              #:kinesis-settings #:limitation #:limitation-list
                              #:list-tags-for-resource #:long #:long-optional
                              #:long-varchar-mapping-type
                              #:maria-db-data-provider-settings #:marker
                              #:message-format-value
                              #:microsoft-sqlserver-settings
                              #:microsoft-sql-server-data-provider-settings
                              #:migration-project
                              #:migration-project-identifier
                              #:migration-project-list #:migration-type-value
                              #:modify-conversion-configuration
                              #:modify-data-migration #:modify-data-provider
                              #:modify-endpoint #:modify-event-subscription
                              #:modify-instance-profile
                              #:modify-migration-project
                              #:modify-replication-config
                              #:modify-replication-instance
                              #:modify-replication-subnet-group
                              #:modify-replication-task
                              #:mongo-db-data-provider-settings
                              #:mongo-db-settings #:move-replication-task
                              #:my-sqlauthentication-method #:my-sqlsettings
                              #:my-sql-data-provider-settings
                              #:neptune-settings #:nesting-level-value
                              #:oracle-authentication-method
                              #:oracle-data-provider-settings #:oracle-settings
                              #:orderable-replication-instance
                              #:orderable-replication-instance-list
                              #:origin-type-value #:parquet-version-value
                              #:pending-maintenance-action
                              #:pending-maintenance-action-details
                              #:pending-maintenance-actions #:plugin-name-value
                              #:postgre-sqlauthentication-method
                              #:postgre-sqlsettings
                              #:postgre-sql-data-provider-settings
                              #:premigration-assessment-status
                              #:premigration-assessment-status-list
                              #:provision-data #:public-ip-address-list
                              #:rds-configuration #:rds-recommendation
                              #:rds-requirements #:reboot-replication-instance
                              #:recommendation #:recommendation-data
                              #:recommendation-list #:recommendation-settings
                              #:redis-auth-type-value #:redis-settings
                              #:redshift-data-provider-settings
                              #:redshift-settings #:refresh-schemas
                              #:refresh-schemas-status
                              #:refresh-schemas-status-type-value
                              #:release-status-values #:reload-option-value
                              #:reload-replication-tables #:reload-tables
                              #:remove-tags-from-resource #:replication
                              #:replication-config #:replication-config-list
                              #:replication-endpoint-type-value
                              #:replication-instance
                              #:replication-instance-class
                              #:replication-instance-ipv6address-list
                              #:replication-instance-list
                              #:replication-instance-private-ip-address-list
                              #:replication-instance-public-ip-address-list
                              #:replication-instance-task-log
                              #:replication-instance-task-logs-list
                              #:replication-list
                              #:replication-pending-modified-values
                              #:replication-stats #:replication-subnet-group
                              #:replication-subnet-groups
                              #:replication-table-statistics-list
                              #:replication-task
                              #:replication-task-assessment-result
                              #:replication-task-assessment-result-list
                              #:replication-task-assessment-run
                              #:replication-task-assessment-run-list
                              #:replication-task-assessment-run-progress
                              #:replication-task-assessment-run-result-statistic
                              #:replication-task-individual-assessment
                              #:replication-task-individual-assessment-list
                              #:replication-task-list #:replication-task-stats
                              #:resource-arn
                              #:resource-pending-maintenance-actions
                              #:run-fleet-advisor-lsa-analysis #:s3settings
                              #:scapplication-attributes #:safeguard-policy
                              #:schema-conversion-request
                              #:schema-conversion-request-list #:schema-list
                              #:schema-response #:schema-short-info-response
                              #:secret-string #:server-short-info-response
                              #:source-data-setting #:source-data-settings
                              #:source-ids-list #:source-type
                              #:sql-server-authentication-method
                              #:ssl-security-protocol-value
                              #:start-data-migration
                              #:start-extension-pack-association
                              #:start-metadata-model-assessment
                              #:start-metadata-model-conversion
                              #:start-metadata-model-export-as-script
                              #:start-metadata-model-export-to-target
                              #:start-metadata-model-import
                              #:start-recommendations
                              #:start-recommendations-request-entry
                              #:start-recommendations-request-entry-list
                              #:start-replication
                              #:start-replication-migration-type-value
                              #:start-replication-task
                              #:start-replication-task-assessment
                              #:start-replication-task-assessment-run
                              #:start-replication-task-type-value
                              #:stop-data-migration #:stop-replication
                              #:stop-replication-task #:string #:string-list
                              #:subnet #:subnet-identifier-list #:subnet-list
                              #:supported-endpoint-type
                              #:supported-endpoint-type-list #:sybase-settings
                              #:tstamp #:table-list-to-reload
                              #:table-preparation-mode #:table-statistics
                              #:table-statistics-list #:table-to-reload #:tag
                              #:tag-list #:target-data-setting
                              #:target-data-settings #:target-db-type
                              #:test-connection #:timestream-settings
                              #:tlog-access-mode
                              #:update-subscriptions-to-event-bridge
                              #:version-status #:vpc-security-group-id-list
                              #:vpc-security-group-membership
                              #:vpc-security-group-membership-list))
(common-lisp:in-package #:pira/database-migration-service)

(smithy/sdk/service:define-service amazon-dmsv20160101 :shape-name
                                   "AmazonDMSv20160101" :version "2016-01-01"
                                   :title "AWS Database Migration Service"
                                   :operations
                                   '(add-tags-to-resource
                                     apply-pending-maintenance-action
                                     batch-start-recommendations
                                     cancel-replication-task-assessment-run
                                     create-data-migration create-data-provider
                                     create-endpoint create-event-subscription
                                     create-fleet-advisor-collector
                                     create-instance-profile
                                     create-migration-project
                                     create-replication-config
                                     create-replication-instance
                                     create-replication-subnet-group
                                     create-replication-task delete-certificate
                                     delete-connection delete-data-migration
                                     delete-data-provider delete-endpoint
                                     delete-event-subscription
                                     delete-fleet-advisor-collector
                                     delete-fleet-advisor-databases
                                     delete-instance-profile
                                     delete-migration-project
                                     delete-replication-config
                                     delete-replication-instance
                                     delete-replication-subnet-group
                                     delete-replication-task
                                     delete-replication-task-assessment-run
                                     describe-account-attributes
                                     describe-applicable-individual-assessments
                                     describe-certificates describe-connections
                                     describe-conversion-configuration
                                     describe-data-migrations
                                     describe-data-providers describe-endpoints
                                     describe-endpoint-settings
                                     describe-endpoint-types
                                     describe-engine-versions
                                     describe-event-categories describe-events
                                     describe-event-subscriptions
                                     describe-extension-pack-associations
                                     describe-fleet-advisor-collectors
                                     describe-fleet-advisor-databases
                                     describe-fleet-advisor-lsa-analysis
                                     describe-fleet-advisor-schema-object-summary
                                     describe-fleet-advisor-schemas
                                     describe-instance-profiles
                                     describe-metadata-model-assessments
                                     describe-metadata-model-conversions
                                     describe-metadata-model-exports-as-script
                                     describe-metadata-model-exports-to-target
                                     describe-metadata-model-imports
                                     describe-migration-projects
                                     describe-orderable-replication-instances
                                     describe-pending-maintenance-actions
                                     describe-recommendation-limitations
                                     describe-recommendations
                                     describe-refresh-schemas-status
                                     describe-replication-configs
                                     describe-replication-instances
                                     describe-replication-instance-task-logs
                                     describe-replications
                                     describe-replication-subnet-groups
                                     describe-replication-table-statistics
                                     describe-replication-task-assessment-results
                                     describe-replication-task-assessment-runs
                                     describe-replication-task-individual-assessments
                                     describe-replication-tasks
                                     describe-schemas describe-table-statistics
                                     export-metadata-model-assessment
                                     import-certificate list-tags-for-resource
                                     modify-conversion-configuration
                                     modify-data-migration modify-data-provider
                                     modify-endpoint modify-event-subscription
                                     modify-instance-profile
                                     modify-migration-project
                                     modify-replication-config
                                     modify-replication-instance
                                     modify-replication-subnet-group
                                     modify-replication-task
                                     move-replication-task
                                     reboot-replication-instance
                                     refresh-schemas reload-replication-tables
                                     reload-tables remove-tags-from-resource
                                     run-fleet-advisor-lsa-analysis
                                     start-data-migration
                                     start-extension-pack-association
                                     start-metadata-model-assessment
                                     start-metadata-model-conversion
                                     start-metadata-model-export-as-script
                                     start-metadata-model-export-to-target
                                     start-metadata-model-import
                                     start-recommendations start-replication
                                     start-replication-task
                                     start-replication-task-assessment
                                     start-replication-task-assessment-run
                                     stop-data-migration stop-replication
                                     stop-replication-task test-connection
                                     update-subscriptions-to-event-bridge)
                                   :xml-namespace
                                   '(:uri
                                     "http://dms.amazonaws.com/doc/2016-01-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Database Migration Service")
                                      ("arnNamespace" . "dms")
                                      ("cloudFormationName" . "DMS")
                                      ("cloudTrailEventSource"
                                       . "dms.amazonaws.com")
                                      ("docId" . "dms-2016-01-01")
                                      ("endpointPrefix" . "dms"))
                                     ("aws.auth#sigv4" ("name" . "dms"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure account-quota common-lisp:nil
                                    ((account-quota-name :target-type string
                                      :member-name "AccountQuotaName")
                                     (used :target-type long :member-name
                                      "Used")
                                     (max :target-type long :member-name
                                      "Max"))
                                    (:shape-name "AccountQuota"))

(smithy/sdk/shapes:define-list account-quota-list :member
                               (account-quota :xml-name "AccountQuota"))

(smithy/sdk/shapes:define-input add-tags-to-resource-message common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsToResourceMessage"))

(smithy/sdk/shapes:define-output add-tags-to-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddTagsToResourceResponse"))

(smithy/sdk/shapes:define-input apply-pending-maintenance-action-message
                                common-lisp:nil
                                ((replication-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationInstanceArn")
                                 (apply-action :target-type string :required
                                  common-lisp:t :member-name "ApplyAction")
                                 (opt-in-type :target-type string :required
                                  common-lisp:t :member-name "OptInType"))
                                (:shape-name
                                 "ApplyPendingMaintenanceActionMessage"))

(smithy/sdk/shapes:define-output apply-pending-maintenance-action-response
                                 common-lisp:nil
                                 ((resource-pending-maintenance-actions
                                   :target-type
                                   resource-pending-maintenance-actions
                                   :member-name
                                   "ResourcePendingMaintenanceActions"))
                                 (:shape-name
                                  "ApplyPendingMaintenanceActionResponse"))

(smithy/sdk/shapes:define-list arn-list :member string)

(smithy/sdk/shapes:define-enum assessment-report-type
    common-lisp:nil
  (:pdf "pdf")
  (:csv "csv"))

(smithy/sdk/shapes:define-list assessment-report-types-list :member
                               assessment-report-type)

(smithy/sdk/shapes:define-enum auth-mechanism-value
    common-lisp:nil
  (:default "default")
  (:mongodb-cr "mongodb_cr")
  (:scram-sha-1 "scram_sha_1"))

(smithy/sdk/shapes:define-enum auth-type-value
    common-lisp:nil
  (:no "no")
  (:password "password"))

(smithy/sdk/shapes:define-structure availability-zone common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "AvailabilityZone"))

(smithy/sdk/shapes:define-list availability-zones-list :member string)

(smithy/sdk/shapes:define-list available-upgrades-list :member string)

(smithy/sdk/shapes:define-structure batch-start-recommendations-error-entry
                                    common-lisp:nil
                                    ((database-id :target-type string
                                      :member-name "DatabaseId")
                                     (message :target-type string :member-name
                                      "Message")
                                     (code :target-type string :member-name
                                      "Code"))
                                    (:shape-name
                                     "BatchStartRecommendationsErrorEntry"))

(smithy/sdk/shapes:define-list batch-start-recommendations-error-entry-list
                               :member batch-start-recommendations-error-entry)

(smithy/sdk/shapes:define-input batch-start-recommendations-request
                                common-lisp:nil
                                ((data :target-type
                                  start-recommendations-request-entry-list
                                  :member-name "Data"))
                                (:shape-name
                                 "BatchStartRecommendationsRequest"))

(smithy/sdk/shapes:define-output batch-start-recommendations-response
                                 common-lisp:nil
                                 ((error-entries :target-type
                                   batch-start-recommendations-error-entry-list
                                   :member-name "ErrorEntries"))
                                 (:shape-name
                                  "BatchStartRecommendationsResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-optional smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-replication-task-assessment-run-message
                                common-lisp:nil
                                ((replication-task-assessment-run-arn
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "ReplicationTaskAssessmentRunArn"))
                                (:shape-name
                                 "CancelReplicationTaskAssessmentRunMessage"))

(smithy/sdk/shapes:define-output
 cancel-replication-task-assessment-run-response common-lisp:nil
 ((replication-task-assessment-run :target-type replication-task-assessment-run
   :member-name "ReplicationTaskAssessmentRun"))
 (:shape-name "CancelReplicationTaskAssessmentRunResponse"))

(smithy/sdk/shapes:define-enum canned-acl-for-objects-value
    common-lisp:nil
  (:none "none")
  (:private "private")
  (:public-read "public-read")
  (:public-read-write "public-read-write")
  (:authenticated-read "authenticated-read")
  (:aws-exec-read "aws-exec-read")
  (:bucket-owner-read "bucket-owner-read")
  (:bucket-owner-full-control "bucket-owner-full-control"))

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((certificate-identifier :target-type
                                      string :member-name
                                      "CertificateIdentifier")
                                     (certificate-creation-date :target-type
                                      tstamp :member-name
                                      "CertificateCreationDate")
                                     (certificate-pem :target-type string
                                      :member-name "CertificatePem")
                                     (certificate-wallet :target-type
                                      certificate-wallet :member-name
                                      "CertificateWallet")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (certificate-owner :target-type string
                                      :member-name "CertificateOwner")
                                     (valid-from-date :target-type tstamp
                                      :member-name "ValidFromDate")
                                     (valid-to-date :target-type tstamp
                                      :member-name "ValidToDate")
                                     (signing-algorithm :target-type string
                                      :member-name "SigningAlgorithm")
                                     (key-length :target-type integer-optional
                                      :member-name "KeyLength"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-list certificate-list :member
                               (certificate :xml-name "Certificate"))

(smithy/sdk/shapes:define-type certificate-wallet smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum char-length-semantics
    common-lisp:nil
  (:default "default")
  (:char "char")
  (:byte "byte"))

(smithy/sdk/shapes:define-structure collector-health-check common-lisp:nil
                                    ((collector-status :target-type
                                      collector-status :member-name
                                      "CollectorStatus")
                                     (local-collector-s3access :target-type
                                      boolean-optional :member-name
                                      "LocalCollectorS3Access")
                                     (web-collector-s3access :target-type
                                      boolean-optional :member-name
                                      "WebCollectorS3Access")
                                     (web-collector-granted-role-based-access
                                      :target-type boolean-optional
                                      :member-name
                                      "WebCollectorGrantedRoleBasedAccess"))
                                    (:shape-name "CollectorHealthCheck"))

(smithy/sdk/shapes:define-error collector-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "CollectorNotFoundFault")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure collector-response common-lisp:nil
                                    ((collector-referenced-id :target-type
                                      string :member-name
                                      "CollectorReferencedId")
                                     (collector-name :target-type string
                                      :member-name "CollectorName")
                                     (collector-version :target-type string
                                      :member-name "CollectorVersion")
                                     (version-status :target-type
                                      version-status :member-name
                                      "VersionStatus")
                                     (description :target-type string
                                      :member-name "Description")
                                     (s3bucket-name :target-type string
                                      :member-name "S3BucketName")
                                     (service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (collector-health-check :target-type
                                      collector-health-check :member-name
                                      "CollectorHealthCheck")
                                     (last-data-received :target-type string
                                      :member-name "LastDataReceived")
                                     (registered-date :target-type string
                                      :member-name "RegisteredDate")
                                     (created-date :target-type string
                                      :member-name "CreatedDate")
                                     (modified-date :target-type string
                                      :member-name "ModifiedDate")
                                     (inventory-data :target-type
                                      inventory-data :member-name
                                      "InventoryData"))
                                    (:shape-name "CollectorResponse"))

(smithy/sdk/shapes:define-list collector-responses :member collector-response)

(smithy/sdk/shapes:define-structure collector-short-info-response
                                    common-lisp:nil
                                    ((collector-referenced-id :target-type
                                      string :member-name
                                      "CollectorReferencedId")
                                     (collector-name :target-type string
                                      :member-name "CollectorName"))
                                    (:shape-name "CollectorShortInfoResponse"))

(smithy/sdk/shapes:define-enum collector-status
    common-lisp:nil
  (:unregistered "UNREGISTERED")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-list collectors-list :member
                               collector-short-info-response)

(smithy/sdk/shapes:define-enum compression-type-value
    common-lisp:nil
  (:none "none")
  (:gzip "gzip"))

(smithy/sdk/shapes:define-structure compute-config common-lisp:nil
                                    ((availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (dns-name-servers :target-type string
                                      :member-name "DnsNameServers")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (max-capacity-units :target-type
                                      integer-optional :member-name
                                      "MaxCapacityUnits")
                                     (min-capacity-units :target-type
                                      integer-optional :member-name
                                      "MinCapacityUnits")
                                     (multi-az :target-type boolean-optional
                                      :member-name "MultiAZ")
                                     (preferred-maintenance-window :target-type
                                      string :member-name
                                      "PreferredMaintenanceWindow")
                                     (replication-subnet-group-id :target-type
                                      string :member-name
                                      "ReplicationSubnetGroupId")
                                     (vpc-security-group-ids :target-type
                                      string-list :member-name
                                      "VpcSecurityGroupIds"))
                                    (:shape-name "ComputeConfig"))

(smithy/sdk/shapes:define-structure connection common-lisp:nil
                                    ((replication-instance-arn :target-type
                                      string :member-name
                                      "ReplicationInstanceArn")
                                     (endpoint-arn :target-type string
                                      :member-name "EndpointArn")
                                     (status :target-type string :member-name
                                      "Status")
                                     (last-failure-message :target-type string
                                      :member-name "LastFailureMessage")
                                     (endpoint-identifier :target-type string
                                      :member-name "EndpointIdentifier")
                                     (replication-instance-identifier
                                      :target-type string :member-name
                                      "ReplicationInstanceIdentifier"))
                                    (:shape-name "Connection"))

(smithy/sdk/shapes:define-list connection-list :member
                               (connection :xml-name "Connection"))

(smithy/sdk/shapes:define-input create-data-migration-message common-lisp:nil
                                ((data-migration-name :target-type string
                                  :member-name "DataMigrationName")
                                 (migration-project-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (data-migration-type :target-type
                                  migration-type-value :required common-lisp:t
                                  :member-name "DataMigrationType")
                                 (service-access-role-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ServiceAccessRoleArn")
                                 (enable-cloudwatch-logs :target-type
                                  boolean-optional :member-name
                                  "EnableCloudwatchLogs")
                                 (source-data-settings :target-type
                                  source-data-settings :member-name
                                  "SourceDataSettings")
                                 (target-data-settings :target-type
                                  target-data-settings :member-name
                                  "TargetDataSettings")
                                 (number-of-jobs :target-type integer-optional
                                  :member-name "NumberOfJobs")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (selection-rules :target-type secret-string
                                  :member-name "SelectionRules"))
                                (:shape-name "CreateDataMigrationMessage"))

(smithy/sdk/shapes:define-output create-data-migration-response common-lisp:nil
                                 ((data-migration :target-type data-migration
                                   :member-name "DataMigration"))
                                 (:shape-name "CreateDataMigrationResponse"))

(smithy/sdk/shapes:define-input create-data-provider-message common-lisp:nil
                                ((data-provider-name :target-type string
                                  :member-name "DataProviderName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (engine :target-type string :required
                                  common-lisp:t :member-name "Engine")
                                 (virtual :target-type boolean-optional
                                  :member-name "Virtual")
                                 (settings :target-type data-provider-settings
                                  :required common-lisp:t :member-name
                                  "Settings")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDataProviderMessage"))

(smithy/sdk/shapes:define-output create-data-provider-response common-lisp:nil
                                 ((data-provider :target-type data-provider
                                   :member-name "DataProvider"))
                                 (:shape-name "CreateDataProviderResponse"))

(smithy/sdk/shapes:define-input create-endpoint-message common-lisp:nil
                                ((endpoint-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "EndpointIdentifier")
                                 (endpoint-type :target-type
                                  replication-endpoint-type-value :required
                                  common-lisp:t :member-name "EndpointType")
                                 (engine-name :target-type string :required
                                  common-lisp:t :member-name "EngineName")
                                 (username :target-type string :member-name
                                  "Username")
                                 (password :target-type secret-string
                                  :member-name "Password")
                                 (server-name :target-type string :member-name
                                  "ServerName")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (database-name :target-type string
                                  :member-name "DatabaseName")
                                 (extra-connection-attributes :target-type
                                  string :member-name
                                  "ExtraConnectionAttributes")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (certificate-arn :target-type string
                                  :member-name "CertificateArn")
                                 (ssl-mode :target-type dms-ssl-mode-value
                                  :member-name "SslMode")
                                 (service-access-role-arn :target-type string
                                  :member-name "ServiceAccessRoleArn")
                                 (external-table-definition :target-type string
                                  :member-name "ExternalTableDefinition")
                                 (dynamo-db-settings :target-type
                                  dynamo-db-settings :member-name
                                  "DynamoDbSettings")
                                 (s3settings :target-type s3settings
                                  :member-name "S3Settings")
                                 (dms-transfer-settings :target-type
                                  dms-transfer-settings :member-name
                                  "DmsTransferSettings")
                                 (mongo-db-settings :target-type
                                  mongo-db-settings :member-name
                                  "MongoDbSettings")
                                 (kinesis-settings :target-type
                                  kinesis-settings :member-name
                                  "KinesisSettings")
                                 (kafka-settings :target-type kafka-settings
                                  :member-name "KafkaSettings")
                                 (elasticsearch-settings :target-type
                                  elasticsearch-settings :member-name
                                  "ElasticsearchSettings")
                                 (neptune-settings :target-type
                                  neptune-settings :member-name
                                  "NeptuneSettings")
                                 (redshift-settings :target-type
                                  redshift-settings :member-name
                                  "RedshiftSettings")
                                 (postgre-sqlsettings :target-type
                                  postgre-sqlsettings :member-name
                                  "PostgreSQLSettings")
                                 (my-sqlsettings :target-type my-sqlsettings
                                  :member-name "MySQLSettings")
                                 (oracle-settings :target-type oracle-settings
                                  :member-name "OracleSettings")
                                 (sybase-settings :target-type sybase-settings
                                  :member-name "SybaseSettings")
                                 (microsoft-sqlserver-settings :target-type
                                  microsoft-sqlserver-settings :member-name
                                  "MicrosoftSQLServerSettings")
                                 (ibmdb2settings :target-type ibmdb2settings
                                  :member-name "IBMDb2Settings")
                                 (resource-identifier :target-type string
                                  :member-name "ResourceIdentifier")
                                 (doc-db-settings :target-type doc-db-settings
                                  :member-name "DocDbSettings")
                                 (redis-settings :target-type redis-settings
                                  :member-name "RedisSettings")
                                 (gcp-my-sqlsettings :target-type
                                  gcp-my-sqlsettings :member-name
                                  "GcpMySQLSettings")
                                 (timestream-settings :target-type
                                  timestream-settings :member-name
                                  "TimestreamSettings"))
                                (:shape-name "CreateEndpointMessage"))

(smithy/sdk/shapes:define-output create-endpoint-response common-lisp:nil
                                 ((endpoint :target-type endpoint :member-name
                                   "Endpoint"))
                                 (:shape-name "CreateEndpointResponse"))

(smithy/sdk/shapes:define-input create-event-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName")
                                 (sns-topic-arn :target-type string :required
                                  common-lisp:t :member-name "SnsTopicArn")
                                 (source-type :target-type string :member-name
                                  "SourceType")
                                 (event-categories :target-type
                                  event-categories-list :member-name
                                  "EventCategories")
                                 (source-ids :target-type source-ids-list
                                  :member-name "SourceIds")
                                 (enabled :target-type boolean-optional
                                  :member-name "Enabled")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateEventSubscriptionMessage"))

(smithy/sdk/shapes:define-output create-event-subscription-response
                                 common-lisp:nil
                                 ((event-subscription :target-type
                                   event-subscription :member-name
                                   "EventSubscription"))
                                 (:shape-name
                                  "CreateEventSubscriptionResponse"))

(smithy/sdk/shapes:define-input create-fleet-advisor-collector-request
                                common-lisp:nil
                                ((collector-name :target-type string :required
                                  common-lisp:t :member-name "CollectorName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (service-access-role-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ServiceAccessRoleArn")
                                 (s3bucket-name :target-type string :required
                                  common-lisp:t :member-name "S3BucketName"))
                                (:shape-name
                                 "CreateFleetAdvisorCollectorRequest"))

(smithy/sdk/shapes:define-output create-fleet-advisor-collector-response
                                 common-lisp:nil
                                 ((collector-referenced-id :target-type string
                                   :member-name "CollectorReferencedId")
                                  (collector-name :target-type string
                                   :member-name "CollectorName")
                                  (description :target-type string :member-name
                                   "Description")
                                  (service-access-role-arn :target-type string
                                   :member-name "ServiceAccessRoleArn")
                                  (s3bucket-name :target-type string
                                   :member-name "S3BucketName"))
                                 (:shape-name
                                  "CreateFleetAdvisorCollectorResponse"))

(smithy/sdk/shapes:define-input create-instance-profile-message common-lisp:nil
                                ((availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (kms-key-arn :target-type string :member-name
                                  "KmsKeyArn")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (instance-profile-name :target-type string
                                  :member-name "InstanceProfileName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (subnet-group-identifier :target-type string
                                  :member-name "SubnetGroupIdentifier")
                                 (vpc-security-groups :target-type string-list
                                  :member-name "VpcSecurityGroups"))
                                (:shape-name "CreateInstanceProfileMessage"))

(smithy/sdk/shapes:define-output create-instance-profile-response
                                 common-lisp:nil
                                 ((instance-profile :target-type
                                   instance-profile :member-name
                                   "InstanceProfile"))
                                 (:shape-name "CreateInstanceProfileResponse"))

(smithy/sdk/shapes:define-input create-migration-project-message
                                common-lisp:nil
                                ((migration-project-name :target-type string
                                  :member-name "MigrationProjectName")
                                 (source-data-provider-descriptors :target-type
                                  data-provider-descriptor-definition-list
                                  :required common-lisp:t :member-name
                                  "SourceDataProviderDescriptors")
                                 (target-data-provider-descriptors :target-type
                                  data-provider-descriptor-definition-list
                                  :required common-lisp:t :member-name
                                  "TargetDataProviderDescriptors")
                                 (instance-profile-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "InstanceProfileIdentifier")
                                 (transformation-rules :target-type string
                                  :member-name "TransformationRules")
                                 (description :target-type string :member-name
                                  "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (schema-conversion-application-attributes
                                  :target-type scapplication-attributes
                                  :member-name
                                  "SchemaConversionApplicationAttributes"))
                                (:shape-name "CreateMigrationProjectMessage"))

(smithy/sdk/shapes:define-output create-migration-project-response
                                 common-lisp:nil
                                 ((migration-project :target-type
                                   migration-project :member-name
                                   "MigrationProject"))
                                 (:shape-name "CreateMigrationProjectResponse"))

(smithy/sdk/shapes:define-input create-replication-config-message
                                common-lisp:nil
                                ((replication-config-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "ReplicationConfigIdentifier")
                                 (source-endpoint-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceEndpointArn")
                                 (target-endpoint-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetEndpointArn")
                                 (compute-config :target-type compute-config
                                  :required common-lisp:t :member-name
                                  "ComputeConfig")
                                 (replication-type :target-type
                                  migration-type-value :required common-lisp:t
                                  :member-name "ReplicationType")
                                 (table-mappings :target-type string :required
                                  common-lisp:t :member-name "TableMappings")
                                 (replication-settings :target-type string
                                  :member-name "ReplicationSettings")
                                 (supplemental-settings :target-type string
                                  :member-name "SupplementalSettings")
                                 (resource-identifier :target-type string
                                  :member-name "ResourceIdentifier")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateReplicationConfigMessage"))

(smithy/sdk/shapes:define-output create-replication-config-response
                                 common-lisp:nil
                                 ((replication-config :target-type
                                   replication-config :member-name
                                   "ReplicationConfig"))
                                 (:shape-name
                                  "CreateReplicationConfigResponse"))

(smithy/sdk/shapes:define-input create-replication-instance-message
                                common-lisp:nil
                                ((replication-instance-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "ReplicationInstanceIdentifier")
                                 (allocated-storage :target-type
                                  integer-optional :member-name
                                  "AllocatedStorage")
                                 (replication-instance-class :target-type
                                  replication-instance-class :required
                                  common-lisp:t :member-name
                                  "ReplicationInstanceClass")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (replication-subnet-group-identifier
                                  :target-type string :member-name
                                  "ReplicationSubnetGroupIdentifier")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (dns-name-servers :target-type string
                                  :member-name "DnsNameServers")
                                 (resource-identifier :target-type string
                                  :member-name "ResourceIdentifier")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (kerberos-authentication-settings :target-type
                                  kerberos-authentication-settings :member-name
                                  "KerberosAuthenticationSettings"))
                                (:shape-name
                                 "CreateReplicationInstanceMessage"))

(smithy/sdk/shapes:define-output create-replication-instance-response
                                 common-lisp:nil
                                 ((replication-instance :target-type
                                   replication-instance :member-name
                                   "ReplicationInstance"))
                                 (:shape-name
                                  "CreateReplicationInstanceResponse"))

(smithy/sdk/shapes:define-input create-replication-subnet-group-message
                                common-lisp:nil
                                ((replication-subnet-group-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "ReplicationSubnetGroupIdentifier")
                                 (replication-subnet-group-description
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "ReplicationSubnetGroupDescription")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :required
                                  common-lisp:t :member-name "SubnetIds")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateReplicationSubnetGroupMessage"))

(smithy/sdk/shapes:define-output create-replication-subnet-group-response
                                 common-lisp:nil
                                 ((replication-subnet-group :target-type
                                   replication-subnet-group :member-name
                                   "ReplicationSubnetGroup"))
                                 (:shape-name
                                  "CreateReplicationSubnetGroupResponse"))

(smithy/sdk/shapes:define-input create-replication-task-message common-lisp:nil
                                ((replication-task-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "ReplicationTaskIdentifier")
                                 (source-endpoint-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "SourceEndpointArn")
                                 (target-endpoint-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetEndpointArn")
                                 (replication-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationInstanceArn")
                                 (migration-type :target-type
                                  migration-type-value :required common-lisp:t
                                  :member-name "MigrationType")
                                 (table-mappings :target-type string :required
                                  common-lisp:t :member-name "TableMappings")
                                 (replication-task-settings :target-type string
                                  :member-name "ReplicationTaskSettings")
                                 (cdc-start-time :target-type tstamp
                                  :member-name "CdcStartTime")
                                 (cdc-start-position :target-type string
                                  :member-name "CdcStartPosition")
                                 (cdc-stop-position :target-type string
                                  :member-name "CdcStopPosition")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (task-data :target-type string :member-name
                                  "TaskData")
                                 (resource-identifier :target-type string
                                  :member-name "ResourceIdentifier"))
                                (:shape-name "CreateReplicationTaskMessage"))

(smithy/sdk/shapes:define-output create-replication-task-response
                                 common-lisp:nil
                                 ((replication-task :target-type
                                   replication-task :member-name
                                   "ReplicationTask"))
                                 (:shape-name "CreateReplicationTaskResponse"))

(smithy/sdk/shapes:define-enum data-format-value
    common-lisp:nil
  (:csv "csv")
  (:parquet "parquet"))

(smithy/sdk/shapes:define-structure data-migration common-lisp:nil
                                    ((data-migration-name :target-type string
                                      :member-name "DataMigrationName")
                                     (data-migration-arn :target-type string
                                      :member-name "DataMigrationArn")
                                     (data-migration-create-time :target-type
                                      iso8601date-time :member-name
                                      "DataMigrationCreateTime")
                                     (data-migration-start-time :target-type
                                      iso8601date-time :member-name
                                      "DataMigrationStartTime")
                                     (data-migration-end-time :target-type
                                      iso8601date-time :member-name
                                      "DataMigrationEndTime")
                                     (service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (migration-project-arn :target-type string
                                      :member-name "MigrationProjectArn")
                                     (data-migration-type :target-type
                                      migration-type-value :member-name
                                      "DataMigrationType")
                                     (data-migration-settings :target-type
                                      data-migration-settings :member-name
                                      "DataMigrationSettings")
                                     (source-data-settings :target-type
                                      source-data-settings :member-name
                                      "SourceDataSettings")
                                     (target-data-settings :target-type
                                      target-data-settings :member-name
                                      "TargetDataSettings")
                                     (data-migration-statistics :target-type
                                      data-migration-statistics :member-name
                                      "DataMigrationStatistics")
                                     (data-migration-status :target-type string
                                      :member-name "DataMigrationStatus")
                                     (public-ip-addresses :target-type
                                      public-ip-address-list :member-name
                                      "PublicIpAddresses")
                                     (data-migration-cidr-blocks :target-type
                                      data-migration-cidr-block :member-name
                                      "DataMigrationCidrBlocks")
                                     (last-failure-message :target-type string
                                      :member-name "LastFailureMessage")
                                     (stop-reason :target-type string
                                      :member-name "StopReason"))
                                    (:shape-name "DataMigration"))

(smithy/sdk/shapes:define-list data-migration-cidr-block :member string)

(smithy/sdk/shapes:define-structure data-migration-settings common-lisp:nil
                                    ((number-of-jobs :target-type
                                      integer-optional :member-name
                                      "NumberOfJobs")
                                     (cloudwatch-logs-enabled :target-type
                                      boolean-optional :member-name
                                      "CloudwatchLogsEnabled")
                                     (selection-rules :target-type
                                      secret-string :member-name
                                      "SelectionRules"))
                                    (:shape-name "DataMigrationSettings"))

(smithy/sdk/shapes:define-structure data-migration-statistics common-lisp:nil
                                    ((tables-loaded :target-type integer
                                      :member-name "TablesLoaded")
                                     (elapsed-time-millis :target-type long
                                      :member-name "ElapsedTimeMillis")
                                     (tables-loading :target-type integer
                                      :member-name "TablesLoading")
                                     (full-load-percentage :target-type integer
                                      :member-name "FullLoadPercentage")
                                     (cdclatency :target-type integer
                                      :member-name "CDCLatency")
                                     (tables-queued :target-type integer
                                      :member-name "TablesQueued")
                                     (tables-errored :target-type integer
                                      :member-name "TablesErrored")
                                     (start-time :target-type iso8601date-time
                                      :member-name "StartTime")
                                     (stop-time :target-type iso8601date-time
                                      :member-name "StopTime"))
                                    (:shape-name "DataMigrationStatistics"))

(smithy/sdk/shapes:define-list data-migrations :member data-migration)

(smithy/sdk/shapes:define-structure data-provider common-lisp:nil
                                    ((data-provider-name :target-type string
                                      :member-name "DataProviderName")
                                     (data-provider-arn :target-type string
                                      :member-name "DataProviderArn")
                                     (data-provider-creation-time :target-type
                                      iso8601date-time :member-name
                                      "DataProviderCreationTime")
                                     (description :target-type string
                                      :member-name "Description")
                                     (engine :target-type string :member-name
                                      "Engine")
                                     (virtual :target-type boolean-optional
                                      :member-name "Virtual")
                                     (settings :target-type
                                      data-provider-settings :member-name
                                      "Settings"))
                                    (:shape-name "DataProvider"))

(smithy/sdk/shapes:define-structure data-provider-descriptor common-lisp:nil
                                    ((secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (data-provider-name :target-type string
                                      :member-name "DataProviderName")
                                     (data-provider-arn :target-type string
                                      :member-name "DataProviderArn"))
                                    (:shape-name "DataProviderDescriptor"))

(smithy/sdk/shapes:define-structure data-provider-descriptor-definition
                                    common-lisp:nil
                                    ((data-provider-identifier :target-type
                                      string :required common-lisp:t
                                      :member-name "DataProviderIdentifier")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn"))
                                    (:shape-name
                                     "DataProviderDescriptorDefinition"))

(smithy/sdk/shapes:define-list data-provider-descriptor-definition-list :member
                               data-provider-descriptor-definition)

(smithy/sdk/shapes:define-list data-provider-descriptor-list :member
                               data-provider-descriptor)

(smithy/sdk/shapes:define-list data-provider-list :member
                               (data-provider :xml-name "DataProvider"))

(smithy/sdk/shapes:define-union data-provider-settings common-lisp:nil
                                ((redshift-settings :target-type
                                  redshift-data-provider-settings :member-name
                                  "RedshiftSettings")
                                 (postgre-sql-settings :target-type
                                  postgre-sql-data-provider-settings
                                  :member-name "PostgreSqlSettings")
                                 (my-sql-settings :target-type
                                  my-sql-data-provider-settings :member-name
                                  "MySqlSettings")
                                 (oracle-settings :target-type
                                  oracle-data-provider-settings :member-name
                                  "OracleSettings")
                                 (microsoft-sql-server-settings :target-type
                                  microsoft-sql-server-data-provider-settings
                                  :member-name "MicrosoftSqlServerSettings")
                                 (doc-db-settings :target-type
                                  doc-db-data-provider-settings :member-name
                                  "DocDbSettings")
                                 (maria-db-settings :target-type
                                  maria-db-data-provider-settings :member-name
                                  "MariaDbSettings")
                                 (ibm-db2luw-settings :target-type
                                  ibm-db2luw-data-provider-settings
                                  :member-name "IbmDb2LuwSettings")
                                 (ibm-db2z-os-settings :target-type
                                  ibm-db2z-os-data-provider-settings
                                  :member-name "IbmDb2zOsSettings")
                                 (mongo-db-settings :target-type
                                  mongo-db-data-provider-settings :member-name
                                  "MongoDbSettings"))
                                (:shape-name "DataProviderSettings"))

(smithy/sdk/shapes:define-structure database-instance-software-details-response
                                    common-lisp:nil
                                    ((engine :target-type string :member-name
                                      "Engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (engine-edition :target-type string
                                      :member-name "EngineEdition")
                                     (service-pack :target-type string
                                      :member-name "ServicePack")
                                     (support-level :target-type string
                                      :member-name "SupportLevel")
                                     (os-architecture :target-type
                                      integer-optional :member-name
                                      "OsArchitecture")
                                     (tooltip :target-type string :member-name
                                      "Tooltip"))
                                    (:shape-name
                                     "DatabaseInstanceSoftwareDetailsResponse"))

(smithy/sdk/shapes:define-list database-list :member database-response)

(smithy/sdk/shapes:define-enum database-mode
    common-lisp:nil
  (:default "default")
  (:babelfish "babelfish"))

(smithy/sdk/shapes:define-structure database-response common-lisp:nil
                                    ((database-id :target-type string
                                      :member-name "DatabaseId")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (ip-address :target-type string
                                      :member-name "IpAddress")
                                     (number-of-schemas :target-type
                                      long-optional :member-name
                                      "NumberOfSchemas")
                                     (server :target-type
                                      server-short-info-response :member-name
                                      "Server")
                                     (software-details :target-type
                                      database-instance-software-details-response
                                      :member-name "SoftwareDetails")
                                     (collectors :target-type collectors-list
                                      :member-name "Collectors"))
                                    (:shape-name "DatabaseResponse"))

(smithy/sdk/shapes:define-structure database-short-info-response
                                    common-lisp:nil
                                    ((database-id :target-type string
                                      :member-name "DatabaseId")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (database-ip-address :target-type string
                                      :member-name "DatabaseIpAddress")
                                     (database-engine :target-type string
                                      :member-name "DatabaseEngine"))
                                    (:shape-name "DatabaseShortInfoResponse"))

(smithy/sdk/shapes:define-enum date-partition-delimiter-value
    common-lisp:nil
  (:slash "SLASH")
  (:underscore "UNDERSCORE")
  (:dash "DASH")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum date-partition-sequence-value
    common-lisp:nil
  (:yyyymmdd "YYYYMMDD")
  (:yyyymmddhh "YYYYMMDDHH")
  (:yyyymm "YYYYMM")
  (:mmyyyydd "MMYYYYDD")
  (:ddmmyyyy "DDMMYYYY"))

(smithy/sdk/shapes:define-structure default-error-details common-lisp:nil
                                    ((message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "DefaultErrorDetails"))

(smithy/sdk/shapes:define-input delete-certificate-message common-lisp:nil
                                ((certificate-arn :target-type string :required
                                  common-lisp:t :member-name "CertificateArn"))
                                (:shape-name "DeleteCertificateMessage"))

(smithy/sdk/shapes:define-output delete-certificate-response common-lisp:nil
                                 ((certificate :target-type certificate
                                   :member-name "Certificate"))
                                 (:shape-name "DeleteCertificateResponse"))

(smithy/sdk/shapes:define-input delete-collector-request common-lisp:nil
                                ((collector-referenced-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CollectorReferencedId"))
                                (:shape-name "DeleteCollectorRequest"))

(smithy/sdk/shapes:define-input delete-connection-message common-lisp:nil
                                ((endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn")
                                 (replication-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationInstanceArn"))
                                (:shape-name "DeleteConnectionMessage"))

(smithy/sdk/shapes:define-output delete-connection-response common-lisp:nil
                                 ((connection :target-type connection
                                   :member-name "Connection"))
                                 (:shape-name "DeleteConnectionResponse"))

(smithy/sdk/shapes:define-input delete-data-migration-message common-lisp:nil
                                ((data-migration-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DataMigrationIdentifier"))
                                (:shape-name "DeleteDataMigrationMessage"))

(smithy/sdk/shapes:define-output delete-data-migration-response common-lisp:nil
                                 ((data-migration :target-type data-migration
                                   :member-name "DataMigration"))
                                 (:shape-name "DeleteDataMigrationResponse"))

(smithy/sdk/shapes:define-input delete-data-provider-message common-lisp:nil
                                ((data-provider-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DataProviderIdentifier"))
                                (:shape-name "DeleteDataProviderMessage"))

(smithy/sdk/shapes:define-output delete-data-provider-response common-lisp:nil
                                 ((data-provider :target-type data-provider
                                   :member-name "DataProvider"))
                                 (:shape-name "DeleteDataProviderResponse"))

(smithy/sdk/shapes:define-input delete-endpoint-message common-lisp:nil
                                ((endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn"))
                                (:shape-name "DeleteEndpointMessage"))

(smithy/sdk/shapes:define-output delete-endpoint-response common-lisp:nil
                                 ((endpoint :target-type endpoint :member-name
                                   "Endpoint"))
                                 (:shape-name "DeleteEndpointResponse"))

(smithy/sdk/shapes:define-input delete-event-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName"))
                                (:shape-name "DeleteEventSubscriptionMessage"))

(smithy/sdk/shapes:define-output delete-event-subscription-response
                                 common-lisp:nil
                                 ((event-subscription :target-type
                                   event-subscription :member-name
                                   "EventSubscription"))
                                 (:shape-name
                                  "DeleteEventSubscriptionResponse"))

(smithy/sdk/shapes:define-input delete-fleet-advisor-databases-request
                                common-lisp:nil
                                ((database-ids :target-type string-list
                                  :required common-lisp:t :member-name
                                  "DatabaseIds"))
                                (:shape-name
                                 "DeleteFleetAdvisorDatabasesRequest"))

(smithy/sdk/shapes:define-output delete-fleet-advisor-databases-response
                                 common-lisp:nil
                                 ((database-ids :target-type string-list
                                   :member-name "DatabaseIds"))
                                 (:shape-name
                                  "DeleteFleetAdvisorDatabasesResponse"))

(smithy/sdk/shapes:define-input delete-instance-profile-message common-lisp:nil
                                ((instance-profile-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "InstanceProfileIdentifier"))
                                (:shape-name "DeleteInstanceProfileMessage"))

(smithy/sdk/shapes:define-output delete-instance-profile-response
                                 common-lisp:nil
                                 ((instance-profile :target-type
                                   instance-profile :member-name
                                   "InstanceProfile"))
                                 (:shape-name "DeleteInstanceProfileResponse"))

(smithy/sdk/shapes:define-input delete-migration-project-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "MigrationProjectIdentifier"))
                                (:shape-name "DeleteMigrationProjectMessage"))

(smithy/sdk/shapes:define-output delete-migration-project-response
                                 common-lisp:nil
                                 ((migration-project :target-type
                                   migration-project :member-name
                                   "MigrationProject"))
                                 (:shape-name "DeleteMigrationProjectResponse"))

(smithy/sdk/shapes:define-input delete-replication-config-message
                                common-lisp:nil
                                ((replication-config-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationConfigArn"))
                                (:shape-name "DeleteReplicationConfigMessage"))

(smithy/sdk/shapes:define-output delete-replication-config-response
                                 common-lisp:nil
                                 ((replication-config :target-type
                                   replication-config :member-name
                                   "ReplicationConfig"))
                                 (:shape-name
                                  "DeleteReplicationConfigResponse"))

(smithy/sdk/shapes:define-input delete-replication-instance-message
                                common-lisp:nil
                                ((replication-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationInstanceArn"))
                                (:shape-name
                                 "DeleteReplicationInstanceMessage"))

(smithy/sdk/shapes:define-output delete-replication-instance-response
                                 common-lisp:nil
                                 ((replication-instance :target-type
                                   replication-instance :member-name
                                   "ReplicationInstance"))
                                 (:shape-name
                                  "DeleteReplicationInstanceResponse"))

(smithy/sdk/shapes:define-input delete-replication-subnet-group-message
                                common-lisp:nil
                                ((replication-subnet-group-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "ReplicationSubnetGroupIdentifier"))
                                (:shape-name
                                 "DeleteReplicationSubnetGroupMessage"))

(smithy/sdk/shapes:define-output delete-replication-subnet-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteReplicationSubnetGroupResponse"))

(smithy/sdk/shapes:define-input delete-replication-task-assessment-run-message
                                common-lisp:nil
                                ((replication-task-assessment-run-arn
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "ReplicationTaskAssessmentRunArn"))
                                (:shape-name
                                 "DeleteReplicationTaskAssessmentRunMessage"))

(smithy/sdk/shapes:define-output
 delete-replication-task-assessment-run-response common-lisp:nil
 ((replication-task-assessment-run :target-type replication-task-assessment-run
   :member-name "ReplicationTaskAssessmentRun"))
 (:shape-name "DeleteReplicationTaskAssessmentRunResponse"))

(smithy/sdk/shapes:define-input delete-replication-task-message common-lisp:nil
                                ((replication-task-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationTaskArn"))
                                (:shape-name "DeleteReplicationTaskMessage"))

(smithy/sdk/shapes:define-output delete-replication-task-response
                                 common-lisp:nil
                                 ((replication-task :target-type
                                   replication-task :member-name
                                   "ReplicationTask"))
                                 (:shape-name "DeleteReplicationTaskResponse"))

(smithy/sdk/shapes:define-input describe-account-attributes-message
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeAccountAttributesMessage"))

(smithy/sdk/shapes:define-output describe-account-attributes-response
                                 common-lisp:nil
                                 ((account-quotas :target-type
                                   account-quota-list :member-name
                                   "AccountQuotas")
                                  (unique-account-identifier :target-type
                                   string :member-name
                                   "UniqueAccountIdentifier"))
                                 (:shape-name
                                  "DescribeAccountAttributesResponse"))

(smithy/sdk/shapes:define-input
 describe-applicable-individual-assessments-message common-lisp:nil
 ((replication-task-arn :target-type string :member-name "ReplicationTaskArn")
  (replication-instance-arn :target-type string :member-name
   "ReplicationInstanceArn")
  (replication-config-arn :target-type string :member-name
   "ReplicationConfigArn")
  (source-engine-name :target-type string :member-name "SourceEngineName")
  (target-engine-name :target-type string :member-name "TargetEngineName")
  (migration-type :target-type migration-type-value :member-name
   "MigrationType")
  (max-records :target-type integer-optional :member-name "MaxRecords")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeApplicableIndividualAssessmentsMessage"))

(smithy/sdk/shapes:define-output
 describe-applicable-individual-assessments-response common-lisp:nil
 ((individual-assessment-names :target-type individual-assessment-name-list
   :member-name "IndividualAssessmentNames")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeApplicableIndividualAssessmentsResponse"))

(smithy/sdk/shapes:define-input describe-certificates-message common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeCertificatesMessage"))

(smithy/sdk/shapes:define-output describe-certificates-response common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (certificates :target-type certificate-list
                                   :member-name "Certificates"))
                                 (:shape-name "DescribeCertificatesResponse"))

(smithy/sdk/shapes:define-input describe-connections-message common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeConnectionsMessage"))

(smithy/sdk/shapes:define-output describe-connections-response common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (connections :target-type connection-list
                                   :member-name "Connections"))
                                 (:shape-name "DescribeConnectionsResponse"))

(smithy/sdk/shapes:define-input describe-conversion-configuration-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier"))
                                (:shape-name
                                 "DescribeConversionConfigurationMessage"))

(smithy/sdk/shapes:define-output describe-conversion-configuration-response
                                 common-lisp:nil
                                 ((migration-project-identifier :target-type
                                   string :member-name
                                   "MigrationProjectIdentifier")
                                  (conversion-configuration :target-type string
                                   :member-name "ConversionConfiguration"))
                                 (:shape-name
                                  "DescribeConversionConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-data-migrations-message
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (without-settings :target-type
                                  boolean-optional :member-name
                                  "WithoutSettings")
                                 (without-statistics :target-type
                                  boolean-optional :member-name
                                  "WithoutStatistics"))
                                (:shape-name "DescribeDataMigrationsMessage"))

(smithy/sdk/shapes:define-output describe-data-migrations-response
                                 common-lisp:nil
                                 ((data-migrations :target-type data-migrations
                                   :member-name "DataMigrations")
                                  (marker :target-type marker :member-name
                                   "Marker"))
                                 (:shape-name "DescribeDataMigrationsResponse"))

(smithy/sdk/shapes:define-input describe-data-providers-message common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeDataProvidersMessage"))

(smithy/sdk/shapes:define-output describe-data-providers-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (data-providers :target-type
                                   data-provider-list :member-name
                                   "DataProviders"))
                                 (:shape-name "DescribeDataProvidersResponse"))

(smithy/sdk/shapes:define-input describe-endpoint-settings-message
                                common-lisp:nil
                                ((engine-name :target-type string :required
                                  common-lisp:t :member-name "EngineName")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeEndpointSettingsMessage"))

(smithy/sdk/shapes:define-output describe-endpoint-settings-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (endpoint-settings :target-type
                                   endpoint-settings-list :member-name
                                   "EndpointSettings"))
                                 (:shape-name
                                  "DescribeEndpointSettingsResponse"))

(smithy/sdk/shapes:define-input describe-endpoint-types-message common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeEndpointTypesMessage"))

(smithy/sdk/shapes:define-output describe-endpoint-types-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (supported-endpoint-types :target-type
                                   supported-endpoint-type-list :member-name
                                   "SupportedEndpointTypes"))
                                 (:shape-name "DescribeEndpointTypesResponse"))

(smithy/sdk/shapes:define-input describe-endpoints-message common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeEndpointsMessage"))

(smithy/sdk/shapes:define-output describe-endpoints-response common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (endpoints :target-type endpoint-list
                                   :member-name "Endpoints"))
                                 (:shape-name "DescribeEndpointsResponse"))

(smithy/sdk/shapes:define-input describe-engine-versions-message
                                common-lisp:nil
                                ((max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeEngineVersionsMessage"))

(smithy/sdk/shapes:define-output describe-engine-versions-response
                                 common-lisp:nil
                                 ((engine-versions :target-type
                                   engine-version-list :member-name
                                   "EngineVersions")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name "DescribeEngineVersionsResponse"))

(smithy/sdk/shapes:define-input describe-event-categories-message
                                common-lisp:nil
                                ((source-type :target-type string :member-name
                                  "SourceType")
                                 (filters :target-type filter-list :member-name
                                  "Filters"))
                                (:shape-name "DescribeEventCategoriesMessage"))

(smithy/sdk/shapes:define-output describe-event-categories-response
                                 common-lisp:nil
                                 ((event-category-group-list :target-type
                                   event-category-group-list :member-name
                                   "EventCategoryGroupList"))
                                 (:shape-name
                                  "DescribeEventCategoriesResponse"))

(smithy/sdk/shapes:define-input describe-event-subscriptions-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :member-name "SubscriptionName")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeEventSubscriptionsMessage"))

(smithy/sdk/shapes:define-output describe-event-subscriptions-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (event-subscriptions-list :target-type
                                   event-subscriptions-list :member-name
                                   "EventSubscriptionsList"))
                                 (:shape-name
                                  "DescribeEventSubscriptionsResponse"))

(smithy/sdk/shapes:define-input describe-events-message common-lisp:nil
                                ((source-identifier :target-type string
                                  :member-name "SourceIdentifier")
                                 (source-type :target-type source-type
                                  :member-name "SourceType")
                                 (start-time :target-type tstamp :member-name
                                  "StartTime")
                                 (end-time :target-type tstamp :member-name
                                  "EndTime")
                                 (duration :target-type integer-optional
                                  :member-name "Duration")
                                 (event-categories :target-type
                                  event-categories-list :member-name
                                  "EventCategories")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeEventsMessage"))

(smithy/sdk/shapes:define-output describe-events-response common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (events :target-type event-list :member-name
                                   "Events"))
                                 (:shape-name "DescribeEventsResponse"))

(smithy/sdk/shapes:define-input describe-extension-pack-associations-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeExtensionPackAssociationsMessage"))

(smithy/sdk/shapes:define-output describe-extension-pack-associations-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (requests :target-type
                                   schema-conversion-request-list :member-name
                                   "Requests"))
                                 (:shape-name
                                  "DescribeExtensionPackAssociationsResponse"))

(smithy/sdk/shapes:define-input describe-fleet-advisor-collectors-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeFleetAdvisorCollectorsRequest"))

(smithy/sdk/shapes:define-output describe-fleet-advisor-collectors-response
                                 common-lisp:nil
                                 ((collectors :target-type collector-responses
                                   :member-name "Collectors")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeFleetAdvisorCollectorsResponse"))

(smithy/sdk/shapes:define-input describe-fleet-advisor-databases-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeFleetAdvisorDatabasesRequest"))

(smithy/sdk/shapes:define-output describe-fleet-advisor-databases-response
                                 common-lisp:nil
                                 ((databases :target-type database-list
                                   :member-name "Databases")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeFleetAdvisorDatabasesResponse"))

(smithy/sdk/shapes:define-input describe-fleet-advisor-lsa-analysis-request
                                common-lisp:nil
                                ((max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeFleetAdvisorLsaAnalysisRequest"))

(smithy/sdk/shapes:define-output describe-fleet-advisor-lsa-analysis-response
                                 common-lisp:nil
                                 ((analysis :target-type
                                   fleet-advisor-lsa-analysis-response-list
                                   :member-name "Analysis")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeFleetAdvisorLsaAnalysisResponse"))

(smithy/sdk/shapes:define-input
 describe-fleet-advisor-schema-object-summary-request common-lisp:nil
 ((filters :target-type filter-list :member-name "Filters")
  (max-records :target-type integer-optional :member-name "MaxRecords")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeFleetAdvisorSchemaObjectSummaryRequest"))

(smithy/sdk/shapes:define-output
 describe-fleet-advisor-schema-object-summary-response common-lisp:nil
 ((fleet-advisor-schema-objects :target-type fleet-advisor-schema-object-list
   :member-name "FleetAdvisorSchemaObjects")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeFleetAdvisorSchemaObjectSummaryResponse"))

(smithy/sdk/shapes:define-input describe-fleet-advisor-schemas-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeFleetAdvisorSchemasRequest"))

(smithy/sdk/shapes:define-output describe-fleet-advisor-schemas-response
                                 common-lisp:nil
                                 ((fleet-advisor-schemas :target-type
                                   fleet-advisor-schema-list :member-name
                                   "FleetAdvisorSchemas")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeFleetAdvisorSchemasResponse"))

(smithy/sdk/shapes:define-input describe-instance-profiles-message
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeInstanceProfilesMessage"))

(smithy/sdk/shapes:define-output describe-instance-profiles-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (instance-profiles :target-type
                                   instance-profile-list :member-name
                                   "InstanceProfiles"))
                                 (:shape-name
                                  "DescribeInstanceProfilesResponse"))

(smithy/sdk/shapes:define-input describe-metadata-model-assessments-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeMetadataModelAssessmentsMessage"))

(smithy/sdk/shapes:define-output describe-metadata-model-assessments-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (requests :target-type
                                   schema-conversion-request-list :member-name
                                   "Requests"))
                                 (:shape-name
                                  "DescribeMetadataModelAssessmentsResponse"))

(smithy/sdk/shapes:define-input describe-metadata-model-conversions-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeMetadataModelConversionsMessage"))

(smithy/sdk/shapes:define-output describe-metadata-model-conversions-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (requests :target-type
                                   schema-conversion-request-list :member-name
                                   "Requests"))
                                 (:shape-name
                                  "DescribeMetadataModelConversionsResponse"))

(smithy/sdk/shapes:define-input
 describe-metadata-model-exports-as-script-message common-lisp:nil
 ((migration-project-identifier :target-type migration-project-identifier
   :required common-lisp:t :member-name "MigrationProjectIdentifier")
  (filters :target-type filter-list :member-name "Filters")
  (marker :target-type string :member-name "Marker")
  (max-records :target-type integer-optional :member-name "MaxRecords"))
 (:shape-name "DescribeMetadataModelExportsAsScriptMessage"))

(smithy/sdk/shapes:define-output
 describe-metadata-model-exports-as-script-response common-lisp:nil
 ((marker :target-type string :member-name "Marker")
  (requests :target-type schema-conversion-request-list :member-name
   "Requests"))
 (:shape-name "DescribeMetadataModelExportsAsScriptResponse"))

(smithy/sdk/shapes:define-input
 describe-metadata-model-exports-to-target-message common-lisp:nil
 ((migration-project-identifier :target-type migration-project-identifier
   :required common-lisp:t :member-name "MigrationProjectIdentifier")
  (filters :target-type filter-list :member-name "Filters")
  (marker :target-type string :member-name "Marker")
  (max-records :target-type integer-optional :member-name "MaxRecords"))
 (:shape-name "DescribeMetadataModelExportsToTargetMessage"))

(smithy/sdk/shapes:define-output
 describe-metadata-model-exports-to-target-response common-lisp:nil
 ((marker :target-type string :member-name "Marker")
  (requests :target-type schema-conversion-request-list :member-name
   "Requests"))
 (:shape-name "DescribeMetadataModelExportsToTargetResponse"))

(smithy/sdk/shapes:define-input describe-metadata-model-imports-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribeMetadataModelImportsMessage"))

(smithy/sdk/shapes:define-output describe-metadata-model-imports-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (requests :target-type
                                   schema-conversion-request-list :member-name
                                   "Requests"))
                                 (:shape-name
                                  "DescribeMetadataModelImportsResponse"))

(smithy/sdk/shapes:define-input describe-migration-projects-message
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeMigrationProjectsMessage"))

(smithy/sdk/shapes:define-output describe-migration-projects-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (migration-projects :target-type
                                   migration-project-list :member-name
                                   "MigrationProjects"))
                                 (:shape-name
                                  "DescribeMigrationProjectsResponse"))

(smithy/sdk/shapes:define-input
 describe-orderable-replication-instances-message common-lisp:nil
 ((max-records :target-type integer-optional :member-name "MaxRecords")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeOrderableReplicationInstancesMessage"))

(smithy/sdk/shapes:define-output
 describe-orderable-replication-instances-response common-lisp:nil
 ((orderable-replication-instances :target-type
   orderable-replication-instance-list :member-name
   "OrderableReplicationInstances")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeOrderableReplicationInstancesResponse"))

(smithy/sdk/shapes:define-input describe-pending-maintenance-actions-message
                                common-lisp:nil
                                ((replication-instance-arn :target-type string
                                  :member-name "ReplicationInstanceArn")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords"))
                                (:shape-name
                                 "DescribePendingMaintenanceActionsMessage"))

(smithy/sdk/shapes:define-output describe-pending-maintenance-actions-response
                                 common-lisp:nil
                                 ((pending-maintenance-actions :target-type
                                   pending-maintenance-actions :member-name
                                   "PendingMaintenanceActions")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribePendingMaintenanceActionsResponse"))

(smithy/sdk/shapes:define-input describe-recommendation-limitations-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeRecommendationLimitationsRequest"))

(smithy/sdk/shapes:define-output describe-recommendation-limitations-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (limitations :target-type limitation-list
                                   :member-name "Limitations"))
                                 (:shape-name
                                  "DescribeRecommendationLimitationsResponse"))

(smithy/sdk/shapes:define-input describe-recommendations-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeRecommendationsRequest"))

(smithy/sdk/shapes:define-output describe-recommendations-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (recommendations :target-type
                                   recommendation-list :member-name
                                   "Recommendations"))
                                 (:shape-name
                                  "DescribeRecommendationsResponse"))

(smithy/sdk/shapes:define-input describe-refresh-schemas-status-message
                                common-lisp:nil
                                ((endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn"))
                                (:shape-name
                                 "DescribeRefreshSchemasStatusMessage"))

(smithy/sdk/shapes:define-output describe-refresh-schemas-status-response
                                 common-lisp:nil
                                 ((refresh-schemas-status :target-type
                                   refresh-schemas-status :member-name
                                   "RefreshSchemasStatus"))
                                 (:shape-name
                                  "DescribeRefreshSchemasStatusResponse"))

(smithy/sdk/shapes:define-input describe-replication-configs-message
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReplicationConfigsMessage"))

(smithy/sdk/shapes:define-output describe-replication-configs-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (replication-configs :target-type
                                   replication-config-list :member-name
                                   "ReplicationConfigs"))
                                 (:shape-name
                                  "DescribeReplicationConfigsResponse"))

(smithy/sdk/shapes:define-input describe-replication-instance-task-logs-message
                                common-lisp:nil
                                ((replication-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationInstanceArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReplicationInstanceTaskLogsMessage"))

(smithy/sdk/shapes:define-output
 describe-replication-instance-task-logs-response common-lisp:nil
 ((replication-instance-arn :target-type string :member-name
   "ReplicationInstanceArn")
  (replication-instance-task-logs :target-type
   replication-instance-task-logs-list :member-name
   "ReplicationInstanceTaskLogs")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeReplicationInstanceTaskLogsResponse"))

(smithy/sdk/shapes:define-input describe-replication-instances-message
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReplicationInstancesMessage"))

(smithy/sdk/shapes:define-output describe-replication-instances-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (replication-instances :target-type
                                   replication-instance-list :member-name
                                   "ReplicationInstances"))
                                 (:shape-name
                                  "DescribeReplicationInstancesResponse"))

(smithy/sdk/shapes:define-input describe-replication-subnet-groups-message
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name
                                 "DescribeReplicationSubnetGroupsMessage"))

(smithy/sdk/shapes:define-output describe-replication-subnet-groups-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (replication-subnet-groups :target-type
                                   replication-subnet-groups :member-name
                                   "ReplicationSubnetGroups"))
                                 (:shape-name
                                  "DescribeReplicationSubnetGroupsResponse"))

(smithy/sdk/shapes:define-input describe-replication-table-statistics-message
                                common-lisp:nil
                                ((replication-config-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationConfigArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (filters :target-type filter-list :member-name
                                  "Filters"))
                                (:shape-name
                                 "DescribeReplicationTableStatisticsMessage"))

(smithy/sdk/shapes:define-output describe-replication-table-statistics-response
                                 common-lisp:nil
                                 ((replication-config-arn :target-type string
                                   :member-name "ReplicationConfigArn")
                                  (marker :target-type string :member-name
                                   "Marker")
                                  (replication-table-statistics :target-type
                                   replication-table-statistics-list
                                   :member-name "ReplicationTableStatistics"))
                                 (:shape-name
                                  "DescribeReplicationTableStatisticsResponse"))

(smithy/sdk/shapes:define-input
 describe-replication-task-assessment-results-message common-lisp:nil
 ((replication-task-arn :target-type string :member-name "ReplicationTaskArn")
  (max-records :target-type integer-optional :member-name "MaxRecords")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeReplicationTaskAssessmentResultsMessage"))

(smithy/sdk/shapes:define-output
 describe-replication-task-assessment-results-response common-lisp:nil
 ((marker :target-type string :member-name "Marker")
  (bucket-name :target-type string :member-name "BucketName")
  (replication-task-assessment-results :target-type
   replication-task-assessment-result-list :member-name
   "ReplicationTaskAssessmentResults"))
 (:shape-name "DescribeReplicationTaskAssessmentResultsResponse"))

(smithy/sdk/shapes:define-input
 describe-replication-task-assessment-runs-message common-lisp:nil
 ((filters :target-type filter-list :member-name "Filters")
  (max-records :target-type integer-optional :member-name "MaxRecords")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeReplicationTaskAssessmentRunsMessage"))

(smithy/sdk/shapes:define-output
 describe-replication-task-assessment-runs-response common-lisp:nil
 ((marker :target-type string :member-name "Marker")
  (replication-task-assessment-runs :target-type
   replication-task-assessment-run-list :member-name
   "ReplicationTaskAssessmentRuns"))
 (:shape-name "DescribeReplicationTaskAssessmentRunsResponse"))

(smithy/sdk/shapes:define-input
 describe-replication-task-individual-assessments-message common-lisp:nil
 ((filters :target-type filter-list :member-name "Filters")
  (max-records :target-type integer-optional :member-name "MaxRecords")
  (marker :target-type string :member-name "Marker"))
 (:shape-name "DescribeReplicationTaskIndividualAssessmentsMessage"))

(smithy/sdk/shapes:define-output
 describe-replication-task-individual-assessments-response common-lisp:nil
 ((marker :target-type string :member-name "Marker")
  (replication-task-individual-assessments :target-type
   replication-task-individual-assessment-list :member-name
   "ReplicationTaskIndividualAssessments"))
 (:shape-name "DescribeReplicationTaskIndividualAssessmentsResponse"))

(smithy/sdk/shapes:define-input describe-replication-tasks-message
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (without-settings :target-type
                                  boolean-optional :member-name
                                  "WithoutSettings"))
                                (:shape-name "DescribeReplicationTasksMessage"))

(smithy/sdk/shapes:define-output describe-replication-tasks-response
                                 common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (replication-tasks :target-type
                                   replication-task-list :member-name
                                   "ReplicationTasks"))
                                 (:shape-name
                                  "DescribeReplicationTasksResponse"))

(smithy/sdk/shapes:define-input describe-replications-message common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeReplicationsMessage"))

(smithy/sdk/shapes:define-output describe-replications-response common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (replications :target-type replication-list
                                   :member-name "Replications"))
                                 (:shape-name "DescribeReplicationsResponse"))

(smithy/sdk/shapes:define-input describe-schemas-message common-lisp:nil
                                ((endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "DescribeSchemasMessage"))

(smithy/sdk/shapes:define-output describe-schemas-response common-lisp:nil
                                 ((marker :target-type string :member-name
                                   "Marker")
                                  (schemas :target-type schema-list
                                   :member-name "Schemas"))
                                 (:shape-name "DescribeSchemasResponse"))

(smithy/sdk/shapes:define-input describe-table-statistics-message
                                common-lisp:nil
                                ((replication-task-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationTaskArn")
                                 (max-records :target-type integer-optional
                                  :member-name "MaxRecords")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (filters :target-type filter-list :member-name
                                  "Filters"))
                                (:shape-name "DescribeTableStatisticsMessage"))

(smithy/sdk/shapes:define-output describe-table-statistics-response
                                 common-lisp:nil
                                 ((replication-task-arn :target-type string
                                   :member-name "ReplicationTaskArn")
                                  (table-statistics :target-type
                                   table-statistics-list :member-name
                                   "TableStatistics")
                                  (marker :target-type string :member-name
                                   "Marker"))
                                 (:shape-name
                                  "DescribeTableStatisticsResponse"))

(smithy/sdk/shapes:define-enum dms-ssl-mode-value
    common-lisp:nil
  (:none "none")
  (:require "require")
  (:verify-ca "verify-ca")
  (:verify-full "verify-full"))

(smithy/sdk/shapes:define-structure dms-transfer-settings common-lisp:nil
                                    ((service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (bucket-name :target-type string
                                      :member-name "BucketName"))
                                    (:shape-name "DmsTransferSettings"))

(smithy/sdk/shapes:define-structure doc-db-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn"))
                                    (:shape-name "DocDbDataProviderSettings"))

(smithy/sdk/shapes:define-structure doc-db-settings common-lisp:nil
                                    ((username :target-type string :member-name
                                      "Username")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (nesting-level :target-type
                                      nesting-level-value :member-name
                                      "NestingLevel")
                                     (extract-doc-id :target-type
                                      boolean-optional :member-name
                                      "ExtractDocId")
                                     (docs-to-investigate :target-type
                                      integer-optional :member-name
                                      "DocsToInvestigate")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (use-update-look-up :target-type
                                      boolean-optional :member-name
                                      "UseUpdateLookUp")
                                     (replicate-shard-collections :target-type
                                      boolean-optional :member-name
                                      "ReplicateShardCollections"))
                                    (:shape-name "DocDbSettings"))

(smithy/sdk/shapes:define-type double-optional smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure dynamo-db-settings common-lisp:nil
                                    ((service-access-role-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "ServiceAccessRoleArn"))
                                    (:shape-name "DynamoDbSettings"))

(smithy/sdk/shapes:define-structure elasticsearch-settings common-lisp:nil
                                    ((service-access-role-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "ServiceAccessRoleArn")
                                     (endpoint-uri :target-type string
                                      :required common-lisp:t :member-name
                                      "EndpointUri")
                                     (full-load-error-percentage :target-type
                                      integer-optional :member-name
                                      "FullLoadErrorPercentage")
                                     (error-retry-duration :target-type
                                      integer-optional :member-name
                                      "ErrorRetryDuration")
                                     (use-new-mapping-type :target-type
                                      boolean-optional :member-name
                                      "UseNewMappingType"))
                                    (:shape-name "ElasticsearchSettings"))

(smithy/sdk/shapes:define-enum encoding-type-value
    common-lisp:nil
  (:plain "plain")
  (:plain-dictionary "plain-dictionary")
  (:rle-dictionary "rle-dictionary"))

(smithy/sdk/shapes:define-enum encryption-mode-value
    common-lisp:nil
  (:sse-s3 "sse-s3")
  (:sse-kms "sse-kms"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((endpoint-identifier :target-type string
                                      :member-name "EndpointIdentifier")
                                     (endpoint-type :target-type
                                      replication-endpoint-type-value
                                      :member-name "EndpointType")
                                     (engine-name :target-type string
                                      :member-name "EngineName")
                                     (engine-display-name :target-type string
                                      :member-name "EngineDisplayName")
                                     (username :target-type string :member-name
                                      "Username")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (extra-connection-attributes :target-type
                                      string :member-name
                                      "ExtraConnectionAttributes")
                                     (status :target-type string :member-name
                                      "Status")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (endpoint-arn :target-type string
                                      :member-name "EndpointArn")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (external-table-definition :target-type
                                      string :member-name
                                      "ExternalTableDefinition")
                                     (external-id :target-type string
                                      :member-name "ExternalId")
                                     (dynamo-db-settings :target-type
                                      dynamo-db-settings :member-name
                                      "DynamoDbSettings")
                                     (s3settings :target-type s3settings
                                      :member-name "S3Settings")
                                     (dms-transfer-settings :target-type
                                      dms-transfer-settings :member-name
                                      "DmsTransferSettings")
                                     (mongo-db-settings :target-type
                                      mongo-db-settings :member-name
                                      "MongoDbSettings")
                                     (kinesis-settings :target-type
                                      kinesis-settings :member-name
                                      "KinesisSettings")
                                     (kafka-settings :target-type
                                      kafka-settings :member-name
                                      "KafkaSettings")
                                     (elasticsearch-settings :target-type
                                      elasticsearch-settings :member-name
                                      "ElasticsearchSettings")
                                     (neptune-settings :target-type
                                      neptune-settings :member-name
                                      "NeptuneSettings")
                                     (redshift-settings :target-type
                                      redshift-settings :member-name
                                      "RedshiftSettings")
                                     (postgre-sqlsettings :target-type
                                      postgre-sqlsettings :member-name
                                      "PostgreSQLSettings")
                                     (my-sqlsettings :target-type
                                      my-sqlsettings :member-name
                                      "MySQLSettings")
                                     (oracle-settings :target-type
                                      oracle-settings :member-name
                                      "OracleSettings")
                                     (sybase-settings :target-type
                                      sybase-settings :member-name
                                      "SybaseSettings")
                                     (microsoft-sqlserver-settings :target-type
                                      microsoft-sqlserver-settings :member-name
                                      "MicrosoftSQLServerSettings")
                                     (ibmdb2settings :target-type
                                      ibmdb2settings :member-name
                                      "IBMDb2Settings")
                                     (doc-db-settings :target-type
                                      doc-db-settings :member-name
                                      "DocDbSettings")
                                     (redis-settings :target-type
                                      redis-settings :member-name
                                      "RedisSettings")
                                     (gcp-my-sqlsettings :target-type
                                      gcp-my-sqlsettings :member-name
                                      "GcpMySQLSettings")
                                     (timestream-settings :target-type
                                      timestream-settings :member-name
                                      "TimestreamSettings"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-list endpoint-list :member
                               (endpoint :xml-name "Endpoint"))

(smithy/sdk/shapes:define-structure endpoint-setting common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (type :target-type
                                      endpoint-setting-type-value :member-name
                                      "Type")
                                     (enum-values :target-type
                                      endpoint-setting-enum-values :member-name
                                      "EnumValues")
                                     (sensitive :target-type boolean-optional
                                      :member-name "Sensitive")
                                     (units :target-type string :member-name
                                      "Units")
                                     (applicability :target-type string
                                      :member-name "Applicability")
                                     (int-value-min :target-type
                                      integer-optional :member-name
                                      "IntValueMin")
                                     (int-value-max :target-type
                                      integer-optional :member-name
                                      "IntValueMax")
                                     (default-value :target-type string
                                      :member-name "DefaultValue"))
                                    (:shape-name "EndpointSetting"))

(smithy/sdk/shapes:define-list endpoint-setting-enum-values :member string)

(smithy/sdk/shapes:define-enum endpoint-setting-type-value
    common-lisp:nil
  (:string "string")
  (:boolean "boolean")
  (:integer "integer")
  (:enum "enum"))

(smithy/sdk/shapes:define-list endpoint-settings-list :member endpoint-setting)

(smithy/sdk/shapes:define-structure engine-version common-lisp:nil
                                    ((version :target-type string :member-name
                                      "Version")
                                     (lifecycle :target-type string
                                      :member-name "Lifecycle")
                                     (release-status :target-type
                                      release-status-values :member-name
                                      "ReleaseStatus")
                                     (launch-date :target-type tstamp
                                      :member-name "LaunchDate")
                                     (auto-upgrade-date :target-type tstamp
                                      :member-name "AutoUpgradeDate")
                                     (deprecation-date :target-type tstamp
                                      :member-name "DeprecationDate")
                                     (force-upgrade-date :target-type tstamp
                                      :member-name "ForceUpgradeDate")
                                     (available-upgrades :target-type
                                      available-upgrades-list :member-name
                                      "AvailableUpgrades"))
                                    (:shape-name "EngineVersion"))

(smithy/sdk/shapes:define-list engine-version-list :member
                               (engine-version :xml-name "EngineVersion"))

(smithy/sdk/shapes:define-union error-details common-lisp:nil
                                ((default-error-details :target-type
                                  default-error-details :member-name
                                  "defaultErrorDetails"))
                                (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((source-identifier :target-type string
                                      :member-name "SourceIdentifier")
                                     (source-type :target-type source-type
                                      :member-name "SourceType")
                                     (message :target-type string :member-name
                                      "Message")
                                     (event-categories :target-type
                                      event-categories-list :member-name
                                      "EventCategories")
                                     (date :target-type tstamp :member-name
                                      "Date"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-list event-categories-list :member
                               (string :xml-name "EventCategory"))

(smithy/sdk/shapes:define-structure event-category-group common-lisp:nil
                                    ((source-type :target-type string
                                      :member-name "SourceType")
                                     (event-categories :target-type
                                      event-categories-list :member-name
                                      "EventCategories"))
                                    (:shape-name "EventCategoryGroup"))

(smithy/sdk/shapes:define-list event-category-group-list :member
                               (event-category-group :xml-name
                                "EventCategoryGroup"))

(smithy/sdk/shapes:define-list event-list :member (event :xml-name "Event"))

(smithy/sdk/shapes:define-structure event-subscription common-lisp:nil
                                    ((customer-aws-id :target-type string
                                      :member-name "CustomerAwsId")
                                     (cust-subscription-id :target-type string
                                      :member-name "CustSubscriptionId")
                                     (sns-topic-arn :target-type string
                                      :member-name "SnsTopicArn")
                                     (status :target-type string :member-name
                                      "Status")
                                     (subscription-creation-time :target-type
                                      string :member-name
                                      "SubscriptionCreationTime")
                                     (source-type :target-type string
                                      :member-name "SourceType")
                                     (source-ids-list :target-type
                                      source-ids-list :member-name
                                      "SourceIdsList")
                                     (event-categories-list :target-type
                                      event-categories-list :member-name
                                      "EventCategoriesList")
                                     (enabled :target-type boolean :member-name
                                      "Enabled"))
                                    (:shape-name "EventSubscription"))

(smithy/sdk/shapes:define-list event-subscriptions-list :member
                               (event-subscription :xml-name
                                "EventSubscription"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list exclude-test-list :member string)

(smithy/sdk/shapes:define-input export-metadata-model-assessment-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (selection-rules :target-type string :required
                                  common-lisp:t :member-name "SelectionRules")
                                 (file-name :target-type string :member-name
                                  "FileName")
                                 (assessment-report-types :target-type
                                  assessment-report-types-list :member-name
                                  "AssessmentReportTypes"))
                                (:shape-name
                                 "ExportMetadataModelAssessmentMessage"))

(smithy/sdk/shapes:define-output export-metadata-model-assessment-response
                                 common-lisp:nil
                                 ((pdf-report :target-type
                                   export-metadata-model-assessment-result-entry
                                   :member-name "PdfReport")
                                  (csv-report :target-type
                                   export-metadata-model-assessment-result-entry
                                   :member-name "CsvReport"))
                                 (:shape-name
                                  "ExportMetadataModelAssessmentResponse"))

(smithy/sdk/shapes:define-structure
 export-metadata-model-assessment-result-entry common-lisp:nil
 ((s3object-key :target-type string :member-name "S3ObjectKey")
  (object-url :target-type string :member-name "ObjectURL"))
 (:shape-name "ExportMetadataModelAssessmentResultEntry"))

(smithy/sdk/shapes:define-structure export-sql-details common-lisp:nil
                                    ((s3object-key :target-type string
                                      :member-name "S3ObjectKey")
                                     (object-url :target-type string
                                      :member-name "ObjectURL"))
                                    (:shape-name "ExportSqlDetails"))

(smithy/sdk/shapes:define-error failed-dependency-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "FailedDependencyFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member (filter :xml-name "Filter"))

(smithy/sdk/shapes:define-list filter-value-list :member
                               (string :xml-name "Value"))

(smithy/sdk/shapes:define-structure fleet-advisor-lsa-analysis-response
                                    common-lisp:nil
                                    ((lsa-analysis-id :target-type string
                                      :member-name "LsaAnalysisId")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name
                                     "FleetAdvisorLsaAnalysisResponse"))

(smithy/sdk/shapes:define-list fleet-advisor-lsa-analysis-response-list :member
                               fleet-advisor-lsa-analysis-response)

(smithy/sdk/shapes:define-list fleet-advisor-schema-list :member
                               schema-response)

(smithy/sdk/shapes:define-list fleet-advisor-schema-object-list :member
                               fleet-advisor-schema-object-response)

(smithy/sdk/shapes:define-structure fleet-advisor-schema-object-response
                                    common-lisp:nil
                                    ((schema-id :target-type string
                                      :member-name "SchemaId")
                                     (object-type :target-type string
                                      :member-name "ObjectType")
                                     (number-of-objects :target-type
                                      long-optional :member-name
                                      "NumberOfObjects")
                                     (code-line-count :target-type
                                      long-optional :member-name
                                      "CodeLineCount")
                                     (code-size :target-type long-optional
                                      :member-name "CodeSize"))
                                    (:shape-name
                                     "FleetAdvisorSchemaObjectResponse"))

(smithy/sdk/shapes:define-structure gcp-my-sqlsettings common-lisp:nil
                                    ((after-connect-script :target-type string
                                      :member-name "AfterConnectScript")
                                     (clean-source-metadata-on-mismatch
                                      :target-type boolean-optional
                                      :member-name
                                      "CleanSourceMetadataOnMismatch")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (events-poll-interval :target-type
                                      integer-optional :member-name
                                      "EventsPollInterval")
                                     (target-db-type :target-type
                                      target-db-type :member-name
                                      "TargetDbType")
                                     (max-file-size :target-type
                                      integer-optional :member-name
                                      "MaxFileSize")
                                     (parallel-load-threads :target-type
                                      integer-optional :member-name
                                      "ParallelLoadThreads")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (server-timezone :target-type string
                                      :member-name "ServerTimezone")
                                     (username :target-type string :member-name
                                      "Username")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId"))
                                    (:shape-name "GcpMySQLSettings"))

(smithy/sdk/shapes:define-structure ibmdb2settings common-lisp:nil
                                    ((database-name :target-type string
                                      :member-name "DatabaseName")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (set-data-capture-changes :target-type
                                      boolean-optional :member-name
                                      "SetDataCaptureChanges")
                                     (current-lsn :target-type string
                                      :member-name "CurrentLsn")
                                     (max-kbytes-per-read :target-type
                                      integer-optional :member-name
                                      "MaxKBytesPerRead")
                                     (username :target-type string :member-name
                                      "Username")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (load-timeout :target-type
                                      integer-optional :member-name
                                      "LoadTimeout")
                                     (write-buffer-size :target-type
                                      integer-optional :member-name
                                      "WriteBufferSize")
                                     (max-file-size :target-type
                                      integer-optional :member-name
                                      "MaxFileSize")
                                     (keep-csv-files :target-type
                                      boolean-optional :member-name
                                      "KeepCsvFiles"))
                                    (:shape-name "IBMDb2Settings"))

(smithy/sdk/shapes:define-structure ibm-db2luw-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (s3path :target-type string :member-name
                                      "S3Path")
                                     (s3access-role-arn :target-type string
                                      :member-name "S3AccessRoleArn"))
                                    (:shape-name
                                     "IbmDb2LuwDataProviderSettings"))

(smithy/sdk/shapes:define-structure ibm-db2z-os-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (s3path :target-type string :member-name
                                      "S3Path")
                                     (s3access-role-arn :target-type string
                                      :member-name "S3AccessRoleArn"))
                                    (:shape-name
                                     "IbmDb2zOsDataProviderSettings"))

(smithy/sdk/shapes:define-input import-certificate-message common-lisp:nil
                                ((certificate-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "CertificateIdentifier")
                                 (certificate-pem :target-type secret-string
                                  :member-name "CertificatePem")
                                 (certificate-wallet :target-type
                                  certificate-wallet :member-name
                                  "CertificateWallet")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "ImportCertificateMessage"))

(smithy/sdk/shapes:define-output import-certificate-response common-lisp:nil
                                 ((certificate :target-type certificate
                                   :member-name "Certificate"))
                                 (:shape-name "ImportCertificateResponse"))

(smithy/sdk/shapes:define-list include-test-list :member string)

(smithy/sdk/shapes:define-list individual-assessment-name-list :member string)

(smithy/sdk/shapes:define-structure instance-profile common-lisp:nil
                                    ((instance-profile-arn :target-type string
                                      :member-name "InstanceProfileArn")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (kms-key-arn :target-type string
                                      :member-name "KmsKeyArn")
                                     (publicly-accessible :target-type
                                      boolean-optional :member-name
                                      "PubliclyAccessible")
                                     (network-type :target-type string
                                      :member-name "NetworkType")
                                     (instance-profile-name :target-type string
                                      :member-name "InstanceProfileName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (instance-profile-creation-time
                                      :target-type iso8601date-time
                                      :member-name
                                      "InstanceProfileCreationTime")
                                     (subnet-group-identifier :target-type
                                      string :member-name
                                      "SubnetGroupIdentifier")
                                     (vpc-security-groups :target-type
                                      string-list :member-name
                                      "VpcSecurityGroups"))
                                    (:shape-name "InstanceProfile"))

(smithy/sdk/shapes:define-list instance-profile-list :member
                               (instance-profile :xml-name "InstanceProfile"))

(smithy/sdk/shapes:define-error insufficient-resource-capacity-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientResourceCapacityFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list integer-list :member integer)

(smithy/sdk/shapes:define-type integer-optional smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-certificate-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidCertificateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-operation-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidOperationFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidResourceStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-subnet common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSubnet") (:error-code 400))

(smithy/sdk/shapes:define-structure inventory-data common-lisp:nil
                                    ((number-of-databases :target-type
                                      integer-optional :member-name
                                      "NumberOfDatabases")
                                     (number-of-schemas :target-type
                                      integer-optional :member-name
                                      "NumberOfSchemas"))
                                    (:shape-name "InventoryData"))

(smithy/sdk/shapes:define-type iso8601date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error kmsaccess-denied-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KMSAccessDeniedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsdisabled-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KMSDisabledFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsfault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KMSFault") (:error-code 400))

(smithy/sdk/shapes:define-error kmsinvalid-state-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KMSInvalidStateFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmskey-not-accessible-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KMSKeyNotAccessibleFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsnot-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KMSNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsthrottling-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KMSThrottlingFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum kafka-sasl-mechanism
    common-lisp:nil
  (:scram-sha-512 "scram-sha-512")
  (:plain "plain"))

(smithy/sdk/shapes:define-enum kafka-security-protocol
    common-lisp:nil
  (:plaintext "plaintext")
  (:ssl-authentication "ssl-authentication")
  (:ssl-encryption "ssl-encryption")
  (:sasl-ssl "sasl-ssl"))

(smithy/sdk/shapes:define-structure kafka-settings common-lisp:nil
                                    ((broker :target-type string :member-name
                                      "Broker")
                                     (topic :target-type string :member-name
                                      "Topic")
                                     (message-format :target-type
                                      message-format-value :member-name
                                      "MessageFormat")
                                     (include-transaction-details :target-type
                                      boolean-optional :member-name
                                      "IncludeTransactionDetails")
                                     (include-partition-value :target-type
                                      boolean-optional :member-name
                                      "IncludePartitionValue")
                                     (partition-include-schema-table
                                      :target-type boolean-optional
                                      :member-name
                                      "PartitionIncludeSchemaTable")
                                     (include-table-alter-operations
                                      :target-type boolean-optional
                                      :member-name
                                      "IncludeTableAlterOperations")
                                     (include-control-details :target-type
                                      boolean-optional :member-name
                                      "IncludeControlDetails")
                                     (message-max-bytes :target-type
                                      integer-optional :member-name
                                      "MessageMaxBytes")
                                     (include-null-and-empty :target-type
                                      boolean-optional :member-name
                                      "IncludeNullAndEmpty")
                                     (security-protocol :target-type
                                      kafka-security-protocol :member-name
                                      "SecurityProtocol")
                                     (ssl-client-certificate-arn :target-type
                                      string :member-name
                                      "SslClientCertificateArn")
                                     (ssl-client-key-arn :target-type string
                                      :member-name "SslClientKeyArn")
                                     (ssl-client-key-password :target-type
                                      secret-string :member-name
                                      "SslClientKeyPassword")
                                     (ssl-ca-certificate-arn :target-type
                                      string :member-name
                                      "SslCaCertificateArn")
                                     (sasl-username :target-type string
                                      :member-name "SaslUsername")
                                     (sasl-password :target-type secret-string
                                      :member-name "SaslPassword")
                                     (no-hex-prefix :target-type
                                      boolean-optional :member-name
                                      "NoHexPrefix")
                                     (sasl-mechanism :target-type
                                      kafka-sasl-mechanism :member-name
                                      "SaslMechanism")
                                     (ssl-endpoint-identification-algorithm
                                      :target-type
                                      kafka-ssl-endpoint-identification-algorithm
                                      :member-name
                                      "SslEndpointIdentificationAlgorithm")
                                     (use-large-integer-value :target-type
                                      boolean-optional :member-name
                                      "UseLargeIntegerValue"))
                                    (:shape-name "KafkaSettings"))

(smithy/sdk/shapes:define-enum kafka-ssl-endpoint-identification-algorithm
    common-lisp:nil
  (:none "none")
  (:https "https"))

(smithy/sdk/shapes:define-structure kerberos-authentication-settings
                                    common-lisp:nil
                                    ((key-cache-secret-id :target-type string
                                      :member-name "KeyCacheSecretId")
                                     (key-cache-secret-iam-arn :target-type
                                      string :member-name
                                      "KeyCacheSecretIamArn")
                                     (krb5file-contents :target-type string
                                      :member-name "Krb5FileContents"))
                                    (:shape-name
                                     "KerberosAuthenticationSettings"))

(smithy/sdk/shapes:define-list key-list :member string)

(smithy/sdk/shapes:define-structure kinesis-settings common-lisp:nil
                                    ((stream-arn :target-type string
                                      :member-name "StreamArn")
                                     (message-format :target-type
                                      message-format-value :member-name
                                      "MessageFormat")
                                     (service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (include-transaction-details :target-type
                                      boolean-optional :member-name
                                      "IncludeTransactionDetails")
                                     (include-partition-value :target-type
                                      boolean-optional :member-name
                                      "IncludePartitionValue")
                                     (partition-include-schema-table
                                      :target-type boolean-optional
                                      :member-name
                                      "PartitionIncludeSchemaTable")
                                     (include-table-alter-operations
                                      :target-type boolean-optional
                                      :member-name
                                      "IncludeTableAlterOperations")
                                     (include-control-details :target-type
                                      boolean-optional :member-name
                                      "IncludeControlDetails")
                                     (include-null-and-empty :target-type
                                      boolean-optional :member-name
                                      "IncludeNullAndEmpty")
                                     (no-hex-prefix :target-type
                                      boolean-optional :member-name
                                      "NoHexPrefix")
                                     (use-large-integer-value :target-type
                                      boolean-optional :member-name
                                      "UseLargeIntegerValue"))
                                    (:shape-name "KinesisSettings"))

(smithy/sdk/shapes:define-structure limitation common-lisp:nil
                                    ((database-id :target-type string
                                      :member-name "DatabaseId")
                                     (engine-name :target-type string
                                      :member-name "EngineName")
                                     (name :target-type string :member-name
                                      "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (impact :target-type string :member-name
                                      "Impact")
                                     (type :target-type string :member-name
                                      "Type"))
                                    (:shape-name "Limitation"))

(smithy/sdk/shapes:define-list limitation-list :member limitation)

(smithy/sdk/shapes:define-input list-tags-for-resource-message common-lisp:nil
                                ((resource-arn :target-type string :member-name
                                  "ResourceArn")
                                 (resource-arn-list :target-type arn-list
                                  :member-name "ResourceArnList"))
                                (:shape-name "ListTagsForResourceMessage"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-optional smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum long-varchar-mapping-type
    common-lisp:nil
  (:wstring "wstring")
  (:clob "clob")
  (:nclob "nclob"))

(smithy/sdk/shapes:define-structure maria-db-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (s3path :target-type string :member-name
                                      "S3Path")
                                     (s3access-role-arn :target-type string
                                      :member-name "S3AccessRoleArn"))
                                    (:shape-name "MariaDbDataProviderSettings"))

(smithy/sdk/shapes:define-type marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum message-format-value
    common-lisp:nil
  (:json "json")
  (:json-unformatted "json-unformatted"))

(smithy/sdk/shapes:define-structure microsoft-sqlserver-settings
                                    common-lisp:nil
                                    ((port :target-type integer-optional
                                      :member-name "Port")
                                     (bcp-packet-size :target-type
                                      integer-optional :member-name
                                      "BcpPacketSize")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (control-tables-file-group :target-type
                                      string :member-name
                                      "ControlTablesFileGroup")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (query-single-always-on-node :target-type
                                      boolean-optional :member-name
                                      "QuerySingleAlwaysOnNode")
                                     (read-backup-only :target-type
                                      boolean-optional :member-name
                                      "ReadBackupOnly")
                                     (safeguard-policy :target-type
                                      safeguard-policy :member-name
                                      "SafeguardPolicy")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (username :target-type string :member-name
                                      "Username")
                                     (use-bcp-full-load :target-type
                                      boolean-optional :member-name
                                      "UseBcpFullLoad")
                                     (use-third-party-backup-device
                                      :target-type boolean-optional
                                      :member-name "UseThirdPartyBackupDevice")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (trim-space-in-char :target-type
                                      boolean-optional :member-name
                                      "TrimSpaceInChar")
                                     (tlog-access-mode :target-type
                                      tlog-access-mode :member-name
                                      "TlogAccessMode")
                                     (force-lob-lookup :target-type
                                      boolean-optional :member-name
                                      "ForceLobLookup")
                                     (authentication-method :target-type
                                      sql-server-authentication-method
                                      :member-name "AuthenticationMethod"))
                                    (:shape-name "MicrosoftSQLServerSettings"))

(smithy/sdk/shapes:define-structure microsoft-sql-server-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (s3path :target-type string :member-name
                                      "S3Path")
                                     (s3access-role-arn :target-type string
                                      :member-name "S3AccessRoleArn"))
                                    (:shape-name
                                     "MicrosoftSqlServerDataProviderSettings"))

(smithy/sdk/shapes:define-structure migration-project common-lisp:nil
                                    ((migration-project-name :target-type
                                      string :member-name
                                      "MigrationProjectName")
                                     (migration-project-arn :target-type string
                                      :member-name "MigrationProjectArn")
                                     (migration-project-creation-time
                                      :target-type iso8601date-time
                                      :member-name
                                      "MigrationProjectCreationTime")
                                     (source-data-provider-descriptors
                                      :target-type
                                      data-provider-descriptor-list
                                      :member-name
                                      "SourceDataProviderDescriptors")
                                     (target-data-provider-descriptors
                                      :target-type
                                      data-provider-descriptor-list
                                      :member-name
                                      "TargetDataProviderDescriptors")
                                     (instance-profile-arn :target-type string
                                      :member-name "InstanceProfileArn")
                                     (instance-profile-name :target-type string
                                      :member-name "InstanceProfileName")
                                     (transformation-rules :target-type string
                                      :member-name "TransformationRules")
                                     (description :target-type string
                                      :member-name "Description")
                                     (schema-conversion-application-attributes
                                      :target-type scapplication-attributes
                                      :member-name
                                      "SchemaConversionApplicationAttributes"))
                                    (:shape-name "MigrationProject"))

(smithy/sdk/shapes:define-type migration-project-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list migration-project-list :member
                               (migration-project :xml-name "MigrationProject"))

(smithy/sdk/shapes:define-enum migration-type-value
    common-lisp:nil
  (:full-load "full-load")
  (:cdc "cdc")
  (:full-load-and-cdc "full-load-and-cdc"))

(smithy/sdk/shapes:define-input modify-conversion-configuration-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (conversion-configuration :target-type string
                                  :required common-lisp:t :member-name
                                  "ConversionConfiguration"))
                                (:shape-name
                                 "ModifyConversionConfigurationMessage"))

(smithy/sdk/shapes:define-output modify-conversion-configuration-response
                                 common-lisp:nil
                                 ((migration-project-identifier :target-type
                                   string :member-name
                                   "MigrationProjectIdentifier"))
                                 (:shape-name
                                  "ModifyConversionConfigurationResponse"))

(smithy/sdk/shapes:define-input modify-data-migration-message common-lisp:nil
                                ((data-migration-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DataMigrationIdentifier")
                                 (data-migration-name :target-type string
                                  :member-name "DataMigrationName")
                                 (enable-cloudwatch-logs :target-type
                                  boolean-optional :member-name
                                  "EnableCloudwatchLogs")
                                 (service-access-role-arn :target-type string
                                  :member-name "ServiceAccessRoleArn")
                                 (data-migration-type :target-type
                                  migration-type-value :member-name
                                  "DataMigrationType")
                                 (source-data-settings :target-type
                                  source-data-settings :member-name
                                  "SourceDataSettings")
                                 (target-data-settings :target-type
                                  target-data-settings :member-name
                                  "TargetDataSettings")
                                 (number-of-jobs :target-type integer-optional
                                  :member-name "NumberOfJobs")
                                 (selection-rules :target-type secret-string
                                  :member-name "SelectionRules"))
                                (:shape-name "ModifyDataMigrationMessage"))

(smithy/sdk/shapes:define-output modify-data-migration-response common-lisp:nil
                                 ((data-migration :target-type data-migration
                                   :member-name "DataMigration"))
                                 (:shape-name "ModifyDataMigrationResponse"))

(smithy/sdk/shapes:define-input modify-data-provider-message common-lisp:nil
                                ((data-provider-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DataProviderIdentifier")
                                 (data-provider-name :target-type string
                                  :member-name "DataProviderName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (engine :target-type string :member-name
                                  "Engine")
                                 (virtual :target-type boolean-optional
                                  :member-name "Virtual")
                                 (exact-settings :target-type boolean-optional
                                  :member-name "ExactSettings")
                                 (settings :target-type data-provider-settings
                                  :member-name "Settings"))
                                (:shape-name "ModifyDataProviderMessage"))

(smithy/sdk/shapes:define-output modify-data-provider-response common-lisp:nil
                                 ((data-provider :target-type data-provider
                                   :member-name "DataProvider"))
                                 (:shape-name "ModifyDataProviderResponse"))

(smithy/sdk/shapes:define-input modify-endpoint-message common-lisp:nil
                                ((endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn")
                                 (endpoint-identifier :target-type string
                                  :member-name "EndpointIdentifier")
                                 (endpoint-type :target-type
                                  replication-endpoint-type-value :member-name
                                  "EndpointType")
                                 (engine-name :target-type string :member-name
                                  "EngineName")
                                 (username :target-type string :member-name
                                  "Username")
                                 (password :target-type secret-string
                                  :member-name "Password")
                                 (server-name :target-type string :member-name
                                  "ServerName")
                                 (port :target-type integer-optional
                                  :member-name "Port")
                                 (database-name :target-type string
                                  :member-name "DatabaseName")
                                 (extra-connection-attributes :target-type
                                  string :member-name
                                  "ExtraConnectionAttributes")
                                 (certificate-arn :target-type string
                                  :member-name "CertificateArn")
                                 (ssl-mode :target-type dms-ssl-mode-value
                                  :member-name "SslMode")
                                 (service-access-role-arn :target-type string
                                  :member-name "ServiceAccessRoleArn")
                                 (external-table-definition :target-type string
                                  :member-name "ExternalTableDefinition")
                                 (dynamo-db-settings :target-type
                                  dynamo-db-settings :member-name
                                  "DynamoDbSettings")
                                 (s3settings :target-type s3settings
                                  :member-name "S3Settings")
                                 (dms-transfer-settings :target-type
                                  dms-transfer-settings :member-name
                                  "DmsTransferSettings")
                                 (mongo-db-settings :target-type
                                  mongo-db-settings :member-name
                                  "MongoDbSettings")
                                 (kinesis-settings :target-type
                                  kinesis-settings :member-name
                                  "KinesisSettings")
                                 (kafka-settings :target-type kafka-settings
                                  :member-name "KafkaSettings")
                                 (elasticsearch-settings :target-type
                                  elasticsearch-settings :member-name
                                  "ElasticsearchSettings")
                                 (neptune-settings :target-type
                                  neptune-settings :member-name
                                  "NeptuneSettings")
                                 (redshift-settings :target-type
                                  redshift-settings :member-name
                                  "RedshiftSettings")
                                 (postgre-sqlsettings :target-type
                                  postgre-sqlsettings :member-name
                                  "PostgreSQLSettings")
                                 (my-sqlsettings :target-type my-sqlsettings
                                  :member-name "MySQLSettings")
                                 (oracle-settings :target-type oracle-settings
                                  :member-name "OracleSettings")
                                 (sybase-settings :target-type sybase-settings
                                  :member-name "SybaseSettings")
                                 (microsoft-sqlserver-settings :target-type
                                  microsoft-sqlserver-settings :member-name
                                  "MicrosoftSQLServerSettings")
                                 (ibmdb2settings :target-type ibmdb2settings
                                  :member-name "IBMDb2Settings")
                                 (doc-db-settings :target-type doc-db-settings
                                  :member-name "DocDbSettings")
                                 (redis-settings :target-type redis-settings
                                  :member-name "RedisSettings")
                                 (exact-settings :target-type boolean-optional
                                  :member-name "ExactSettings")
                                 (gcp-my-sqlsettings :target-type
                                  gcp-my-sqlsettings :member-name
                                  "GcpMySQLSettings")
                                 (timestream-settings :target-type
                                  timestream-settings :member-name
                                  "TimestreamSettings"))
                                (:shape-name "ModifyEndpointMessage"))

(smithy/sdk/shapes:define-output modify-endpoint-response common-lisp:nil
                                 ((endpoint :target-type endpoint :member-name
                                   "Endpoint"))
                                 (:shape-name "ModifyEndpointResponse"))

(smithy/sdk/shapes:define-input modify-event-subscription-message
                                common-lisp:nil
                                ((subscription-name :target-type string
                                  :required common-lisp:t :member-name
                                  "SubscriptionName")
                                 (sns-topic-arn :target-type string
                                  :member-name "SnsTopicArn")
                                 (source-type :target-type string :member-name
                                  "SourceType")
                                 (event-categories :target-type
                                  event-categories-list :member-name
                                  "EventCategories")
                                 (enabled :target-type boolean-optional
                                  :member-name "Enabled"))
                                (:shape-name "ModifyEventSubscriptionMessage"))

(smithy/sdk/shapes:define-output modify-event-subscription-response
                                 common-lisp:nil
                                 ((event-subscription :target-type
                                   event-subscription :member-name
                                   "EventSubscription"))
                                 (:shape-name
                                  "ModifyEventSubscriptionResponse"))

(smithy/sdk/shapes:define-input modify-instance-profile-message common-lisp:nil
                                ((instance-profile-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "InstanceProfileIdentifier")
                                 (availability-zone :target-type string
                                  :member-name "AvailabilityZone")
                                 (kms-key-arn :target-type string :member-name
                                  "KmsKeyArn")
                                 (publicly-accessible :target-type
                                  boolean-optional :member-name
                                  "PubliclyAccessible")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (instance-profile-name :target-type string
                                  :member-name "InstanceProfileName")
                                 (description :target-type string :member-name
                                  "Description")
                                 (subnet-group-identifier :target-type string
                                  :member-name "SubnetGroupIdentifier")
                                 (vpc-security-groups :target-type string-list
                                  :member-name "VpcSecurityGroups"))
                                (:shape-name "ModifyInstanceProfileMessage"))

(smithy/sdk/shapes:define-output modify-instance-profile-response
                                 common-lisp:nil
                                 ((instance-profile :target-type
                                   instance-profile :member-name
                                   "InstanceProfile"))
                                 (:shape-name "ModifyInstanceProfileResponse"))

(smithy/sdk/shapes:define-input modify-migration-project-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  string :required common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (migration-project-name :target-type string
                                  :member-name "MigrationProjectName")
                                 (source-data-provider-descriptors :target-type
                                  data-provider-descriptor-definition-list
                                  :member-name "SourceDataProviderDescriptors")
                                 (target-data-provider-descriptors :target-type
                                  data-provider-descriptor-definition-list
                                  :member-name "TargetDataProviderDescriptors")
                                 (instance-profile-identifier :target-type
                                  string :member-name
                                  "InstanceProfileIdentifier")
                                 (transformation-rules :target-type string
                                  :member-name "TransformationRules")
                                 (description :target-type string :member-name
                                  "Description")
                                 (schema-conversion-application-attributes
                                  :target-type scapplication-attributes
                                  :member-name
                                  "SchemaConversionApplicationAttributes"))
                                (:shape-name "ModifyMigrationProjectMessage"))

(smithy/sdk/shapes:define-output modify-migration-project-response
                                 common-lisp:nil
                                 ((migration-project :target-type
                                   migration-project :member-name
                                   "MigrationProject"))
                                 (:shape-name "ModifyMigrationProjectResponse"))

(smithy/sdk/shapes:define-input modify-replication-config-message
                                common-lisp:nil
                                ((replication-config-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationConfigArn")
                                 (replication-config-identifier :target-type
                                  string :member-name
                                  "ReplicationConfigIdentifier")
                                 (replication-type :target-type
                                  migration-type-value :member-name
                                  "ReplicationType")
                                 (table-mappings :target-type string
                                  :member-name "TableMappings")
                                 (replication-settings :target-type string
                                  :member-name "ReplicationSettings")
                                 (supplemental-settings :target-type string
                                  :member-name "SupplementalSettings")
                                 (compute-config :target-type compute-config
                                  :member-name "ComputeConfig")
                                 (source-endpoint-arn :target-type string
                                  :member-name "SourceEndpointArn")
                                 (target-endpoint-arn :target-type string
                                  :member-name "TargetEndpointArn"))
                                (:shape-name "ModifyReplicationConfigMessage"))

(smithy/sdk/shapes:define-output modify-replication-config-response
                                 common-lisp:nil
                                 ((replication-config :target-type
                                   replication-config :member-name
                                   "ReplicationConfig"))
                                 (:shape-name
                                  "ModifyReplicationConfigResponse"))

(smithy/sdk/shapes:define-input modify-replication-instance-message
                                common-lisp:nil
                                ((replication-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationInstanceArn")
                                 (allocated-storage :target-type
                                  integer-optional :member-name
                                  "AllocatedStorage")
                                 (apply-immediately :target-type boolean
                                  :member-name "ApplyImmediately")
                                 (replication-instance-class :target-type
                                  replication-instance-class :member-name
                                  "ReplicationInstanceClass")
                                 (vpc-security-group-ids :target-type
                                  vpc-security-group-id-list :member-name
                                  "VpcSecurityGroupIds")
                                 (preferred-maintenance-window :target-type
                                  string :member-name
                                  "PreferredMaintenanceWindow")
                                 (multi-az :target-type boolean-optional
                                  :member-name "MultiAZ")
                                 (engine-version :target-type string
                                  :member-name "EngineVersion")
                                 (allow-major-version-upgrade :target-type
                                  boolean :member-name
                                  "AllowMajorVersionUpgrade")
                                 (auto-minor-version-upgrade :target-type
                                  boolean-optional :member-name
                                  "AutoMinorVersionUpgrade")
                                 (replication-instance-identifier :target-type
                                  string :member-name
                                  "ReplicationInstanceIdentifier")
                                 (network-type :target-type string :member-name
                                  "NetworkType")
                                 (kerberos-authentication-settings :target-type
                                  kerberos-authentication-settings :member-name
                                  "KerberosAuthenticationSettings"))
                                (:shape-name
                                 "ModifyReplicationInstanceMessage"))

(smithy/sdk/shapes:define-output modify-replication-instance-response
                                 common-lisp:nil
                                 ((replication-instance :target-type
                                   replication-instance :member-name
                                   "ReplicationInstance"))
                                 (:shape-name
                                  "ModifyReplicationInstanceResponse"))

(smithy/sdk/shapes:define-input modify-replication-subnet-group-message
                                common-lisp:nil
                                ((replication-subnet-group-identifier
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "ReplicationSubnetGroupIdentifier")
                                 (replication-subnet-group-description
                                  :target-type string :member-name
                                  "ReplicationSubnetGroupDescription")
                                 (subnet-ids :target-type
                                  subnet-identifier-list :required
                                  common-lisp:t :member-name "SubnetIds"))
                                (:shape-name
                                 "ModifyReplicationSubnetGroupMessage"))

(smithy/sdk/shapes:define-output modify-replication-subnet-group-response
                                 common-lisp:nil
                                 ((replication-subnet-group :target-type
                                   replication-subnet-group :member-name
                                   "ReplicationSubnetGroup"))
                                 (:shape-name
                                  "ModifyReplicationSubnetGroupResponse"))

(smithy/sdk/shapes:define-input modify-replication-task-message common-lisp:nil
                                ((replication-task-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationTaskArn")
                                 (replication-task-identifier :target-type
                                  string :member-name
                                  "ReplicationTaskIdentifier")
                                 (migration-type :target-type
                                  migration-type-value :member-name
                                  "MigrationType")
                                 (table-mappings :target-type string
                                  :member-name "TableMappings")
                                 (replication-task-settings :target-type string
                                  :member-name "ReplicationTaskSettings")
                                 (cdc-start-time :target-type tstamp
                                  :member-name "CdcStartTime")
                                 (cdc-start-position :target-type string
                                  :member-name "CdcStartPosition")
                                 (cdc-stop-position :target-type string
                                  :member-name "CdcStopPosition")
                                 (task-data :target-type string :member-name
                                  "TaskData"))
                                (:shape-name "ModifyReplicationTaskMessage"))

(smithy/sdk/shapes:define-output modify-replication-task-response
                                 common-lisp:nil
                                 ((replication-task :target-type
                                   replication-task :member-name
                                   "ReplicationTask"))
                                 (:shape-name "ModifyReplicationTaskResponse"))

(smithy/sdk/shapes:define-structure mongo-db-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (auth-type :target-type auth-type-value
                                      :member-name "AuthType")
                                     (auth-source :target-type string
                                      :member-name "AuthSource")
                                     (auth-mechanism :target-type
                                      auth-mechanism-value :member-name
                                      "AuthMechanism"))
                                    (:shape-name "MongoDbDataProviderSettings"))

(smithy/sdk/shapes:define-structure mongo-db-settings common-lisp:nil
                                    ((username :target-type string :member-name
                                      "Username")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (auth-type :target-type auth-type-value
                                      :member-name "AuthType")
                                     (auth-mechanism :target-type
                                      auth-mechanism-value :member-name
                                      "AuthMechanism")
                                     (nesting-level :target-type
                                      nesting-level-value :member-name
                                      "NestingLevel")
                                     (extract-doc-id :target-type string
                                      :member-name "ExtractDocId")
                                     (docs-to-investigate :target-type string
                                      :member-name "DocsToInvestigate")
                                     (auth-source :target-type string
                                      :member-name "AuthSource")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (use-update-look-up :target-type
                                      boolean-optional :member-name
                                      "UseUpdateLookUp")
                                     (replicate-shard-collections :target-type
                                      boolean-optional :member-name
                                      "ReplicateShardCollections"))
                                    (:shape-name "MongoDbSettings"))

(smithy/sdk/shapes:define-input move-replication-task-message common-lisp:nil
                                ((replication-task-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationTaskArn")
                                 (target-replication-instance-arn :target-type
                                  string :required common-lisp:t :member-name
                                  "TargetReplicationInstanceArn"))
                                (:shape-name "MoveReplicationTaskMessage"))

(smithy/sdk/shapes:define-output move-replication-task-response common-lisp:nil
                                 ((replication-task :target-type
                                   replication-task :member-name
                                   "ReplicationTask"))
                                 (:shape-name "MoveReplicationTaskResponse"))

(smithy/sdk/shapes:define-enum my-sqlauthentication-method
    common-lisp:nil
  (:password "password")
  (:iam "iam"))

(smithy/sdk/shapes:define-structure my-sqlsettings common-lisp:nil
                                    ((after-connect-script :target-type string
                                      :member-name "AfterConnectScript")
                                     (clean-source-metadata-on-mismatch
                                      :target-type boolean-optional
                                      :member-name
                                      "CleanSourceMetadataOnMismatch")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (events-poll-interval :target-type
                                      integer-optional :member-name
                                      "EventsPollInterval")
                                     (target-db-type :target-type
                                      target-db-type :member-name
                                      "TargetDbType")
                                     (max-file-size :target-type
                                      integer-optional :member-name
                                      "MaxFileSize")
                                     (parallel-load-threads :target-type
                                      integer-optional :member-name
                                      "ParallelLoadThreads")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (server-timezone :target-type string
                                      :member-name "ServerTimezone")
                                     (username :target-type string :member-name
                                      "Username")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (execute-timeout :target-type
                                      integer-optional :member-name
                                      "ExecuteTimeout")
                                     (service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (authentication-method :target-type
                                      my-sqlauthentication-method :member-name
                                      "AuthenticationMethod"))
                                    (:shape-name "MySQLSettings"))

(smithy/sdk/shapes:define-structure my-sql-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (s3path :target-type string :member-name
                                      "S3Path")
                                     (s3access-role-arn :target-type string
                                      :member-name "S3AccessRoleArn"))
                                    (:shape-name "MySqlDataProviderSettings"))

(smithy/sdk/shapes:define-structure neptune-settings common-lisp:nil
                                    ((service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (s3bucket-name :target-type string
                                      :required common-lisp:t :member-name
                                      "S3BucketName")
                                     (s3bucket-folder :target-type string
                                      :required common-lisp:t :member-name
                                      "S3BucketFolder")
                                     (error-retry-duration :target-type
                                      integer-optional :member-name
                                      "ErrorRetryDuration")
                                     (max-file-size :target-type
                                      integer-optional :member-name
                                      "MaxFileSize")
                                     (max-retry-count :target-type
                                      integer-optional :member-name
                                      "MaxRetryCount")
                                     (iam-auth-enabled :target-type
                                      boolean-optional :member-name
                                      "IamAuthEnabled"))
                                    (:shape-name "NeptuneSettings"))

(smithy/sdk/shapes:define-enum nesting-level-value
    common-lisp:nil
  (:none "none")
  (:one "one"))

(smithy/sdk/shapes:define-enum oracle-authentication-method
    common-lisp:nil
  (:password "password")
  (:kerberos "kerberos"))

(smithy/sdk/shapes:define-structure oracle-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (asm-server :target-type string
                                      :member-name "AsmServer")
                                     (secrets-manager-oracle-asm-secret-id
                                      :target-type string :member-name
                                      "SecretsManagerOracleAsmSecretId")
                                     (secrets-manager-oracle-asm-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerOracleAsmAccessRoleArn")
                                     (secrets-manager-security-db-encryption-secret-id
                                      :target-type string :member-name
                                      "SecretsManagerSecurityDbEncryptionSecretId")
                                     (secrets-manager-security-db-encryption-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerSecurityDbEncryptionAccessRoleArn")
                                     (s3path :target-type string :member-name
                                      "S3Path")
                                     (s3access-role-arn :target-type string
                                      :member-name "S3AccessRoleArn"))
                                    (:shape-name "OracleDataProviderSettings"))

(smithy/sdk/shapes:define-structure oracle-settings common-lisp:nil
                                    ((add-supplemental-logging :target-type
                                      boolean-optional :member-name
                                      "AddSupplementalLogging")
                                     (archived-log-dest-id :target-type
                                      integer-optional :member-name
                                      "ArchivedLogDestId")
                                     (additional-archived-log-dest-id
                                      :target-type integer-optional
                                      :member-name
                                      "AdditionalArchivedLogDestId")
                                     (extra-archived-log-dest-ids :target-type
                                      integer-list :member-name
                                      "ExtraArchivedLogDestIds")
                                     (allow-select-nested-tables :target-type
                                      boolean-optional :member-name
                                      "AllowSelectNestedTables")
                                     (parallel-asm-read-threads :target-type
                                      integer-optional :member-name
                                      "ParallelAsmReadThreads")
                                     (read-ahead-blocks :target-type
                                      integer-optional :member-name
                                      "ReadAheadBlocks")
                                     (access-alternate-directly :target-type
                                      boolean-optional :member-name
                                      "AccessAlternateDirectly")
                                     (use-alternate-folder-for-online
                                      :target-type boolean-optional
                                      :member-name
                                      "UseAlternateFolderForOnline")
                                     (oracle-path-prefix :target-type string
                                      :member-name "OraclePathPrefix")
                                     (use-path-prefix :target-type string
                                      :member-name "UsePathPrefix")
                                     (replace-path-prefix :target-type
                                      boolean-optional :member-name
                                      "ReplacePathPrefix")
                                     (enable-homogenous-tablespace :target-type
                                      boolean-optional :member-name
                                      "EnableHomogenousTablespace")
                                     (direct-path-no-log :target-type
                                      boolean-optional :member-name
                                      "DirectPathNoLog")
                                     (archived-logs-only :target-type
                                      boolean-optional :member-name
                                      "ArchivedLogsOnly")
                                     (asm-password :target-type secret-string
                                      :member-name "AsmPassword")
                                     (asm-server :target-type string
                                      :member-name "AsmServer")
                                     (asm-user :target-type string :member-name
                                      "AsmUser")
                                     (char-length-semantics :target-type
                                      char-length-semantics :member-name
                                      "CharLengthSemantics")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (direct-path-parallel-load :target-type
                                      boolean-optional :member-name
                                      "DirectPathParallelLoad")
                                     (fail-tasks-on-lob-truncation :target-type
                                      boolean-optional :member-name
                                      "FailTasksOnLobTruncation")
                                     (number-datatype-scale :target-type
                                      integer-optional :member-name
                                      "NumberDatatypeScale")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (read-table-space-name :target-type
                                      boolean-optional :member-name
                                      "ReadTableSpaceName")
                                     (retry-interval :target-type
                                      integer-optional :member-name
                                      "RetryInterval")
                                     (security-db-encryption :target-type
                                      secret-string :member-name
                                      "SecurityDbEncryption")
                                     (security-db-encryption-name :target-type
                                      string :member-name
                                      "SecurityDbEncryptionName")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (spatial-data-option-to-geo-json-function-name
                                      :target-type string :member-name
                                      "SpatialDataOptionToGeoJsonFunctionName")
                                     (standby-delay-time :target-type
                                      integer-optional :member-name
                                      "StandbyDelayTime")
                                     (username :target-type string :member-name
                                      "Username")
                                     (use-bfile :target-type boolean-optional
                                      :member-name "UseBFile")
                                     (use-direct-path-full-load :target-type
                                      boolean-optional :member-name
                                      "UseDirectPathFullLoad")
                                     (use-logminer-reader :target-type
                                      boolean-optional :member-name
                                      "UseLogminerReader")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (secrets-manager-oracle-asm-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerOracleAsmAccessRoleArn")
                                     (secrets-manager-oracle-asm-secret-id
                                      :target-type string :member-name
                                      "SecretsManagerOracleAsmSecretId")
                                     (trim-space-in-char :target-type
                                      boolean-optional :member-name
                                      "TrimSpaceInChar")
                                     (convert-timestamp-with-zone-to-utc
                                      :target-type boolean-optional
                                      :member-name
                                      "ConvertTimestampWithZoneToUTC")
                                     (open-transaction-window :target-type
                                      integer-optional :member-name
                                      "OpenTransactionWindow")
                                     (authentication-method :target-type
                                      oracle-authentication-method :member-name
                                      "AuthenticationMethod"))
                                    (:shape-name "OracleSettings"))

(smithy/sdk/shapes:define-structure orderable-replication-instance
                                    common-lisp:nil
                                    ((engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (replication-instance-class :target-type
                                      replication-instance-class :member-name
                                      "ReplicationInstanceClass")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (min-allocated-storage :target-type
                                      integer :member-name
                                      "MinAllocatedStorage")
                                     (max-allocated-storage :target-type
                                      integer :member-name
                                      "MaxAllocatedStorage")
                                     (default-allocated-storage :target-type
                                      integer :member-name
                                      "DefaultAllocatedStorage")
                                     (included-allocated-storage :target-type
                                      integer :member-name
                                      "IncludedAllocatedStorage")
                                     (availability-zones :target-type
                                      availability-zones-list :member-name
                                      "AvailabilityZones")
                                     (release-status :target-type
                                      release-status-values :member-name
                                      "ReleaseStatus"))
                                    (:shape-name
                                     "OrderableReplicationInstance"))

(smithy/sdk/shapes:define-list orderable-replication-instance-list :member
                               (orderable-replication-instance :xml-name
                                "OrderableReplicationInstance"))

(smithy/sdk/shapes:define-enum origin-type-value
    common-lisp:nil
  (:source "SOURCE")
  (:target "TARGET"))

(smithy/sdk/shapes:define-enum parquet-version-value
    common-lisp:nil
  (:parquet-1-0 "parquet-1-0")
  (:parquet-2-0 "parquet-2-0"))

(smithy/sdk/shapes:define-structure pending-maintenance-action common-lisp:nil
                                    ((action :target-type string :member-name
                                      "Action")
                                     (auto-applied-after-date :target-type
                                      tstamp :member-name
                                      "AutoAppliedAfterDate")
                                     (forced-apply-date :target-type tstamp
                                      :member-name "ForcedApplyDate")
                                     (opt-in-status :target-type string
                                      :member-name "OptInStatus")
                                     (current-apply-date :target-type tstamp
                                      :member-name "CurrentApplyDate")
                                     (description :target-type string
                                      :member-name "Description"))
                                    (:shape-name "PendingMaintenanceAction"))

(smithy/sdk/shapes:define-list pending-maintenance-action-details :member
                               (pending-maintenance-action :xml-name
                                "PendingMaintenanceAction"))

(smithy/sdk/shapes:define-list pending-maintenance-actions :member
                               (resource-pending-maintenance-actions :xml-name
                                "ResourcePendingMaintenanceActions"))

(smithy/sdk/shapes:define-enum plugin-name-value
    common-lisp:nil
  (:no-preference "no-preference")
  (:test-decoding "test-decoding")
  (:pglogical "pglogical"))

(smithy/sdk/shapes:define-enum postgre-sqlauthentication-method
    common-lisp:nil
  (:password "password")
  (:iam "iam"))

(smithy/sdk/shapes:define-structure postgre-sqlsettings common-lisp:nil
                                    ((after-connect-script :target-type string
                                      :member-name "AfterConnectScript")
                                     (capture-ddls :target-type
                                      boolean-optional :member-name
                                      "CaptureDdls")
                                     (max-file-size :target-type
                                      integer-optional :member-name
                                      "MaxFileSize")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (ddl-artifacts-schema :target-type string
                                      :member-name "DdlArtifactsSchema")
                                     (execute-timeout :target-type
                                      integer-optional :member-name
                                      "ExecuteTimeout")
                                     (fail-tasks-on-lob-truncation :target-type
                                      boolean-optional :member-name
                                      "FailTasksOnLobTruncation")
                                     (heartbeat-enable :target-type
                                      boolean-optional :member-name
                                      "HeartbeatEnable")
                                     (heartbeat-schema :target-type string
                                      :member-name "HeartbeatSchema")
                                     (heartbeat-frequency :target-type
                                      integer-optional :member-name
                                      "HeartbeatFrequency")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (username :target-type string :member-name
                                      "Username")
                                     (slot-name :target-type string
                                      :member-name "SlotName")
                                     (plugin-name :target-type
                                      plugin-name-value :member-name
                                      "PluginName")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (trim-space-in-char :target-type
                                      boolean-optional :member-name
                                      "TrimSpaceInChar")
                                     (map-boolean-as-boolean :target-type
                                      boolean-optional :member-name
                                      "MapBooleanAsBoolean")
                                     (map-jsonb-as-clob :target-type
                                      boolean-optional :member-name
                                      "MapJsonbAsClob")
                                     (map-long-varchar-as :target-type
                                      long-varchar-mapping-type :member-name
                                      "MapLongVarcharAs")
                                     (database-mode :target-type database-mode
                                      :member-name "DatabaseMode")
                                     (babelfish-database-name :target-type
                                      string :member-name
                                      "BabelfishDatabaseName")
                                     (disable-unicode-source-filter
                                      :target-type boolean-optional
                                      :member-name
                                      "DisableUnicodeSourceFilter")
                                     (service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (authentication-method :target-type
                                      postgre-sqlauthentication-method
                                      :member-name "AuthenticationMethod"))
                                    (:shape-name "PostgreSQLSettings"))

(smithy/sdk/shapes:define-structure postgre-sql-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (ssl-mode :target-type dms-ssl-mode-value
                                      :member-name "SslMode")
                                     (certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (s3path :target-type string :member-name
                                      "S3Path")
                                     (s3access-role-arn :target-type string
                                      :member-name "S3AccessRoleArn"))
                                    (:shape-name
                                     "PostgreSqlDataProviderSettings"))

(smithy/sdk/shapes:define-structure premigration-assessment-status
                                    common-lisp:nil
                                    ((premigration-assessment-run-arn
                                      :target-type string :member-name
                                      "PremigrationAssessmentRunArn")
                                     (fail-on-assessment-failure :target-type
                                      boolean :member-name
                                      "FailOnAssessmentFailure")
                                     (status :target-type string :member-name
                                      "Status")
                                     (premigration-assessment-run-creation-date
                                      :target-type tstamp :member-name
                                      "PremigrationAssessmentRunCreationDate")
                                     (assessment-progress :target-type
                                      replication-task-assessment-run-progress
                                      :member-name "AssessmentProgress")
                                     (last-failure-message :target-type string
                                      :member-name "LastFailureMessage")
                                     (result-location-bucket :target-type
                                      string :member-name
                                      "ResultLocationBucket")
                                     (result-location-folder :target-type
                                      string :member-name
                                      "ResultLocationFolder")
                                     (result-encryption-mode :target-type
                                      string :member-name
                                      "ResultEncryptionMode")
                                     (result-kms-key-arn :target-type string
                                      :member-name "ResultKmsKeyArn")
                                     (result-statistic :target-type
                                      replication-task-assessment-run-result-statistic
                                      :member-name "ResultStatistic"))
                                    (:shape-name
                                     "PremigrationAssessmentStatus"))

(smithy/sdk/shapes:define-list premigration-assessment-status-list :member
                               premigration-assessment-status)

(smithy/sdk/shapes:define-structure provision-data common-lisp:nil
                                    ((provision-state :target-type string
                                      :member-name "ProvisionState")
                                     (provisioned-capacity-units :target-type
                                      integer :member-name
                                      "ProvisionedCapacityUnits")
                                     (date-provisioned :target-type tstamp
                                      :member-name "DateProvisioned")
                                     (is-new-provisioning-available
                                      :target-type boolean :member-name
                                      "IsNewProvisioningAvailable")
                                     (date-new-provisioning-data-available
                                      :target-type tstamp :member-name
                                      "DateNewProvisioningDataAvailable")
                                     (reason-for-new-provisioning-data
                                      :target-type string :member-name
                                      "ReasonForNewProvisioningData"))
                                    (:shape-name "ProvisionData"))

(smithy/sdk/shapes:define-list public-ip-address-list :member string)

(smithy/sdk/shapes:define-structure rds-configuration common-lisp:nil
                                    ((engine-edition :target-type string
                                      :member-name "EngineEdition")
                                     (instance-type :target-type string
                                      :member-name "InstanceType")
                                     (instance-vcpu :target-type
                                      double-optional :member-name
                                      "InstanceVcpu")
                                     (instance-memory :target-type
                                      double-optional :member-name
                                      "InstanceMemory")
                                     (storage-type :target-type string
                                      :member-name "StorageType")
                                     (storage-size :target-type
                                      integer-optional :member-name
                                      "StorageSize")
                                     (storage-iops :target-type
                                      integer-optional :member-name
                                      "StorageIops")
                                     (deployment-option :target-type string
                                      :member-name "DeploymentOption")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion"))
                                    (:shape-name "RdsConfiguration"))

(smithy/sdk/shapes:define-structure rds-recommendation common-lisp:nil
                                    ((requirements-to-target :target-type
                                      rds-requirements :member-name
                                      "RequirementsToTarget")
                                     (target-configuration :target-type
                                      rds-configuration :member-name
                                      "TargetConfiguration"))
                                    (:shape-name "RdsRecommendation"))

(smithy/sdk/shapes:define-structure rds-requirements common-lisp:nil
                                    ((engine-edition :target-type string
                                      :member-name "EngineEdition")
                                     (instance-vcpu :target-type
                                      double-optional :member-name
                                      "InstanceVcpu")
                                     (instance-memory :target-type
                                      double-optional :member-name
                                      "InstanceMemory")
                                     (storage-size :target-type
                                      integer-optional :member-name
                                      "StorageSize")
                                     (storage-iops :target-type
                                      integer-optional :member-name
                                      "StorageIops")
                                     (deployment-option :target-type string
                                      :member-name "DeploymentOption")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion"))
                                    (:shape-name "RdsRequirements"))

(smithy/sdk/shapes:define-input reboot-replication-instance-message
                                common-lisp:nil
                                ((replication-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationInstanceArn")
                                 (force-failover :target-type boolean-optional
                                  :member-name "ForceFailover")
                                 (force-planned-failover :target-type
                                  boolean-optional :member-name
                                  "ForcePlannedFailover"))
                                (:shape-name
                                 "RebootReplicationInstanceMessage"))

(smithy/sdk/shapes:define-output reboot-replication-instance-response
                                 common-lisp:nil
                                 ((replication-instance :target-type
                                   replication-instance :member-name
                                   "ReplicationInstance"))
                                 (:shape-name
                                  "RebootReplicationInstanceResponse"))

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((database-id :target-type string
                                      :member-name "DatabaseId")
                                     (engine-name :target-type string
                                      :member-name "EngineName")
                                     (created-date :target-type string
                                      :member-name "CreatedDate")
                                     (status :target-type string :member-name
                                      "Status")
                                     (preferred :target-type boolean-optional
                                      :member-name "Preferred")
                                     (settings :target-type
                                      recommendation-settings :member-name
                                      "Settings")
                                     (data :target-type recommendation-data
                                      :member-name "Data"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-structure recommendation-data common-lisp:nil
                                    ((rds-engine :target-type
                                      rds-recommendation :member-name
                                      "RdsEngine"))
                                    (:shape-name "RecommendationData"))

(smithy/sdk/shapes:define-list recommendation-list :member recommendation)

(smithy/sdk/shapes:define-structure recommendation-settings common-lisp:nil
                                    ((instance-sizing-type :target-type string
                                      :required common-lisp:t :member-name
                                      "InstanceSizingType")
                                     (workload-type :target-type string
                                      :required common-lisp:t :member-name
                                      "WorkloadType"))
                                    (:shape-name "RecommendationSettings"))

(smithy/sdk/shapes:define-enum redis-auth-type-value
    common-lisp:nil
  (:none "none")
  (:auth-role "auth-role")
  (:auth-token "auth-token"))

(smithy/sdk/shapes:define-structure redis-settings common-lisp:nil
                                    ((server-name :target-type string :required
                                      common-lisp:t :member-name "ServerName")
                                     (port :target-type integer :required
                                      common-lisp:t :member-name "Port")
                                     (ssl-security-protocol :target-type
                                      ssl-security-protocol-value :member-name
                                      "SslSecurityProtocol")
                                     (auth-type :target-type
                                      redis-auth-type-value :member-name
                                      "AuthType")
                                     (auth-user-name :target-type string
                                      :member-name "AuthUserName")
                                     (auth-password :target-type secret-string
                                      :member-name "AuthPassword")
                                     (ssl-ca-certificate-arn :target-type
                                      string :member-name
                                      "SslCaCertificateArn"))
                                    (:shape-name "RedisSettings"))

(smithy/sdk/shapes:define-structure redshift-data-provider-settings
                                    common-lisp:nil
                                    ((server-name :target-type string
                                      :member-name "ServerName")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (s3path :target-type string :member-name
                                      "S3Path")
                                     (s3access-role-arn :target-type string
                                      :member-name "S3AccessRoleArn"))
                                    (:shape-name
                                     "RedshiftDataProviderSettings"))

(smithy/sdk/shapes:define-structure redshift-settings common-lisp:nil
                                    ((accept-any-date :target-type
                                      boolean-optional :member-name
                                      "AcceptAnyDate")
                                     (after-connect-script :target-type string
                                      :member-name "AfterConnectScript")
                                     (bucket-folder :target-type string
                                      :member-name "BucketFolder")
                                     (bucket-name :target-type string
                                      :member-name "BucketName")
                                     (case-sensitive-names :target-type
                                      boolean-optional :member-name
                                      "CaseSensitiveNames")
                                     (comp-update :target-type boolean-optional
                                      :member-name "CompUpdate")
                                     (connection-timeout :target-type
                                      integer-optional :member-name
                                      "ConnectionTimeout")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (date-format :target-type string
                                      :member-name "DateFormat")
                                     (empty-as-null :target-type
                                      boolean-optional :member-name
                                      "EmptyAsNull")
                                     (encryption-mode :target-type
                                      encryption-mode-value :member-name
                                      "EncryptionMode")
                                     (explicit-ids :target-type
                                      boolean-optional :member-name
                                      "ExplicitIds")
                                     (file-transfer-upload-streams :target-type
                                      integer-optional :member-name
                                      "FileTransferUploadStreams")
                                     (load-timeout :target-type
                                      integer-optional :member-name
                                      "LoadTimeout")
                                     (max-file-size :target-type
                                      integer-optional :member-name
                                      "MaxFileSize")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (remove-quotes :target-type
                                      boolean-optional :member-name
                                      "RemoveQuotes")
                                     (replace-invalid-chars :target-type string
                                      :member-name "ReplaceInvalidChars")
                                     (replace-chars :target-type string
                                      :member-name "ReplaceChars")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (server-side-encryption-kms-key-id
                                      :target-type string :member-name
                                      "ServerSideEncryptionKmsKeyId")
                                     (time-format :target-type string
                                      :member-name "TimeFormat")
                                     (trim-blanks :target-type boolean-optional
                                      :member-name "TrimBlanks")
                                     (truncate-columns :target-type
                                      boolean-optional :member-name
                                      "TruncateColumns")
                                     (username :target-type string :member-name
                                      "Username")
                                     (write-buffer-size :target-type
                                      integer-optional :member-name
                                      "WriteBufferSize")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId")
                                     (map-boolean-as-boolean :target-type
                                      boolean-optional :member-name
                                      "MapBooleanAsBoolean"))
                                    (:shape-name "RedshiftSettings"))

(smithy/sdk/shapes:define-input refresh-schemas-message common-lisp:nil
                                ((endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn")
                                 (replication-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationInstanceArn"))
                                (:shape-name "RefreshSchemasMessage"))

(smithy/sdk/shapes:define-output refresh-schemas-response common-lisp:nil
                                 ((refresh-schemas-status :target-type
                                   refresh-schemas-status :member-name
                                   "RefreshSchemasStatus"))
                                 (:shape-name "RefreshSchemasResponse"))

(smithy/sdk/shapes:define-structure refresh-schemas-status common-lisp:nil
                                    ((endpoint-arn :target-type string
                                      :member-name "EndpointArn")
                                     (replication-instance-arn :target-type
                                      string :member-name
                                      "ReplicationInstanceArn")
                                     (status :target-type
                                      refresh-schemas-status-type-value
                                      :member-name "Status")
                                     (last-refresh-date :target-type tstamp
                                      :member-name "LastRefreshDate")
                                     (last-failure-message :target-type string
                                      :member-name "LastFailureMessage"))
                                    (:shape-name "RefreshSchemasStatus"))

(smithy/sdk/shapes:define-enum refresh-schemas-status-type-value
    common-lisp:nil
  (:successful "successful")
  (:failed "failed")
  (:refreshing "refreshing"))

(smithy/sdk/shapes:define-enum release-status-values
    common-lisp:nil
  (:beta "beta")
  (:prod "prod"))

(smithy/sdk/shapes:define-enum reload-option-value
    common-lisp:nil
  (:data-reload "data-reload")
  (:validate-only "validate-only"))

(smithy/sdk/shapes:define-input reload-replication-tables-message
                                common-lisp:nil
                                ((replication-config-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationConfigArn")
                                 (tables-to-reload :target-type
                                  table-list-to-reload :required common-lisp:t
                                  :member-name "TablesToReload")
                                 (reload-option :target-type
                                  reload-option-value :member-name
                                  "ReloadOption"))
                                (:shape-name "ReloadReplicationTablesMessage"))

(smithy/sdk/shapes:define-output reload-replication-tables-response
                                 common-lisp:nil
                                 ((replication-config-arn :target-type string
                                   :member-name "ReplicationConfigArn"))
                                 (:shape-name
                                  "ReloadReplicationTablesResponse"))

(smithy/sdk/shapes:define-input reload-tables-message common-lisp:nil
                                ((replication-task-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationTaskArn")
                                 (tables-to-reload :target-type
                                  table-list-to-reload :required common-lisp:t
                                  :member-name "TablesToReload")
                                 (reload-option :target-type
                                  reload-option-value :member-name
                                  "ReloadOption"))
                                (:shape-name "ReloadTablesMessage"))

(smithy/sdk/shapes:define-output reload-tables-response common-lisp:nil
                                 ((replication-task-arn :target-type string
                                   :member-name "ReplicationTaskArn"))
                                 (:shape-name "ReloadTablesResponse"))

(smithy/sdk/shapes:define-input remove-tags-from-resource-message
                                common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsFromResourceMessage"))

(smithy/sdk/shapes:define-output remove-tags-from-resource-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "RemoveTagsFromResourceResponse"))

(smithy/sdk/shapes:define-structure replication common-lisp:nil
                                    ((replication-config-identifier
                                      :target-type string :member-name
                                      "ReplicationConfigIdentifier")
                                     (replication-config-arn :target-type
                                      string :member-name
                                      "ReplicationConfigArn")
                                     (source-endpoint-arn :target-type string
                                      :member-name "SourceEndpointArn")
                                     (target-endpoint-arn :target-type string
                                      :member-name "TargetEndpointArn")
                                     (replication-type :target-type
                                      migration-type-value :member-name
                                      "ReplicationType")
                                     (status :target-type string :member-name
                                      "Status")
                                     (provision-data :target-type
                                      provision-data :member-name
                                      "ProvisionData")
                                     (premigration-assessment-statuses
                                      :target-type
                                      premigration-assessment-status-list
                                      :member-name
                                      "PremigrationAssessmentStatuses")
                                     (stop-reason :target-type string
                                      :member-name "StopReason")
                                     (failure-messages :target-type string-list
                                      :member-name "FailureMessages")
                                     (replication-stats :target-type
                                      replication-stats :member-name
                                      "ReplicationStats")
                                     (start-replication-type :target-type
                                      string :member-name
                                      "StartReplicationType")
                                     (cdc-start-time :target-type tstamp
                                      :member-name "CdcStartTime")
                                     (cdc-start-position :target-type string
                                      :member-name "CdcStartPosition")
                                     (cdc-stop-position :target-type string
                                      :member-name "CdcStopPosition")
                                     (recovery-checkpoint :target-type string
                                      :member-name "RecoveryCheckpoint")
                                     (replication-create-time :target-type
                                      tstamp :member-name
                                      "ReplicationCreateTime")
                                     (replication-update-time :target-type
                                      tstamp :member-name
                                      "ReplicationUpdateTime")
                                     (replication-last-stop-time :target-type
                                      tstamp :member-name
                                      "ReplicationLastStopTime")
                                     (replication-deprovision-time :target-type
                                      tstamp :member-name
                                      "ReplicationDeprovisionTime"))
                                    (:shape-name "Replication"))

(smithy/sdk/shapes:define-structure replication-config common-lisp:nil
                                    ((replication-config-identifier
                                      :target-type string :member-name
                                      "ReplicationConfigIdentifier")
                                     (replication-config-arn :target-type
                                      string :member-name
                                      "ReplicationConfigArn")
                                     (source-endpoint-arn :target-type string
                                      :member-name "SourceEndpointArn")
                                     (target-endpoint-arn :target-type string
                                      :member-name "TargetEndpointArn")
                                     (replication-type :target-type
                                      migration-type-value :member-name
                                      "ReplicationType")
                                     (compute-config :target-type
                                      compute-config :member-name
                                      "ComputeConfig")
                                     (replication-settings :target-type string
                                      :member-name "ReplicationSettings")
                                     (supplemental-settings :target-type string
                                      :member-name "SupplementalSettings")
                                     (table-mappings :target-type string
                                      :member-name "TableMappings")
                                     (replication-config-create-time
                                      :target-type tstamp :member-name
                                      "ReplicationConfigCreateTime")
                                     (replication-config-update-time
                                      :target-type tstamp :member-name
                                      "ReplicationConfigUpdateTime"))
                                    (:shape-name "ReplicationConfig"))

(smithy/sdk/shapes:define-list replication-config-list :member
                               (replication-config :xml-name
                                "ReplicationConfig"))

(smithy/sdk/shapes:define-enum replication-endpoint-type-value
    common-lisp:nil
  (:source "source")
  (:target "target"))

(smithy/sdk/shapes:define-structure replication-instance common-lisp:nil
                                    ((replication-instance-identifier
                                      :target-type string :member-name
                                      "ReplicationInstanceIdentifier")
                                     (replication-instance-class :target-type
                                      replication-instance-class :member-name
                                      "ReplicationInstanceClass")
                                     (replication-instance-status :target-type
                                      string :member-name
                                      "ReplicationInstanceStatus")
                                     (allocated-storage :target-type integer
                                      :member-name "AllocatedStorage")
                                     (instance-create-time :target-type tstamp
                                      :member-name "InstanceCreateTime")
                                     (vpc-security-groups :target-type
                                      vpc-security-group-membership-list
                                      :member-name "VpcSecurityGroups")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (replication-subnet-group :target-type
                                      replication-subnet-group :member-name
                                      "ReplicationSubnetGroup")
                                     (preferred-maintenance-window :target-type
                                      string :member-name
                                      "PreferredMaintenanceWindow")
                                     (pending-modified-values :target-type
                                      replication-pending-modified-values
                                      :member-name "PendingModifiedValues")
                                     (multi-az :target-type boolean
                                      :member-name "MultiAZ")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (auto-minor-version-upgrade :target-type
                                      boolean :member-name
                                      "AutoMinorVersionUpgrade")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (replication-instance-arn :target-type
                                      string :member-name
                                      "ReplicationInstanceArn")
                                     (replication-instance-public-ip-address
                                      :target-type string :member-name
                                      "ReplicationInstancePublicIpAddress")
                                     (replication-instance-private-ip-address
                                      :target-type string :member-name
                                      "ReplicationInstancePrivateIpAddress")
                                     (replication-instance-public-ip-addresses
                                      :target-type
                                      replication-instance-public-ip-address-list
                                      :member-name
                                      "ReplicationInstancePublicIpAddresses")
                                     (replication-instance-private-ip-addresses
                                      :target-type
                                      replication-instance-private-ip-address-list
                                      :member-name
                                      "ReplicationInstancePrivateIpAddresses")
                                     (replication-instance-ipv6addresses
                                      :target-type
                                      replication-instance-ipv6address-list
                                      :member-name
                                      "ReplicationInstanceIpv6Addresses")
                                     (publicly-accessible :target-type boolean
                                      :member-name "PubliclyAccessible")
                                     (secondary-availability-zone :target-type
                                      string :member-name
                                      "SecondaryAvailabilityZone")
                                     (free-until :target-type tstamp
                                      :member-name "FreeUntil")
                                     (dns-name-servers :target-type string
                                      :member-name "DnsNameServers")
                                     (network-type :target-type string
                                      :member-name "NetworkType")
                                     (kerberos-authentication-settings
                                      :target-type
                                      kerberos-authentication-settings
                                      :member-name
                                      "KerberosAuthenticationSettings"))
                                    (:shape-name "ReplicationInstance"))

(smithy/sdk/shapes:define-type replication-instance-class
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list replication-instance-ipv6address-list :member
                               string)

(smithy/sdk/shapes:define-list replication-instance-list :member
                               (replication-instance :xml-name
                                "ReplicationInstance"))

(smithy/sdk/shapes:define-list replication-instance-private-ip-address-list
                               :member string)

(smithy/sdk/shapes:define-list replication-instance-public-ip-address-list
                               :member string)

(smithy/sdk/shapes:define-structure replication-instance-task-log
                                    common-lisp:nil
                                    ((replication-task-name :target-type string
                                      :member-name "ReplicationTaskName")
                                     (replication-task-arn :target-type string
                                      :member-name "ReplicationTaskArn")
                                     (replication-instance-task-log-size
                                      :target-type long :member-name
                                      "ReplicationInstanceTaskLogSize"))
                                    (:shape-name "ReplicationInstanceTaskLog"))

(smithy/sdk/shapes:define-list replication-instance-task-logs-list :member
                               replication-instance-task-log)

(smithy/sdk/shapes:define-list replication-list :member
                               (replication :xml-name "Replication"))

(smithy/sdk/shapes:define-structure replication-pending-modified-values
                                    common-lisp:nil
                                    ((replication-instance-class :target-type
                                      replication-instance-class :member-name
                                      "ReplicationInstanceClass")
                                     (allocated-storage :target-type
                                      integer-optional :member-name
                                      "AllocatedStorage")
                                     (multi-az :target-type boolean-optional
                                      :member-name "MultiAZ")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion")
                                     (network-type :target-type string
                                      :member-name "NetworkType"))
                                    (:shape-name
                                     "ReplicationPendingModifiedValues"))

(smithy/sdk/shapes:define-structure replication-stats common-lisp:nil
                                    ((full-load-progress-percent :target-type
                                      integer :member-name
                                      "FullLoadProgressPercent")
                                     (elapsed-time-millis :target-type long
                                      :member-name "ElapsedTimeMillis")
                                     (tables-loaded :target-type integer
                                      :member-name "TablesLoaded")
                                     (tables-loading :target-type integer
                                      :member-name "TablesLoading")
                                     (tables-queued :target-type integer
                                      :member-name "TablesQueued")
                                     (tables-errored :target-type integer
                                      :member-name "TablesErrored")
                                     (fresh-start-date :target-type tstamp
                                      :member-name "FreshStartDate")
                                     (start-date :target-type tstamp
                                      :member-name "StartDate")
                                     (stop-date :target-type tstamp
                                      :member-name "StopDate")
                                     (full-load-start-date :target-type tstamp
                                      :member-name "FullLoadStartDate")
                                     (full-load-finish-date :target-type tstamp
                                      :member-name "FullLoadFinishDate"))
                                    (:shape-name "ReplicationStats"))

(smithy/sdk/shapes:define-structure replication-subnet-group common-lisp:nil
                                    ((replication-subnet-group-identifier
                                      :target-type string :member-name
                                      "ReplicationSubnetGroupIdentifier")
                                     (replication-subnet-group-description
                                      :target-type string :member-name
                                      "ReplicationSubnetGroupDescription")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (subnet-group-status :target-type string
                                      :member-name "SubnetGroupStatus")
                                     (subnets :target-type subnet-list
                                      :member-name "Subnets")
                                     (supported-network-types :target-type
                                      string-list :member-name
                                      "SupportedNetworkTypes"))
                                    (:shape-name "ReplicationSubnetGroup"))

(smithy/sdk/shapes:define-error
 replication-subnet-group-does-not-cover-enough-azs common-lisp:nil
 ((message :target-type exception-message :member-name "message"))
 (:shape-name "ReplicationSubnetGroupDoesNotCoverEnoughAZs") (:error-code 400))

(smithy/sdk/shapes:define-list replication-subnet-groups :member
                               (replication-subnet-group :xml-name
                                "ReplicationSubnetGroup"))

(smithy/sdk/shapes:define-list replication-table-statistics-list :member
                               table-statistics)

(smithy/sdk/shapes:define-structure replication-task common-lisp:nil
                                    ((replication-task-identifier :target-type
                                      string :member-name
                                      "ReplicationTaskIdentifier")
                                     (source-endpoint-arn :target-type string
                                      :member-name "SourceEndpointArn")
                                     (target-endpoint-arn :target-type string
                                      :member-name "TargetEndpointArn")
                                     (replication-instance-arn :target-type
                                      string :member-name
                                      "ReplicationInstanceArn")
                                     (migration-type :target-type
                                      migration-type-value :member-name
                                      "MigrationType")
                                     (table-mappings :target-type string
                                      :member-name "TableMappings")
                                     (replication-task-settings :target-type
                                      string :member-name
                                      "ReplicationTaskSettings")
                                     (status :target-type string :member-name
                                      "Status")
                                     (last-failure-message :target-type string
                                      :member-name "LastFailureMessage")
                                     (stop-reason :target-type string
                                      :member-name "StopReason")
                                     (replication-task-creation-date
                                      :target-type tstamp :member-name
                                      "ReplicationTaskCreationDate")
                                     (replication-task-start-date :target-type
                                      tstamp :member-name
                                      "ReplicationTaskStartDate")
                                     (cdc-start-position :target-type string
                                      :member-name "CdcStartPosition")
                                     (cdc-stop-position :target-type string
                                      :member-name "CdcStopPosition")
                                     (recovery-checkpoint :target-type string
                                      :member-name "RecoveryCheckpoint")
                                     (replication-task-arn :target-type string
                                      :member-name "ReplicationTaskArn")
                                     (replication-task-stats :target-type
                                      replication-task-stats :member-name
                                      "ReplicationTaskStats")
                                     (task-data :target-type string
                                      :member-name "TaskData")
                                     (target-replication-instance-arn
                                      :target-type string :member-name
                                      "TargetReplicationInstanceArn"))
                                    (:shape-name "ReplicationTask"))

(smithy/sdk/shapes:define-structure replication-task-assessment-result
                                    common-lisp:nil
                                    ((replication-task-identifier :target-type
                                      string :member-name
                                      "ReplicationTaskIdentifier")
                                     (replication-task-arn :target-type string
                                      :member-name "ReplicationTaskArn")
                                     (replication-task-last-assessment-date
                                      :target-type tstamp :member-name
                                      "ReplicationTaskLastAssessmentDate")
                                     (assessment-status :target-type string
                                      :member-name "AssessmentStatus")
                                     (assessment-results-file :target-type
                                      string :member-name
                                      "AssessmentResultsFile")
                                     (assessment-results :target-type string
                                      :member-name "AssessmentResults")
                                     (s3object-url :target-type secret-string
                                      :member-name "S3ObjectUrl"))
                                    (:shape-name
                                     "ReplicationTaskAssessmentResult"))

(smithy/sdk/shapes:define-list replication-task-assessment-result-list :member
                               (replication-task-assessment-result :xml-name
                                "ReplicationTaskAssessmentResult"))

(smithy/sdk/shapes:define-structure replication-task-assessment-run
                                    common-lisp:nil
                                    ((replication-task-assessment-run-arn
                                      :target-type string :member-name
                                      "ReplicationTaskAssessmentRunArn")
                                     (replication-task-arn :target-type string
                                      :member-name "ReplicationTaskArn")
                                     (status :target-type string :member-name
                                      "Status")
                                     (replication-task-assessment-run-creation-date
                                      :target-type tstamp :member-name
                                      "ReplicationTaskAssessmentRunCreationDate")
                                     (assessment-progress :target-type
                                      replication-task-assessment-run-progress
                                      :member-name "AssessmentProgress")
                                     (last-failure-message :target-type string
                                      :member-name "LastFailureMessage")
                                     (service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (result-location-bucket :target-type
                                      string :member-name
                                      "ResultLocationBucket")
                                     (result-location-folder :target-type
                                      string :member-name
                                      "ResultLocationFolder")
                                     (result-encryption-mode :target-type
                                      string :member-name
                                      "ResultEncryptionMode")
                                     (result-kms-key-arn :target-type string
                                      :member-name "ResultKmsKeyArn")
                                     (assessment-run-name :target-type string
                                      :member-name "AssessmentRunName")
                                     (is-latest-task-assessment-run
                                      :target-type boolean :member-name
                                      "IsLatestTaskAssessmentRun")
                                     (result-statistic :target-type
                                      replication-task-assessment-run-result-statistic
                                      :member-name "ResultStatistic"))
                                    (:shape-name
                                     "ReplicationTaskAssessmentRun"))

(smithy/sdk/shapes:define-list replication-task-assessment-run-list :member
                               replication-task-assessment-run)

(smithy/sdk/shapes:define-structure replication-task-assessment-run-progress
                                    common-lisp:nil
                                    ((individual-assessment-count :target-type
                                      integer :member-name
                                      "IndividualAssessmentCount")
                                     (individual-assessment-completed-count
                                      :target-type integer :member-name
                                      "IndividualAssessmentCompletedCount"))
                                    (:shape-name
                                     "ReplicationTaskAssessmentRunProgress"))

(smithy/sdk/shapes:define-structure
 replication-task-assessment-run-result-statistic common-lisp:nil
 ((passed :target-type integer :member-name "Passed")
  (failed :target-type integer :member-name "Failed")
  (error :target-type integer :member-name "Error")
  (warning :target-type integer :member-name "Warning")
  (cancelled :target-type integer :member-name "Cancelled")
  (skipped :target-type integer :member-name "Skipped"))
 (:shape-name "ReplicationTaskAssessmentRunResultStatistic"))

(smithy/sdk/shapes:define-structure replication-task-individual-assessment
                                    common-lisp:nil
                                    ((replication-task-individual-assessment-arn
                                      :target-type string :member-name
                                      "ReplicationTaskIndividualAssessmentArn")
                                     (replication-task-assessment-run-arn
                                      :target-type string :member-name
                                      "ReplicationTaskAssessmentRunArn")
                                     (individual-assessment-name :target-type
                                      string :member-name
                                      "IndividualAssessmentName")
                                     (status :target-type string :member-name
                                      "Status")
                                     (replication-task-individual-assessment-start-date
                                      :target-type tstamp :member-name
                                      "ReplicationTaskIndividualAssessmentStartDate"))
                                    (:shape-name
                                     "ReplicationTaskIndividualAssessment"))

(smithy/sdk/shapes:define-list replication-task-individual-assessment-list
                               :member replication-task-individual-assessment)

(smithy/sdk/shapes:define-list replication-task-list :member
                               (replication-task :xml-name "ReplicationTask"))

(smithy/sdk/shapes:define-structure replication-task-stats common-lisp:nil
                                    ((full-load-progress-percent :target-type
                                      integer :member-name
                                      "FullLoadProgressPercent")
                                     (elapsed-time-millis :target-type long
                                      :member-name "ElapsedTimeMillis")
                                     (tables-loaded :target-type integer
                                      :member-name "TablesLoaded")
                                     (tables-loading :target-type integer
                                      :member-name "TablesLoading")
                                     (tables-queued :target-type integer
                                      :member-name "TablesQueued")
                                     (tables-errored :target-type integer
                                      :member-name "TablesErrored")
                                     (fresh-start-date :target-type tstamp
                                      :member-name "FreshStartDate")
                                     (start-date :target-type tstamp
                                      :member-name "StartDate")
                                     (stop-date :target-type tstamp
                                      :member-name "StopDate")
                                     (full-load-start-date :target-type tstamp
                                      :member-name "FullLoadStartDate")
                                     (full-load-finish-date :target-type tstamp
                                      :member-name "FullLoadFinishDate"))
                                    (:shape-name "ReplicationTaskStats"))

(smithy/sdk/shapes:define-error resource-already-exists-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-arn :target-type resource-arn
                                  :member-name "resourceArn"))
                                (:shape-name "ResourceAlreadyExistsFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure resource-pending-maintenance-actions
                                    common-lisp:nil
                                    ((resource-identifier :target-type string
                                      :member-name "ResourceIdentifier")
                                     (pending-maintenance-action-details
                                      :target-type
                                      pending-maintenance-action-details
                                      :member-name
                                      "PendingMaintenanceActionDetails"))
                                    (:shape-name
                                     "ResourcePendingMaintenanceActions"))

(smithy/sdk/shapes:define-error resource-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-output run-fleet-advisor-lsa-analysis-response
                                 common-lisp:nil
                                 ((lsa-analysis-id :target-type string
                                   :member-name "LsaAnalysisId")
                                  (status :target-type string :member-name
                                   "Status"))
                                 (:shape-name
                                  "RunFleetAdvisorLsaAnalysisResponse"))

(smithy/sdk/shapes:define-error s3access-denied-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "S3AccessDeniedFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error s3resource-not-found-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "S3ResourceNotFoundFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure s3settings common-lisp:nil
                                    ((service-access-role-arn :target-type
                                      string :member-name
                                      "ServiceAccessRoleArn")
                                     (external-table-definition :target-type
                                      string :member-name
                                      "ExternalTableDefinition")
                                     (csv-row-delimiter :target-type string
                                      :member-name "CsvRowDelimiter")
                                     (csv-delimiter :target-type string
                                      :member-name "CsvDelimiter")
                                     (bucket-folder :target-type string
                                      :member-name "BucketFolder")
                                     (bucket-name :target-type string
                                      :member-name "BucketName")
                                     (compression-type :target-type
                                      compression-type-value :member-name
                                      "CompressionType")
                                     (encryption-mode :target-type
                                      encryption-mode-value :member-name
                                      "EncryptionMode")
                                     (server-side-encryption-kms-key-id
                                      :target-type string :member-name
                                      "ServerSideEncryptionKmsKeyId")
                                     (data-format :target-type
                                      data-format-value :member-name
                                      "DataFormat")
                                     (encoding-type :target-type
                                      encoding-type-value :member-name
                                      "EncodingType")
                                     (dict-page-size-limit :target-type
                                      integer-optional :member-name
                                      "DictPageSizeLimit")
                                     (row-group-length :target-type
                                      integer-optional :member-name
                                      "RowGroupLength")
                                     (data-page-size :target-type
                                      integer-optional :member-name
                                      "DataPageSize")
                                     (parquet-version :target-type
                                      parquet-version-value :member-name
                                      "ParquetVersion")
                                     (enable-statistics :target-type
                                      boolean-optional :member-name
                                      "EnableStatistics")
                                     (include-op-for-full-load :target-type
                                      boolean-optional :member-name
                                      "IncludeOpForFullLoad")
                                     (cdc-inserts-only :target-type
                                      boolean-optional :member-name
                                      "CdcInsertsOnly")
                                     (timestamp-column-name :target-type string
                                      :member-name "TimestampColumnName")
                                     (parquet-timestamp-in-millisecond
                                      :target-type boolean-optional
                                      :member-name
                                      "ParquetTimestampInMillisecond")
                                     (cdc-inserts-and-updates :target-type
                                      boolean-optional :member-name
                                      "CdcInsertsAndUpdates")
                                     (date-partition-enabled :target-type
                                      boolean-optional :member-name
                                      "DatePartitionEnabled")
                                     (date-partition-sequence :target-type
                                      date-partition-sequence-value
                                      :member-name "DatePartitionSequence")
                                     (date-partition-delimiter :target-type
                                      date-partition-delimiter-value
                                      :member-name "DatePartitionDelimiter")
                                     (use-csv-no-sup-value :target-type
                                      boolean-optional :member-name
                                      "UseCsvNoSupValue")
                                     (csv-no-sup-value :target-type string
                                      :member-name "CsvNoSupValue")
                                     (preserve-transactions :target-type
                                      boolean-optional :member-name
                                      "PreserveTransactions")
                                     (cdc-path :target-type string :member-name
                                      "CdcPath")
                                     (use-task-start-time-for-full-load-timestamp
                                      :target-type boolean-optional
                                      :member-name
                                      "UseTaskStartTimeForFullLoadTimestamp")
                                     (canned-acl-for-objects :target-type
                                      canned-acl-for-objects-value :member-name
                                      "CannedAclForObjects")
                                     (add-column-name :target-type
                                      boolean-optional :member-name
                                      "AddColumnName")
                                     (cdc-max-batch-interval :target-type
                                      integer-optional :member-name
                                      "CdcMaxBatchInterval")
                                     (cdc-min-file-size :target-type
                                      integer-optional :member-name
                                      "CdcMinFileSize")
                                     (csv-null-value :target-type string
                                      :member-name "CsvNullValue")
                                     (ignore-header-rows :target-type
                                      integer-optional :member-name
                                      "IgnoreHeaderRows")
                                     (max-file-size :target-type
                                      integer-optional :member-name
                                      "MaxFileSize")
                                     (rfc4180 :target-type boolean-optional
                                      :member-name "Rfc4180")
                                     (date-partition-timezone :target-type
                                      string :member-name
                                      "DatePartitionTimezone")
                                     (add-trailing-padding-character
                                      :target-type boolean-optional
                                      :member-name
                                      "AddTrailingPaddingCharacter")
                                     (expected-bucket-owner :target-type string
                                      :member-name "ExpectedBucketOwner")
                                     (glue-catalog-generation :target-type
                                      boolean-optional :member-name
                                      "GlueCatalogGeneration"))
                                    (:shape-name "S3Settings"))

(smithy/sdk/shapes:define-structure scapplication-attributes common-lisp:nil
                                    ((s3bucket-path :target-type string
                                      :member-name "S3BucketPath")
                                     (s3bucket-role-arn :target-type string
                                      :member-name "S3BucketRoleArn"))
                                    (:shape-name "SCApplicationAttributes"))

(smithy/sdk/shapes:define-error snsinvalid-topic-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSInvalidTopicFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snsno-authorization-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SNSNoAuthorizationFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum safeguard-policy
    common-lisp:nil
  (:rely-on-sql-server-replication-agent "rely-on-sql-server-replication-agent")
  (:exclusive-automatic-truncation "exclusive-automatic-truncation")
  (:shared-automatic-truncation "shared-automatic-truncation"))

(smithy/sdk/shapes:define-structure schema-conversion-request common-lisp:nil
                                    ((status :target-type string :member-name
                                      "Status")
                                     (request-identifier :target-type string
                                      :member-name "RequestIdentifier")
                                     (migration-project-arn :target-type string
                                      :member-name "MigrationProjectArn")
                                     (error :target-type error-details
                                      :member-name "Error")
                                     (export-sql-details :target-type
                                      export-sql-details :member-name
                                      "ExportSqlDetails"))
                                    (:shape-name "SchemaConversionRequest"))

(smithy/sdk/shapes:define-list schema-conversion-request-list :member
                               schema-conversion-request)

(smithy/sdk/shapes:define-list schema-list :member string)

(smithy/sdk/shapes:define-structure schema-response common-lisp:nil
                                    ((code-line-count :target-type
                                      long-optional :member-name
                                      "CodeLineCount")
                                     (code-size :target-type long-optional
                                      :member-name "CodeSize")
                                     (complexity :target-type string
                                      :member-name "Complexity")
                                     (server :target-type
                                      server-short-info-response :member-name
                                      "Server")
                                     (database-instance :target-type
                                      database-short-info-response :member-name
                                      "DatabaseInstance")
                                     (schema-id :target-type string
                                      :member-name "SchemaId")
                                     (schema-name :target-type string
                                      :member-name "SchemaName")
                                     (original-schema :target-type
                                      schema-short-info-response :member-name
                                      "OriginalSchema")
                                     (similarity :target-type double-optional
                                      :member-name "Similarity"))
                                    (:shape-name "SchemaResponse"))

(smithy/sdk/shapes:define-structure schema-short-info-response common-lisp:nil
                                    ((schema-id :target-type string
                                      :member-name "SchemaId")
                                     (schema-name :target-type string
                                      :member-name "SchemaName")
                                     (database-id :target-type string
                                      :member-name "DatabaseId")
                                     (database-name :target-type string
                                      :member-name "DatabaseName")
                                     (database-ip-address :target-type string
                                      :member-name "DatabaseIpAddress"))
                                    (:shape-name "SchemaShortInfoResponse"))

(smithy/sdk/shapes:define-type secret-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-short-info-response common-lisp:nil
                                    ((server-id :target-type string
                                      :member-name "ServerId")
                                     (ip-address :target-type string
                                      :member-name "IpAddress")
                                     (server-name :target-type string
                                      :member-name "ServerName"))
                                    (:shape-name "ServerShortInfoResponse"))

(smithy/sdk/shapes:define-structure source-data-setting common-lisp:nil
                                    ((cdcstart-position :target-type string
                                      :member-name "CDCStartPosition")
                                     (cdcstart-time :target-type
                                      iso8601date-time :member-name
                                      "CDCStartTime")
                                     (cdcstop-time :target-type
                                      iso8601date-time :member-name
                                      "CDCStopTime")
                                     (slot-name :target-type string
                                      :member-name "SlotName"))
                                    (:shape-name "SourceDataSetting"))

(smithy/sdk/shapes:define-list source-data-settings :member source-data-setting)

(smithy/sdk/shapes:define-list source-ids-list :member
                               (string :xml-name "SourceId"))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:replication-instance "replication-instance"))

(smithy/sdk/shapes:define-enum sql-server-authentication-method
    common-lisp:nil
  (:password "password")
  (:kerberos "kerberos"))

(smithy/sdk/shapes:define-enum ssl-security-protocol-value
    common-lisp:nil
  (:plaintext "plaintext")
  (:ssl-encryption "ssl-encryption"))

(smithy/sdk/shapes:define-input start-data-migration-message common-lisp:nil
                                ((data-migration-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DataMigrationIdentifier")
                                 (start-type :target-type
                                  start-replication-migration-type-value
                                  :required common-lisp:t :member-name
                                  "StartType"))
                                (:shape-name "StartDataMigrationMessage"))

(smithy/sdk/shapes:define-output start-data-migration-response common-lisp:nil
                                 ((data-migration :target-type data-migration
                                   :member-name "DataMigration"))
                                 (:shape-name "StartDataMigrationResponse"))

(smithy/sdk/shapes:define-input start-extension-pack-association-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier"))
                                (:shape-name
                                 "StartExtensionPackAssociationMessage"))

(smithy/sdk/shapes:define-output start-extension-pack-association-response
                                 common-lisp:nil
                                 ((request-identifier :target-type string
                                   :member-name "RequestIdentifier"))
                                 (:shape-name
                                  "StartExtensionPackAssociationResponse"))

(smithy/sdk/shapes:define-input start-metadata-model-assessment-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (selection-rules :target-type string :required
                                  common-lisp:t :member-name "SelectionRules"))
                                (:shape-name
                                 "StartMetadataModelAssessmentMessage"))

(smithy/sdk/shapes:define-output start-metadata-model-assessment-response
                                 common-lisp:nil
                                 ((request-identifier :target-type string
                                   :member-name "RequestIdentifier"))
                                 (:shape-name
                                  "StartMetadataModelAssessmentResponse"))

(smithy/sdk/shapes:define-input start-metadata-model-conversion-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (selection-rules :target-type string :required
                                  common-lisp:t :member-name "SelectionRules"))
                                (:shape-name
                                 "StartMetadataModelConversionMessage"))

(smithy/sdk/shapes:define-output start-metadata-model-conversion-response
                                 common-lisp:nil
                                 ((request-identifier :target-type string
                                   :member-name "RequestIdentifier"))
                                 (:shape-name
                                  "StartMetadataModelConversionResponse"))

(smithy/sdk/shapes:define-input start-metadata-model-export-as-script-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (selection-rules :target-type string :required
                                  common-lisp:t :member-name "SelectionRules")
                                 (origin :target-type origin-type-value
                                  :required common-lisp:t :member-name
                                  "Origin")
                                 (file-name :target-type string :member-name
                                  "FileName"))
                                (:shape-name
                                 "StartMetadataModelExportAsScriptMessage"))

(smithy/sdk/shapes:define-output start-metadata-model-export-as-script-response
                                 common-lisp:nil
                                 ((request-identifier :target-type string
                                   :member-name "RequestIdentifier"))
                                 (:shape-name
                                  "StartMetadataModelExportAsScriptResponse"))

(smithy/sdk/shapes:define-input start-metadata-model-export-to-target-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (selection-rules :target-type string :required
                                  common-lisp:t :member-name "SelectionRules")
                                 (overwrite-extension-pack :target-type
                                  boolean-optional :member-name
                                  "OverwriteExtensionPack"))
                                (:shape-name
                                 "StartMetadataModelExportToTargetMessage"))

(smithy/sdk/shapes:define-output start-metadata-model-export-to-target-response
                                 common-lisp:nil
                                 ((request-identifier :target-type string
                                   :member-name "RequestIdentifier"))
                                 (:shape-name
                                  "StartMetadataModelExportToTargetResponse"))

(smithy/sdk/shapes:define-input start-metadata-model-import-message
                                common-lisp:nil
                                ((migration-project-identifier :target-type
                                  migration-project-identifier :required
                                  common-lisp:t :member-name
                                  "MigrationProjectIdentifier")
                                 (selection-rules :target-type string :required
                                  common-lisp:t :member-name "SelectionRules")
                                 (origin :target-type origin-type-value
                                  :required common-lisp:t :member-name
                                  "Origin")
                                 (refresh :target-type boolean :member-name
                                  "Refresh"))
                                (:shape-name "StartMetadataModelImportMessage"))

(smithy/sdk/shapes:define-output start-metadata-model-import-response
                                 common-lisp:nil
                                 ((request-identifier :target-type string
                                   :member-name "RequestIdentifier"))
                                 (:shape-name
                                  "StartMetadataModelImportResponse"))

(smithy/sdk/shapes:define-input start-recommendations-request common-lisp:nil
                                ((database-id :target-type string :required
                                  common-lisp:t :member-name "DatabaseId")
                                 (settings :target-type recommendation-settings
                                  :required common-lisp:t :member-name
                                  "Settings"))
                                (:shape-name "StartRecommendationsRequest"))

(smithy/sdk/shapes:define-structure start-recommendations-request-entry
                                    common-lisp:nil
                                    ((database-id :target-type string :required
                                      common-lisp:t :member-name "DatabaseId")
                                     (settings :target-type
                                      recommendation-settings :required
                                      common-lisp:t :member-name "Settings"))
                                    (:shape-name
                                     "StartRecommendationsRequestEntry"))

(smithy/sdk/shapes:define-list start-recommendations-request-entry-list :member
                               start-recommendations-request-entry)

(smithy/sdk/shapes:define-input start-replication-message common-lisp:nil
                                ((replication-config-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationConfigArn")
                                 (start-replication-type :target-type string
                                  :required common-lisp:t :member-name
                                  "StartReplicationType")
                                 (premigration-assessment-settings :target-type
                                  string :member-name
                                  "PremigrationAssessmentSettings")
                                 (cdc-start-time :target-type tstamp
                                  :member-name "CdcStartTime")
                                 (cdc-start-position :target-type string
                                  :member-name "CdcStartPosition")
                                 (cdc-stop-position :target-type string
                                  :member-name "CdcStopPosition"))
                                (:shape-name "StartReplicationMessage"))

(smithy/sdk/shapes:define-enum start-replication-migration-type-value
    common-lisp:nil
  (:reload-target "reload-target")
  (:resume-processing "resume-processing")
  (:start-replication "start-replication"))

(smithy/sdk/shapes:define-output start-replication-response common-lisp:nil
                                 ((replication :target-type replication
                                   :member-name "Replication"))
                                 (:shape-name "StartReplicationResponse"))

(smithy/sdk/shapes:define-input start-replication-task-assessment-message
                                common-lisp:nil
                                ((replication-task-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationTaskArn"))
                                (:shape-name
                                 "StartReplicationTaskAssessmentMessage"))

(smithy/sdk/shapes:define-output start-replication-task-assessment-response
                                 common-lisp:nil
                                 ((replication-task :target-type
                                   replication-task :member-name
                                   "ReplicationTask"))
                                 (:shape-name
                                  "StartReplicationTaskAssessmentResponse"))

(smithy/sdk/shapes:define-input start-replication-task-assessment-run-message
                                common-lisp:nil
                                ((replication-task-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationTaskArn")
                                 (service-access-role-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ServiceAccessRoleArn")
                                 (result-location-bucket :target-type string
                                  :required common-lisp:t :member-name
                                  "ResultLocationBucket")
                                 (result-location-folder :target-type string
                                  :member-name "ResultLocationFolder")
                                 (result-encryption-mode :target-type string
                                  :member-name "ResultEncryptionMode")
                                 (result-kms-key-arn :target-type string
                                  :member-name "ResultKmsKeyArn")
                                 (assessment-run-name :target-type string
                                  :required common-lisp:t :member-name
                                  "AssessmentRunName")
                                 (include-only :target-type include-test-list
                                  :member-name "IncludeOnly")
                                 (exclude :target-type exclude-test-list
                                  :member-name "Exclude")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "StartReplicationTaskAssessmentRunMessage"))

(smithy/sdk/shapes:define-output start-replication-task-assessment-run-response
                                 common-lisp:nil
                                 ((replication-task-assessment-run :target-type
                                   replication-task-assessment-run :member-name
                                   "ReplicationTaskAssessmentRun"))
                                 (:shape-name
                                  "StartReplicationTaskAssessmentRunResponse"))

(smithy/sdk/shapes:define-input start-replication-task-message common-lisp:nil
                                ((replication-task-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationTaskArn")
                                 (start-replication-task-type :target-type
                                  start-replication-task-type-value :required
                                  common-lisp:t :member-name
                                  "StartReplicationTaskType")
                                 (cdc-start-time :target-type tstamp
                                  :member-name "CdcStartTime")
                                 (cdc-start-position :target-type string
                                  :member-name "CdcStartPosition")
                                 (cdc-stop-position :target-type string
                                  :member-name "CdcStopPosition"))
                                (:shape-name "StartReplicationTaskMessage"))

(smithy/sdk/shapes:define-output start-replication-task-response
                                 common-lisp:nil
                                 ((replication-task :target-type
                                   replication-task :member-name
                                   "ReplicationTask"))
                                 (:shape-name "StartReplicationTaskResponse"))

(smithy/sdk/shapes:define-enum start-replication-task-type-value
    common-lisp:nil
  (:start-replication "start-replication")
  (:resume-processing "resume-processing")
  (:reload-target "reload-target"))

(smithy/sdk/shapes:define-input stop-data-migration-message common-lisp:nil
                                ((data-migration-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "DataMigrationIdentifier"))
                                (:shape-name "StopDataMigrationMessage"))

(smithy/sdk/shapes:define-output stop-data-migration-response common-lisp:nil
                                 ((data-migration :target-type data-migration
                                   :member-name "DataMigration"))
                                 (:shape-name "StopDataMigrationResponse"))

(smithy/sdk/shapes:define-input stop-replication-message common-lisp:nil
                                ((replication-config-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationConfigArn"))
                                (:shape-name "StopReplicationMessage"))

(smithy/sdk/shapes:define-output stop-replication-response common-lisp:nil
                                 ((replication :target-type replication
                                   :member-name "Replication"))
                                 (:shape-name "StopReplicationResponse"))

(smithy/sdk/shapes:define-input stop-replication-task-message common-lisp:nil
                                ((replication-task-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationTaskArn"))
                                (:shape-name "StopReplicationTaskMessage"))

(smithy/sdk/shapes:define-output stop-replication-task-response common-lisp:nil
                                 ((replication-task :target-type
                                   replication-task :member-name
                                   "ReplicationTask"))
                                 (:shape-name "StopReplicationTaskResponse"))

(smithy/sdk/shapes:define-error storage-quota-exceeded-fault common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "StorageQuotaExceededFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-structure subnet common-lisp:nil
                                    ((subnet-identifier :target-type string
                                      :member-name "SubnetIdentifier")
                                     (subnet-availability-zone :target-type
                                      availability-zone :member-name
                                      "SubnetAvailabilityZone")
                                     (subnet-status :target-type string
                                      :member-name "SubnetStatus"))
                                    (:shape-name "Subnet"))

(smithy/sdk/shapes:define-error subnet-already-in-use common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SubnetAlreadyInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-list subnet-identifier-list :member
                               (string :xml-name "SubnetIdentifier"))

(smithy/sdk/shapes:define-list subnet-list :member (subnet :xml-name "Subnet"))

(smithy/sdk/shapes:define-structure supported-endpoint-type common-lisp:nil
                                    ((engine-name :target-type string
                                      :member-name "EngineName")
                                     (supports-cdc :target-type boolean
                                      :member-name "SupportsCDC")
                                     (endpoint-type :target-type
                                      replication-endpoint-type-value
                                      :member-name "EndpointType")
                                     (replication-instance-engine-minimum-version
                                      :target-type string :member-name
                                      "ReplicationInstanceEngineMinimumVersion")
                                     (engine-display-name :target-type string
                                      :member-name "EngineDisplayName"))
                                    (:shape-name "SupportedEndpointType"))

(smithy/sdk/shapes:define-list supported-endpoint-type-list :member
                               (supported-endpoint-type :xml-name
                                "SupportedEndpointType"))

(smithy/sdk/shapes:define-structure sybase-settings common-lisp:nil
                                    ((database-name :target-type string
                                      :member-name "DatabaseName")
                                     (password :target-type secret-string
                                      :member-name "Password")
                                     (port :target-type integer-optional
                                      :member-name "Port")
                                     (server-name :target-type string
                                      :member-name "ServerName")
                                     (username :target-type string :member-name
                                      "Username")
                                     (secrets-manager-access-role-arn
                                      :target-type string :member-name
                                      "SecretsManagerAccessRoleArn")
                                     (secrets-manager-secret-id :target-type
                                      string :member-name
                                      "SecretsManagerSecretId"))
                                    (:shape-name "SybaseSettings"))

(smithy/sdk/shapes:define-type tstamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list table-list-to-reload :member table-to-reload)

(smithy/sdk/shapes:define-enum table-preparation-mode
    common-lisp:nil
  (:do-nothing "do-nothing")
  (:truncate "truncate")
  (:drop-tables-on-target "drop-tables-on-target"))

(smithy/sdk/shapes:define-structure table-statistics common-lisp:nil
                                    ((schema-name :target-type string
                                      :member-name "SchemaName")
                                     (table-name :target-type string
                                      :member-name "TableName")
                                     (inserts :target-type long :member-name
                                      "Inserts")
                                     (deletes :target-type long :member-name
                                      "Deletes")
                                     (updates :target-type long :member-name
                                      "Updates")
                                     (ddls :target-type long :member-name
                                      "Ddls")
                                     (applied-inserts :target-type
                                      long-optional :member-name
                                      "AppliedInserts")
                                     (applied-deletes :target-type
                                      long-optional :member-name
                                      "AppliedDeletes")
                                     (applied-updates :target-type
                                      long-optional :member-name
                                      "AppliedUpdates")
                                     (applied-ddls :target-type long-optional
                                      :member-name "AppliedDdls")
                                     (full-load-rows :target-type long
                                      :member-name "FullLoadRows")
                                     (full-load-condtnl-chk-failed-rows
                                      :target-type long :member-name
                                      "FullLoadCondtnlChkFailedRows")
                                     (full-load-error-rows :target-type long
                                      :member-name "FullLoadErrorRows")
                                     (full-load-start-time :target-type tstamp
                                      :member-name "FullLoadStartTime")
                                     (full-load-end-time :target-type tstamp
                                      :member-name "FullLoadEndTime")
                                     (full-load-reloaded :target-type
                                      boolean-optional :member-name
                                      "FullLoadReloaded")
                                     (last-update-time :target-type tstamp
                                      :member-name "LastUpdateTime")
                                     (table-state :target-type string
                                      :member-name "TableState")
                                     (validation-pending-records :target-type
                                      long :member-name
                                      "ValidationPendingRecords")
                                     (validation-failed-records :target-type
                                      long :member-name
                                      "ValidationFailedRecords")
                                     (validation-suspended-records :target-type
                                      long :member-name
                                      "ValidationSuspendedRecords")
                                     (validation-state :target-type string
                                      :member-name "ValidationState")
                                     (validation-state-details :target-type
                                      string :member-name
                                      "ValidationStateDetails")
                                     (resync-state :target-type string
                                      :member-name "ResyncState")
                                     (resync-rows-attempted :target-type
                                      long-optional :member-name
                                      "ResyncRowsAttempted")
                                     (resync-rows-succeeded :target-type
                                      long-optional :member-name
                                      "ResyncRowsSucceeded")
                                     (resync-rows-failed :target-type
                                      long-optional :member-name
                                      "ResyncRowsFailed")
                                     (resync-progress :target-type
                                      double-optional :member-name
                                      "ResyncProgress"))
                                    (:shape-name "TableStatistics"))

(smithy/sdk/shapes:define-list table-statistics-list :member table-statistics)

(smithy/sdk/shapes:define-structure table-to-reload common-lisp:nil
                                    ((schema-name :target-type string :required
                                      common-lisp:t :member-name "SchemaName")
                                     (table-name :target-type string :required
                                      common-lisp:t :member-name "TableName"))
                                    (:shape-name "TableToReload"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value")
                                     (resource-arn :target-type string
                                      :member-name "ResourceArn"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-list :member (tag :xml-name "Tag"))

(smithy/sdk/shapes:define-structure target-data-setting common-lisp:nil
                                    ((table-preparation-mode :target-type
                                      table-preparation-mode :member-name
                                      "TablePreparationMode"))
                                    (:shape-name "TargetDataSetting"))

(smithy/sdk/shapes:define-list target-data-settings :member target-data-setting)

(smithy/sdk/shapes:define-enum target-db-type
    common-lisp:nil
  (:specific-database "specific-database")
  (:multiple-databases "multiple-databases"))

(smithy/sdk/shapes:define-input test-connection-message common-lisp:nil
                                ((replication-instance-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ReplicationInstanceArn")
                                 (endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn"))
                                (:shape-name "TestConnectionMessage"))

(smithy/sdk/shapes:define-output test-connection-response common-lisp:nil
                                 ((connection :target-type connection
                                   :member-name "Connection"))
                                 (:shape-name "TestConnectionResponse"))

(smithy/sdk/shapes:define-structure timestream-settings common-lisp:nil
                                    ((database-name :target-type string
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (memory-duration :target-type
                                      integer-optional :required common-lisp:t
                                      :member-name "MemoryDuration")
                                     (magnetic-duration :target-type
                                      integer-optional :required common-lisp:t
                                      :member-name "MagneticDuration")
                                     (cdc-inserts-and-updates :target-type
                                      boolean-optional :member-name
                                      "CdcInsertsAndUpdates")
                                     (enable-magnetic-store-writes :target-type
                                      boolean-optional :member-name
                                      "EnableMagneticStoreWrites"))
                                    (:shape-name "TimestreamSettings"))

(smithy/sdk/shapes:define-enum tlog-access-mode
    common-lisp:nil
  (:backup-only "BackupOnly")
  (:prefer-backup "PreferBackup")
  (:prefer-tlog "PreferTlog")
  (:tlog-only "TlogOnly"))

(smithy/sdk/shapes:define-input update-subscriptions-to-event-bridge-message
                                common-lisp:nil
                                ((force-move :target-type boolean-optional
                                  :member-name "ForceMove"))
                                (:shape-name
                                 "UpdateSubscriptionsToEventBridgeMessage"))

(smithy/sdk/shapes:define-output update-subscriptions-to-event-bridge-response
                                 common-lisp:nil
                                 ((result :target-type string :member-name
                                   "Result"))
                                 (:shape-name
                                  "UpdateSubscriptionsToEventBridgeResponse"))

(smithy/sdk/shapes:define-error upgrade-dependency-failure-fault
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UpgradeDependencyFailureFault")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum version-status
    common-lisp:nil
  (:up-to-date "UP_TO_DATE")
  (:outdated "OUTDATED")
  (:unsupported "UNSUPPORTED"))

(smithy/sdk/shapes:define-list vpc-security-group-id-list :member
                               (string :xml-name "VpcSecurityGroupId"))

(smithy/sdk/shapes:define-structure vpc-security-group-membership
                                    common-lisp:nil
                                    ((vpc-security-group-id :target-type string
                                      :member-name "VpcSecurityGroupId")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "VpcSecurityGroupMembership"))

(smithy/sdk/shapes:define-list vpc-security-group-membership-list :member
                               (vpc-security-group-membership :xml-name
                                "VpcSecurityGroupMembership"))

(smithy/sdk/operation:define-operation add-tags-to-resource :shape-name
                                       "AddTagsToResource" :input
                                       add-tags-to-resource-message :output
                                       add-tags-to-resource-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation apply-pending-maintenance-action
                                       :shape-name
                                       "ApplyPendingMaintenanceAction" :input
                                       apply-pending-maintenance-action-message
                                       :output
                                       apply-pending-maintenance-action-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation batch-start-recommendations :shape-name
                                       "BatchStartRecommendations" :input
                                       batch-start-recommendations-request
                                       :output
                                       batch-start-recommendations-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation cancel-replication-task-assessment-run
                                       :shape-name
                                       "CancelReplicationTaskAssessmentRun"
                                       :input
                                       cancel-replication-task-assessment-run-message
                                       :output
                                       cancel-replication-task-assessment-run-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation create-data-migration :shape-name
                                       "CreateDataMigration" :input
                                       create-data-migration-message :output
                                       create-data-migration-response :errors
                                       (failed-dependency-fault
                                        invalid-operation-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-data-provider :shape-name
                                       "CreateDataProvider" :input
                                       create-data-provider-message :output
                                       create-data-provider-response :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        resource-already-exists-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-endpoint :shape-name
                                       "CreateEndpoint" :input
                                       create-endpoint-message :output
                                       create-endpoint-response :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault))

(smithy/sdk/operation:define-operation create-event-subscription :shape-name
                                       "CreateEventSubscription" :input
                                       create-event-subscription-message
                                       :output
                                       create-event-subscription-response
                                       :errors
                                       (kmsaccess-denied-fault
                                        kmsdisabled-fault
                                        kmsinvalid-state-fault
                                        kmsnot-found-fault kmsthrottling-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        snsinvalid-topic-fault
                                        snsno-authorization-fault))

(smithy/sdk/operation:define-operation create-fleet-advisor-collector
                                       :shape-name
                                       "CreateFleetAdvisorCollector" :input
                                       create-fleet-advisor-collector-request
                                       :output
                                       create-fleet-advisor-collector-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation create-instance-profile :shape-name
                                       "CreateInstanceProfile" :input
                                       create-instance-profile-message :output
                                       create-instance-profile-response :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation create-migration-project :shape-name
                                       "CreateMigrationProject" :input
                                       create-migration-project-message :output
                                       create-migration-project-response
                                       :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation create-replication-config :shape-name
                                       "CreateReplicationConfig" :input
                                       create-replication-config-message
                                       :output
                                       create-replication-config-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        invalid-subnet
                                        kmskey-not-accessible-fault
                                        replication-subnet-group-does-not-cover-enough-azs
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-replication-instance :shape-name
                                       "CreateReplicationInstance" :input
                                       create-replication-instance-message
                                       :output
                                       create-replication-instance-response
                                       :errors
                                       (access-denied-fault
                                        insufficient-resource-capacity-fault
                                        invalid-resource-state-fault
                                        invalid-subnet
                                        kmskey-not-accessible-fault
                                        replication-subnet-group-does-not-cover-enough-azs
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        storage-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-replication-subnet-group
                                       :shape-name
                                       "CreateReplicationSubnetGroup" :input
                                       create-replication-subnet-group-message
                                       :output
                                       create-replication-subnet-group-response
                                       :errors
                                       (access-denied-fault invalid-subnet
                                        replication-subnet-group-does-not-cover-enough-azs
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation create-replication-task :shape-name
                                       "CreateReplicationTask" :input
                                       create-replication-task-message :output
                                       create-replication-task-response :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation delete-certificate :shape-name
                                       "DeleteCertificate" :input
                                       delete-certificate-message :output
                                       delete-certificate-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-connection :shape-name
                                       "DeleteConnection" :input
                                       delete-connection-message :output
                                       delete-connection-response :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-data-migration :shape-name
                                       "DeleteDataMigration" :input
                                       delete-data-migration-message :output
                                       delete-data-migration-response :errors
                                       (failed-dependency-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-data-provider :shape-name
                                       "DeleteDataProvider" :input
                                       delete-data-provider-message :output
                                       delete-data-provider-response :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-endpoint :shape-name
                                       "DeleteEndpoint" :input
                                       delete-endpoint-message :output
                                       delete-endpoint-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-event-subscription :shape-name
                                       "DeleteEventSubscription" :input
                                       delete-event-subscription-message
                                       :output
                                       delete-event-subscription-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-fleet-advisor-collector
                                       :shape-name
                                       "DeleteFleetAdvisorCollector" :input
                                       delete-collector-request :output
                                       common-lisp:null :errors
                                       (access-denied-fault
                                        collector-not-found-fault
                                        invalid-resource-state-fault))

(smithy/sdk/operation:define-operation delete-fleet-advisor-databases
                                       :shape-name
                                       "DeleteFleetAdvisorDatabases" :input
                                       delete-fleet-advisor-databases-request
                                       :output
                                       delete-fleet-advisor-databases-response
                                       :errors
                                       (access-denied-fault
                                        invalid-operation-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-instance-profile :shape-name
                                       "DeleteInstanceProfile" :input
                                       delete-instance-profile-message :output
                                       delete-instance-profile-response :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-migration-project :shape-name
                                       "DeleteMigrationProject" :input
                                       delete-migration-project-message :output
                                       delete-migration-project-response
                                       :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-replication-config :shape-name
                                       "DeleteReplicationConfig" :input
                                       delete-replication-config-message
                                       :output
                                       delete-replication-config-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-replication-instance :shape-name
                                       "DeleteReplicationInstance" :input
                                       delete-replication-instance-message
                                       :output
                                       delete-replication-instance-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-replication-subnet-group
                                       :shape-name
                                       "DeleteReplicationSubnetGroup" :input
                                       delete-replication-subnet-group-message
                                       :output
                                       delete-replication-subnet-group-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-replication-task :shape-name
                                       "DeleteReplicationTask" :input
                                       delete-replication-task-message :output
                                       delete-replication-task-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation delete-replication-task-assessment-run
                                       :shape-name
                                       "DeleteReplicationTaskAssessmentRun"
                                       :input
                                       delete-replication-task-assessment-run-message
                                       :output
                                       delete-replication-task-assessment-run-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-account-attributes :shape-name
                                       "DescribeAccountAttributes" :input
                                       describe-account-attributes-message
                                       :output
                                       describe-account-attributes-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation
 describe-applicable-individual-assessments :shape-name
 "DescribeApplicableIndividualAssessments" :input
 describe-applicable-individual-assessments-message :output
 describe-applicable-individual-assessments-response :errors
 (access-denied-fault invalid-resource-state-fault resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-certificates :shape-name
                                       "DescribeCertificates" :input
                                       describe-certificates-message :output
                                       describe-certificates-response :errors
                                       (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-connections :shape-name
                                       "DescribeConnections" :input
                                       describe-connections-message :output
                                       describe-connections-response :errors
                                       (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-conversion-configuration
                                       :shape-name
                                       "DescribeConversionConfiguration" :input
                                       describe-conversion-configuration-message
                                       :output
                                       describe-conversion-configuration-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-data-migrations :shape-name
                                       "DescribeDataMigrations" :input
                                       describe-data-migrations-message :output
                                       describe-data-migrations-response
                                       :errors
                                       (failed-dependency-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-data-providers :shape-name
                                       "DescribeDataProviders" :input
                                       describe-data-providers-message :output
                                       describe-data-providers-response :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-endpoint-settings :shape-name
                                       "DescribeEndpointSettings" :input
                                       describe-endpoint-settings-message
                                       :output
                                       describe-endpoint-settings-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-endpoint-types :shape-name
                                       "DescribeEndpointTypes" :input
                                       describe-endpoint-types-message :output
                                       describe-endpoint-types-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-endpoints :shape-name
                                       "DescribeEndpoints" :input
                                       describe-endpoints-message :output
                                       describe-endpoints-response :errors
                                       (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-engine-versions :shape-name
                                       "DescribeEngineVersions" :input
                                       describe-engine-versions-message :output
                                       describe-engine-versions-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-event-categories :shape-name
                                       "DescribeEventCategories" :input
                                       describe-event-categories-message
                                       :output
                                       describe-event-categories-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-event-subscriptions :shape-name
                                       "DescribeEventSubscriptions" :input
                                       describe-event-subscriptions-message
                                       :output
                                       describe-event-subscriptions-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-events :shape-name
                                       "DescribeEvents" :input
                                       describe-events-message :output
                                       describe-events-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-extension-pack-associations
                                       :shape-name
                                       "DescribeExtensionPackAssociations"
                                       :input
                                       describe-extension-pack-associations-message
                                       :output
                                       describe-extension-pack-associations-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-fleet-advisor-collectors
                                       :shape-name
                                       "DescribeFleetAdvisorCollectors" :input
                                       describe-fleet-advisor-collectors-request
                                       :output
                                       describe-fleet-advisor-collectors-response
                                       :errors (invalid-resource-state-fault))

(smithy/sdk/operation:define-operation describe-fleet-advisor-databases
                                       :shape-name
                                       "DescribeFleetAdvisorDatabases" :input
                                       describe-fleet-advisor-databases-request
                                       :output
                                       describe-fleet-advisor-databases-response
                                       :errors (invalid-resource-state-fault))

(smithy/sdk/operation:define-operation describe-fleet-advisor-lsa-analysis
                                       :shape-name
                                       "DescribeFleetAdvisorLsaAnalysis" :input
                                       describe-fleet-advisor-lsa-analysis-request
                                       :output
                                       describe-fleet-advisor-lsa-analysis-response
                                       :errors (invalid-resource-state-fault))

(smithy/sdk/operation:define-operation
 describe-fleet-advisor-schema-object-summary :shape-name
 "DescribeFleetAdvisorSchemaObjectSummary" :input
 describe-fleet-advisor-schema-object-summary-request :output
 describe-fleet-advisor-schema-object-summary-response :errors
 (invalid-resource-state-fault))

(smithy/sdk/operation:define-operation describe-fleet-advisor-schemas
                                       :shape-name
                                       "DescribeFleetAdvisorSchemas" :input
                                       describe-fleet-advisor-schemas-request
                                       :output
                                       describe-fleet-advisor-schemas-response
                                       :errors (invalid-resource-state-fault))

(smithy/sdk/operation:define-operation describe-instance-profiles :shape-name
                                       "DescribeInstanceProfiles" :input
                                       describe-instance-profiles-message
                                       :output
                                       describe-instance-profiles-response
                                       :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-metadata-model-assessments
                                       :shape-name
                                       "DescribeMetadataModelAssessments"
                                       :input
                                       describe-metadata-model-assessments-message
                                       :output
                                       describe-metadata-model-assessments-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-metadata-model-conversions
                                       :shape-name
                                       "DescribeMetadataModelConversions"
                                       :input
                                       describe-metadata-model-conversions-message
                                       :output
                                       describe-metadata-model-conversions-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation
 describe-metadata-model-exports-as-script :shape-name
 "DescribeMetadataModelExportsAsScript" :input
 describe-metadata-model-exports-as-script-message :output
 describe-metadata-model-exports-as-script-response :errors
 (resource-not-found-fault))

(smithy/sdk/operation:define-operation
 describe-metadata-model-exports-to-target :shape-name
 "DescribeMetadataModelExportsToTarget" :input
 describe-metadata-model-exports-to-target-message :output
 describe-metadata-model-exports-to-target-response :errors
 (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-metadata-model-imports
                                       :shape-name
                                       "DescribeMetadataModelImports" :input
                                       describe-metadata-model-imports-message
                                       :output
                                       describe-metadata-model-imports-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-migration-projects :shape-name
                                       "DescribeMigrationProjects" :input
                                       describe-migration-projects-message
                                       :output
                                       describe-migration-projects-response
                                       :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-orderable-replication-instances
                                       :shape-name
                                       "DescribeOrderableReplicationInstances"
                                       :input
                                       describe-orderable-replication-instances-message
                                       :output
                                       describe-orderable-replication-instances-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-pending-maintenance-actions
                                       :shape-name
                                       "DescribePendingMaintenanceActions"
                                       :input
                                       describe-pending-maintenance-actions-message
                                       :output
                                       describe-pending-maintenance-actions-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-recommendation-limitations
                                       :shape-name
                                       "DescribeRecommendationLimitations"
                                       :input
                                       describe-recommendation-limitations-request
                                       :output
                                       describe-recommendation-limitations-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault))

(smithy/sdk/operation:define-operation describe-recommendations :shape-name
                                       "DescribeRecommendations" :input
                                       describe-recommendations-request :output
                                       describe-recommendations-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault))

(smithy/sdk/operation:define-operation describe-refresh-schemas-status
                                       :shape-name
                                       "DescribeRefreshSchemasStatus" :input
                                       describe-refresh-schemas-status-message
                                       :output
                                       describe-refresh-schemas-status-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-replication-configs :shape-name
                                       "DescribeReplicationConfigs" :input
                                       describe-replication-configs-message
                                       :output
                                       describe-replication-configs-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-replication-instance-task-logs
                                       :shape-name
                                       "DescribeReplicationInstanceTaskLogs"
                                       :input
                                       describe-replication-instance-task-logs-message
                                       :output
                                       describe-replication-instance-task-logs-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-replication-instances
                                       :shape-name
                                       "DescribeReplicationInstances" :input
                                       describe-replication-instances-message
                                       :output
                                       describe-replication-instances-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-replication-subnet-groups
                                       :shape-name
                                       "DescribeReplicationSubnetGroups" :input
                                       describe-replication-subnet-groups-message
                                       :output
                                       describe-replication-subnet-groups-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-replication-table-statistics
                                       :shape-name
                                       "DescribeReplicationTableStatistics"
                                       :input
                                       describe-replication-table-statistics-message
                                       :output
                                       describe-replication-table-statistics-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation
 describe-replication-task-assessment-results :shape-name
 "DescribeReplicationTaskAssessmentResults" :input
 describe-replication-task-assessment-results-message :output
 describe-replication-task-assessment-results-response :errors
 (resource-not-found-fault))

(smithy/sdk/operation:define-operation
 describe-replication-task-assessment-runs :shape-name
 "DescribeReplicationTaskAssessmentRuns" :input
 describe-replication-task-assessment-runs-message :output
 describe-replication-task-assessment-runs-response :errors
 (resource-not-found-fault))

(smithy/sdk/operation:define-operation
 describe-replication-task-individual-assessments :shape-name
 "DescribeReplicationTaskIndividualAssessments" :input
 describe-replication-task-individual-assessments-message :output
 describe-replication-task-individual-assessments-response :errors
 (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-replication-tasks :shape-name
                                       "DescribeReplicationTasks" :input
                                       describe-replication-tasks-message
                                       :output
                                       describe-replication-tasks-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-replications :shape-name
                                       "DescribeReplications" :input
                                       describe-replications-message :output
                                       describe-replications-response :errors
                                       (resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-schemas :shape-name
                                       "DescribeSchemas" :input
                                       describe-schemas-message :output
                                       describe-schemas-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation describe-table-statistics :shape-name
                                       "DescribeTableStatistics" :input
                                       describe-table-statistics-message
                                       :output
                                       describe-table-statistics-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation export-metadata-model-assessment
                                       :shape-name
                                       "ExportMetadataModelAssessment" :input
                                       export-metadata-model-assessment-message
                                       :output
                                       export-metadata-model-assessment-response
                                       :errors (resource-not-found-fault))

(smithy/sdk/operation:define-operation import-certificate :shape-name
                                       "ImportCertificate" :input
                                       import-certificate-message :output
                                       import-certificate-response :errors
                                       (invalid-certificate-fault
                                        resource-already-exists-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-message :output
                                       list-tags-for-resource-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation modify-conversion-configuration
                                       :shape-name
                                       "ModifyConversionConfiguration" :input
                                       modify-conversion-configuration-message
                                       :output
                                       modify-conversion-configuration-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation modify-data-migration :shape-name
                                       "ModifyDataMigration" :input
                                       modify-data-migration-message :output
                                       modify-data-migration-response :errors
                                       (failed-dependency-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation modify-data-provider :shape-name
                                       "ModifyDataProvider" :input
                                       modify-data-provider-message :output
                                       modify-data-provider-response :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation modify-endpoint :shape-name
                                       "ModifyEndpoint" :input
                                       modify-endpoint-message :output
                                       modify-endpoint-response :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation modify-event-subscription :shape-name
                                       "ModifyEventSubscription" :input
                                       modify-event-subscription-message
                                       :output
                                       modify-event-subscription-response
                                       :errors
                                       (access-denied-fault
                                        kmsaccess-denied-fault
                                        kmsdisabled-fault
                                        kmsinvalid-state-fault
                                        kmsnot-found-fault kmsthrottling-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        snsinvalid-topic-fault
                                        snsno-authorization-fault))

(smithy/sdk/operation:define-operation modify-instance-profile :shape-name
                                       "ModifyInstanceProfile" :input
                                       modify-instance-profile-message :output
                                       modify-instance-profile-response :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-not-found-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation modify-migration-project :shape-name
                                       "ModifyMigrationProject" :input
                                       modify-migration-project-message :output
                                       modify-migration-project-response
                                       :errors
                                       (access-denied-fault
                                        failed-dependency-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation modify-replication-config :shape-name
                                       "ModifyReplicationConfig" :input
                                       modify-replication-config-message
                                       :output
                                       modify-replication-config-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        invalid-subnet
                                        kmskey-not-accessible-fault
                                        replication-subnet-group-does-not-cover-enough-azs
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation modify-replication-instance :shape-name
                                       "ModifyReplicationInstance" :input
                                       modify-replication-instance-message
                                       :output
                                       modify-replication-instance-response
                                       :errors
                                       (access-denied-fault
                                        insufficient-resource-capacity-fault
                                        invalid-resource-state-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        storage-quota-exceeded-fault
                                        upgrade-dependency-failure-fault))

(smithy/sdk/operation:define-operation modify-replication-subnet-group
                                       :shape-name
                                       "ModifyReplicationSubnetGroup" :input
                                       modify-replication-subnet-group-message
                                       :output
                                       modify-replication-subnet-group-response
                                       :errors
                                       (access-denied-fault invalid-subnet
                                        replication-subnet-group-does-not-cover-enough-azs
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        subnet-already-in-use))

(smithy/sdk/operation:define-operation modify-replication-task :shape-name
                                       "ModifyReplicationTask" :input
                                       modify-replication-task-message :output
                                       modify-replication-task-response :errors
                                       (invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation move-replication-task :shape-name
                                       "MoveReplicationTask" :input
                                       move-replication-task-message :output
                                       move-replication-task-response :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation reboot-replication-instance :shape-name
                                       "RebootReplicationInstance" :input
                                       reboot-replication-instance-message
                                       :output
                                       reboot-replication-instance-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation refresh-schemas :shape-name
                                       "RefreshSchemas" :input
                                       refresh-schemas-message :output
                                       refresh-schemas-response :errors
                                       (invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation reload-replication-tables :shape-name
                                       "ReloadReplicationTables" :input
                                       reload-replication-tables-message
                                       :output
                                       reload-replication-tables-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation reload-tables :shape-name "ReloadTables"
                                       :input reload-tables-message :output
                                       reload-tables-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation remove-tags-from-resource :shape-name
                                       "RemoveTagsFromResource" :input
                                       remove-tags-from-resource-message
                                       :output
                                       remove-tags-from-resource-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation run-fleet-advisor-lsa-analysis
                                       :shape-name "RunFleetAdvisorLsaAnalysis"
                                       :input common-lisp:null :output
                                       run-fleet-advisor-lsa-analysis-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation start-data-migration :shape-name
                                       "StartDataMigration" :input
                                       start-data-migration-message :output
                                       start-data-migration-response :errors
                                       (failed-dependency-fault
                                        invalid-operation-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation start-extension-pack-association
                                       :shape-name
                                       "StartExtensionPackAssociation" :input
                                       start-extension-pack-association-message
                                       :output
                                       start-extension-pack-association-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation start-metadata-model-assessment
                                       :shape-name
                                       "StartMetadataModelAssessment" :input
                                       start-metadata-model-assessment-message
                                       :output
                                       start-metadata-model-assessment-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation start-metadata-model-conversion
                                       :shape-name
                                       "StartMetadataModelConversion" :input
                                       start-metadata-model-conversion-message
                                       :output
                                       start-metadata-model-conversion-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation start-metadata-model-export-as-script
                                       :shape-name
                                       "StartMetadataModelExportAsScript"
                                       :input
                                       start-metadata-model-export-as-script-message
                                       :output
                                       start-metadata-model-export-as-script-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation start-metadata-model-export-to-target
                                       :shape-name
                                       "StartMetadataModelExportToTarget"
                                       :input
                                       start-metadata-model-export-to-target-message
                                       :output
                                       start-metadata-model-export-to-target-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation start-metadata-model-import :shape-name
                                       "StartMetadataModelImport" :input
                                       start-metadata-model-import-message
                                       :output
                                       start-metadata-model-import-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation start-recommendations :shape-name
                                       "StartRecommendations" :input
                                       start-recommendations-request :output
                                       common-lisp:null :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation start-replication :shape-name
                                       "StartReplication" :input
                                       start-replication-message :output
                                       start-replication-response :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation start-replication-task :shape-name
                                       "StartReplicationTask" :input
                                       start-replication-task-message :output
                                       start-replication-task-response :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation start-replication-task-assessment
                                       :shape-name
                                       "StartReplicationTaskAssessment" :input
                                       start-replication-task-assessment-message
                                       :output
                                       start-replication-task-assessment-response
                                       :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation start-replication-task-assessment-run
                                       :shape-name
                                       "StartReplicationTaskAssessmentRun"
                                       :input
                                       start-replication-task-assessment-run-message
                                       :output
                                       start-replication-task-assessment-run-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmsaccess-denied-fault
                                        kmsdisabled-fault kmsfault
                                        kmsinvalid-state-fault
                                        kmskey-not-accessible-fault
                                        kmsnot-found-fault
                                        resource-already-exists-fault
                                        resource-not-found-fault
                                        s3access-denied-fault
                                        s3resource-not-found-fault))

(smithy/sdk/operation:define-operation stop-data-migration :shape-name
                                       "StopDataMigration" :input
                                       stop-data-migration-message :output
                                       stop-data-migration-response :errors
                                       (failed-dependency-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation stop-replication :shape-name
                                       "StopReplication" :input
                                       stop-replication-message :output
                                       stop-replication-response :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation stop-replication-task :shape-name
                                       "StopReplicationTask" :input
                                       stop-replication-task-message :output
                                       stop-replication-task-response :errors
                                       (invalid-resource-state-fault
                                        resource-not-found-fault))

(smithy/sdk/operation:define-operation test-connection :shape-name
                                       "TestConnection" :input
                                       test-connection-message :output
                                       test-connection-response :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault
                                        kmskey-not-accessible-fault
                                        resource-not-found-fault
                                        resource-quota-exceeded-fault))

(smithy/sdk/operation:define-operation update-subscriptions-to-event-bridge
                                       :shape-name
                                       "UpdateSubscriptionsToEventBridge"
                                       :input
                                       update-subscriptions-to-event-bridge-message
                                       :output
                                       update-subscriptions-to-event-bridge-response
                                       :errors
                                       (access-denied-fault
                                        invalid-resource-state-fault))
