(uiop/package:define-package #:pira/greengrass (:use)
                             (:export #:associate-role-to-group
                              #:associate-role-to-group-request
                              #:associate-role-to-group-response
                              #:associate-service-role-to-account
                              #:associate-service-role-to-account-request
                              #:associate-service-role-to-account-response
                              #:bad-request-exception #:bulk-deployment
                              #:bulk-deployment-metrics
                              #:bulk-deployment-result
                              #:bulk-deployment-results
                              #:bulk-deployment-status #:bulk-deployments
                              #:configuration-sync-status #:connectivity-info
                              #:connector #:connector-definition-version #:core
                              #:core-definition-version
                              #:create-connector-definition
                              #:create-connector-definition-request
                              #:create-connector-definition-response
                              #:create-connector-definition-version
                              #:create-connector-definition-version-request
                              #:create-connector-definition-version-response
                              #:create-core-definition
                              #:create-core-definition-request
                              #:create-core-definition-response
                              #:create-core-definition-version
                              #:create-core-definition-version-request
                              #:create-core-definition-version-response
                              #:create-deployment #:create-deployment-request
                              #:create-deployment-response
                              #:create-device-definition
                              #:create-device-definition-request
                              #:create-device-definition-response
                              #:create-device-definition-version
                              #:create-device-definition-version-request
                              #:create-device-definition-version-response
                              #:create-function-definition
                              #:create-function-definition-request
                              #:create-function-definition-response
                              #:create-function-definition-version
                              #:create-function-definition-version-request
                              #:create-function-definition-version-response
                              #:create-group
                              #:create-group-certificate-authority
                              #:create-group-certificate-authority-request
                              #:create-group-certificate-authority-response
                              #:create-group-request #:create-group-response
                              #:create-group-version
                              #:create-group-version-request
                              #:create-group-version-response
                              #:create-logger-definition
                              #:create-logger-definition-request
                              #:create-logger-definition-response
                              #:create-logger-definition-version
                              #:create-logger-definition-version-request
                              #:create-logger-definition-version-response
                              #:create-resource-definition
                              #:create-resource-definition-request
                              #:create-resource-definition-response
                              #:create-resource-definition-version
                              #:create-resource-definition-version-request
                              #:create-resource-definition-version-response
                              #:create-software-update-job
                              #:create-software-update-job-request
                              #:create-software-update-job-response
                              #:create-subscription-definition
                              #:create-subscription-definition-request
                              #:create-subscription-definition-response
                              #:create-subscription-definition-version
                              #:create-subscription-definition-version-request
                              #:create-subscription-definition-version-response
                              #:definition-information
                              #:delete-connector-definition
                              #:delete-connector-definition-request
                              #:delete-connector-definition-response
                              #:delete-core-definition
                              #:delete-core-definition-request
                              #:delete-core-definition-response
                              #:delete-device-definition
                              #:delete-device-definition-request
                              #:delete-device-definition-response
                              #:delete-function-definition
                              #:delete-function-definition-request
                              #:delete-function-definition-response
                              #:delete-group #:delete-group-request
                              #:delete-group-response
                              #:delete-logger-definition
                              #:delete-logger-definition-request
                              #:delete-logger-definition-response
                              #:delete-resource-definition
                              #:delete-resource-definition-request
                              #:delete-resource-definition-response
                              #:delete-subscription-definition
                              #:delete-subscription-definition-request
                              #:delete-subscription-definition-response
                              #:deployment #:deployment-type #:deployments
                              #:device #:device-definition-version
                              #:disassociate-role-from-group
                              #:disassociate-role-from-group-request
                              #:disassociate-role-from-group-response
                              #:disassociate-service-role-from-account
                              #:disassociate-service-role-from-account-request
                              #:disassociate-service-role-from-account-response
                              #:encoding-type #:error-detail #:error-details
                              #:function #:function-configuration
                              #:function-configuration-environment
                              #:function-default-config
                              #:function-default-execution-config
                              #:function-definition-version
                              #:function-execution-config
                              #:function-isolation-mode
                              #:function-run-as-config #:get-associated-role
                              #:get-associated-role-request
                              #:get-associated-role-response
                              #:get-bulk-deployment-status
                              #:get-bulk-deployment-status-request
                              #:get-bulk-deployment-status-response
                              #:get-connectivity-info
                              #:get-connectivity-info-request
                              #:get-connectivity-info-response
                              #:get-connector-definition
                              #:get-connector-definition-request
                              #:get-connector-definition-response
                              #:get-connector-definition-version
                              #:get-connector-definition-version-request
                              #:get-connector-definition-version-response
                              #:get-core-definition
                              #:get-core-definition-request
                              #:get-core-definition-response
                              #:get-core-definition-version
                              #:get-core-definition-version-request
                              #:get-core-definition-version-response
                              #:get-deployment-status
                              #:get-deployment-status-request
                              #:get-deployment-status-response
                              #:get-device-definition
                              #:get-device-definition-request
                              #:get-device-definition-response
                              #:get-device-definition-version
                              #:get-device-definition-version-request
                              #:get-device-definition-version-response
                              #:get-function-definition
                              #:get-function-definition-request
                              #:get-function-definition-response
                              #:get-function-definition-version
                              #:get-function-definition-version-request
                              #:get-function-definition-version-response
                              #:get-group #:get-group-certificate-authority
                              #:get-group-certificate-authority-request
                              #:get-group-certificate-authority-response
                              #:get-group-certificate-configuration
                              #:get-group-certificate-configuration-request
                              #:get-group-certificate-configuration-response
                              #:get-group-request #:get-group-response
                              #:get-group-version #:get-group-version-request
                              #:get-group-version-response
                              #:get-logger-definition
                              #:get-logger-definition-request
                              #:get-logger-definition-response
                              #:get-logger-definition-version
                              #:get-logger-definition-version-request
                              #:get-logger-definition-version-response
                              #:get-resource-definition
                              #:get-resource-definition-request
                              #:get-resource-definition-response
                              #:get-resource-definition-version
                              #:get-resource-definition-version-request
                              #:get-resource-definition-version-response
                              #:get-service-role-for-account
                              #:get-service-role-for-account-request
                              #:get-service-role-for-account-response
                              #:get-subscription-definition
                              #:get-subscription-definition-request
                              #:get-subscription-definition-response
                              #:get-subscription-definition-version
                              #:get-subscription-definition-version-request
                              #:get-subscription-definition-version-response
                              #:get-thing-runtime-configuration
                              #:get-thing-runtime-configuration-request
                              #:get-thing-runtime-configuration-response
                              #:greengrass
                              #:group-certificate-authority-properties
                              #:group-information #:group-owner-setting
                              #:group-version #:internal-server-error-exception
                              #:list-bulk-deployment-detailed-reports
                              #:list-bulk-deployment-detailed-reports-request
                              #:list-bulk-deployment-detailed-reports-response
                              #:list-bulk-deployments
                              #:list-bulk-deployments-request
                              #:list-bulk-deployments-response
                              #:list-connector-definition-versions
                              #:list-connector-definition-versions-request
                              #:list-connector-definition-versions-response
                              #:list-connector-definitions
                              #:list-connector-definitions-request
                              #:list-connector-definitions-response
                              #:list-core-definition-versions
                              #:list-core-definition-versions-request
                              #:list-core-definition-versions-response
                              #:list-core-definitions
                              #:list-core-definitions-request
                              #:list-core-definitions-response
                              #:list-deployments #:list-deployments-request
                              #:list-deployments-response
                              #:list-device-definition-versions
                              #:list-device-definition-versions-request
                              #:list-device-definition-versions-response
                              #:list-device-definitions
                              #:list-device-definitions-request
                              #:list-device-definitions-response
                              #:list-function-definition-versions
                              #:list-function-definition-versions-request
                              #:list-function-definition-versions-response
                              #:list-function-definitions
                              #:list-function-definitions-request
                              #:list-function-definitions-response
                              #:list-group-certificate-authorities
                              #:list-group-certificate-authorities-request
                              #:list-group-certificate-authorities-response
                              #:list-group-versions
                              #:list-group-versions-request
                              #:list-group-versions-response #:list-groups
                              #:list-groups-request #:list-groups-response
                              #:list-logger-definition-versions
                              #:list-logger-definition-versions-request
                              #:list-logger-definition-versions-response
                              #:list-logger-definitions
                              #:list-logger-definitions-request
                              #:list-logger-definitions-response
                              #:list-resource-definition-versions
                              #:list-resource-definition-versions-request
                              #:list-resource-definition-versions-response
                              #:list-resource-definitions
                              #:list-resource-definitions-request
                              #:list-resource-definitions-response
                              #:list-subscription-definition-versions
                              #:list-subscription-definition-versions-request
                              #:list-subscription-definition-versions-response
                              #:list-subscription-definitions
                              #:list-subscription-definitions-request
                              #:list-subscription-definitions-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:local-device-resource-data
                              #:local-volume-resource-data #:logger
                              #:logger-component #:logger-definition-version
                              #:logger-level #:logger-type #:permission
                              #:reset-deployments #:reset-deployments-request
                              #:reset-deployments-response #:resource
                              #:resource-access-policy
                              #:resource-data-container
                              #:resource-definition-version
                              #:resource-download-owner-setting
                              #:runtime-configuration
                              #:s3machine-learning-model-resource-data
                              #:s3url-signer-role
                              #:sage-maker-machine-learning-model-resource-data
                              #:secrets-manager-secret-resource-data
                              #:software-to-update #:start-bulk-deployment
                              #:start-bulk-deployment-request
                              #:start-bulk-deployment-response
                              #:stop-bulk-deployment
                              #:stop-bulk-deployment-request
                              #:stop-bulk-deployment-response #:subscription
                              #:subscription-definition-version #:tag-resource
                              #:tag-resource-request #:tags #:telemetry
                              #:telemetry-configuration
                              #:telemetry-configuration-update #:untag-resource
                              #:untag-resource-request #:update-agent-log-level
                              #:update-connectivity-info
                              #:update-connectivity-info-request
                              #:update-connectivity-info-response
                              #:update-connector-definition
                              #:update-connector-definition-request
                              #:update-connector-definition-response
                              #:update-core-definition
                              #:update-core-definition-request
                              #:update-core-definition-response
                              #:update-device-definition
                              #:update-device-definition-request
                              #:update-device-definition-response
                              #:update-function-definition
                              #:update-function-definition-request
                              #:update-function-definition-response
                              #:update-group
                              #:update-group-certificate-configuration
                              #:update-group-certificate-configuration-request
                              #:update-group-certificate-configuration-response
                              #:update-group-request #:update-group-response
                              #:update-logger-definition
                              #:update-logger-definition-request
                              #:update-logger-definition-response
                              #:update-resource-definition
                              #:update-resource-definition-request
                              #:update-resource-definition-response
                              #:update-subscription-definition
                              #:update-subscription-definition-request
                              #:update-subscription-definition-response
                              #:update-targets #:update-targets-architecture
                              #:update-targets-operating-system
                              #:update-thing-runtime-configuration
                              #:update-thing-runtime-configuration-request
                              #:update-thing-runtime-configuration-response
                              #:version-information #:boolean #:integer
                              #:list-of-connectivity-info #:list-of-connector
                              #:list-of-core #:list-of-definition-information
                              #:list-of-device #:list-of-function
                              #:list-of-group-certificate-authority-properties
                              #:list-of-group-information #:list-of-logger
                              #:list-of-resource
                              #:list-of-resource-access-policy
                              #:list-of-subscription
                              #:list-of-version-information #:list-of-string
                              #:map-of-string #:string))
(common-lisp:in-package #:pira/greengrass)

(smithy/sdk/service:define-service greengrass :shape-name "Greengrass" :version
                                   "2017-06-07" :title "AWS Greengrass" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Greengrass")
                                      ("arnNamespace" . "greengrass")
                                      ("cloudFormationName" . "Greengrass")
                                      ("cloudTrailEventSource"
                                       . "greengrass.amazonaws.com")
                                      ("endpointPrefix" . "greengrass"))
                                     ("aws.auth#sigv4" ("name" . "greengrass"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input associate-role-to-group-request common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t)
                                 (role-arn :target-type string :required
                                  common-lisp:t :member-name "RoleArn"))
                                (:shape-name "AssociateRoleToGroupRequest"))

(smithy/sdk/shapes:define-output associate-role-to-group-response
                                 common-lisp:nil
                                 ((associated-at :target-type string
                                   :member-name "AssociatedAt"))
                                 (:shape-name "AssociateRoleToGroupResponse"))

(smithy/sdk/shapes:define-input associate-service-role-to-account-request
                                common-lisp:nil
                                ((role-arn :target-type string :required
                                  common-lisp:t :member-name "RoleArn"))
                                (:shape-name
                                 "AssociateServiceRoleToAccountRequest"))

(smithy/sdk/shapes:define-output associate-service-role-to-account-response
                                 common-lisp:nil
                                 ((associated-at :target-type string
                                   :member-name "AssociatedAt"))
                                 (:shape-name
                                  "AssociateServiceRoleToAccountResponse"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((error-details :target-type error-details
                                  :member-name "ErrorDetails")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure bulk-deployment common-lisp:nil
                                    ((bulk-deployment-arn :target-type string
                                      :member-name "BulkDeploymentArn")
                                     (bulk-deployment-id :target-type string
                                      :member-name "BulkDeploymentId")
                                     (created-at :target-type string
                                      :member-name "CreatedAt"))
                                    (:shape-name "BulkDeployment"))

(smithy/sdk/shapes:define-structure bulk-deployment-metrics common-lisp:nil
                                    ((invalid-input-records :target-type
                                      integer :member-name
                                      "InvalidInputRecords")
                                     (records-processed :target-type integer
                                      :member-name "RecordsProcessed")
                                     (retry-attempts :target-type integer
                                      :member-name "RetryAttempts"))
                                    (:shape-name "BulkDeploymentMetrics"))

(smithy/sdk/shapes:define-structure bulk-deployment-result common-lisp:nil
                                    ((created-at :target-type string
                                      :member-name "CreatedAt")
                                     (deployment-arn :target-type string
                                      :member-name "DeploymentArn")
                                     (deployment-id :target-type string
                                      :member-name "DeploymentId")
                                     (deployment-status :target-type string
                                      :member-name "DeploymentStatus")
                                     (deployment-type :target-type
                                      deployment-type :member-name
                                      "DeploymentType")
                                     (error-details :target-type error-details
                                      :member-name "ErrorDetails")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (group-arn :target-type string
                                      :member-name "GroupArn"))
                                    (:shape-name "BulkDeploymentResult"))

(smithy/sdk/shapes:define-list bulk-deployment-results :member
                               bulk-deployment-result)

(smithy/sdk/shapes:define-enum bulk-deployment-status
    common-lisp:nil
  (:initializing "Initializing")
  (:running "Running")
  (:completed "Completed")
  (:stopping "Stopping")
  (:stopped "Stopped")
  (:failed "Failed"))

(smithy/sdk/shapes:define-list bulk-deployments :member bulk-deployment)

(smithy/sdk/shapes:define-enum configuration-sync-status
    common-lisp:nil
  (:in-sync "InSync")
  (:out-of-sync "OutOfSync"))

(smithy/sdk/shapes:define-structure connectivity-info common-lisp:nil
                                    ((host-address :target-type string
                                      :member-name "HostAddress")
                                     (id :target-type string :member-name "Id")
                                     (metadata :target-type string :member-name
                                      "Metadata")
                                     (port-number :target-type integer
                                      :member-name "PortNumber"))
                                    (:shape-name "ConnectivityInfo"))

(smithy/sdk/shapes:define-structure connector common-lisp:nil
                                    ((connector-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "ConnectorArn")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (parameters :target-type map-of-string
                                      :member-name "Parameters"))
                                    (:shape-name "Connector"))

(smithy/sdk/shapes:define-structure connector-definition-version
                                    common-lisp:nil
                                    ((connectors :target-type list-of-connector
                                      :member-name "Connectors"))
                                    (:shape-name "ConnectorDefinitionVersion"))

(smithy/sdk/shapes:define-structure core common-lisp:nil
                                    ((certificate-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "CertificateArn")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (sync-shadow :target-type boolean
                                      :member-name "SyncShadow")
                                     (thing-arn :target-type string :required
                                      common-lisp:t :member-name "ThingArn"))
                                    (:shape-name "Core"))

(smithy/sdk/shapes:define-structure core-definition-version common-lisp:nil
                                    ((cores :target-type list-of-core
                                      :member-name "Cores"))
                                    (:shape-name "CoreDefinitionVersion"))

(smithy/sdk/shapes:define-input create-connector-definition-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (initial-version :target-type
                                  connector-definition-version :member-name
                                  "InitialVersion")
                                 (name :target-type string :member-name "Name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "CreateConnectorDefinitionRequest"))

(smithy/sdk/shapes:define-output create-connector-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name"))
                                 (:shape-name
                                  "CreateConnectorDefinitionResponse"))

(smithy/sdk/shapes:define-input create-connector-definition-version-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (connector-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConnectorDefinitionId" :http-label
                                  common-lisp:t)
                                 (connectors :target-type list-of-connector
                                  :member-name "Connectors"))
                                (:shape-name
                                 "CreateConnectorDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output create-connector-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "CreateConnectorDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input create-core-definition-request common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (initial-version :target-type
                                  core-definition-version :member-name
                                  "InitialVersion")
                                 (name :target-type string :member-name "Name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateCoreDefinitionRequest"))

(smithy/sdk/shapes:define-output create-core-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name"))
                                 (:shape-name "CreateCoreDefinitionResponse"))

(smithy/sdk/shapes:define-input create-core-definition-version-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (core-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CoreDefinitionId" :http-label common-lisp:t)
                                 (cores :target-type list-of-core :member-name
                                  "Cores"))
                                (:shape-name
                                 "CreateCoreDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output create-core-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "CreateCoreDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input create-deployment-request common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (deployment-id :target-type string
                                  :member-name "DeploymentId")
                                 (deployment-type :target-type deployment-type
                                  :required common-lisp:t :member-name
                                  "DeploymentType")
                                 (group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t)
                                 (group-version-id :target-type string
                                  :member-name "GroupVersionId"))
                                (:shape-name "CreateDeploymentRequest"))

(smithy/sdk/shapes:define-output create-deployment-response common-lisp:nil
                                 ((deployment-arn :target-type string
                                   :member-name "DeploymentArn")
                                  (deployment-id :target-type string
                                   :member-name "DeploymentId"))
                                 (:shape-name "CreateDeploymentResponse"))

(smithy/sdk/shapes:define-input create-device-definition-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (initial-version :target-type
                                  device-definition-version :member-name
                                  "InitialVersion")
                                 (name :target-type string :member-name "Name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateDeviceDefinitionRequest"))

(smithy/sdk/shapes:define-output create-device-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name"))
                                 (:shape-name "CreateDeviceDefinitionResponse"))

(smithy/sdk/shapes:define-input create-device-definition-version-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (device-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "DeviceDefinitionId" :http-label
                                  common-lisp:t)
                                 (devices :target-type list-of-device
                                  :member-name "Devices"))
                                (:shape-name
                                 "CreateDeviceDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output create-device-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "CreateDeviceDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input create-function-definition-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (initial-version :target-type
                                  function-definition-version :member-name
                                  "InitialVersion")
                                 (name :target-type string :member-name "Name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateFunctionDefinitionRequest"))

(smithy/sdk/shapes:define-output create-function-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name"))
                                 (:shape-name
                                  "CreateFunctionDefinitionResponse"))

(smithy/sdk/shapes:define-input create-function-definition-version-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (default-config :target-type
                                  function-default-config :member-name
                                  "DefaultConfig")
                                 (function-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "FunctionDefinitionId" :http-label
                                  common-lisp:t)
                                 (functions :target-type list-of-function
                                  :member-name "Functions"))
                                (:shape-name
                                 "CreateFunctionDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output create-function-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "CreateFunctionDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input create-group-certificate-authority-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "CreateGroupCertificateAuthorityRequest"))

(smithy/sdk/shapes:define-output create-group-certificate-authority-response
                                 common-lisp:nil
                                 ((group-certificate-authority-arn :target-type
                                   string :member-name
                                   "GroupCertificateAuthorityArn"))
                                 (:shape-name
                                  "CreateGroupCertificateAuthorityResponse"))

(smithy/sdk/shapes:define-input create-group-request common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (initial-version :target-type group-version
                                  :member-name "InitialVersion")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateGroupRequest"))

(smithy/sdk/shapes:define-output create-group-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name"))
                                 (:shape-name "CreateGroupResponse"))

(smithy/sdk/shapes:define-input create-group-version-request common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (connector-definition-version-arn :target-type
                                  string :member-name
                                  "ConnectorDefinitionVersionArn")
                                 (core-definition-version-arn :target-type
                                  string :member-name
                                  "CoreDefinitionVersionArn")
                                 (device-definition-version-arn :target-type
                                  string :member-name
                                  "DeviceDefinitionVersionArn")
                                 (function-definition-version-arn :target-type
                                  string :member-name
                                  "FunctionDefinitionVersionArn")
                                 (group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t)
                                 (logger-definition-version-arn :target-type
                                  string :member-name
                                  "LoggerDefinitionVersionArn")
                                 (resource-definition-version-arn :target-type
                                  string :member-name
                                  "ResourceDefinitionVersionArn")
                                 (subscription-definition-version-arn
                                  :target-type string :member-name
                                  "SubscriptionDefinitionVersionArn"))
                                (:shape-name "CreateGroupVersionRequest"))

(smithy/sdk/shapes:define-output create-group-version-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name "CreateGroupVersionResponse"))

(smithy/sdk/shapes:define-input create-logger-definition-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (initial-version :target-type
                                  logger-definition-version :member-name
                                  "InitialVersion")
                                 (name :target-type string :member-name "Name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateLoggerDefinitionRequest"))

(smithy/sdk/shapes:define-output create-logger-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name"))
                                 (:shape-name "CreateLoggerDefinitionResponse"))

(smithy/sdk/shapes:define-input create-logger-definition-version-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (logger-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "LoggerDefinitionId" :http-label
                                  common-lisp:t)
                                 (loggers :target-type list-of-logger
                                  :member-name "Loggers"))
                                (:shape-name
                                 "CreateLoggerDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output create-logger-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "CreateLoggerDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input create-resource-definition-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (initial-version :target-type
                                  resource-definition-version :member-name
                                  "InitialVersion")
                                 (name :target-type string :member-name "Name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateResourceDefinitionRequest"))

(smithy/sdk/shapes:define-output create-resource-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name"))
                                 (:shape-name
                                  "CreateResourceDefinitionResponse"))

(smithy/sdk/shapes:define-input create-resource-definition-version-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (resource-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceDefinitionId" :http-label
                                  common-lisp:t)
                                 (resources :target-type list-of-resource
                                  :member-name "Resources"))
                                (:shape-name
                                 "CreateResourceDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output create-resource-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "CreateResourceDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input create-software-update-job-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (s3url-signer-role :target-type
                                  s3url-signer-role :required common-lisp:t
                                  :member-name "S3UrlSignerRole")
                                 (software-to-update :target-type
                                  software-to-update :required common-lisp:t
                                  :member-name "SoftwareToUpdate")
                                 (update-agent-log-level :target-type
                                  update-agent-log-level :member-name
                                  "UpdateAgentLogLevel")
                                 (update-targets :target-type update-targets
                                  :required common-lisp:t :member-name
                                  "UpdateTargets")
                                 (update-targets-architecture :target-type
                                  update-targets-architecture :required
                                  common-lisp:t :member-name
                                  "UpdateTargetsArchitecture")
                                 (update-targets-operating-system :target-type
                                  update-targets-operating-system :required
                                  common-lisp:t :member-name
                                  "UpdateTargetsOperatingSystem"))
                                (:shape-name "CreateSoftwareUpdateJobRequest"))

(smithy/sdk/shapes:define-output create-software-update-job-response
                                 common-lisp:nil
                                 ((iot-job-arn :target-type string :member-name
                                   "IotJobArn")
                                  (iot-job-id :target-type string :member-name
                                   "IotJobId")
                                  (platform-software-version :target-type
                                   string :member-name
                                   "PlatformSoftwareVersion"))
                                 (:shape-name
                                  "CreateSoftwareUpdateJobResponse"))

(smithy/sdk/shapes:define-input create-subscription-definition-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (initial-version :target-type
                                  subscription-definition-version :member-name
                                  "InitialVersion")
                                 (name :target-type string :member-name "Name")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name
                                 "CreateSubscriptionDefinitionRequest"))

(smithy/sdk/shapes:define-output create-subscription-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name"))
                                 (:shape-name
                                  "CreateSubscriptionDefinitionResponse"))

(smithy/sdk/shapes:define-input create-subscription-definition-version-request
                                common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (subscription-definition-id :target-type
                                  string :required common-lisp:t :member-name
                                  "SubscriptionDefinitionId" :http-label
                                  common-lisp:t)
                                 (subscriptions :target-type
                                  list-of-subscription :member-name
                                  "Subscriptions"))
                                (:shape-name
                                 "CreateSubscriptionDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output
 create-subscription-definition-version-response common-lisp:nil
 ((arn :target-type string :member-name "Arn")
  (creation-timestamp :target-type string :member-name "CreationTimestamp")
  (id :target-type string :member-name "Id")
  (version :target-type string :member-name "Version"))
 (:shape-name "CreateSubscriptionDefinitionVersionResponse"))

(smithy/sdk/shapes:define-structure definition-information common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-timestamp :target-type string
                                      :member-name "CreationTimestamp")
                                     (id :target-type string :member-name "Id")
                                     (last-updated-timestamp :target-type
                                      string :member-name
                                      "LastUpdatedTimestamp")
                                     (latest-version :target-type string
                                      :member-name "LatestVersion")
                                     (latest-version-arn :target-type string
                                      :member-name "LatestVersionArn")
                                     (name :target-type string :member-name
                                      "Name")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "DefinitionInformation"))

