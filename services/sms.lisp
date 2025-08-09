(uiop/package:define-package #:pira/sms (:use)
                             (:export #:awsserver-migration-service-v2016-10-24
                              #:ami-id #:app-description #:app-id
                              #:app-id-with-validation #:app-ids
                              #:app-launch-configuration-status
                              #:app-launch-status #:app-launch-status-message
                              #:app-name #:app-replication-configuration-status
                              #:app-replication-status
                              #:app-replication-status-message #:app-status
                              #:app-status-message #:app-summary
                              #:app-validation-configuration
                              #:app-validation-configurations
                              #:app-validation-output #:app-validation-strategy
                              #:apps #:associate-public-ip-address
                              #:auto-launch #:bucket-name #:client-token
                              #:command #:connector #:connector-capability
                              #:connector-capability-list #:connector-id
                              #:connector-list #:connector-status
                              #:connector-version #:create-app
                              #:create-replication-job #:delete-app
                              #:delete-app-launch-configuration
                              #:delete-app-replication-configuration
                              #:delete-app-validation-configuration
                              #:delete-replication-job #:delete-server-catalog
                              #:description #:disassociate-connector
                              #:ec2key-name #:encrypted #:error-message
                              #:execution-timeout-seconds
                              #:force-stop-app-replication
                              #:force-terminate-app #:frequency
                              #:generate-change-set #:generate-template
                              #:get-app #:get-app-launch-configuration
                              #:get-app-replication-configuration
                              #:get-app-validation-configuration
                              #:get-app-validation-output #:get-connectors
                              #:get-replication-jobs #:get-replication-runs
                              #:get-servers #:import-app-catalog
                              #:import-server-catalog #:imported-app-id
                              #:instance-id #:instance-type #:ip-address
                              #:kms-key-id #:launch-app #:launch-details
                              #:launch-order #:license-type #:list-apps
                              #:logical-id #:mac-address #:max-results
                              #:next-token #:non-empty-string-with-max-len255
                              #:notification-context
                              #:notify-app-validation-output
                              #:number-of-recent-amis-to-keep #:output-format
                              #:put-app-launch-configuration
                              #:put-app-replication-configuration
                              #:put-app-validation-configuration
                              #:replication-job #:replication-job-id
                              #:replication-job-list #:replication-job-state
                              #:replication-job-status-message
                              #:replication-job-terminated #:replication-run
                              #:replication-run-id #:replication-run-list
                              #:replication-run-stage
                              #:replication-run-stage-details
                              #:replication-run-stage-progress
                              #:replication-run-state
                              #:replication-run-status-message
                              #:replication-run-type #:role-name #:run-once
                              #:s3bucket-name #:s3key-name #:s3location
                              #:ssmoutput #:ssmvalidation-parameters
                              #:script-type #:security-group #:server
                              #:server-catalog-status #:server-group
                              #:server-group-id
                              #:server-group-launch-configuration
                              #:server-group-launch-configurations
                              #:server-group-name
                              #:server-group-replication-configuration
                              #:server-group-replication-configurations
                              #:server-group-validation-configuration
                              #:server-group-validation-configurations
                              #:server-groups #:server-id
                              #:server-launch-configuration
                              #:server-launch-configurations #:server-list
                              #:server-replication-configuration
                              #:server-replication-configurations
                              #:server-replication-parameters #:server-type
                              #:server-validation-configuration
                              #:server-validation-configurations
                              #:server-validation-output
                              #:server-validation-strategy #:source #:stack-id
                              #:stack-name #:start-app-replication
                              #:start-on-demand-app-replication
                              #:start-on-demand-replication-run
                              #:stop-app-replication #:subnet #:tag #:tag-key
                              #:tag-value #:tags #:terminate-app #:timestamp
                              #:total-server-groups #:total-servers
                              #:update-app #:update-replication-job #:user-data
                              #:user-data-validation-parameters #:vpc
                              #:validation-id #:validation-output
                              #:validation-output-list #:validation-status
                              #:validation-status-message #:vm-id
                              #:vm-manager-id #:vm-manager-name
                              #:vm-manager-type #:vm-name #:vm-path #:vm-server
                              #:vm-server-address #:vm-server-address-list))
(common-lisp:in-package #:pira/sms)

(smithy/sdk/service:define-service awsserver-migration-service-v2016-10-24
                                   :shape-name
                                   "AWSServerMigrationService_V2016_10_24"
                                   :version "2016-10-24" :title
                                   "AWS Server Migration Service"
                                   :xml-namespace
                                   '(:uri
                                     "http://ec2.amazon.com/servermigration/2016-10-24/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "SMS")
                                      ("arnNamespace" . "sms")
                                      ("cloudFormationName" . "SMS")
                                      ("cloudTrailEventSource"
                                       . "sms.amazonaws.com")
                                      ("endpointPrefix" . "sms"))
                                     ("aws.auth#sigv4" ("name" . "sms"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type ami-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-id-with-validation
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list app-ids :member app-id)

(smithy/sdk/shapes:define-enum app-launch-configuration-status
    common-lisp:nil
  (:not-configured "NOT_CONFIGURED")
  (:configured "CONFIGURED"))

(smithy/sdk/shapes:define-enum app-launch-status
    common-lisp:nil
  (:ready-for-configuration "READY_FOR_CONFIGURATION")
  (:configuration-in-progress "CONFIGURATION_IN_PROGRESS")
  (:configuration-invalid "CONFIGURATION_INVALID")
  (:ready-for-launch "READY_FOR_LAUNCH")
  (:validation-in-progress "VALIDATION_IN_PROGRESS")
  (:launch-pending "LAUNCH_PENDING")
  (:launch-in-progress "LAUNCH_IN_PROGRESS")
  (:launched "LAUNCHED")
  (:partially-launched "PARTIALLY_LAUNCHED")
  (:delta-launch-in-progress "DELTA_LAUNCH_IN_PROGRESS")
  (:delta-launch-failed "DELTA_LAUNCH_FAILED")
  (:launch-failed "LAUNCH_FAILED")
  (:terminate-in-progress "TERMINATE_IN_PROGRESS")
  (:terminate-failed "TERMINATE_FAILED")
  (:terminated "TERMINATED"))

(smithy/sdk/shapes:define-type app-launch-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum app-replication-configuration-status
    common-lisp:nil
  (:not-configured "NOT_CONFIGURED")
  (:configured "CONFIGURED"))

(smithy/sdk/shapes:define-enum app-replication-status
    common-lisp:nil
  (:ready-for-configuration "READY_FOR_CONFIGURATION")
  (:configuration-in-progress "CONFIGURATION_IN_PROGRESS")
  (:configuration-invalid "CONFIGURATION_INVALID")
  (:ready-for-replication "READY_FOR_REPLICATION")
  (:validation-in-progress "VALIDATION_IN_PROGRESS")
  (:replication-pending "REPLICATION_PENDING")
  (:replication-in-progress "REPLICATION_IN_PROGRESS")
  (:replicated "REPLICATED")
  (:partially-replicated "PARTIALLY_REPLICATED")
  (:delta-replication-in-progress "DELTA_REPLICATION_IN_PROGRESS")
  (:delta-replicated "DELTA_REPLICATED")
  (:delta-replication-failed "DELTA_REPLICATION_FAILED")
  (:replication-failed "REPLICATION_FAILED")
  (:replication-stopping "REPLICATION_STOPPING")
  (:replication-stop-failed "REPLICATION_STOP_FAILED")
  (:replication-stopped "REPLICATION_STOPPED"))

(smithy/sdk/shapes:define-type app-replication-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum app-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-type app-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure app-summary common-lisp:nil
                                    ((app-id :target-type app-id :member-name
                                      "appId")
                                     (imported-app-id :target-type
                                      imported-app-id :member-name
                                      "importedAppId")
                                     (name :target-type app-name :member-name
                                      "name")
                                     (description :target-type app-description
                                      :member-name "description")
                                     (status :target-type app-status
                                      :member-name "status")
                                     (status-message :target-type
                                      app-status-message :member-name
                                      "statusMessage")
                                     (replication-configuration-status
                                      :target-type
                                      app-replication-configuration-status
                                      :member-name
                                      "replicationConfigurationStatus")
                                     (replication-status :target-type
                                      app-replication-status :member-name
                                      "replicationStatus")
                                     (replication-status-message :target-type
                                      app-replication-status-message
                                      :member-name "replicationStatusMessage")
                                     (latest-replication-time :target-type
                                      timestamp :member-name
                                      "latestReplicationTime")
                                     (launch-configuration-status :target-type
                                      app-launch-configuration-status
                                      :member-name "launchConfigurationStatus")
                                     (launch-status :target-type
                                      app-launch-status :member-name
                                      "launchStatus")
                                     (launch-status-message :target-type
                                      app-launch-status-message :member-name
                                      "launchStatusMessage")
                                     (launch-details :target-type
                                      launch-details :member-name
                                      "launchDetails")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-modified :target-type timestamp
                                      :member-name "lastModified")
                                     (role-name :target-type role-name
                                      :member-name "roleName")
                                     (total-server-groups :target-type
                                      total-server-groups :member-name
                                      "totalServerGroups")
                                     (total-servers :target-type total-servers
                                      :member-name "totalServers"))
                                    (:shape-name "AppSummary"))

(smithy/sdk/shapes:define-structure app-validation-configuration
                                    common-lisp:nil
                                    ((validation-id :target-type validation-id
                                      :member-name "validationId")
                                     (name :target-type
                                      non-empty-string-with-max-len255
                                      :member-name "name")
                                     (app-validation-strategy :target-type
                                      app-validation-strategy :member-name
                                      "appValidationStrategy")
                                     (ssm-validation-parameters :target-type
                                      ssmvalidation-parameters :member-name
                                      "ssmValidationParameters"))
                                    (:shape-name "AppValidationConfiguration"))

(smithy/sdk/shapes:define-list app-validation-configurations :member
                               app-validation-configuration)

(smithy/sdk/shapes:define-structure app-validation-output common-lisp:nil
                                    ((ssm-output :target-type ssmoutput
                                      :member-name "ssmOutput"))
                                    (:shape-name "AppValidationOutput"))

(smithy/sdk/shapes:define-enum app-validation-strategy
    common-lisp:nil
  (:ssm "SSM"))

(smithy/sdk/shapes:define-list apps :member app-summary)

(smithy/sdk/shapes:define-type associate-public-ip-address
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type auto-launch smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connector common-lisp:nil
                                    ((connector-id :target-type connector-id
                                      :member-name "connectorId")
                                     (version :target-type connector-version
                                      :member-name "version")
                                     (status :target-type connector-status
                                      :member-name "status")
                                     (capability-list :target-type
                                      connector-capability-list :member-name
                                      "capabilityList")
                                     (vm-manager-name :target-type
                                      vm-manager-name :member-name
                                      "vmManagerName")
                                     (vm-manager-type :target-type
                                      vm-manager-type :member-name
                                      "vmManagerType")
                                     (vm-manager-id :target-type vm-manager-id
                                      :member-name "vmManagerId")
                                     (ip-address :target-type ip-address
                                      :member-name "ipAddress")
                                     (mac-address :target-type mac-address
                                      :member-name "macAddress")
                                     (associated-on :target-type timestamp
                                      :member-name "associatedOn"))
                                    (:shape-name "Connector"))

(smithy/sdk/shapes:define-enum connector-capability
    common-lisp:nil
  (:v-sphere "VSPHERE")
  (:scvmm "SCVMM")
  (:hyper-vmanager "HYPERV-MANAGER")
  (:snapshot-batching "SNAPSHOT_BATCHING")
  (:sms-optimized "SMS_OPTIMIZED"))

(smithy/sdk/shapes:define-list connector-capability-list :member
                               (connector-capability :xml-name "item"))

(smithy/sdk/shapes:define-type connector-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-list :member
                               (connector :xml-name "item"))

(smithy/sdk/shapes:define-enum connector-status
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-type connector-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-app-request common-lisp:nil
                                ((name :target-type app-name :member-name
                                  "name")
                                 (description :target-type app-description
                                  :member-name "description")
                                 (role-name :target-type role-name :member-name
                                  "roleName")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (server-groups :target-type server-groups
                                  :member-name "serverGroups")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateAppRequest"))

(smithy/sdk/shapes:define-output create-app-response common-lisp:nil
                                 ((app-summary :target-type app-summary
                                   :member-name "appSummary")
                                  (server-groups :target-type server-groups
                                   :member-name "serverGroups")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "CreateAppResponse"))

(smithy/sdk/shapes:define-input create-replication-job-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "serverId")
                                 (seed-replication-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "seedReplicationTime")
                                 (frequency :target-type frequency :member-name
                                  "frequency")
                                 (run-once :target-type run-once :member-name
                                  "runOnce")
                                 (license-type :target-type license-type
                                  :member-name "licenseType")
                                 (role-name :target-type role-name :member-name
                                  "roleName")
                                 (description :target-type description
                                  :member-name "description")
                                 (number-of-recent-amis-to-keep :target-type
                                  number-of-recent-amis-to-keep :member-name
                                  "numberOfRecentAmisToKeep")
                                 (encrypted :target-type encrypted :member-name
                                  "encrypted")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "kmsKeyId"))
                                (:shape-name "CreateReplicationJobRequest"))

(smithy/sdk/shapes:define-output create-replication-job-response
                                 common-lisp:nil
                                 ((replication-job-id :target-type
                                   replication-job-id :member-name
                                   "replicationJobId"))
                                 (:shape-name "CreateReplicationJobResponse"))

(smithy/sdk/shapes:define-input delete-app-launch-configuration-request
                                common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId"))
                                (:shape-name
                                 "DeleteAppLaunchConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-app-launch-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAppLaunchConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-app-replication-configuration-request
                                common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId"))
                                (:shape-name
                                 "DeleteAppReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-app-replication-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAppReplicationConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-app-request common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId")
                                 (force-stop-app-replication :target-type
                                  force-stop-app-replication :member-name
                                  "forceStopAppReplication")
                                 (force-terminate-app :target-type
                                  force-terminate-app :member-name
                                  "forceTerminateApp"))
                                (:shape-name "DeleteAppRequest"))

(smithy/sdk/shapes:define-output delete-app-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAppResponse"))

(smithy/sdk/shapes:define-input delete-app-validation-configuration-request
                                common-lisp:nil
                                ((app-id :target-type app-id-with-validation
                                  :required common-lisp:t :member-name
                                  "appId"))
                                (:shape-name
                                 "DeleteAppValidationConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-app-validation-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAppValidationConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-replication-job-request common-lisp:nil
                                ((replication-job-id :target-type
                                  replication-job-id :required common-lisp:t
                                  :member-name "replicationJobId"))
                                (:shape-name "DeleteReplicationJobRequest"))

(smithy/sdk/shapes:define-output delete-replication-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteReplicationJobResponse"))

(smithy/sdk/shapes:define-input delete-server-catalog-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DeleteServerCatalogRequest"))

(smithy/sdk/shapes:define-output delete-server-catalog-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteServerCatalogResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-connector-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "connectorId"))
                                (:shape-name "DisassociateConnectorRequest"))

(smithy/sdk/shapes:define-output disassociate-connector-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DisassociateConnectorResponse"))

(smithy/sdk/shapes:define-error dry-run-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DryRunOperationException")
                                (:error-code 412))

(smithy/sdk/shapes:define-type ec2key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type encrypted smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-timeout-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type force-stop-app-replication
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type force-terminate-app
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type frequency smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input generate-change-set-request common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId")
                                 (changeset-format :target-type output-format
                                  :member-name "changesetFormat"))
                                (:shape-name "GenerateChangeSetRequest"))

(smithy/sdk/shapes:define-output generate-change-set-response common-lisp:nil
                                 ((s3location :target-type s3location
                                   :member-name "s3Location"))
                                 (:shape-name "GenerateChangeSetResponse"))

(smithy/sdk/shapes:define-input generate-template-request common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId")
                                 (template-format :target-type output-format
                                  :member-name "templateFormat"))
                                (:shape-name "GenerateTemplateRequest"))

(smithy/sdk/shapes:define-output generate-template-response common-lisp:nil
                                 ((s3location :target-type s3location
                                   :member-name "s3Location"))
                                 (:shape-name "GenerateTemplateResponse"))

(smithy/sdk/shapes:define-input get-app-launch-configuration-request
                                common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId"))
                                (:shape-name
                                 "GetAppLaunchConfigurationRequest"))

(smithy/sdk/shapes:define-output get-app-launch-configuration-response
                                 common-lisp:nil
                                 ((app-id :target-type app-id :member-name
                                   "appId")
                                  (role-name :target-type role-name
                                   :member-name "roleName")
                                  (auto-launch :target-type auto-launch
                                   :member-name "autoLaunch")
                                  (server-group-launch-configurations
                                   :target-type
                                   server-group-launch-configurations
                                   :member-name
                                   "serverGroupLaunchConfigurations"))
                                 (:shape-name
                                  "GetAppLaunchConfigurationResponse"))

(smithy/sdk/shapes:define-input get-app-replication-configuration-request
                                common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId"))
                                (:shape-name
                                 "GetAppReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-output get-app-replication-configuration-response
                                 common-lisp:nil
                                 ((server-group-replication-configurations
                                   :target-type
                                   server-group-replication-configurations
                                   :member-name
                                   "serverGroupReplicationConfigurations"))
                                 (:shape-name
                                  "GetAppReplicationConfigurationResponse"))

(smithy/sdk/shapes:define-input get-app-request common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId"))
                                (:shape-name "GetAppRequest"))

(smithy/sdk/shapes:define-output get-app-response common-lisp:nil
                                 ((app-summary :target-type app-summary
                                   :member-name "appSummary")
                                  (server-groups :target-type server-groups
                                   :member-name "serverGroups")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "GetAppResponse"))

(smithy/sdk/shapes:define-input get-app-validation-configuration-request
                                common-lisp:nil
                                ((app-id :target-type app-id-with-validation
                                  :required common-lisp:t :member-name
                                  "appId"))
                                (:shape-name
                                 "GetAppValidationConfigurationRequest"))

(smithy/sdk/shapes:define-output get-app-validation-configuration-response
                                 common-lisp:nil
                                 ((app-validation-configurations :target-type
                                   app-validation-configurations :member-name
                                   "appValidationConfigurations")
                                  (server-group-validation-configurations
                                   :target-type
                                   server-group-validation-configurations
                                   :member-name
                                   "serverGroupValidationConfigurations"))
                                 (:shape-name
                                  "GetAppValidationConfigurationResponse"))

(smithy/sdk/shapes:define-input get-app-validation-output-request
                                common-lisp:nil
                                ((app-id :target-type app-id-with-validation
                                  :required common-lisp:t :member-name
                                  "appId"))
                                (:shape-name "GetAppValidationOutputRequest"))

(smithy/sdk/shapes:define-output get-app-validation-output-response
                                 common-lisp:nil
                                 ((validation-output-list :target-type
                                   validation-output-list :member-name
                                   "validationOutputList"))
                                 (:shape-name "GetAppValidationOutputResponse"))

(smithy/sdk/shapes:define-input get-connectors-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetConnectorsRequest"))

(smithy/sdk/shapes:define-output get-connectors-response common-lisp:nil
                                 ((connector-list :target-type connector-list
                                   :member-name "connectorList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetConnectorsResponse"))

(smithy/sdk/shapes:define-input get-replication-jobs-request common-lisp:nil
                                ((replication-job-id :target-type
                                  replication-job-id :member-name
                                  "replicationJobId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetReplicationJobsRequest"))

(smithy/sdk/shapes:define-output get-replication-jobs-response common-lisp:nil
                                 ((replication-job-list :target-type
                                   replication-job-list :member-name
                                   "replicationJobList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetReplicationJobsResponse"))

(smithy/sdk/shapes:define-input get-replication-runs-request common-lisp:nil
                                ((replication-job-id :target-type
                                  replication-job-id :required common-lisp:t
                                  :member-name "replicationJobId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetReplicationRunsRequest"))

(smithy/sdk/shapes:define-output get-replication-runs-response common-lisp:nil
                                 ((replication-job :target-type replication-job
                                   :member-name "replicationJob")
                                  (replication-run-list :target-type
                                   replication-run-list :member-name
                                   "replicationRunList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetReplicationRunsResponse"))

(smithy/sdk/shapes:define-input get-servers-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (vm-server-address-list :target-type
                                  vm-server-address-list :member-name
                                  "vmServerAddressList"))
                                (:shape-name "GetServersRequest"))

(smithy/sdk/shapes:define-output get-servers-response common-lisp:nil
                                 ((last-modified-on :target-type timestamp
                                   :member-name "lastModifiedOn")
                                  (server-catalog-status :target-type
                                   server-catalog-status :member-name
                                   "serverCatalogStatus")
                                  (server-list :target-type server-list
                                   :member-name "serverList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetServersResponse"))

(smithy/sdk/shapes:define-input import-app-catalog-request common-lisp:nil
                                ((role-name :target-type role-name :member-name
                                  "roleName"))
                                (:shape-name "ImportAppCatalogRequest"))

(smithy/sdk/shapes:define-output import-app-catalog-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ImportAppCatalogResponse"))

(smithy/sdk/shapes:define-input import-server-catalog-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ImportServerCatalogRequest"))

(smithy/sdk/shapes:define-output import-server-catalog-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ImportServerCatalogResponse"))

(smithy/sdk/shapes:define-type imported-app-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalError") (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input launch-app-request common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId"))
                                (:shape-name "LaunchAppRequest"))

(smithy/sdk/shapes:define-output launch-app-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "LaunchAppResponse"))

(smithy/sdk/shapes:define-structure launch-details common-lisp:nil
                                    ((latest-launch-time :target-type timestamp
                                      :member-name "latestLaunchTime")
                                     (stack-name :target-type stack-name
                                      :member-name "stackName")
                                     (stack-id :target-type stack-id
                                      :member-name "stackId"))
                                    (:shape-name "LaunchDetails"))

(smithy/sdk/shapes:define-type launch-order smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum license-type
    common-lisp:nil
  (:aws "AWS")
  (:byol "BYOL"))

(smithy/sdk/shapes:define-input list-apps-request common-lisp:nil
                                ((app-ids :target-type app-ids :member-name
                                  "appIds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListAppsRequest"))

(smithy/sdk/shapes:define-output list-apps-response common-lisp:nil
                                 ((apps :target-type apps :member-name "apps")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAppsResponse"))

(smithy/sdk/shapes:define-type logical-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mac-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error missing-required-parameter-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MissingRequiredParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-connectors-available-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoConnectorsAvailableException")
                                (:error-code 430))

(smithy/sdk/shapes:define-type non-empty-string-with-max-len255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-context common-lisp:nil
                                    ((validation-id :target-type validation-id
                                      :member-name "validationId")
                                     (status :target-type validation-status
                                      :member-name "status")
                                     (status-message :target-type
                                      validation-status-message :member-name
                                      "statusMessage"))
                                    (:shape-name "NotificationContext"))

(smithy/sdk/shapes:define-input notify-app-validation-output-request
                                common-lisp:nil
                                ((app-id :target-type app-id-with-validation
                                  :required common-lisp:t :member-name "appId")
                                 (notification-context :target-type
                                  notification-context :member-name
                                  "notificationContext"))
                                (:shape-name
                                 "NotifyAppValidationOutputRequest"))

(smithy/sdk/shapes:define-output notify-app-validation-output-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "NotifyAppValidationOutputResponse"))

(smithy/sdk/shapes:define-type number-of-recent-amis-to-keep
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error operation-not-permitted-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "OperationNotPermittedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum output-format
    common-lisp:nil
  (:json "JSON")
  (:yaml "YAML"))

(smithy/sdk/shapes:define-input put-app-launch-configuration-request
                                common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId")
                                 (role-name :target-type role-name :member-name
                                  "roleName")
                                 (auto-launch :target-type auto-launch
                                  :member-name "autoLaunch")
                                 (server-group-launch-configurations
                                  :target-type
                                  server-group-launch-configurations
                                  :member-name
                                  "serverGroupLaunchConfigurations"))
                                (:shape-name
                                 "PutAppLaunchConfigurationRequest"))

(smithy/sdk/shapes:define-output put-app-launch-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutAppLaunchConfigurationResponse"))

(smithy/sdk/shapes:define-input put-app-replication-configuration-request
                                common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId")
                                 (server-group-replication-configurations
                                  :target-type
                                  server-group-replication-configurations
                                  :member-name
                                  "serverGroupReplicationConfigurations"))
                                (:shape-name
                                 "PutAppReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-output put-app-replication-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutAppReplicationConfigurationResponse"))

(smithy/sdk/shapes:define-input put-app-validation-configuration-request
                                common-lisp:nil
                                ((app-id :target-type app-id-with-validation
                                  :required common-lisp:t :member-name "appId")
                                 (app-validation-configurations :target-type
                                  app-validation-configurations :member-name
                                  "appValidationConfigurations")
                                 (server-group-validation-configurations
                                  :target-type
                                  server-group-validation-configurations
                                  :member-name
                                  "serverGroupValidationConfigurations"))
                                (:shape-name
                                 "PutAppValidationConfigurationRequest"))

(smithy/sdk/shapes:define-output put-app-validation-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutAppValidationConfigurationResponse"))

(smithy/sdk/shapes:define-structure replication-job common-lisp:nil
                                    ((replication-job-id :target-type
                                      replication-job-id :member-name
                                      "replicationJobId")
                                     (server-id :target-type server-id
                                      :member-name "serverId")
                                     (server-type :target-type server-type
                                      :member-name "serverType")
                                     (vm-server :target-type vm-server
                                      :member-name "vmServer")
                                     (seed-replication-time :target-type
                                      timestamp :member-name
                                      "seedReplicationTime")
                                     (frequency :target-type frequency
                                      :member-name "frequency")
                                     (run-once :target-type run-once
                                      :member-name "runOnce")
                                     (next-replication-run-start-time
                                      :target-type timestamp :member-name
                                      "nextReplicationRunStartTime")
                                     (license-type :target-type license-type
                                      :member-name "licenseType")
                                     (role-name :target-type role-name
                                      :member-name "roleName")
                                     (latest-ami-id :target-type ami-id
                                      :member-name "latestAmiId")
                                     (state :target-type replication-job-state
                                      :member-name "state")
                                     (status-message :target-type
                                      replication-job-status-message
                                      :member-name "statusMessage")
                                     (description :target-type description
                                      :member-name "description")
                                     (number-of-recent-amis-to-keep
                                      :target-type
                                      number-of-recent-amis-to-keep
                                      :member-name "numberOfRecentAmisToKeep")
                                     (encrypted :target-type encrypted
                                      :member-name "encrypted")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (replication-run-list :target-type
                                      replication-run-list :member-name
                                      "replicationRunList"))
                                    (:shape-name "ReplicationJob"))

(smithy/sdk/shapes:define-error replication-job-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReplicationJobAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type replication-job-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list replication-job-list :member
                               (replication-job :xml-name "item"))

(smithy/sdk/shapes:define-error replication-job-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ReplicationJobNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum replication-job-state
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:failed "FAILED")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:completed "COMPLETED")
  (:paused-on-failure "PAUSED_ON_FAILURE")
  (:failing "FAILING"))

(smithy/sdk/shapes:define-type replication-job-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type replication-job-terminated
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure replication-run common-lisp:nil
                                    ((replication-run-id :target-type
                                      replication-run-id :member-name
                                      "replicationRunId")
                                     (state :target-type replication-run-state
                                      :member-name "state")
                                     (type :target-type replication-run-type
                                      :member-name "type")
                                     (stage-details :target-type
                                      replication-run-stage-details
                                      :member-name "stageDetails")
                                     (status-message :target-type
                                      replication-run-status-message
                                      :member-name "statusMessage")
                                     (ami-id :target-type ami-id :member-name
                                      "amiId")
                                     (scheduled-start-time :target-type
                                      timestamp :member-name
                                      "scheduledStartTime")
                                     (completed-time :target-type timestamp
                                      :member-name "completedTime")
                                     (description :target-type description
                                      :member-name "description")
                                     (encrypted :target-type encrypted
                                      :member-name "encrypted")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId"))
                                    (:shape-name "ReplicationRun"))

(smithy/sdk/shapes:define-type replication-run-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error replication-run-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReplicationRunLimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-list replication-run-list :member
                               (replication-run :xml-name "item"))

(smithy/sdk/shapes:define-type replication-run-stage
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replication-run-stage-details
                                    common-lisp:nil
                                    ((stage :target-type replication-run-stage
                                      :member-name "stage")
                                     (stage-progress :target-type
                                      replication-run-stage-progress
                                      :member-name "stageProgress"))
                                    (:shape-name "ReplicationRunStageDetails"))

(smithy/sdk/shapes:define-type replication-run-stage-progress
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum replication-run-state
    common-lisp:nil
  (:pending "PENDING")
  (:missed "MISSED")
  (:active "ACTIVE")
  (:failed "FAILED")
  (:completed "COMPLETED")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type replication-run-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum replication-run-type
    common-lisp:nil
  (:on-demand "ON_DEMAND")
  (:automatic "AUTOMATIC"))

(smithy/sdk/shapes:define-type role-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-once smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :member-name "bucket")
                                     (key :target-type s3key-name :member-name
                                      "key"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-structure ssmoutput common-lisp:nil
                                    ((s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name "SSMOutput"))

(smithy/sdk/shapes:define-structure ssmvalidation-parameters common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source")
                                     (instance-id :target-type instance-id
                                      :member-name "instanceId")
                                     (script-type :target-type script-type
                                      :member-name "scriptType")
                                     (command :target-type command :member-name
                                      "command")
                                     (execution-timeout-seconds :target-type
                                      execution-timeout-seconds :member-name
                                      "executionTimeoutSeconds")
                                     (output-s3bucket-name :target-type
                                      bucket-name :member-name
                                      "outputS3BucketName"))
                                    (:shape-name "SSMValidationParameters"))

(smithy/sdk/shapes:define-enum script-type
    common-lisp:nil
  (:shell-script "SHELL_SCRIPT")
  (:powershell-script "POWERSHELL_SCRIPT"))

(smithy/sdk/shapes:define-type security-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server common-lisp:nil
                                    ((server-id :target-type server-id
                                      :member-name "serverId")
                                     (server-type :target-type server-type
                                      :member-name "serverType")
                                     (vm-server :target-type vm-server
                                      :member-name "vmServer")
                                     (replication-job-id :target-type
                                      replication-job-id :member-name
                                      "replicationJobId")
                                     (replication-job-terminated :target-type
                                      replication-job-terminated :member-name
                                      "replicationJobTerminated"))
                                    (:shape-name "Server"))

(smithy/sdk/shapes:define-error server-cannot-be-replicated-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ServerCannotBeReplicatedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum server-catalog-status
    common-lisp:nil
  (:not-imported "NOT_IMPORTED")
  (:importing "IMPORTING")
  (:available "AVAILABLE")
  (:deleted "DELETED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-structure server-group common-lisp:nil
                                    ((server-group-id :target-type
                                      server-group-id :member-name
                                      "serverGroupId")
                                     (name :target-type server-group-name
                                      :member-name "name")
                                     (server-list :target-type server-list
                                      :member-name "serverList"))
                                    (:shape-name "ServerGroup"))

(smithy/sdk/shapes:define-type server-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-group-launch-configuration
                                    common-lisp:nil
                                    ((server-group-id :target-type
                                      server-group-id :member-name
                                      "serverGroupId")
                                     (launch-order :target-type launch-order
                                      :member-name "launchOrder")
                                     (server-launch-configurations :target-type
                                      server-launch-configurations :member-name
                                      "serverLaunchConfigurations"))
                                    (:shape-name
                                     "ServerGroupLaunchConfiguration"))

(smithy/sdk/shapes:define-list server-group-launch-configurations :member
                               server-group-launch-configuration)

(smithy/sdk/shapes:define-type server-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-group-replication-configuration
                                    common-lisp:nil
                                    ((server-group-id :target-type
                                      server-group-id :member-name
                                      "serverGroupId")
                                     (server-replication-configurations
                                      :target-type
                                      server-replication-configurations
                                      :member-name
                                      "serverReplicationConfigurations"))
                                    (:shape-name
                                     "ServerGroupReplicationConfiguration"))

(smithy/sdk/shapes:define-list server-group-replication-configurations :member
                               server-group-replication-configuration)

(smithy/sdk/shapes:define-structure server-group-validation-configuration
                                    common-lisp:nil
                                    ((server-group-id :target-type
                                      server-group-id :member-name
                                      "serverGroupId")
                                     (server-validation-configurations
                                      :target-type
                                      server-validation-configurations
                                      :member-name
                                      "serverValidationConfigurations"))
                                    (:shape-name
                                     "ServerGroupValidationConfiguration"))

(smithy/sdk/shapes:define-list server-group-validation-configurations :member
                               server-group-validation-configuration)

(smithy/sdk/shapes:define-list server-groups :member server-group)

(smithy/sdk/shapes:define-type server-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-launch-configuration common-lisp:nil
                                    ((server :target-type server :member-name
                                      "server")
                                     (logical-id :target-type logical-id
                                      :member-name "logicalId")
                                     (vpc :target-type vpc :member-name "vpc")
                                     (subnet :target-type subnet :member-name
                                      "subnet")
                                     (security-group :target-type
                                      security-group :member-name
                                      "securityGroup")
                                     (ec2key-name :target-type ec2key-name
                                      :member-name "ec2KeyName")
                                     (user-data :target-type user-data
                                      :member-name "userData")
                                     (instance-type :target-type instance-type
                                      :member-name "instanceType")
                                     (associate-public-ip-address :target-type
                                      associate-public-ip-address :member-name
                                      "associatePublicIpAddress")
                                     (iam-instance-profile-name :target-type
                                      role-name :member-name
                                      "iamInstanceProfileName")
                                     (configure-script :target-type s3location
                                      :member-name "configureScript")
                                     (configure-script-type :target-type
                                      script-type :member-name
                                      "configureScriptType"))
                                    (:shape-name "ServerLaunchConfiguration"))

(smithy/sdk/shapes:define-list server-launch-configurations :member
                               server-launch-configuration)

(smithy/sdk/shapes:define-list server-list :member (server :xml-name "item"))

(smithy/sdk/shapes:define-structure server-replication-configuration
                                    common-lisp:nil
                                    ((server :target-type server :member-name
                                      "server")
                                     (server-replication-parameters
                                      :target-type
                                      server-replication-parameters
                                      :member-name
                                      "serverReplicationParameters"))
                                    (:shape-name
                                     "ServerReplicationConfiguration"))

(smithy/sdk/shapes:define-list server-replication-configurations :member
                               server-replication-configuration)

(smithy/sdk/shapes:define-structure server-replication-parameters
                                    common-lisp:nil
                                    ((seed-time :target-type timestamp
                                      :member-name "seedTime")
                                     (frequency :target-type frequency
                                      :member-name "frequency")
                                     (run-once :target-type run-once
                                      :member-name "runOnce")
                                     (license-type :target-type license-type
                                      :member-name "licenseType")
                                     (number-of-recent-amis-to-keep
                                      :target-type
                                      number-of-recent-amis-to-keep
                                      :member-name "numberOfRecentAmisToKeep")
                                     (encrypted :target-type encrypted
                                      :member-name "encrypted")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId"))
                                    (:shape-name "ServerReplicationParameters"))

(smithy/sdk/shapes:define-enum server-type
    common-lisp:nil
  (:virtual-machine "VIRTUAL_MACHINE"))

(smithy/sdk/shapes:define-structure server-validation-configuration
                                    common-lisp:nil
                                    ((server :target-type server :member-name
                                      "server")
                                     (validation-id :target-type validation-id
                                      :member-name "validationId")
                                     (name :target-type
                                      non-empty-string-with-max-len255
                                      :member-name "name")
                                     (server-validation-strategy :target-type
                                      server-validation-strategy :member-name
                                      "serverValidationStrategy")
                                     (user-data-validation-parameters
                                      :target-type
                                      user-data-validation-parameters
                                      :member-name
                                      "userDataValidationParameters"))
                                    (:shape-name
                                     "ServerValidationConfiguration"))

(smithy/sdk/shapes:define-list server-validation-configurations :member
                               server-validation-configuration)

(smithy/sdk/shapes:define-structure server-validation-output common-lisp:nil
                                    ((server :target-type server :member-name
                                      "server"))
                                    (:shape-name "ServerValidationOutput"))

(smithy/sdk/shapes:define-enum server-validation-strategy
    common-lisp:nil
  (:userdata "USERDATA"))

(smithy/sdk/shapes:define-structure source common-lisp:nil
                                    ((s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name "Source"))

(smithy/sdk/shapes:define-type stack-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-app-replication-request common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId"))
                                (:shape-name "StartAppReplicationRequest"))

(smithy/sdk/shapes:define-output start-app-replication-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartAppReplicationResponse"))

(smithy/sdk/shapes:define-input start-on-demand-app-replication-request
                                common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name
                                 "StartOnDemandAppReplicationRequest"))

(smithy/sdk/shapes:define-output start-on-demand-app-replication-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StartOnDemandAppReplicationResponse"))

(smithy/sdk/shapes:define-input start-on-demand-replication-run-request
                                common-lisp:nil
                                ((replication-job-id :target-type
                                  replication-job-id :required common-lisp:t
                                  :member-name "replicationJobId")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name
                                 "StartOnDemandReplicationRunRequest"))

(smithy/sdk/shapes:define-output start-on-demand-replication-run-response
                                 common-lisp:nil
                                 ((replication-run-id :target-type
                                   replication-run-id :member-name
                                   "replicationRunId"))
                                 (:shape-name
                                  "StartOnDemandReplicationRunResponse"))

(smithy/sdk/shapes:define-input stop-app-replication-request common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId"))
                                (:shape-name "StopAppReplicationRequest"))

(smithy/sdk/shapes:define-output stop-app-replication-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopAppReplicationResponse"))

(smithy/sdk/shapes:define-type subnet smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-error temporarily-unavailable-exception
                                common-lisp:nil common-lisp:nil
                                (:shape-name "TemporarilyUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-input terminate-app-request common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId"))
                                (:shape-name "TerminateAppRequest"))

(smithy/sdk/shapes:define-output terminate-app-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TerminateAppResponse"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type total-server-groups
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type total-servers smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error unauthorized-operation-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnauthorizedOperationException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input update-app-request common-lisp:nil
                                ((app-id :target-type app-id :member-name
                                  "appId")
                                 (name :target-type app-name :member-name
                                  "name")
                                 (description :target-type app-description
                                  :member-name "description")
                                 (role-name :target-type role-name :member-name
                                  "roleName")
                                 (server-groups :target-type server-groups
                                  :member-name "serverGroups")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "UpdateAppRequest"))

(smithy/sdk/shapes:define-output update-app-response common-lisp:nil
                                 ((app-summary :target-type app-summary
                                   :member-name "appSummary")
                                  (server-groups :target-type server-groups
                                   :member-name "serverGroups")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "UpdateAppResponse"))

(smithy/sdk/shapes:define-input update-replication-job-request common-lisp:nil
                                ((replication-job-id :target-type
                                  replication-job-id :required common-lisp:t
                                  :member-name "replicationJobId")
                                 (frequency :target-type frequency :member-name
                                  "frequency")
                                 (next-replication-run-start-time :target-type
                                  timestamp :member-name
                                  "nextReplicationRunStartTime")
                                 (license-type :target-type license-type
                                  :member-name "licenseType")
                                 (role-name :target-type role-name :member-name
                                  "roleName")
                                 (description :target-type description
                                  :member-name "description")
                                 (number-of-recent-amis-to-keep :target-type
                                  number-of-recent-amis-to-keep :member-name
                                  "numberOfRecentAmisToKeep")
                                 (encrypted :target-type encrypted :member-name
                                  "encrypted")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "kmsKeyId"))
                                (:shape-name "UpdateReplicationJobRequest"))

(smithy/sdk/shapes:define-output update-replication-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateReplicationJobResponse"))

(smithy/sdk/shapes:define-structure user-data common-lisp:nil
                                    ((s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name "UserData"))

(smithy/sdk/shapes:define-structure user-data-validation-parameters
                                    common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source")
                                     (script-type :target-type script-type
                                      :member-name "scriptType"))
                                    (:shape-name
                                     "UserDataValidationParameters"))

(smithy/sdk/shapes:define-type vpc smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type validation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure validation-output common-lisp:nil
                                    ((validation-id :target-type validation-id
                                      :member-name "validationId")
                                     (name :target-type
                                      non-empty-string-with-max-len255
                                      :member-name "name")
                                     (status :target-type validation-status
                                      :member-name "status")
                                     (status-message :target-type
                                      validation-status-message :member-name
                                      "statusMessage")
                                     (latest-validation-time :target-type
                                      timestamp :member-name
                                      "latestValidationTime")
                                     (app-validation-output :target-type
                                      app-validation-output :member-name
                                      "appValidationOutput")
                                     (server-validation-output :target-type
                                      server-validation-output :member-name
                                      "serverValidationOutput"))
                                    (:shape-name "ValidationOutput"))

(smithy/sdk/shapes:define-list validation-output-list :member validation-output)

(smithy/sdk/shapes:define-enum validation-status
    common-lisp:nil
  (:ready-for-validation "READY_FOR_VALIDATION")
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type validation-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vm-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vm-manager-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vm-manager-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum vm-manager-type
    common-lisp:nil
  (:v-sphere "VSPHERE")
  (:scvmm "SCVMM")
  (:hyper-vmanager "HYPERV-MANAGER"))

(smithy/sdk/shapes:define-type vm-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vm-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vm-server common-lisp:nil
                                    ((vm-server-address :target-type
                                      vm-server-address :member-name
                                      "vmServerAddress")
                                     (vm-name :target-type vm-name :member-name
                                      "vmName")
                                     (vm-manager-name :target-type
                                      vm-manager-name :member-name
                                      "vmManagerName")
                                     (vm-manager-type :target-type
                                      vm-manager-type :member-name
                                      "vmManagerType")
                                     (vm-path :target-type vm-path :member-name
                                      "vmPath"))
                                    (:shape-name "VmServer"))

(smithy/sdk/shapes:define-structure vm-server-address common-lisp:nil
                                    ((vm-manager-id :target-type vm-manager-id
                                      :member-name "vmManagerId")
                                     (vm-id :target-type vm-id :member-name
                                      "vmId"))
                                    (:shape-name "VmServerAddress"))

(smithy/sdk/shapes:define-list vm-server-address-list :member vm-server-address)

(smithy/sdk/operation:define-operation create-app :shape-name "CreateApp"
                                       :input create-app-request :output
                                       create-app-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation create-replication-job :shape-name
                                       "CreateReplicationJob" :input
                                       create-replication-job-request :output
                                       create-replication-job-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        no-connectors-available-exception
                                        operation-not-permitted-exception
                                        replication-job-already-exists-exception
                                        server-cannot-be-replicated-exception
                                        temporarily-unavailable-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation delete-app :shape-name "DeleteApp"
                                       :input delete-app-request :output
                                       delete-app-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation delete-app-launch-configuration
                                       :shape-name
                                       "DeleteAppLaunchConfiguration" :input
                                       delete-app-launch-configuration-request
                                       :output
                                       delete-app-launch-configuration-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation delete-app-replication-configuration
                                       :shape-name
                                       "DeleteAppReplicationConfiguration"
                                       :input
                                       delete-app-replication-configuration-request
                                       :output
                                       delete-app-replication-configuration-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation delete-app-validation-configuration
                                       :shape-name
                                       "DeleteAppValidationConfiguration"
                                       :input
                                       delete-app-validation-configuration-request
                                       :output
                                       delete-app-validation-configuration-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation delete-replication-job :shape-name
                                       "DeleteReplicationJob" :input
                                       delete-replication-job-request :output
                                       delete-replication-job-response :errors
                                       (invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        replication-job-not-found-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation delete-server-catalog :shape-name
                                       "DeleteServerCatalog" :input
                                       delete-server-catalog-request :output
                                       delete-server-catalog-response :errors
                                       (invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation disassociate-connector :shape-name
                                       "DisassociateConnector" :input
                                       disassociate-connector-request :output
                                       disassociate-connector-response :errors
                                       (invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation generate-change-set :shape-name
                                       "GenerateChangeSet" :input
                                       generate-change-set-request :output
                                       generate-change-set-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation generate-template :shape-name
                                       "GenerateTemplate" :input
                                       generate-template-request :output
                                       generate-template-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation get-app :shape-name "GetApp" :input
                                       get-app-request :output get-app-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation get-app-launch-configuration :shape-name
                                       "GetAppLaunchConfiguration" :input
                                       get-app-launch-configuration-request
                                       :output
                                       get-app-launch-configuration-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation get-app-replication-configuration
                                       :shape-name
                                       "GetAppReplicationConfiguration" :input
                                       get-app-replication-configuration-request
                                       :output
                                       get-app-replication-configuration-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation get-app-validation-configuration
                                       :shape-name
                                       "GetAppValidationConfiguration" :input
                                       get-app-validation-configuration-request
                                       :output
                                       get-app-validation-configuration-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation get-app-validation-output :shape-name
                                       "GetAppValidationOutput" :input
                                       get-app-validation-output-request
                                       :output
                                       get-app-validation-output-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation get-connectors :shape-name
                                       "GetConnectors" :input
                                       get-connectors-request :output
                                       get-connectors-response :errors
                                       (unauthorized-operation-exception))

(smithy/sdk/operation:define-operation get-replication-jobs :shape-name
                                       "GetReplicationJobs" :input
                                       get-replication-jobs-request :output
                                       get-replication-jobs-response :errors
                                       (invalid-parameter-exception
                                        missing-required-parameter-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation get-replication-runs :shape-name
                                       "GetReplicationRuns" :input
                                       get-replication-runs-request :output
                                       get-replication-runs-response :errors
                                       (invalid-parameter-exception
                                        missing-required-parameter-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation get-servers :shape-name "GetServers"
                                       :input get-servers-request :output
                                       get-servers-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation import-app-catalog :shape-name
                                       "ImportAppCatalog" :input
                                       import-app-catalog-request :output
                                       import-app-catalog-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation import-server-catalog :shape-name
                                       "ImportServerCatalog" :input
                                       import-server-catalog-request :output
                                       import-server-catalog-response :errors
                                       (invalid-parameter-exception
                                        missing-required-parameter-exception
                                        no-connectors-available-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation launch-app :shape-name "LaunchApp"
                                       :input launch-app-request :output
                                       launch-app-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation list-apps :shape-name "ListApps" :input
                                       list-apps-request :output
                                       list-apps-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation notify-app-validation-output :shape-name
                                       "NotifyAppValidationOutput" :input
                                       notify-app-validation-output-request
                                       :output
                                       notify-app-validation-output-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation put-app-launch-configuration :shape-name
                                       "PutAppLaunchConfiguration" :input
                                       put-app-launch-configuration-request
                                       :output
                                       put-app-launch-configuration-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation put-app-replication-configuration
                                       :shape-name
                                       "PutAppReplicationConfiguration" :input
                                       put-app-replication-configuration-request
                                       :output
                                       put-app-replication-configuration-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation put-app-validation-configuration
                                       :shape-name
                                       "PutAppValidationConfiguration" :input
                                       put-app-validation-configuration-request
                                       :output
                                       put-app-validation-configuration-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation start-app-replication :shape-name
                                       "StartAppReplication" :input
                                       start-app-replication-request :output
                                       start-app-replication-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation start-on-demand-app-replication
                                       :shape-name
                                       "StartOnDemandAppReplication" :input
                                       start-on-demand-app-replication-request
                                       :output
                                       start-on-demand-app-replication-response
                                       :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation start-on-demand-replication-run
                                       :shape-name
                                       "StartOnDemandReplicationRun" :input
                                       start-on-demand-replication-run-request
                                       :output
                                       start-on-demand-replication-run-response
                                       :errors
                                       (dry-run-operation-exception
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        replication-run-limit-exceeded-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation stop-app-replication :shape-name
                                       "StopAppReplication" :input
                                       stop-app-replication-request :output
                                       stop-app-replication-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation terminate-app :shape-name "TerminateApp"
                                       :input terminate-app-request :output
                                       terminate-app-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation update-app :shape-name "UpdateApp"
                                       :input update-app-request :output
                                       update-app-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        unauthorized-operation-exception))

(smithy/sdk/operation:define-operation update-replication-job :shape-name
                                       "UpdateReplicationJob" :input
                                       update-replication-job-request :output
                                       update-replication-job-response :errors
                                       (internal-error
                                        invalid-parameter-exception
                                        missing-required-parameter-exception
                                        operation-not-permitted-exception
                                        replication-job-not-found-exception
                                        server-cannot-be-replicated-exception
                                        temporarily-unavailable-exception
                                        unauthorized-operation-exception))