(smithy/sdk/shapes:define-input delete-connector-definition-request
                                common-lisp:nil
                                ((connector-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConnectorDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteConnectorDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-connector-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteConnectorDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-core-definition-request common-lisp:nil
                                ((core-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CoreDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteCoreDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-core-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteCoreDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-device-definition-request
                                common-lisp:nil
                                ((device-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "DeviceDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDeviceDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-device-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteDeviceDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-function-definition-request
                                common-lisp:nil
                                ((function-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "FunctionDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteFunctionDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-function-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteFunctionDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-group-request common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteGroupRequest"))

(smithy/sdk/shapes:define-output delete-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGroupResponse"))

(smithy/sdk/shapes:define-input delete-logger-definition-request
                                common-lisp:nil
                                ((logger-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "LoggerDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteLoggerDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-logger-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteLoggerDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-resource-definition-request
                                common-lisp:nil
                                ((resource-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteResourceDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-resource-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteResourceDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-subscription-definition-request
                                common-lisp:nil
                                ((subscription-definition-id :target-type
                                  string :required common-lisp:t :member-name
                                  "SubscriptionDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteSubscriptionDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-subscription-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSubscriptionDefinitionResponse"))

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((created-at :target-type string
                                      :member-name "CreatedAt")
                                     (deployment-arn :target-type string
                                      :member-name "DeploymentArn")
                                     (deployment-id :target-type string
                                      :member-name "DeploymentId")
                                     (deployment-type :target-type
                                      deployment-type :member-name
                                      "DeploymentType")
                                     (group-arn :target-type string
                                      :member-name "GroupArn"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-enum deployment-type
    common-lisp:nil
  (:new-deployment "NewDeployment")
  (:redeployment "Redeployment")
  (:reset-deployment "ResetDeployment")
  (:force-reset-deployment "ForceResetDeployment"))

(smithy/sdk/shapes:define-list deployments :member deployment)

(smithy/sdk/shapes:define-structure device common-lisp:nil
                                    ((certificate-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "CertificateArn")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (sync-shadow :target-type boolean
                                      :member-name "SyncShadow")
                                     (thing-arn :target-type string :required
                                      common-lisp:t :member-name "ThingArn"))
                                    (:shape-name "Device"))

(smithy/sdk/shapes:define-structure device-definition-version common-lisp:nil
                                    ((devices :target-type list-of-device
                                      :member-name "Devices"))
                                    (:shape-name "DeviceDefinitionVersion"))

(smithy/sdk/shapes:define-input disassociate-role-from-group-request
                                common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateRoleFromGroupRequest"))

(smithy/sdk/shapes:define-output disassociate-role-from-group-response
                                 common-lisp:nil
                                 ((disassociated-at :target-type string
                                   :member-name "DisassociatedAt"))
                                 (:shape-name
                                  "DisassociateRoleFromGroupResponse"))

(smithy/sdk/shapes:define-input disassociate-service-role-from-account-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DisassociateServiceRoleFromAccountRequest"))

(smithy/sdk/shapes:define-output
 disassociate-service-role-from-account-response common-lisp:nil
 ((disassociated-at :target-type string :member-name "DisassociatedAt"))
 (:shape-name "DisassociateServiceRoleFromAccountResponse"))

(smithy/sdk/shapes:define-enum encoding-type
    common-lisp:nil
  (:binary "binary")
  (:json "json"))

(smithy/sdk/shapes:define-structure error-detail common-lisp:nil
                                    ((detailed-error-code :target-type string
                                      :member-name "DetailedErrorCode")
                                     (detailed-error-message :target-type
                                      string :member-name
                                      "DetailedErrorMessage"))
                                    (:shape-name "ErrorDetail"))

(smithy/sdk/shapes:define-list error-details :member error-detail)

(smithy/sdk/shapes:define-structure function common-lisp:nil
                                    ((function-arn :target-type string
                                      :member-name "FunctionArn")
                                     (function-configuration :target-type
                                      function-configuration :member-name
                                      "FunctionConfiguration")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id"))
                                    (:shape-name "Function"))

(smithy/sdk/shapes:define-structure function-configuration common-lisp:nil
                                    ((encoding-type :target-type encoding-type
                                      :member-name "EncodingType")
                                     (environment :target-type
                                      function-configuration-environment
                                      :member-name "Environment")
                                     (exec-args :target-type string
                                      :member-name "ExecArgs")
                                     (executable :target-type string
                                      :member-name "Executable")
                                     (memory-size :target-type integer
                                      :member-name "MemorySize")
                                     (pinned :target-type boolean :member-name
                                      "Pinned")
                                     (timeout :target-type integer :member-name
                                      "Timeout")
                                     (function-runtime-override :target-type
                                      string :member-name
                                      "FunctionRuntimeOverride"))
                                    (:shape-name "FunctionConfiguration"))

(smithy/sdk/shapes:define-structure function-configuration-environment
                                    common-lisp:nil
                                    ((access-sysfs :target-type boolean
                                      :member-name "AccessSysfs")
                                     (execution :target-type
                                      function-execution-config :member-name
                                      "Execution")
                                     (resource-access-policies :target-type
                                      list-of-resource-access-policy
                                      :member-name "ResourceAccessPolicies")
                                     (variables :target-type map-of-string
                                      :member-name "Variables"))
                                    (:shape-name
                                     "FunctionConfigurationEnvironment"))

(smithy/sdk/shapes:define-structure function-default-config common-lisp:nil
                                    ((execution :target-type
                                      function-default-execution-config
                                      :member-name "Execution"))
                                    (:shape-name "FunctionDefaultConfig"))

(smithy/sdk/shapes:define-structure function-default-execution-config
                                    common-lisp:nil
                                    ((isolation-mode :target-type
                                      function-isolation-mode :member-name
                                      "IsolationMode")
                                     (run-as :target-type
                                      function-run-as-config :member-name
                                      "RunAs"))
                                    (:shape-name
                                     "FunctionDefaultExecutionConfig"))

(smithy/sdk/shapes:define-structure function-definition-version common-lisp:nil
                                    ((default-config :target-type
                                      function-default-config :member-name
                                      "DefaultConfig")
                                     (functions :target-type list-of-function
                                      :member-name "Functions"))
                                    (:shape-name "FunctionDefinitionVersion"))

(smithy/sdk/shapes:define-structure function-execution-config common-lisp:nil
                                    ((isolation-mode :target-type
                                      function-isolation-mode :member-name
                                      "IsolationMode")
                                     (run-as :target-type
                                      function-run-as-config :member-name
                                      "RunAs"))
                                    (:shape-name "FunctionExecutionConfig"))

(smithy/sdk/shapes:define-enum function-isolation-mode
    common-lisp:nil
  (:greengrass-container "GreengrassContainer")
  (:no-container "NoContainer"))

(smithy/sdk/shapes:define-structure function-run-as-config common-lisp:nil
                                    ((gid :target-type integer :member-name
                                      "Gid")
                                     (uid :target-type integer :member-name
                                      "Uid"))
                                    (:shape-name "FunctionRunAsConfig"))

(smithy/sdk/shapes:define-input get-associated-role-request common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAssociatedRoleRequest"))

(smithy/sdk/shapes:define-output get-associated-role-response common-lisp:nil
                                 ((associated-at :target-type string
                                   :member-name "AssociatedAt")
                                  (role-arn :target-type string :member-name
                                   "RoleArn"))
                                 (:shape-name "GetAssociatedRoleResponse"))

(smithy/sdk/shapes:define-input get-bulk-deployment-status-request
                                common-lisp:nil
                                ((bulk-deployment-id :target-type string
                                  :required common-lisp:t :member-name
                                  "BulkDeploymentId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetBulkDeploymentStatusRequest"))

(smithy/sdk/shapes:define-output get-bulk-deployment-status-response
                                 common-lisp:nil
                                 ((bulk-deployment-metrics :target-type
                                   bulk-deployment-metrics :member-name
                                   "BulkDeploymentMetrics")
                                  (bulk-deployment-status :target-type
                                   bulk-deployment-status :member-name
                                   "BulkDeploymentStatus")
                                  (created-at :target-type string :member-name
                                   "CreatedAt")
                                  (error-details :target-type error-details
                                   :member-name "ErrorDetails")
                                  (error-message :target-type string
                                   :member-name "ErrorMessage")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name
                                  "GetBulkDeploymentStatusResponse"))

(smithy/sdk/shapes:define-input get-connectivity-info-request common-lisp:nil
                                ((thing-name :target-type string :required
                                  common-lisp:t :member-name "ThingName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetConnectivityInfoRequest"))

(smithy/sdk/shapes:define-output get-connectivity-info-response common-lisp:nil
                                 ((connectivity-info :target-type
                                   list-of-connectivity-info :member-name
                                   "ConnectivityInfo")
                                  (message :target-type string :member-name
                                   "Message" :json-name "message"))
                                 (:shape-name "GetConnectivityInfoResponse"))

(smithy/sdk/shapes:define-input get-connector-definition-request
                                common-lisp:nil
                                ((connector-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConnectorDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetConnectorDefinitionRequest"))

(smithy/sdk/shapes:define-output get-connector-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "GetConnectorDefinitionResponse"))

(smithy/sdk/shapes:define-input get-connector-definition-version-request
                                common-lisp:nil
                                ((connector-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConnectorDefinitionId" :http-label
                                  common-lisp:t)
                                 (connector-definition-version-id :target-type
                                  string :required common-lisp:t :member-name
                                  "ConnectorDefinitionVersionId" :http-label
                                  common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "GetConnectorDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output get-connector-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (definition :target-type
                                   connector-definition-version :member-name
                                   "Definition")
                                  (id :target-type string :member-name "Id")
                                  (next-token :target-type string :member-name
                                   "NextToken")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "GetConnectorDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input get-core-definition-request common-lisp:nil
                                ((core-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CoreDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCoreDefinitionRequest"))

(smithy/sdk/shapes:define-output get-core-definition-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "GetCoreDefinitionResponse"))

(smithy/sdk/shapes:define-input get-core-definition-version-request
                                common-lisp:nil
                                ((core-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CoreDefinitionId" :http-label common-lisp:t)
                                 (core-definition-version-id :target-type
                                  string :required common-lisp:t :member-name
                                  "CoreDefinitionVersionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCoreDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output get-core-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (definition :target-type
                                   core-definition-version :member-name
                                   "Definition")
                                  (id :target-type string :member-name "Id")
                                  (next-token :target-type string :member-name
                                   "NextToken")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "GetCoreDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input get-deployment-status-request common-lisp:nil
                                ((deployment-id :target-type string :required
                                  common-lisp:t :member-name "DeploymentId"
                                  :http-label common-lisp:t)
                                 (group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDeploymentStatusRequest"))

(smithy/sdk/shapes:define-output get-deployment-status-response common-lisp:nil
                                 ((deployment-status :target-type string
                                   :member-name "DeploymentStatus")
                                  (deployment-type :target-type deployment-type
                                   :member-name "DeploymentType")
                                  (error-details :target-type error-details
                                   :member-name "ErrorDetails")
                                  (error-message :target-type string
                                   :member-name "ErrorMessage")
                                  (updated-at :target-type string :member-name
                                   "UpdatedAt"))
                                 (:shape-name "GetDeploymentStatusResponse"))

(smithy/sdk/shapes:define-input get-device-definition-request common-lisp:nil
                                ((device-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "DeviceDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDeviceDefinitionRequest"))

(smithy/sdk/shapes:define-output get-device-definition-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "GetDeviceDefinitionResponse"))

(smithy/sdk/shapes:define-input get-device-definition-version-request
                                common-lisp:nil
                                ((device-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "DeviceDefinitionId" :http-label
                                  common-lisp:t)
                                 (device-definition-version-id :target-type
                                  string :required common-lisp:t :member-name
                                  "DeviceDefinitionVersionId" :http-label
                                  common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "GetDeviceDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output get-device-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (definition :target-type
                                   device-definition-version :member-name
                                   "Definition")
                                  (id :target-type string :member-name "Id")
                                  (next-token :target-type string :member-name
                                   "NextToken")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "GetDeviceDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input get-function-definition-request common-lisp:nil
                                ((function-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "FunctionDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetFunctionDefinitionRequest"))

(smithy/sdk/shapes:define-output get-function-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "GetFunctionDefinitionResponse"))

(smithy/sdk/shapes:define-input get-function-definition-version-request
                                common-lisp:nil
                                ((function-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "FunctionDefinitionId" :http-label
                                  common-lisp:t)
                                 (function-definition-version-id :target-type
                                  string :required common-lisp:t :member-name
                                  "FunctionDefinitionVersionId" :http-label
                                  common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "GetFunctionDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output get-function-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (definition :target-type
                                   function-definition-version :member-name
                                   "Definition")
                                  (id :target-type string :member-name "Id")
                                  (next-token :target-type string :member-name
                                   "NextToken")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "GetFunctionDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input get-group-certificate-authority-request
                                common-lisp:nil
                                ((certificate-authority-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityId" :http-label
                                  common-lisp:t)
                                 (group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetGroupCertificateAuthorityRequest"))

(smithy/sdk/shapes:define-output get-group-certificate-authority-response
                                 common-lisp:nil
                                 ((group-certificate-authority-arn :target-type
                                   string :member-name
                                   "GroupCertificateAuthorityArn")
                                  (group-certificate-authority-id :target-type
                                   string :member-name
                                   "GroupCertificateAuthorityId")
                                  (pem-encoded-certificate :target-type string
                                   :member-name "PemEncodedCertificate"))
                                 (:shape-name
                                  "GetGroupCertificateAuthorityResponse"))

(smithy/sdk/shapes:define-input get-group-certificate-configuration-request
                                common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetGroupCertificateConfigurationRequest"))

(smithy/sdk/shapes:define-output get-group-certificate-configuration-response
                                 common-lisp:nil
                                 ((certificate-authority-expiry-in-milliseconds
                                   :target-type string :member-name
                                   "CertificateAuthorityExpiryInMilliseconds")
                                  (certificate-expiry-in-milliseconds
                                   :target-type string :member-name
                                   "CertificateExpiryInMilliseconds")
                                  (group-id :target-type string :member-name
                                   "GroupId"))
                                 (:shape-name
                                  "GetGroupCertificateConfigurationResponse"))

(smithy/sdk/shapes:define-input get-group-request common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetGroupRequest"))

(smithy/sdk/shapes:define-output get-group-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "GetGroupResponse"))

(smithy/sdk/shapes:define-input get-group-version-request common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t)
                                 (group-version-id :target-type string
                                  :required common-lisp:t :member-name
                                  "GroupVersionId" :http-label common-lisp:t))
                                (:shape-name "GetGroupVersionRequest"))

(smithy/sdk/shapes:define-output get-group-version-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (definition :target-type group-version
                                   :member-name "Definition")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name "GetGroupVersionResponse"))

(smithy/sdk/shapes:define-input get-logger-definition-request common-lisp:nil
                                ((logger-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "LoggerDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetLoggerDefinitionRequest"))

(smithy/sdk/shapes:define-output get-logger-definition-response common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "GetLoggerDefinitionResponse"))

(smithy/sdk/shapes:define-input get-logger-definition-version-request
                                common-lisp:nil
                                ((logger-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "LoggerDefinitionId" :http-label
                                  common-lisp:t)
                                 (logger-definition-version-id :target-type
                                  string :required common-lisp:t :member-name
                                  "LoggerDefinitionVersionId" :http-label
                                  common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "GetLoggerDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output get-logger-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (definition :target-type
                                   logger-definition-version :member-name
                                   "Definition")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "GetLoggerDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input get-resource-definition-request common-lisp:nil
                                ((resource-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetResourceDefinitionRequest"))

(smithy/sdk/shapes:define-output get-resource-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name "GetResourceDefinitionResponse"))

(smithy/sdk/shapes:define-input get-resource-definition-version-request
                                common-lisp:nil
                                ((resource-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceDefinitionId" :http-label
                                  common-lisp:t)
                                 (resource-definition-version-id :target-type
                                  string :required common-lisp:t :member-name
                                  "ResourceDefinitionVersionId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetResourceDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output get-resource-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (definition :target-type
                                   resource-definition-version :member-name
                                   "Definition")
                                  (id :target-type string :member-name "Id")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "GetResourceDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input get-service-role-for-account-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetServiceRoleForAccountRequest"))

(smithy/sdk/shapes:define-output get-service-role-for-account-response
                                 common-lisp:nil
                                 ((associated-at :target-type string
                                   :member-name "AssociatedAt")
                                  (role-arn :target-type string :member-name
                                   "RoleArn"))
                                 (:shape-name
                                  "GetServiceRoleForAccountResponse"))

(smithy/sdk/shapes:define-input get-subscription-definition-request
                                common-lisp:nil
                                ((subscription-definition-id :target-type
                                  string :required common-lisp:t :member-name
                                  "SubscriptionDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetSubscriptionDefinitionRequest"))

(smithy/sdk/shapes:define-output get-subscription-definition-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (id :target-type string :member-name "Id")
                                  (last-updated-timestamp :target-type string
                                   :member-name "LastUpdatedTimestamp")
                                  (latest-version :target-type string
                                   :member-name "LatestVersion")
                                  (latest-version-arn :target-type string
                                   :member-name "LatestVersionArn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (tags :target-type tags :member-name "tags"))
                                 (:shape-name
                                  "GetSubscriptionDefinitionResponse"))

(smithy/sdk/shapes:define-input get-subscription-definition-version-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (subscription-definition-id :target-type
                                  string :required common-lisp:t :member-name
                                  "SubscriptionDefinitionId" :http-label
                                  common-lisp:t)
                                 (subscription-definition-version-id
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "SubscriptionDefinitionVersionId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetSubscriptionDefinitionVersionRequest"))

(smithy/sdk/shapes:define-output get-subscription-definition-version-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn")
                                  (creation-timestamp :target-type string
                                   :member-name "CreationTimestamp")
                                  (definition :target-type
                                   subscription-definition-version :member-name
                                   "Definition")
                                  (id :target-type string :member-name "Id")
                                  (next-token :target-type string :member-name
                                   "NextToken")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name
                                  "GetSubscriptionDefinitionVersionResponse"))

(smithy/sdk/shapes:define-input get-thing-runtime-configuration-request
                                common-lisp:nil
                                ((thing-name :target-type string :required
                                  common-lisp:t :member-name "ThingName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetThingRuntimeConfigurationRequest"))

(smithy/sdk/shapes:define-output get-thing-runtime-configuration-response
                                 common-lisp:nil
                                 ((runtime-configuration :target-type
                                   runtime-configuration :member-name
                                   "RuntimeConfiguration"))
                                 (:shape-name
                                  "GetThingRuntimeConfigurationResponse"))

(smithy/sdk/shapes:define-structure group-certificate-authority-properties
                                    common-lisp:nil
                                    ((group-certificate-authority-arn
                                      :target-type string :member-name
                                      "GroupCertificateAuthorityArn")
                                     (group-certificate-authority-id
                                      :target-type string :member-name
                                      "GroupCertificateAuthorityId"))
                                    (:shape-name
                                     "GroupCertificateAuthorityProperties"))

(smithy/sdk/shapes:define-structure group-information common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-timestamp :target-type string
                                      :member-name "CreationTimestamp")
                                     (id :target-type string :member-name "Id")
                                     (last-updated-timestamp :target-type
                                      string :member-name
                                      "LastUpdatedTimestamp")
                                     (latest-version :target-type string
                                      :member-name "LatestVersion")
                                     (latest-version-arn :target-type string
                                      :member-name "LatestVersionArn")
                                     (name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "GroupInformation"))

(smithy/sdk/shapes:define-structure group-owner-setting common-lisp:nil
                                    ((auto-add-group-owner :target-type boolean
                                      :member-name "AutoAddGroupOwner")
                                     (group-owner :target-type string
                                      :member-name "GroupOwner"))
                                    (:shape-name "GroupOwnerSetting"))

(smithy/sdk/shapes:define-structure group-version common-lisp:nil
                                    ((connector-definition-version-arn
                                      :target-type string :member-name
                                      "ConnectorDefinitionVersionArn")
                                     (core-definition-version-arn :target-type
                                      string :member-name
                                      "CoreDefinitionVersionArn")
                                     (device-definition-version-arn
                                      :target-type string :member-name
                                      "DeviceDefinitionVersionArn")
                                     (function-definition-version-arn
                                      :target-type string :member-name
                                      "FunctionDefinitionVersionArn")
                                     (logger-definition-version-arn
                                      :target-type string :member-name
                                      "LoggerDefinitionVersionArn")
                                     (resource-definition-version-arn
                                      :target-type string :member-name
                                      "ResourceDefinitionVersionArn")
                                     (subscription-definition-version-arn
                                      :target-type string :member-name
                                      "SubscriptionDefinitionVersionArn"))
                                    (:shape-name "GroupVersion"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((error-details :target-type error-details
                                  :member-name "ErrorDetails")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-bulk-deployment-detailed-reports-request
                                common-lisp:nil
                                ((bulk-deployment-id :target-type string
                                  :required common-lisp:t :member-name
                                  "BulkDeploymentId" :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "ListBulkDeploymentDetailedReportsRequest"))

(smithy/sdk/shapes:define-output list-bulk-deployment-detailed-reports-response
                                 common-lisp:nil
                                 ((deployments :target-type
                                   bulk-deployment-results :member-name
                                   "Deployments")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListBulkDeploymentDetailedReportsResponse"))

(smithy/sdk/shapes:define-input list-bulk-deployments-request common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListBulkDeploymentsRequest"))

(smithy/sdk/shapes:define-output list-bulk-deployments-response common-lisp:nil
                                 ((bulk-deployments :target-type
                                   bulk-deployments :member-name
                                   "BulkDeployments")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListBulkDeploymentsResponse"))

(smithy/sdk/shapes:define-input list-connector-definition-versions-request
                                common-lisp:nil
                                ((connector-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConnectorDefinitionId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "ListConnectorDefinitionVersionsRequest"))

(smithy/sdk/shapes:define-output list-connector-definition-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (versions :target-type
                                   list-of-version-information :member-name
                                   "Versions"))
                                 (:shape-name
                                  "ListConnectorDefinitionVersionsResponse"))

(smithy/sdk/shapes:define-input list-connector-definitions-request
                                common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListConnectorDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-connector-definitions-response
                                 common-lisp:nil
                                 ((definitions :target-type
                                   list-of-definition-information :member-name
                                   "Definitions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListConnectorDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-core-definition-versions-request
                                common-lisp:nil
                                ((core-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CoreDefinitionId" :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "ListCoreDefinitionVersionsRequest"))

(smithy/sdk/shapes:define-output list-core-definition-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (versions :target-type
                                   list-of-version-information :member-name
                                   "Versions"))
                                 (:shape-name
                                  "ListCoreDefinitionVersionsResponse"))

(smithy/sdk/shapes:define-input list-core-definitions-request common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListCoreDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-core-definitions-response common-lisp:nil
                                 ((definitions :target-type
                                   list-of-definition-information :member-name
                                   "Definitions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListCoreDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-deployments-request common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListDeploymentsRequest"))

(smithy/sdk/shapes:define-output list-deployments-response common-lisp:nil
                                 ((deployments :target-type deployments
                                   :member-name "Deployments")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListDeploymentsResponse"))

(smithy/sdk/shapes:define-input list-device-definition-versions-request
                                common-lisp:nil
                                ((device-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "DeviceDefinitionId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "ListDeviceDefinitionVersionsRequest"))

(smithy/sdk/shapes:define-output list-device-definition-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (versions :target-type
                                   list-of-version-information :member-name
                                   "Versions"))
                                 (:shape-name
                                  "ListDeviceDefinitionVersionsResponse"))

(smithy/sdk/shapes:define-input list-device-definitions-request common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListDeviceDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-device-definitions-response
                                 common-lisp:nil
                                 ((definitions :target-type
                                   list-of-definition-information :member-name
                                   "Definitions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListDeviceDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-function-definition-versions-request
                                common-lisp:nil
                                ((function-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "FunctionDefinitionId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "ListFunctionDefinitionVersionsRequest"))

(smithy/sdk/shapes:define-output list-function-definition-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (versions :target-type
                                   list-of-version-information :member-name
                                   "Versions"))
                                 (:shape-name
                                  "ListFunctionDefinitionVersionsResponse"))

(smithy/sdk/shapes:define-input list-function-definitions-request
                                common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListFunctionDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-function-definitions-response
                                 common-lisp:nil
                                 ((definitions :target-type
                                   list-of-definition-information :member-name
                                   "Definitions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListFunctionDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-group-certificate-authorities-request
                                common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "ListGroupCertificateAuthoritiesRequest"))

(smithy/sdk/shapes:define-output list-group-certificate-authorities-response
                                 common-lisp:nil
                                 ((group-certificate-authorities :target-type
                                   list-of-group-certificate-authority-properties
                                   :member-name "GroupCertificateAuthorities"))
                                 (:shape-name
                                  "ListGroupCertificateAuthoritiesResponse"))

(smithy/sdk/shapes:define-input list-group-versions-request common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListGroupVersionsRequest"))

(smithy/sdk/shapes:define-output list-group-versions-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (versions :target-type
                                   list-of-version-information :member-name
                                   "Versions"))
                                 (:shape-name "ListGroupVersionsResponse"))

(smithy/sdk/shapes:define-input list-groups-request common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListGroupsRequest"))

(smithy/sdk/shapes:define-output list-groups-response common-lisp:nil
                                 ((groups :target-type
                                   list-of-group-information :member-name
                                   "Groups")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListGroupsResponse"))

(smithy/sdk/shapes:define-input list-logger-definition-versions-request
                                common-lisp:nil
                                ((logger-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "LoggerDefinitionId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "ListLoggerDefinitionVersionsRequest"))

(smithy/sdk/shapes:define-output list-logger-definition-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (versions :target-type
                                   list-of-version-information :member-name
                                   "Versions"))
                                 (:shape-name
                                  "ListLoggerDefinitionVersionsResponse"))

(smithy/sdk/shapes:define-input list-logger-definitions-request common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListLoggerDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-logger-definitions-response
                                 common-lisp:nil
                                 ((definitions :target-type
                                   list-of-definition-information :member-name
                                   "Definitions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListLoggerDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-resource-definition-versions-request
                                common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (resource-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ListResourceDefinitionVersionsRequest"))

(smithy/sdk/shapes:define-output list-resource-definition-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (versions :target-type
                                   list-of-version-information :member-name
                                   "Versions"))
                                 (:shape-name
                                  "ListResourceDefinitionVersionsResponse"))

(smithy/sdk/shapes:define-input list-resource-definitions-request
                                common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListResourceDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-resource-definitions-response
                                 common-lisp:nil
                                 ((definitions :target-type
                                   list-of-definition-information :member-name
                                   "Definitions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListResourceDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-subscription-definition-versions-request
                                common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (subscription-definition-id :target-type
                                  string :required common-lisp:t :member-name
                                  "SubscriptionDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ListSubscriptionDefinitionVersionsRequest"))

(smithy/sdk/shapes:define-output list-subscription-definition-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (versions :target-type
                                   list-of-version-information :member-name
                                   "Versions"))
                                 (:shape-name
                                  "ListSubscriptionDefinitionVersionsResponse"))

(smithy/sdk/shapes:define-input list-subscription-definitions-request
                                common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "ListSubscriptionDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-subscription-definitions-response
                                 common-lisp:nil
                                 ((definitions :target-type
                                   list-of-definition-information :member-name
                                   "Definitions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListSubscriptionDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure local-device-resource-data common-lisp:nil
                                    ((group-owner-setting :target-type
                                      group-owner-setting :member-name
                                      "GroupOwnerSetting")
                                     (source-path :target-type string
                                      :member-name "SourcePath"))
                                    (:shape-name "LocalDeviceResourceData"))

(smithy/sdk/shapes:define-structure local-volume-resource-data common-lisp:nil
                                    ((destination-path :target-type string
                                      :member-name "DestinationPath")
                                     (group-owner-setting :target-type
                                      group-owner-setting :member-name
                                      "GroupOwnerSetting")
                                     (source-path :target-type string
                                      :member-name "SourcePath"))
                                    (:shape-name "LocalVolumeResourceData"))

(smithy/sdk/shapes:define-structure logger common-lisp:nil
                                    ((component :target-type logger-component
                                      :required common-lisp:t :member-name
                                      "Component")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (level :target-type logger-level :required
                                      common-lisp:t :member-name "Level")
                                     (space :target-type integer :member-name
                                      "Space")
                                     (type :target-type logger-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "Logger"))

(smithy/sdk/shapes:define-enum logger-component
    common-lisp:nil
  (:greengrass-system "GreengrassSystem")
  (:lambda "Lambda"))

(smithy/sdk/shapes:define-structure logger-definition-version common-lisp:nil
                                    ((loggers :target-type list-of-logger
                                      :member-name "Loggers"))
                                    (:shape-name "LoggerDefinitionVersion"))

(smithy/sdk/shapes:define-enum logger-level
    common-lisp:nil
  (:debug "DEBUG")
  (:info "INFO")
  (:warn "WARN")
  (:error "ERROR")
  (:fatal "FATAL"))

(smithy/sdk/shapes:define-enum logger-type
    common-lisp:nil
  (:file-system "FileSystem")
  (:awscloud-watch "AWSCloudWatch"))

(smithy/sdk/shapes:define-enum permission
    common-lisp:nil
  (:ro "ro")
  (:rw "rw"))

(smithy/sdk/shapes:define-input reset-deployments-request common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (force :target-type boolean :member-name
                                  "Force")
                                 (group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name "ResetDeploymentsRequest"))

(smithy/sdk/shapes:define-output reset-deployments-response common-lisp:nil
                                 ((deployment-arn :target-type string
                                   :member-name "DeploymentArn")
                                  (deployment-id :target-type string
                                   :member-name "DeploymentId"))
                                 (:shape-name "ResetDeploymentsResponse"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (resource-data-container :target-type
                                      resource-data-container :required
                                      common-lisp:t :member-name
                                      "ResourceDataContainer"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-structure resource-access-policy common-lisp:nil
                                    ((permission :target-type permission
                                      :member-name "Permission")
                                     (resource-id :target-type string :required
                                      common-lisp:t :member-name "ResourceId"))
                                    (:shape-name "ResourceAccessPolicy"))

(smithy/sdk/shapes:define-structure resource-data-container common-lisp:nil
                                    ((local-device-resource-data :target-type
                                      local-device-resource-data :member-name
                                      "LocalDeviceResourceData")
                                     (local-volume-resource-data :target-type
                                      local-volume-resource-data :member-name
                                      "LocalVolumeResourceData")
                                     (s3machine-learning-model-resource-data
                                      :target-type
                                      s3machine-learning-model-resource-data
                                      :member-name
                                      "S3MachineLearningModelResourceData")
                                     (sage-maker-machine-learning-model-resource-data
                                      :target-type
                                      sage-maker-machine-learning-model-resource-data
                                      :member-name
                                      "SageMakerMachineLearningModelResourceData")
                                     (secrets-manager-secret-resource-data
                                      :target-type
                                      secrets-manager-secret-resource-data
                                      :member-name
                                      "SecretsManagerSecretResourceData"))
                                    (:shape-name "ResourceDataContainer"))

(smithy/sdk/shapes:define-structure resource-definition-version common-lisp:nil
                                    ((resources :target-type list-of-resource
                                      :member-name "Resources"))
                                    (:shape-name "ResourceDefinitionVersion"))

(smithy/sdk/shapes:define-structure resource-download-owner-setting
                                    common-lisp:nil
                                    ((group-owner :target-type string :required
                                      common-lisp:t :member-name "GroupOwner")
                                     (group-permission :target-type permission
                                      :required common-lisp:t :member-name
                                      "GroupPermission"))
                                    (:shape-name
                                     "ResourceDownloadOwnerSetting"))

(smithy/sdk/shapes:define-structure runtime-configuration common-lisp:nil
                                    ((telemetry-configuration :target-type
                                      telemetry-configuration :member-name
                                      "TelemetryConfiguration"))
                                    (:shape-name "RuntimeConfiguration"))

(smithy/sdk/shapes:define-structure s3machine-learning-model-resource-data
                                    common-lisp:nil
                                    ((destination-path :target-type string
                                      :member-name "DestinationPath")
                                     (owner-setting :target-type
                                      resource-download-owner-setting
                                      :member-name "OwnerSetting")
                                     (s3uri :target-type string :member-name
                                      "S3Uri"))
                                    (:shape-name
                                     "S3MachineLearningModelResourceData"))

(smithy/sdk/shapes:define-type s3url-signer-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 sage-maker-machine-learning-model-resource-data common-lisp:nil
 ((destination-path :target-type string :member-name "DestinationPath")
  (owner-setting :target-type resource-download-owner-setting :member-name
   "OwnerSetting")
  (sage-maker-job-arn :target-type string :member-name "SageMakerJobArn"))
 (:shape-name "SageMakerMachineLearningModelResourceData"))

(smithy/sdk/shapes:define-structure secrets-manager-secret-resource-data
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "ARN")
                                     (additional-staging-labels-to-download
                                      :target-type list-of-string :member-name
                                      "AdditionalStagingLabelsToDownload"))
                                    (:shape-name
                                     "SecretsManagerSecretResourceData"))

(smithy/sdk/shapes:define-enum software-to-update
    common-lisp:nil
  (:core "core")
  (:ota-agent "ota_agent"))

(smithy/sdk/shapes:define-input start-bulk-deployment-request common-lisp:nil
                                ((amzn-client-token :target-type string
                                  :member-name "AmznClientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (execution-role-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ExecutionRoleArn")
                                 (input-file-uri :target-type string :required
                                  common-lisp:t :member-name "InputFileUri")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "StartBulkDeploymentRequest"))

(smithy/sdk/shapes:define-output start-bulk-deployment-response common-lisp:nil
                                 ((bulk-deployment-arn :target-type string
                                   :member-name "BulkDeploymentArn")
                                  (bulk-deployment-id :target-type string
                                   :member-name "BulkDeploymentId"))
                                 (:shape-name "StartBulkDeploymentResponse"))

(smithy/sdk/shapes:define-input stop-bulk-deployment-request common-lisp:nil
                                ((bulk-deployment-id :target-type string
                                  :required common-lisp:t :member-name
                                  "BulkDeploymentId" :http-label
                                  common-lisp:t))
                                (:shape-name "StopBulkDeploymentRequest"))

(smithy/sdk/shapes:define-output stop-bulk-deployment-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopBulkDeploymentResponse"))

(smithy/sdk/shapes:define-structure subscription common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (source :target-type string :required
                                      common-lisp:t :member-name "Source")
                                     (subject :target-type string :required
                                      common-lisp:t :member-name "Subject")
                                     (target :target-type string :required
                                      common-lisp:t :member-name "Target"))
                                    (:shape-name "Subscription"))

(smithy/sdk/shapes:define-structure subscription-definition-version
                                    common-lisp:nil
                                    ((subscriptions :target-type
                                      list-of-subscription :member-name
                                      "Subscriptions"))
                                    (:shape-name
                                     "SubscriptionDefinitionVersion"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-map tags :key string :value string)

(smithy/sdk/shapes:define-enum telemetry
    common-lisp:nil
  (:on "On")
  (:off "Off"))

(smithy/sdk/shapes:define-structure telemetry-configuration common-lisp:nil
                                    ((configuration-sync-status :target-type
                                      configuration-sync-status :member-name
                                      "ConfigurationSyncStatus")
                                     (telemetry :target-type telemetry
                                      :required common-lisp:t :member-name
                                      "Telemetry"))
                                    (:shape-name "TelemetryConfiguration"))

(smithy/sdk/shapes:define-structure telemetry-configuration-update
                                    common-lisp:nil
                                    ((telemetry :target-type telemetry
                                      :required common-lisp:t :member-name
                                      "Telemetry"))
                                    (:shape-name
                                     "TelemetryConfigurationUpdate"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-enum update-agent-log-level
    common-lisp:nil
  (:none "NONE")
  (:trace "TRACE")
  (:debug "DEBUG")
  (:verbose "VERBOSE")
  (:info "INFO")
  (:warn "WARN")
  (:error "ERROR")
  (:fatal "FATAL"))

(smithy/sdk/shapes:define-input update-connectivity-info-request
                                common-lisp:nil
                                ((connectivity-info :target-type
                                  list-of-connectivity-info :member-name
                                  "ConnectivityInfo")
                                 (thing-name :target-type string :required
                                  common-lisp:t :member-name "ThingName"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateConnectivityInfoRequest"))

(smithy/sdk/shapes:define-output update-connectivity-info-response
                                 common-lisp:nil
                                 ((message :target-type string :member-name
                                   "Message" :json-name "message")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name "UpdateConnectivityInfoResponse"))

(smithy/sdk/shapes:define-input update-connector-definition-request
                                common-lisp:nil
                                ((connector-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ConnectorDefinitionId" :http-label
                                  common-lisp:t)
                                 (name :target-type string :member-name
                                  "Name"))
                                (:shape-name
                                 "UpdateConnectorDefinitionRequest"))

(smithy/sdk/shapes:define-output update-connector-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateConnectorDefinitionResponse"))

(smithy/sdk/shapes:define-input update-core-definition-request common-lisp:nil
                                ((core-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "CoreDefinitionId" :http-label common-lisp:t)
                                 (name :target-type string :member-name
                                  "Name"))
                                (:shape-name "UpdateCoreDefinitionRequest"))

(smithy/sdk/shapes:define-output update-core-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateCoreDefinitionResponse"))

(smithy/sdk/shapes:define-input update-device-definition-request
                                common-lisp:nil
                                ((device-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "DeviceDefinitionId" :http-label
                                  common-lisp:t)
                                 (name :target-type string :member-name
                                  "Name"))
                                (:shape-name "UpdateDeviceDefinitionRequest"))

(smithy/sdk/shapes:define-output update-device-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateDeviceDefinitionResponse"))

(smithy/sdk/shapes:define-input update-function-definition-request
                                common-lisp:nil
                                ((function-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "FunctionDefinitionId" :http-label
                                  common-lisp:t)
                                 (name :target-type string :member-name
                                  "Name"))
                                (:shape-name "UpdateFunctionDefinitionRequest"))

(smithy/sdk/shapes:define-output update-function-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateFunctionDefinitionResponse"))

(smithy/sdk/shapes:define-input update-group-certificate-configuration-request
                                common-lisp:nil
                                ((certificate-expiry-in-milliseconds
                                  :target-type string :member-name
                                  "CertificateExpiryInMilliseconds")
                                 (group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "UpdateGroupCertificateConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-group-certificate-configuration-response common-lisp:nil
 ((certificate-authority-expiry-in-milliseconds :target-type string
   :member-name "CertificateAuthorityExpiryInMilliseconds")
  (certificate-expiry-in-milliseconds :target-type string :member-name
   "CertificateExpiryInMilliseconds")
  (group-id :target-type string :member-name "GroupId"))
 (:shape-name "UpdateGroupCertificateConfigurationResponse"))

(smithy/sdk/shapes:define-input update-group-request common-lisp:nil
                                ((group-id :target-type string :required
                                  common-lisp:t :member-name "GroupId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :member-name
                                  "Name"))
                                (:shape-name "UpdateGroupRequest"))

(smithy/sdk/shapes:define-output update-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateGroupResponse"))

(smithy/sdk/shapes:define-input update-logger-definition-request
                                common-lisp:nil
                                ((logger-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "LoggerDefinitionId" :http-label
                                  common-lisp:t)
                                 (name :target-type string :member-name
                                  "Name"))
                                (:shape-name "UpdateLoggerDefinitionRequest"))

(smithy/sdk/shapes:define-output update-logger-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateLoggerDefinitionResponse"))

(smithy/sdk/shapes:define-input update-resource-definition-request
                                common-lisp:nil
                                ((name :target-type string :member-name "Name")
                                 (resource-definition-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateResourceDefinitionRequest"))

(smithy/sdk/shapes:define-output update-resource-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateResourceDefinitionResponse"))

(smithy/sdk/shapes:define-input update-subscription-definition-request
                                common-lisp:nil
                                ((name :target-type string :member-name "Name")
                                 (subscription-definition-id :target-type
                                  string :required common-lisp:t :member-name
                                  "SubscriptionDefinitionId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "UpdateSubscriptionDefinitionRequest"))

(smithy/sdk/shapes:define-output update-subscription-definition-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateSubscriptionDefinitionResponse"))

(smithy/sdk/shapes:define-list update-targets :member string)

(smithy/sdk/shapes:define-enum update-targets-architecture
    common-lisp:nil
  (:armv6l "armv6l")
  (:armv7l "armv7l")
  (:x86-64 "x86_64")
  (:aarch64 "aarch64"))

(smithy/sdk/shapes:define-enum update-targets-operating-system
    common-lisp:nil
  (:ubuntu "ubuntu")
  (:raspbian "raspbian")
  (:amazon-linux "amazon_linux")
  (:openwrt "openwrt"))

(smithy/sdk/shapes:define-input update-thing-runtime-configuration-request
                                common-lisp:nil
                                ((telemetry-configuration :target-type
                                  telemetry-configuration-update :member-name
                                  "TelemetryConfiguration")
                                 (thing-name :target-type string :required
                                  common-lisp:t :member-name "ThingName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "UpdateThingRuntimeConfigurationRequest"))

(smithy/sdk/shapes:define-output update-thing-runtime-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateThingRuntimeConfigurationResponse"))

(smithy/sdk/shapes:define-structure version-information common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-timestamp :target-type string
                                      :member-name "CreationTimestamp")
                                     (id :target-type string :member-name "Id")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "VersionInformation"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-connectivity-info :member
                               connectivity-info)

(smithy/sdk/shapes:define-list list-of-connector :member connector)

(smithy/sdk/shapes:define-list list-of-core :member core)

(smithy/sdk/shapes:define-list list-of-definition-information :member
                               definition-information)

(smithy/sdk/shapes:define-list list-of-device :member device)

(smithy/sdk/shapes:define-list list-of-function :member function)

(smithy/sdk/shapes:define-list list-of-group-certificate-authority-properties
                               :member group-certificate-authority-properties)

(smithy/sdk/shapes:define-list list-of-group-information :member
                               group-information)

(smithy/sdk/shapes:define-list list-of-logger :member logger)

(smithy/sdk/shapes:define-list list-of-resource :member resource)

(smithy/sdk/shapes:define-list list-of-resource-access-policy :member
                               resource-access-policy)

(smithy/sdk/shapes:define-list list-of-subscription :member subscription)

(smithy/sdk/shapes:define-list list-of-version-information :member
                               version-information)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-map map-of-string :key string :value string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-role-to-group :shape-name
                                       "AssociateRoleToGroup" :input
                                       associate-role-to-group-request :output
                                       associate-role-to-group-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "PUT" :uri
                                       "/greengrass/groups/{GroupId}/role"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-service-role-to-account
                                       :shape-name
                                       "AssociateServiceRoleToAccount" :input
                                       associate-service-role-to-account-request
                                       :output
                                       associate-service-role-to-account-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "PUT" :uri
                                       "/greengrass/servicerole" :code 200)

(smithy/sdk/operation:define-operation create-connector-definition :shape-name
                                       "CreateConnectorDefinition" :input
                                       create-connector-definition-request
                                       :output
                                       create-connector-definition-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/connectors"
                                       :code 200)

(smithy/sdk/operation:define-operation create-connector-definition-version
                                       :shape-name
                                       "CreateConnectorDefinitionVersion"
                                       :input
                                       create-connector-definition-version-request
                                       :output
                                       create-connector-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-core-definition :shape-name
                                       "CreateCoreDefinition" :input
                                       create-core-definition-request :output
                                       create-core-definition-response :errors
                                       (bad-request-exception) :method "POST"
                                       :uri "/greengrass/definition/cores"
                                       :code 200)

(smithy/sdk/operation:define-operation create-core-definition-version
                                       :shape-name
                                       "CreateCoreDefinitionVersion" :input
                                       create-core-definition-version-request
                                       :output
                                       create-core-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/cores/{CoreDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-deployment :shape-name
                                       "CreateDeployment" :input
                                       create-deployment-request :output
                                       create-deployment-response :errors
                                       (bad-request-exception) :method "POST"
                                       :uri
                                       "/greengrass/groups/{GroupId}/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation create-device-definition :shape-name
                                       "CreateDeviceDefinition" :input
                                       create-device-definition-request :output
                                       create-device-definition-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/devices" :code
                                       200)

(smithy/sdk/operation:define-operation create-device-definition-version
                                       :shape-name
                                       "CreateDeviceDefinitionVersion" :input
                                       create-device-definition-version-request
                                       :output
                                       create-device-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/devices/{DeviceDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-function-definition :shape-name
                                       "CreateFunctionDefinition" :input
                                       create-function-definition-request
                                       :output
                                       create-function-definition-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/functions" :code
                                       200)

(smithy/sdk/operation:define-operation create-function-definition-version
                                       :shape-name
                                       "CreateFunctionDefinitionVersion" :input
                                       create-function-definition-version-request
                                       :output
                                       create-function-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/functions/{FunctionDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-group :shape-name "CreateGroup"
                                       :input create-group-request :output
                                       create-group-response :errors
                                       (bad-request-exception) :method "POST"
                                       :uri "/greengrass/groups" :code 200)

(smithy/sdk/operation:define-operation create-group-certificate-authority
                                       :shape-name
                                       "CreateGroupCertificateAuthority" :input
                                       create-group-certificate-authority-request
                                       :output
                                       create-group-certificate-authority-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/greengrass/groups/{GroupId}/certificateauthorities"
                                       :code 200)

(smithy/sdk/operation:define-operation create-group-version :shape-name
                                       "CreateGroupVersion" :input
                                       create-group-version-request :output
                                       create-group-version-response :errors
                                       (bad-request-exception) :method "POST"
                                       :uri
                                       "/greengrass/groups/{GroupId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-logger-definition :shape-name
                                       "CreateLoggerDefinition" :input
                                       create-logger-definition-request :output
                                       create-logger-definition-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/loggers" :code
                                       200)

(smithy/sdk/operation:define-operation create-logger-definition-version
                                       :shape-name
                                       "CreateLoggerDefinitionVersion" :input
                                       create-logger-definition-version-request
                                       :output
                                       create-logger-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/loggers/{LoggerDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-resource-definition :shape-name
                                       "CreateResourceDefinition" :input
                                       create-resource-definition-request
                                       :output
                                       create-resource-definition-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/resources" :code
                                       200)

(smithy/sdk/operation:define-operation create-resource-definition-version
                                       :shape-name
                                       "CreateResourceDefinitionVersion" :input
                                       create-resource-definition-version-request
                                       :output
                                       create-resource-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/resources/{ResourceDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-software-update-job :shape-name
                                       "CreateSoftwareUpdateJob" :input
                                       create-software-update-job-request
                                       :output
                                       create-software-update-job-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/greengrass/updates" :code 200)

(smithy/sdk/operation:define-operation create-subscription-definition
                                       :shape-name
                                       "CreateSubscriptionDefinition" :input
                                       create-subscription-definition-request
                                       :output
                                       create-subscription-definition-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/subscriptions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-subscription-definition-version
                                       :shape-name
                                       "CreateSubscriptionDefinitionVersion"
                                       :input
                                       create-subscription-definition-version-request
                                       :output
                                       create-subscription-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "POST" :uri
                                       "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-connector-definition :shape-name
                                       "DeleteConnectorDefinition" :input
                                       delete-connector-definition-request
                                       :output
                                       delete-connector-definition-response
                                       :errors (bad-request-exception) :method
                                       "DELETE" :uri
                                       "/greengrass/definition/connectors/{ConnectorDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-core-definition :shape-name
                                       "DeleteCoreDefinition" :input
                                       delete-core-definition-request :output
                                       delete-core-definition-response :errors
                                       (bad-request-exception) :method "DELETE"
                                       :uri
                                       "/greengrass/definition/cores/{CoreDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-device-definition :shape-name
                                       "DeleteDeviceDefinition" :input
                                       delete-device-definition-request :output
                                       delete-device-definition-response
                                       :errors (bad-request-exception) :method
                                       "DELETE" :uri
                                       "/greengrass/definition/devices/{DeviceDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-function-definition :shape-name
                                       "DeleteFunctionDefinition" :input
                                       delete-function-definition-request
                                       :output
                                       delete-function-definition-response
                                       :errors (bad-request-exception) :method
                                       "DELETE" :uri
                                       "/greengrass/definition/functions/{FunctionDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-request :output
                                       delete-group-response :errors
                                       (bad-request-exception) :method "DELETE"
                                       :uri "/greengrass/groups/{GroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-logger-definition :shape-name
                                       "DeleteLoggerDefinition" :input
                                       delete-logger-definition-request :output
                                       delete-logger-definition-response
                                       :errors (bad-request-exception) :method
                                       "DELETE" :uri
                                       "/greengrass/definition/loggers/{LoggerDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-resource-definition :shape-name
                                       "DeleteResourceDefinition" :input
                                       delete-resource-definition-request
                                       :output
                                       delete-resource-definition-response
                                       :errors (bad-request-exception) :method
                                       "DELETE" :uri
                                       "/greengrass/definition/resources/{ResourceDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-subscription-definition
                                       :shape-name
                                       "DeleteSubscriptionDefinition" :input
                                       delete-subscription-definition-request
                                       :output
                                       delete-subscription-definition-response
                                       :errors (bad-request-exception) :method
                                       "DELETE" :uri
                                       "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-role-from-group :shape-name
                                       "DisassociateRoleFromGroup" :input
                                       disassociate-role-from-group-request
                                       :output
                                       disassociate-role-from-group-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "DELETE" :uri
                                       "/greengrass/groups/{GroupId}/role"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-service-role-from-account
                                       :shape-name
                                       "DisassociateServiceRoleFromAccount"
                                       :input
                                       disassociate-service-role-from-account-request
                                       :output
                                       disassociate-service-role-from-account-response
                                       :errors
                                       (internal-server-error-exception)
                                       :method "DELETE" :uri
                                       "/greengrass/servicerole" :code 200)

(smithy/sdk/operation:define-operation get-associated-role :shape-name
                                       "GetAssociatedRole" :input
                                       get-associated-role-request :output
                                       get-associated-role-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/greengrass/groups/{GroupId}/role"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bulk-deployment-status :shape-name
                                       "GetBulkDeploymentStatus" :input
                                       get-bulk-deployment-status-request
                                       :output
                                       get-bulk-deployment-status-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/bulk/deployments/{BulkDeploymentId}/status"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connectivity-info :shape-name
                                       "GetConnectivityInfo" :input
                                       get-connectivity-info-request :output
                                       get-connectivity-info-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/greengrass/things/{ThingName}/connectivityInfo"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connector-definition :shape-name
                                       "GetConnectorDefinition" :input
                                       get-connector-definition-request :output
                                       get-connector-definition-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/connectors/{ConnectorDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connector-definition-version
                                       :shape-name
                                       "GetConnectorDefinitionVersion" :input
                                       get-connector-definition-version-request
                                       :output
                                       get-connector-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions/{ConnectorDefinitionVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-core-definition :shape-name
                                       "GetCoreDefinition" :input
                                       get-core-definition-request :output
                                       get-core-definition-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri
                                       "/greengrass/definition/cores/{CoreDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-core-definition-version :shape-name
                                       "GetCoreDefinitionVersion" :input
                                       get-core-definition-version-request
                                       :output
                                       get-core-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deployment-status :shape-name
                                       "GetDeploymentStatus" :input
                                       get-deployment-status-request :output
                                       get-deployment-status-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri
                                       "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status"
                                       :code 200)

(smithy/sdk/operation:define-operation get-device-definition :shape-name
                                       "GetDeviceDefinition" :input
                                       get-device-definition-request :output
                                       get-device-definition-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri
                                       "/greengrass/definition/devices/{DeviceDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-device-definition-version
                                       :shape-name "GetDeviceDefinitionVersion"
                                       :input
                                       get-device-definition-version-request
                                       :output
                                       get-device-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-function-definition :shape-name
                                       "GetFunctionDefinition" :input
                                       get-function-definition-request :output
                                       get-function-definition-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri
                                       "/greengrass/definition/functions/{FunctionDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-function-definition-version
                                       :shape-name
                                       "GetFunctionDefinitionVersion" :input
                                       get-function-definition-version-request
                                       :output
                                       get-function-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-group :shape-name "GetGroup" :input
                                       get-group-request :output
                                       get-group-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri "/greengrass/groups/{GroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-group-certificate-authority
                                       :shape-name
                                       "GetGroupCertificateAuthority" :input
                                       get-group-certificate-authority-request
                                       :output
                                       get-group-certificate-authority-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-group-certificate-configuration
                                       :shape-name
                                       "GetGroupCertificateConfiguration"
                                       :input
                                       get-group-certificate-configuration-request
                                       :output
                                       get-group-certificate-configuration-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry"
                                       :code 200)

(smithy/sdk/operation:define-operation get-group-version :shape-name
                                       "GetGroupVersion" :input
                                       get-group-version-request :output
                                       get-group-version-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri
                                       "/greengrass/groups/{GroupId}/versions/{GroupVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-logger-definition :shape-name
                                       "GetLoggerDefinition" :input
                                       get-logger-definition-request :output
                                       get-logger-definition-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri
                                       "/greengrass/definition/loggers/{LoggerDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-logger-definition-version
                                       :shape-name "GetLoggerDefinitionVersion"
                                       :input
                                       get-logger-definition-version-request
                                       :output
                                       get-logger-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-definition :shape-name
                                       "GetResourceDefinition" :input
                                       get-resource-definition-request :output
                                       get-resource-definition-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri
                                       "/greengrass/definition/resources/{ResourceDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-definition-version
                                       :shape-name
                                       "GetResourceDefinitionVersion" :input
                                       get-resource-definition-version-request
                                       :output
                                       get-resource-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-role-for-account :shape-name
                                       "GetServiceRoleForAccount" :input
                                       get-service-role-for-account-request
                                       :output
                                       get-service-role-for-account-response
                                       :errors
                                       (internal-server-error-exception)
                                       :method "GET" :uri
                                       "/greengrass/servicerole" :code 200)

(smithy/sdk/operation:define-operation get-subscription-definition :shape-name
                                       "GetSubscriptionDefinition" :input
                                       get-subscription-definition-request
                                       :output
                                       get-subscription-definition-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-subscription-definition-version
                                       :shape-name
                                       "GetSubscriptionDefinitionVersion"
                                       :input
                                       get-subscription-definition-version-request
                                       :output
                                       get-subscription-definition-version-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-thing-runtime-configuration
                                       :shape-name
                                       "GetThingRuntimeConfiguration" :input
                                       get-thing-runtime-configuration-request
                                       :output
                                       get-thing-runtime-configuration-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/greengrass/things/{ThingName}/runtimeconfig"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bulk-deployment-detailed-reports
                                       :shape-name
                                       "ListBulkDeploymentDetailedReports"
                                       :input
                                       list-bulk-deployment-detailed-reports-request
                                       :output
                                       list-bulk-deployment-detailed-reports-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/bulk/deployments/{BulkDeploymentId}/detailed-reports"
                                       :code 200)

(smithy/sdk/operation:define-operation list-bulk-deployments :shape-name
                                       "ListBulkDeployments" :input
                                       list-bulk-deployments-request :output
                                       list-bulk-deployments-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri "/greengrass/bulk/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-connector-definition-versions
                                       :shape-name
                                       "ListConnectorDefinitionVersions" :input
                                       list-connector-definition-versions-request
                                       :output
                                       list-connector-definition-versions-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-connector-definitions :shape-name
                                       "ListConnectorDefinitions" :input
                                       list-connector-definitions-request
                                       :output
                                       list-connector-definitions-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/greengrass/definition/connectors"
                                       :code 200)

(smithy/sdk/operation:define-operation list-core-definition-versions
                                       :shape-name "ListCoreDefinitionVersions"
                                       :input
                                       list-core-definition-versions-request
                                       :output
                                       list-core-definition-versions-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/cores/{CoreDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-core-definitions :shape-name
                                       "ListCoreDefinitions" :input
                                       list-core-definitions-request :output
                                       list-core-definitions-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/greengrass/definition/cores" :code 200)

(smithy/sdk/operation:define-operation list-deployments :shape-name
                                       "ListDeployments" :input
                                       list-deployments-request :output
                                       list-deployments-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri
                                       "/greengrass/groups/{GroupId}/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-device-definition-versions
                                       :shape-name
                                       "ListDeviceDefinitionVersions" :input
                                       list-device-definition-versions-request
                                       :output
                                       list-device-definition-versions-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/devices/{DeviceDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-device-definitions :shape-name
                                       "ListDeviceDefinitions" :input
                                       list-device-definitions-request :output
                                       list-device-definitions-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/greengrass/definition/devices" :code
                                       200)

(smithy/sdk/operation:define-operation list-function-definition-versions
                                       :shape-name
                                       "ListFunctionDefinitionVersions" :input
                                       list-function-definition-versions-request
                                       :output
                                       list-function-definition-versions-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/functions/{FunctionDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-function-definitions :shape-name
                                       "ListFunctionDefinitions" :input
                                       list-function-definitions-request
                                       :output
                                       list-function-definitions-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/greengrass/definition/functions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-group-certificate-authorities
                                       :shape-name
                                       "ListGroupCertificateAuthorities" :input
                                       list-group-certificate-authorities-request
                                       :output
                                       list-group-certificate-authorities-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/greengrass/groups/{GroupId}/certificateauthorities"
                                       :code 200)

(smithy/sdk/operation:define-operation list-group-versions :shape-name
                                       "ListGroupVersions" :input
                                       list-group-versions-request :output
                                       list-group-versions-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri
                                       "/greengrass/groups/{GroupId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-groups :shape-name "ListGroups"
                                       :input list-groups-request :output
                                       list-groups-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/greengrass/groups" :code 200)

(smithy/sdk/operation:define-operation list-logger-definition-versions
                                       :shape-name
                                       "ListLoggerDefinitionVersions" :input
                                       list-logger-definition-versions-request
                                       :output
                                       list-logger-definition-versions-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/loggers/{LoggerDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-logger-definitions :shape-name
                                       "ListLoggerDefinitions" :input
                                       list-logger-definitions-request :output
                                       list-logger-definitions-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/greengrass/definition/loggers" :code
                                       200)

(smithy/sdk/operation:define-operation list-resource-definition-versions
                                       :shape-name
                                       "ListResourceDefinitionVersions" :input
                                       list-resource-definition-versions-request
                                       :output
                                       list-resource-definition-versions-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/resources/{ResourceDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-resource-definitions :shape-name
                                       "ListResourceDefinitions" :input
                                       list-resource-definitions-request
                                       :output
                                       list-resource-definitions-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/greengrass/definition/resources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-subscription-definition-versions
                                       :shape-name
                                       "ListSubscriptionDefinitionVersions"
                                       :input
                                       list-subscription-definition-versions-request
                                       :output
                                       list-subscription-definition-versions-response
                                       :errors (bad-request-exception) :method
                                       "GET" :uri
                                       "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-subscription-definitions
                                       :shape-name
                                       "ListSubscriptionDefinitions" :input
                                       list-subscription-definitions-request
                                       :output
                                       list-subscription-definitions-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/greengrass/definition/subscriptions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception) :method "GET"
                                       :uri "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation reset-deployments :shape-name
                                       "ResetDeployments" :input
                                       reset-deployments-request :output
                                       reset-deployments-response :errors
                                       (bad-request-exception) :method "POST"
                                       :uri
                                       "/greengrass/groups/{GroupId}/deployments/$reset"
                                       :code 200)

(smithy/sdk/operation:define-operation start-bulk-deployment :shape-name
                                       "StartBulkDeployment" :input
                                       start-bulk-deployment-request :output
                                       start-bulk-deployment-response :errors
                                       (bad-request-exception) :method "POST"
                                       :uri "/greengrass/bulk/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-bulk-deployment :shape-name
                                       "StopBulkDeployment" :input
                                       stop-bulk-deployment-request :output
                                       stop-bulk-deployment-response :errors
                                       (bad-request-exception) :method "PUT"
                                       :uri
                                       "/greengrass/bulk/deployments/{BulkDeploymentId}/$stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception) :method "POST"
                                       :uri "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception) :method "DELETE"
                                       :uri "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-connectivity-info :shape-name
                                       "UpdateConnectivityInfo" :input
                                       update-connectivity-info-request :output
                                       update-connectivity-info-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "PUT" :uri
                                       "/greengrass/things/{ThingName}/connectivityInfo"
                                       :code 200)

(smithy/sdk/operation:define-operation update-connector-definition :shape-name
                                       "UpdateConnectorDefinition" :input
                                       update-connector-definition-request
                                       :output
                                       update-connector-definition-response
                                       :errors (bad-request-exception) :method
                                       "PUT" :uri
                                       "/greengrass/definition/connectors/{ConnectorDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-core-definition :shape-name
                                       "UpdateCoreDefinition" :input
                                       update-core-definition-request :output
                                       update-core-definition-response :errors
                                       (bad-request-exception) :method "PUT"
                                       :uri
                                       "/greengrass/definition/cores/{CoreDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-device-definition :shape-name
                                       "UpdateDeviceDefinition" :input
                                       update-device-definition-request :output
                                       update-device-definition-response
                                       :errors (bad-request-exception) :method
                                       "PUT" :uri
                                       "/greengrass/definition/devices/{DeviceDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-function-definition :shape-name
                                       "UpdateFunctionDefinition" :input
                                       update-function-definition-request
                                       :output
                                       update-function-definition-response
                                       :errors (bad-request-exception) :method
                                       "PUT" :uri
                                       "/greengrass/definition/functions/{FunctionDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-group :shape-name "UpdateGroup"
                                       :input update-group-request :output
                                       update-group-response :errors
                                       (bad-request-exception) :method "PUT"
                                       :uri "/greengrass/groups/{GroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-group-certificate-configuration
                                       :shape-name
                                       "UpdateGroupCertificateConfiguration"
                                       :input
                                       update-group-certificate-configuration-request
                                       :output
                                       update-group-certificate-configuration-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "PUT" :uri
                                       "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry"
                                       :code 200)

(smithy/sdk/operation:define-operation update-logger-definition :shape-name
                                       "UpdateLoggerDefinition" :input
                                       update-logger-definition-request :output
                                       update-logger-definition-response
                                       :errors (bad-request-exception) :method
                                       "PUT" :uri
                                       "/greengrass/definition/loggers/{LoggerDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resource-definition :shape-name
                                       "UpdateResourceDefinition" :input
                                       update-resource-definition-request
                                       :output
                                       update-resource-definition-response
                                       :errors (bad-request-exception) :method
                                       "PUT" :uri
                                       "/greengrass/definition/resources/{ResourceDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-subscription-definition
                                       :shape-name
                                       "UpdateSubscriptionDefinition" :input
                                       update-subscription-definition-request
                                       :output
                                       update-subscription-definition-response
                                       :errors (bad-request-exception) :method
                                       "PUT" :uri
                                       "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-thing-runtime-configuration
                                       :shape-name
                                       "UpdateThingRuntimeConfiguration" :input
                                       update-thing-runtime-configuration-request
                                       :output
                                       update-thing-runtime-configuration-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "PUT" :uri
                                       "/greengrass/things/{ThingName}/runtimeconfig"
                                       :code 200)
