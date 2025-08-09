(uiop/package:define-package #:pira/finspace (:use)
                             (:export #:awshabanero-management-service
                              #:attached-cluster-list #:attribute-map
                              #:auto-scaling-configuration
                              #:auto-scaling-metric
                              #:auto-scaling-metric-target
                              #:availability-zone-id #:availability-zone-ids
                              #:boxed-integer #:capacity-configuration
                              #:change-request #:change-requests #:change-type
                              #:changeset-id #:changeset-status #:client-token
                              #:client-token-string #:cluster-node-count
                              #:code-configuration #:cooldown-time #:cpu-count
                              #:create-environment #:create-kx-changeset
                              #:create-kx-cluster #:create-kx-database
                              #:create-kx-dataview #:create-kx-environment
                              #:create-kx-scaling-group #:create-kx-user
                              #:create-kx-volume #:custom-dnsconfiguration
                              #:custom-dnsserver #:data-bundle-arn
                              #:data-bundle-arns #:database-arn #:database-name
                              #:db-path #:db-paths #:delete-environment
                              #:delete-kx-cluster #:delete-kx-cluster-node
                              #:delete-kx-database #:delete-kx-dataview
                              #:delete-kx-environment #:delete-kx-scaling-group
                              #:delete-kx-user #:delete-kx-volume #:description
                              #:email-id #:environment #:environment-arn
                              #:environment-error-message #:environment-id
                              #:environment-list #:environment-name
                              #:environment-status #:error-details #:error-info
                              #:error-message #:error-message2
                              #:execution-role-arn #:federation-attribute-key
                              #:federation-attribute-value #:federation-mode
                              #:federation-parameters
                              #:federation-provider-name
                              #:fin-space-taggable-arn #:get-environment
                              #:get-kx-changeset #:get-kx-cluster
                              #:get-kx-connection-string #:get-kx-database
                              #:get-kx-dataview #:get-kx-environment
                              #:get-kx-scaling-group #:get-kx-user
                              #:get-kx-volume #:ipaddress-type #:icmp-type-code
                              #:icmp-type-or-code #:id-type
                              #:initialization-script-file-path #:kms-key-arn
                              #:kms-key-id #:kx-attached-cluster
                              #:kx-attached-clusters #:kx-az-mode
                              #:kx-cache-storage-configuration
                              #:kx-cache-storage-configurations
                              #:kx-cache-storage-size #:kx-cache-storage-type
                              #:kx-changeset-list-entry #:kx-changesets
                              #:kx-cluster
                              #:kx-cluster-code-deployment-configuration
                              #:kx-cluster-code-deployment-strategy
                              #:kx-cluster-description #:kx-cluster-name
                              #:kx-cluster-name-list
                              #:kx-cluster-node-id-string #:kx-cluster-status
                              #:kx-cluster-status-reason #:kx-cluster-type
                              #:kx-clusters #:kx-command-line-argument
                              #:kx-command-line-argument-key
                              #:kx-command-line-argument-value
                              #:kx-command-line-arguments
                              #:kx-database-cache-configuration
                              #:kx-database-cache-configurations
                              #:kx-database-configuration
                              #:kx-database-configurations
                              #:kx-database-list-entry #:kx-databases
                              #:kx-dataview-active-version
                              #:kx-dataview-active-version-list
                              #:kx-dataview-configuration
                              #:kx-dataview-list-entry #:kx-dataview-name
                              #:kx-dataview-segment-configuration
                              #:kx-dataview-segment-configuration-list
                              #:kx-dataview-status #:kx-dataview-status-reason
                              #:kx-dataviews #:kx-deployment-configuration
                              #:kx-deployment-strategy #:kx-environment
                              #:kx-environment-id #:kx-environment-list
                              #:kx-environment-name #:kx-host-type
                              #:kx-nas1configuration #:kx-nas1size
                              #:kx-nas1type #:kx-node #:kx-node-status
                              #:kx-node-summaries
                              #:kx-savedown-storage-configuration
                              #:kx-savedown-storage-size
                              #:kx-savedown-storage-type #:kx-scaling-group
                              #:kx-scaling-group-configuration
                              #:kx-scaling-group-list #:kx-scaling-group-name
                              #:kx-scaling-group-status #:kx-user #:kx-user-arn
                              #:kx-user-list #:kx-user-name-string #:kx-volume
                              #:kx-volume-arn #:kx-volume-name
                              #:kx-volume-status #:kx-volume-status-reason
                              #:kx-volume-type #:kx-volumes #:list-environments
                              #:list-kx-changesets #:list-kx-cluster-nodes
                              #:list-kx-clusters #:list-kx-databases
                              #:list-kx-dataviews #:list-kx-environments
                              #:list-kx-scaling-groups #:list-kx-users
                              #:list-kx-volumes #:list-tags-for-resource
                              #:max-results #:memory-mib #:name-string
                              #:network-aclconfiguration #:network-aclentry
                              #:node-count #:node-type #:pagination-token
                              #:port #:port-range #:protocol #:release-label
                              #:result-limit #:role-arn #:rule-action
                              #:rule-number #:s3bucket #:s3key
                              #:s3object-version #:s3path
                              #:saml-metadata-document #:security-group-id-list
                              #:security-group-id-string
                              #:segment-configuration-db-path-list
                              #:signed-kx-connection-string #:sms-domain-url
                              #:subnet-id-list #:subnet-id-string
                              #:superuser-parameters #:tag-key #:tag-key-list
                              #:tag-map #:tag-resource #:tag-value
                              #:tickerplant-log-configuration
                              #:tickerplant-log-volumes #:timestamp
                              #:transit-gateway-configuration
                              #:transit-gateway-id #:untag-resource
                              #:update-environment
                              #:update-kx-cluster-code-configuration
                              #:update-kx-cluster-databases
                              #:update-kx-database #:update-kx-dataview
                              #:update-kx-environment
                              #:update-kx-environment-network #:update-kx-user
                              #:update-kx-volume #:valid-cidrblock
                              #:valid-cidrspace #:valid-hostname
                              #:valid-ipaddress #:version-id #:volume
                              #:volume-name #:volume-type #:volumes
                              #:vpc-configuration #:vpc-id-string #:arn
                              #:boolean-value #:dns-status #:num-bytes
                              #:num-changesets #:num-files
                              #:string-value-length1to255 #:tgw-status #:url
                              #:urn))
(common-lisp:in-package #:pira/finspace)

(smithy/sdk/service:define-service awshabanero-management-service :shape-name
                                   "AWSHabaneroManagementService" :version
                                   "2021-03-12" :title
                                   "FinSpace User Environment Management service"
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "finspace")
                                      ("arnNamespace" . "finspace")
                                      ("cloudFormationName" . "Finspace")
                                      ("cloudTrailEventSource"
                                       . "finspace.amazonaws.com")
                                      ("endpointPrefix" . "finspace"))
                                     ("aws.auth#sigv4" ("name" . "finspace"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list attached-cluster-list :member kx-cluster-name)

(smithy/sdk/shapes:define-map attribute-map :key federation-attribute-key
                              :value federation-attribute-value)

(smithy/sdk/shapes:define-structure auto-scaling-configuration common-lisp:nil
                                    ((min-node-count :target-type node-count
                                      :member-name "minNodeCount")
                                     (max-node-count :target-type node-count
                                      :member-name "maxNodeCount")
                                     (auto-scaling-metric :target-type
                                      auto-scaling-metric :member-name
                                      "autoScalingMetric")
                                     (metric-target :target-type
                                      auto-scaling-metric-target :member-name
                                      "metricTarget")
                                     (scale-in-cooldown-seconds :target-type
                                      cooldown-time :member-name
                                      "scaleInCooldownSeconds")
                                     (scale-out-cooldown-seconds :target-type
                                      cooldown-time :member-name
                                      "scaleOutCooldownSeconds"))
                                    (:shape-name "AutoScalingConfiguration"))

(smithy/sdk/shapes:define-enum auto-scaling-metric
    common-lisp:nil
  (:cpu-utilization-percentage "CPU_UTILIZATION_PERCENTAGE"))

(smithy/sdk/shapes:define-type auto-scaling-metric-target
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type availability-zone-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list availability-zone-ids :member
                               availability-zone-id)

(smithy/sdk/shapes:define-type boxed-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure capacity-configuration common-lisp:nil
                                    ((node-type :target-type node-type
                                      :member-name "nodeType")
                                     (node-count :target-type node-count
                                      :member-name "nodeCount"))
                                    (:shape-name "CapacityConfiguration"))

(smithy/sdk/shapes:define-structure change-request common-lisp:nil
                                    ((change-type :target-type change-type
                                      :required common-lisp:t :member-name
                                      "changeType")
                                     (s3path :target-type s3path :member-name
                                      "s3Path")
                                     (db-path :target-type db-path :required
                                      common-lisp:t :member-name "dbPath"))
                                    (:shape-name "ChangeRequest"))

(smithy/sdk/shapes:define-list change-requests :member change-request)

(smithy/sdk/shapes:define-enum change-type
    common-lisp:nil
  (:put "PUT")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-type changeset-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum changeset-status
    common-lisp:nil
  (:pending "PENDING")
  (:processing "PROCESSING")
  (:failed "FAILED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cluster-node-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure code-configuration common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "s3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "s3Key")
                                     (s3object-version :target-type
                                      s3object-version :member-name
                                      "s3ObjectVersion"))
                                    (:shape-name "CodeConfiguration"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message")
                                 (reason :target-type error-message2
                                  :member-name "reason"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type cooldown-time smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type cpu-count smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input create-environment-request common-lisp:nil
                                ((name :target-type environment-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "kmsKeyId")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (federation-mode :target-type federation-mode
                                  :member-name "federationMode")
                                 (federation-parameters :target-type
                                  federation-parameters :member-name
                                  "federationParameters")
                                 (superuser-parameters :target-type
                                  superuser-parameters :member-name
                                  "superuserParameters")
                                 (data-bundles :target-type data-bundle-arns
                                  :member-name "dataBundles"))
                                (:shape-name "CreateEnvironmentRequest"))

(smithy/sdk/shapes:define-output create-environment-response common-lisp:nil
                                 ((environment-id :target-type id-type
                                   :member-name "environmentId")
                                  (environment-arn :target-type environment-arn
                                   :member-name "environmentArn")
                                  (environment-url :target-type url
                                   :member-name "environmentUrl"))
                                 (:shape-name "CreateEnvironmentResponse"))

(smithy/sdk/shapes:define-input create-kx-changeset-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (change-requests :target-type change-requests
                                  :required common-lisp:t :member-name
                                  "changeRequests")
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CreateKxChangesetRequest"))

(smithy/sdk/shapes:define-output create-kx-changeset-response common-lisp:nil
                                 ((changeset-id :target-type changeset-id
                                   :member-name "changesetId")
                                  (database-name :target-type database-name
                                   :member-name "databaseName")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (change-requests :target-type change-requests
                                   :member-name "changeRequests")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (status :target-type changeset-status
                                   :member-name "status")
                                  (error-info :target-type error-info
                                   :member-name "errorInfo"))
                                 (:shape-name "CreateKxChangesetResponse"))

(smithy/sdk/shapes:define-input create-kx-cluster-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (cluster-name :target-type kx-cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName")
                                 (cluster-type :target-type kx-cluster-type
                                  :required common-lisp:t :member-name
                                  "clusterType")
                                 (tickerplant-log-configuration :target-type
                                  tickerplant-log-configuration :member-name
                                  "tickerplantLogConfiguration")
                                 (databases :target-type
                                  kx-database-configurations :member-name
                                  "databases")
                                 (cache-storage-configurations :target-type
                                  kx-cache-storage-configurations :member-name
                                  "cacheStorageConfigurations")
                                 (auto-scaling-configuration :target-type
                                  auto-scaling-configuration :member-name
                                  "autoScalingConfiguration")
                                 (cluster-description :target-type
                                  kx-cluster-description :member-name
                                  "clusterDescription")
                                 (capacity-configuration :target-type
                                  capacity-configuration :member-name
                                  "capacityConfiguration")
                                 (release-label :target-type release-label
                                  :required common-lisp:t :member-name
                                  "releaseLabel")
                                 (vpc-configuration :target-type
                                  vpc-configuration :required common-lisp:t
                                  :member-name "vpcConfiguration")
                                 (initialization-script :target-type
                                  initialization-script-file-path :member-name
                                  "initializationScript")
                                 (command-line-arguments :target-type
                                  kx-command-line-arguments :member-name
                                  "commandLineArguments")
                                 (code :target-type code-configuration
                                  :member-name "code")
                                 (execution-role :target-type
                                  execution-role-arn :member-name
                                  "executionRole")
                                 (savedown-storage-configuration :target-type
                                  kx-savedown-storage-configuration
                                  :member-name "savedownStorageConfiguration")
                                 (az-mode :target-type kx-az-mode :required
                                  common-lisp:t :member-name "azMode")
                                 (availability-zone-id :target-type
                                  availability-zone-id :member-name
                                  "availabilityZoneId")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (scaling-group-configuration :target-type
                                  kx-scaling-group-configuration :member-name
                                  "scalingGroupConfiguration"))
                                (:shape-name "CreateKxClusterRequest"))

(smithy/sdk/shapes:define-output create-kx-cluster-response common-lisp:nil
                                 ((environment-id :target-type
                                   kx-environment-id :member-name
                                   "environmentId")
                                  (status :target-type kx-cluster-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   kx-cluster-status-reason :member-name
                                   "statusReason")
                                  (cluster-name :target-type kx-cluster-name
                                   :member-name "clusterName")
                                  (cluster-type :target-type kx-cluster-type
                                   :member-name "clusterType")
                                  (tickerplant-log-configuration :target-type
                                   tickerplant-log-configuration :member-name
                                   "tickerplantLogConfiguration")
                                  (volumes :target-type volumes :member-name
                                   "volumes")
                                  (databases :target-type
                                   kx-database-configurations :member-name
                                   "databases")
                                  (cache-storage-configurations :target-type
                                   kx-cache-storage-configurations :member-name
                                   "cacheStorageConfigurations")
                                  (auto-scaling-configuration :target-type
                                   auto-scaling-configuration :member-name
                                   "autoScalingConfiguration")
                                  (cluster-description :target-type
                                   kx-cluster-description :member-name
                                   "clusterDescription")
                                  (capacity-configuration :target-type
                                   capacity-configuration :member-name
                                   "capacityConfiguration")
                                  (release-label :target-type release-label
                                   :member-name "releaseLabel")
                                  (vpc-configuration :target-type
                                   vpc-configuration :member-name
                                   "vpcConfiguration")
                                  (initialization-script :target-type
                                   initialization-script-file-path :member-name
                                   "initializationScript")
                                  (command-line-arguments :target-type
                                   kx-command-line-arguments :member-name
                                   "commandLineArguments")
                                  (code :target-type code-configuration
                                   :member-name "code")
                                  (execution-role :target-type
                                   execution-role-arn :member-name
                                   "executionRole")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (savedown-storage-configuration :target-type
                                   kx-savedown-storage-configuration
                                   :member-name "savedownStorageConfiguration")
                                  (az-mode :target-type kx-az-mode :member-name
                                   "azMode")
                                  (availability-zone-id :target-type
                                   availability-zone-id :member-name
                                   "availabilityZoneId")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (scaling-group-configuration :target-type
                                   kx-scaling-group-configuration :member-name
                                   "scalingGroupConfiguration"))
                                 (:shape-name "CreateKxClusterResponse"))

(smithy/sdk/shapes:define-input create-kx-database-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CreateKxDatabaseRequest"))

(smithy/sdk/shapes:define-output create-kx-database-response common-lisp:nil
                                 ((database-name :target-type database-name
                                   :member-name "databaseName")
                                  (database-arn :target-type database-arn
                                   :member-name "databaseArn")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp"))
                                 (:shape-name "CreateKxDatabaseResponse"))

(smithy/sdk/shapes:define-input create-kx-dataview-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (dataview-name :target-type kx-dataview-name
                                  :required common-lisp:t :member-name
                                  "dataviewName")
                                 (az-mode :target-type kx-az-mode :required
                                  common-lisp:t :member-name "azMode")
                                 (availability-zone-id :target-type
                                  availability-zone-id :member-name
                                  "availabilityZoneId")
                                 (changeset-id :target-type changeset-id
                                  :member-name "changesetId")
                                 (segment-configurations :target-type
                                  kx-dataview-segment-configuration-list
                                  :member-name "segmentConfigurations")
                                 (auto-update :target-type boolean-value
                                  :member-name "autoUpdate")
                                 (read-write :target-type boolean-value
                                  :member-name "readWrite")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CreateKxDataviewRequest"))

(smithy/sdk/shapes:define-output create-kx-dataview-response common-lisp:nil
                                 ((dataview-name :target-type kx-dataview-name
                                   :member-name "dataviewName")
                                  (database-name :target-type database-name
                                   :member-name "databaseName")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (az-mode :target-type kx-az-mode :member-name
                                   "azMode")
                                  (availability-zone-id :target-type
                                   availability-zone-id :member-name
                                   "availabilityZoneId")
                                  (changeset-id :target-type changeset-id
                                   :member-name "changesetId")
                                  (segment-configurations :target-type
                                   kx-dataview-segment-configuration-list
                                   :member-name "segmentConfigurations")
                                  (description :target-type description
                                   :member-name "description")
                                  (auto-update :target-type boolean-value
                                   :member-name "autoUpdate")
                                  (read-write :target-type boolean-value
                                   :member-name "readWrite")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (status :target-type kx-dataview-status
                                   :member-name "status"))
                                 (:shape-name "CreateKxDataviewResponse"))

(smithy/sdk/shapes:define-input create-kx-environment-request common-lisp:nil
                                ((name :target-type kx-environment-name
                                  :required common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (kms-key-id :target-type kms-key-arn :required
                                  common-lisp:t :member-name "kmsKeyId")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateKxEnvironmentRequest"))

(smithy/sdk/shapes:define-output create-kx-environment-response common-lisp:nil
                                 ((name :target-type kx-environment-name
                                   :member-name "name")
                                  (status :target-type environment-status
                                   :member-name "status")
                                  (environment-id :target-type id-type
                                   :member-name "environmentId")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-arn :target-type environment-arn
                                   :member-name "environmentArn")
                                  (kms-key-id :target-type kms-key-id
                                   :member-name "kmsKeyId")
                                  (creation-timestamp :target-type timestamp
                                   :member-name "creationTimestamp"))
                                 (:shape-name "CreateKxEnvironmentResponse"))

(smithy/sdk/shapes:define-input create-kx-scaling-group-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (scaling-group-name :target-type
                                  kx-scaling-group-name :required common-lisp:t
                                  :member-name "scalingGroupName")
                                 (host-type :target-type kx-host-type :required
                                  common-lisp:t :member-name "hostType")
                                 (availability-zone-id :target-type
                                  availability-zone-id :required common-lisp:t
                                  :member-name "availabilityZoneId")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateKxScalingGroupRequest"))

(smithy/sdk/shapes:define-output create-kx-scaling-group-response
                                 common-lisp:nil
                                 ((environment-id :target-type
                                   kx-environment-id :member-name
                                   "environmentId")
                                  (scaling-group-name :target-type
                                   kx-scaling-group-name :member-name
                                   "scalingGroupName")
                                  (host-type :target-type kx-host-type
                                   :member-name "hostType")
                                  (availability-zone-id :target-type
                                   availability-zone-id :member-name
                                   "availabilityZoneId")
                                  (status :target-type kx-scaling-group-status
                                   :member-name "status")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp"))
                                 (:shape-name "CreateKxScalingGroupResponse"))

(smithy/sdk/shapes:define-input create-kx-user-request common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t)
                                 (user-name :target-type kx-user-name-string
                                  :required common-lisp:t :member-name
                                  "userName")
                                 (iam-role :target-type role-arn :required
                                  common-lisp:t :member-name "iamRole")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateKxUserRequest"))

(smithy/sdk/shapes:define-output create-kx-user-response common-lisp:nil
                                 ((user-name :target-type kx-user-name-string
                                   :member-name "userName")
                                  (user-arn :target-type kx-user-arn
                                   :member-name "userArn")
                                  (environment-id :target-type id-type
                                   :member-name "environmentId")
                                  (iam-role :target-type role-arn :member-name
                                   "iamRole"))
                                 (:shape-name "CreateKxUserResponse"))

(smithy/sdk/shapes:define-input create-kx-volume-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (volume-type :target-type kx-volume-type
                                  :required common-lisp:t :member-name
                                  "volumeType")
                                 (volume-name :target-type kx-volume-name
                                  :required common-lisp:t :member-name
                                  "volumeName")
                                 (description :target-type description
                                  :member-name "description")
                                 (nas1configuration :target-type
                                  kx-nas1configuration :member-name
                                  "nas1Configuration")
                                 (az-mode :target-type kx-az-mode :required
                                  common-lisp:t :member-name "azMode")
                                 (availability-zone-ids :target-type
                                  availability-zone-ids :required common-lisp:t
                                  :member-name "availabilityZoneIds")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateKxVolumeRequest"))

(smithy/sdk/shapes:define-output create-kx-volume-response common-lisp:nil
                                 ((environment-id :target-type
                                   kx-environment-id :member-name
                                   "environmentId")
                                  (volume-name :target-type kx-volume-name
                                   :member-name "volumeName")
                                  (volume-type :target-type kx-volume-type
                                   :member-name "volumeType")
                                  (volume-arn :target-type kx-volume-arn
                                   :member-name "volumeArn")
                                  (nas1configuration :target-type
                                   kx-nas1configuration :member-name
                                   "nas1Configuration")
                                  (status :target-type kx-volume-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   kx-volume-status-reason :member-name
                                   "statusReason")
                                  (az-mode :target-type kx-az-mode :member-name
                                   "azMode")
                                  (description :target-type description
                                   :member-name "description")
                                  (availability-zone-ids :target-type
                                   availability-zone-ids :member-name
                                   "availabilityZoneIds")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp"))
                                 (:shape-name "CreateKxVolumeResponse"))

(smithy/sdk/shapes:define-list custom-dnsconfiguration :member custom-dnsserver)

(smithy/sdk/shapes:define-structure custom-dnsserver common-lisp:nil
                                    ((custom-dnsserver-name :target-type
                                      valid-hostname :required common-lisp:t
                                      :member-name "customDNSServerName")
                                     (custom-dnsserver-ip :target-type
                                      valid-ipaddress :required common-lisp:t
                                      :member-name "customDNSServerIP"))
                                    (:shape-name "CustomDNSServer"))

(smithy/sdk/shapes:define-type data-bundle-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-bundle-arns :member data-bundle-arn)

(smithy/sdk/shapes:define-type database-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type db-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list db-paths :member db-path)

(smithy/sdk/shapes:define-input delete-environment-request common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-environment-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEnvironmentResponse"))

(smithy/sdk/shapes:define-input delete-kx-cluster-node-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (cluster-name :target-type kx-cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (node-id :target-type
                                  kx-cluster-node-id-string :required
                                  common-lisp:t :member-name "nodeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteKxClusterNodeRequest"))

(smithy/sdk/shapes:define-output delete-kx-cluster-node-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteKxClusterNodeResponse"))

(smithy/sdk/shapes:define-input delete-kx-cluster-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (cluster-name :target-type kx-cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (client-token :target-type client-token-string
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteKxClusterRequest"))

(smithy/sdk/shapes:define-output delete-kx-cluster-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteKxClusterResponse"))

(smithy/sdk/shapes:define-input delete-kx-database-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "clientToken" :http-query "clientToken"))
                                (:shape-name "DeleteKxDatabaseRequest"))

(smithy/sdk/shapes:define-output delete-kx-database-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteKxDatabaseResponse"))

(smithy/sdk/shapes:define-input delete-kx-dataview-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (dataview-name :target-type kx-dataview-name
                                  :required common-lisp:t :member-name
                                  "dataviewName" :http-label common-lisp:t)
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "clientToken" :http-query "clientToken"))
                                (:shape-name "DeleteKxDataviewRequest"))

(smithy/sdk/shapes:define-output delete-kx-dataview-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteKxDataviewResponse"))

(smithy/sdk/shapes:define-input delete-kx-environment-request common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteKxEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-kx-environment-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteKxEnvironmentResponse"))

(smithy/sdk/shapes:define-input delete-kx-scaling-group-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (scaling-group-name :target-type
                                  kx-scaling-group-name :required common-lisp:t
                                  :member-name "scalingGroupName" :http-label
                                  common-lisp:t)
                                 (client-token :target-type client-token-string
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteKxScalingGroupRequest"))

(smithy/sdk/shapes:define-output delete-kx-scaling-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteKxScalingGroupResponse"))

(smithy/sdk/shapes:define-input delete-kx-user-request common-lisp:nil
                                ((user-name :target-type kx-user-name-string
                                  :required common-lisp:t :member-name
                                  "userName" :http-label common-lisp:t)
                                 (environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteKxUserRequest"))

(smithy/sdk/shapes:define-output delete-kx-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteKxUserResponse"))

(smithy/sdk/shapes:define-input delete-kx-volume-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (volume-name :target-type kx-volume-name
                                  :required common-lisp:t :member-name
                                  "volumeName" :http-label common-lisp:t)
                                 (client-token :target-type client-token-string
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteKxVolumeRequest"))

(smithy/sdk/shapes:define-output delete-kx-volume-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteKxVolumeResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure environment common-lisp:nil
                                    ((name :target-type environment-name
                                      :member-name "name")
                                     (environment-id :target-type id-type
                                      :member-name "environmentId")
                                     (aws-account-id :target-type id-type
                                      :member-name "awsAccountId")
                                     (status :target-type environment-status
                                      :member-name "status")
                                     (environment-url :target-type url
                                      :member-name "environmentUrl")
                                     (description :target-type description
                                      :member-name "description")
                                     (environment-arn :target-type
                                      environment-arn :member-name
                                      "environmentArn")
                                     (sage-maker-studio-domain-url :target-type
                                      sms-domain-url :member-name
                                      "sageMakerStudioDomainUrl")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (dedicated-service-account-id :target-type
                                      id-type :member-name
                                      "dedicatedServiceAccountId")
                                     (federation-mode :target-type
                                      federation-mode :member-name
                                      "federationMode")
                                     (federation-parameters :target-type
                                      federation-parameters :member-name
                                      "federationParameters"))
                                    (:shape-name "Environment"))

(smithy/sdk/shapes:define-type environment-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-list :member environment)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum environment-status
    common-lisp:nil
  (:create-requested "CREATE_REQUESTED")
  (:creating "CREATING")
  (:created "CREATED")
  (:delete-requested "DELETE_REQUESTED")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:failed-creation "FAILED_CREATION")
  (:retry-deletion "RETRY_DELETION")
  (:failed-deletion "FAILED_DELETION")
  (:update-network-requested "UPDATE_NETWORK_REQUESTED")
  (:updating-network "UPDATING_NETWORK")
  (:failed-updating-network "FAILED_UPDATING_NETWORK")
  (:suspended "SUSPENDED"))

(smithy/sdk/shapes:define-enum error-details
    common-lisp:nil
  (:validation "The inputs to this request are invalid.")
  (:service-quota-exceeded "Service limits have been exceeded.")
  (:access-denied "Missing required permission to perform this request.")
  (:resource-not-found "One or more inputs to this request were not found.")
  (:throttling
   "The system temporarily lacks sufficient resources to process the request.")
  (:internal-service-exception "An internal error has occurred.")
  (:cancelled "Cancelled")
  (:user-recoverable "A user recoverable error has occurred"))

(smithy/sdk/shapes:define-structure error-info common-lisp:nil
                                    ((error-message :target-type error-message
                                      :member-name "errorMessage")
                                     (error-type :target-type error-details
                                      :member-name "errorType"))
                                    (:shape-name "ErrorInfo"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type federation-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type federation-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum federation-mode
    common-lisp:nil
  (:federated "FEDERATED")
  (:local "LOCAL"))

(smithy/sdk/shapes:define-structure federation-parameters common-lisp:nil
                                    ((saml-metadata-document :target-type
                                      saml-metadata-document :member-name
                                      "samlMetadataDocument")
                                     (saml-metadata-url :target-type url
                                      :member-name "samlMetadataURL")
                                     (application-call-back-url :target-type
                                      url :member-name
                                      "applicationCallBackURL")
                                     (federation-urn :target-type urn
                                      :member-name "federationURN")
                                     (federation-provider-name :target-type
                                      federation-provider-name :member-name
                                      "federationProviderName")
                                     (attribute-map :target-type attribute-map
                                      :member-name "attributeMap"))
                                    (:shape-name "FederationParameters"))

(smithy/sdk/shapes:define-type federation-provider-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fin-space-taggable-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-environment-request common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEnvironmentRequest"))

(smithy/sdk/shapes:define-output get-environment-response common-lisp:nil
                                 ((environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name "GetEnvironmentResponse"))

(smithy/sdk/shapes:define-input get-kx-changeset-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (changeset-id :target-type changeset-id
                                  :required common-lisp:t :member-name
                                  "changesetId" :http-label common-lisp:t))
                                (:shape-name "GetKxChangesetRequest"))

(smithy/sdk/shapes:define-output get-kx-changeset-response common-lisp:nil
                                 ((changeset-id :target-type changeset-id
                                   :member-name "changesetId")
                                  (database-name :target-type database-name
                                   :member-name "databaseName")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (change-requests :target-type change-requests
                                   :member-name "changeRequests")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (active-from-timestamp :target-type timestamp
                                   :member-name "activeFromTimestamp")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (status :target-type changeset-status
                                   :member-name "status")
                                  (error-info :target-type error-info
                                   :member-name "errorInfo"))
                                 (:shape-name "GetKxChangesetResponse"))

(smithy/sdk/shapes:define-input get-kx-cluster-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (cluster-name :target-type kx-cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t))
                                (:shape-name "GetKxClusterRequest"))

(smithy/sdk/shapes:define-output get-kx-cluster-response common-lisp:nil
                                 ((status :target-type kx-cluster-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   kx-cluster-status-reason :member-name
                                   "statusReason")
                                  (cluster-name :target-type kx-cluster-name
                                   :member-name "clusterName")
                                  (cluster-type :target-type kx-cluster-type
                                   :member-name "clusterType")
                                  (tickerplant-log-configuration :target-type
                                   tickerplant-log-configuration :member-name
                                   "tickerplantLogConfiguration")
                                  (volumes :target-type volumes :member-name
                                   "volumes")
                                  (databases :target-type
                                   kx-database-configurations :member-name
                                   "databases")
                                  (cache-storage-configurations :target-type
                                   kx-cache-storage-configurations :member-name
                                   "cacheStorageConfigurations")
                                  (auto-scaling-configuration :target-type
                                   auto-scaling-configuration :member-name
                                   "autoScalingConfiguration")
                                  (cluster-description :target-type
                                   kx-cluster-description :member-name
                                   "clusterDescription")
                                  (capacity-configuration :target-type
                                   capacity-configuration :member-name
                                   "capacityConfiguration")
                                  (release-label :target-type release-label
                                   :member-name "releaseLabel")
                                  (vpc-configuration :target-type
                                   vpc-configuration :member-name
                                   "vpcConfiguration")
                                  (initialization-script :target-type
                                   initialization-script-file-path :member-name
                                   "initializationScript")
                                  (command-line-arguments :target-type
                                   kx-command-line-arguments :member-name
                                   "commandLineArguments")
                                  (code :target-type code-configuration
                                   :member-name "code")
                                  (execution-role :target-type
                                   execution-role-arn :member-name
                                   "executionRole")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (savedown-storage-configuration :target-type
                                   kx-savedown-storage-configuration
                                   :member-name "savedownStorageConfiguration")
                                  (az-mode :target-type kx-az-mode :member-name
                                   "azMode")
                                  (availability-zone-id :target-type
                                   availability-zone-id :member-name
                                   "availabilityZoneId")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (scaling-group-configuration :target-type
                                   kx-scaling-group-configuration :member-name
                                   "scalingGroupConfiguration"))
                                 (:shape-name "GetKxClusterResponse"))

(smithy/sdk/shapes:define-input get-kx-connection-string-request
                                common-lisp:nil
                                ((user-arn :target-type kx-user-arn :required
                                  common-lisp:t :member-name "userArn"
                                  :http-query "userArn")
                                 (environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t)
                                 (cluster-name :target-type kx-cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-query "clusterName"))
                                (:shape-name "GetKxConnectionStringRequest"))

(smithy/sdk/shapes:define-output get-kx-connection-string-response
                                 common-lisp:nil
                                 ((signed-connection-string :target-type
                                   signed-kx-connection-string :member-name
                                   "signedConnectionString"))
                                 (:shape-name "GetKxConnectionStringResponse"))

(smithy/sdk/shapes:define-input get-kx-database-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t))
                                (:shape-name "GetKxDatabaseRequest"))

(smithy/sdk/shapes:define-output get-kx-database-response common-lisp:nil
                                 ((database-name :target-type database-name
                                   :member-name "databaseName")
                                  (database-arn :target-type database-arn
                                   :member-name "databaseArn")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (last-completed-changeset-id :target-type
                                   changeset-id :member-name
                                   "lastCompletedChangesetId")
                                  (num-bytes :target-type num-bytes
                                   :member-name "numBytes")
                                  (num-changesets :target-type num-changesets
                                   :member-name "numChangesets")
                                  (num-files :target-type num-files
                                   :member-name "numFiles"))
                                 (:shape-name "GetKxDatabaseResponse"))

(smithy/sdk/shapes:define-input get-kx-dataview-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (dataview-name :target-type kx-dataview-name
                                  :required common-lisp:t :member-name
                                  "dataviewName" :http-label common-lisp:t))
                                (:shape-name "GetKxDataviewRequest"))

(smithy/sdk/shapes:define-output get-kx-dataview-response common-lisp:nil
                                 ((database-name :target-type database-name
                                   :member-name "databaseName")
                                  (dataview-name :target-type kx-dataview-name
                                   :member-name "dataviewName")
                                  (az-mode :target-type kx-az-mode :member-name
                                   "azMode")
                                  (availability-zone-id :target-type
                                   availability-zone-id :member-name
                                   "availabilityZoneId")
                                  (changeset-id :target-type changeset-id
                                   :member-name "changesetId")
                                  (segment-configurations :target-type
                                   kx-dataview-segment-configuration-list
                                   :member-name "segmentConfigurations")
                                  (active-versions :target-type
                                   kx-dataview-active-version-list :member-name
                                   "activeVersions")
                                  (description :target-type description
                                   :member-name "description")
                                  (auto-update :target-type boolean-value
                                   :member-name "autoUpdate")
                                  (read-write :target-type boolean-value
                                   :member-name "readWrite")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (status :target-type kx-dataview-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   kx-dataview-status-reason :member-name
                                   "statusReason"))
                                 (:shape-name "GetKxDataviewResponse"))

(smithy/sdk/shapes:define-input get-kx-environment-request common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetKxEnvironmentRequest"))

(smithy/sdk/shapes:define-output get-kx-environment-response common-lisp:nil
                                 ((name :target-type kx-environment-name
                                   :member-name "name")
                                  (environment-id :target-type id-type
                                   :member-name "environmentId")
                                  (aws-account-id :target-type id-type
                                   :member-name "awsAccountId")
                                  (status :target-type environment-status
                                   :member-name "status")
                                  (tgw-status :target-type tgw-status
                                   :member-name "tgwStatus")
                                  (dns-status :target-type dns-status
                                   :member-name "dnsStatus")
                                  (error-message :target-type
                                   environment-error-message :member-name
                                   "errorMessage")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-arn :target-type environment-arn
                                   :member-name "environmentArn")
                                  (kms-key-id :target-type kms-key-id
                                   :member-name "kmsKeyId")
                                  (dedicated-service-account-id :target-type
                                   id-type :member-name
                                   "dedicatedServiceAccountId")
                                  (transit-gateway-configuration :target-type
                                   transit-gateway-configuration :member-name
                                   "transitGatewayConfiguration")
                                  (custom-dnsconfiguration :target-type
                                   custom-dnsconfiguration :member-name
                                   "customDNSConfiguration")
                                  (creation-timestamp :target-type timestamp
                                   :member-name "creationTimestamp")
                                  (update-timestamp :target-type timestamp
                                   :member-name "updateTimestamp")
                                  (availability-zone-ids :target-type
                                   availability-zone-ids :member-name
                                   "availabilityZoneIds")
                                  (certificate-authority-arn :target-type
                                   string-value-length1to255 :member-name
                                   "certificateAuthorityArn"))
                                 (:shape-name "GetKxEnvironmentResponse"))

(smithy/sdk/shapes:define-input get-kx-scaling-group-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (scaling-group-name :target-type
                                  kx-scaling-group-name :required common-lisp:t
                                  :member-name "scalingGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetKxScalingGroupRequest"))

(smithy/sdk/shapes:define-output get-kx-scaling-group-response common-lisp:nil
                                 ((scaling-group-name :target-type
                                   kx-scaling-group-name :member-name
                                   "scalingGroupName")
                                  (scaling-group-arn :target-type arn
                                   :member-name "scalingGroupArn")
                                  (host-type :target-type kx-host-type
                                   :member-name "hostType")
                                  (clusters :target-type kx-cluster-name-list
                                   :member-name "clusters")
                                  (availability-zone-id :target-type
                                   availability-zone-id :member-name
                                   "availabilityZoneId")
                                  (status :target-type kx-scaling-group-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   kx-cluster-status-reason :member-name
                                   "statusReason")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp"))
                                 (:shape-name "GetKxScalingGroupResponse"))

(smithy/sdk/shapes:define-input get-kx-user-request common-lisp:nil
                                ((user-name :target-type kx-user-name-string
                                  :required common-lisp:t :member-name
                                  "userName" :http-label common-lisp:t)
                                 (environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetKxUserRequest"))

(smithy/sdk/shapes:define-output get-kx-user-response common-lisp:nil
                                 ((user-name :target-type id-type :member-name
                                   "userName")
                                  (user-arn :target-type kx-user-arn
                                   :member-name "userArn")
                                  (environment-id :target-type id-type
                                   :member-name "environmentId")
                                  (iam-role :target-type role-arn :member-name
                                   "iamRole"))
                                 (:shape-name "GetKxUserResponse"))

(smithy/sdk/shapes:define-input get-kx-volume-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (volume-name :target-type kx-volume-name
                                  :required common-lisp:t :member-name
                                  "volumeName" :http-label common-lisp:t))
                                (:shape-name "GetKxVolumeRequest"))

(smithy/sdk/shapes:define-output get-kx-volume-response common-lisp:nil
                                 ((environment-id :target-type
                                   kx-environment-id :member-name
                                   "environmentId")
                                  (volume-name :target-type kx-volume-name
                                   :member-name "volumeName")
                                  (volume-type :target-type kx-volume-type
                                   :member-name "volumeType")
                                  (volume-arn :target-type kx-volume-arn
                                   :member-name "volumeArn")
                                  (nas1configuration :target-type
                                   kx-nas1configuration :member-name
                                   "nas1Configuration")
                                  (status :target-type kx-volume-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   kx-volume-status-reason :member-name
                                   "statusReason")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (description :target-type description
                                   :member-name "description")
                                  (az-mode :target-type kx-az-mode :member-name
                                   "azMode")
                                  (availability-zone-ids :target-type
                                   availability-zone-ids :member-name
                                   "availabilityZoneIds")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (attached-clusters :target-type
                                   kx-attached-clusters :member-name
                                   "attachedClusters"))
                                 (:shape-name "GetKxVolumeResponse"))

(smithy/sdk/shapes:define-enum ipaddress-type
    common-lisp:nil
  (:ip-v4 "IP_V4"))

(smithy/sdk/shapes:define-structure icmp-type-code common-lisp:nil
                                    ((type :target-type icmp-type-or-code
                                      :required common-lisp:t :member-name
                                      "type")
                                     (code :target-type icmp-type-or-code
                                      :required common-lisp:t :member-name
                                      "code"))
                                    (:shape-name "IcmpTypeCode"))

(smithy/sdk/shapes:define-type icmp-type-or-code
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type initialization-script-file-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kx-attached-cluster common-lisp:nil
                                    ((cluster-name :target-type kx-cluster-name
                                      :member-name "clusterName")
                                     (cluster-type :target-type kx-cluster-type
                                      :member-name "clusterType")
                                     (cluster-status :target-type
                                      kx-cluster-status :member-name
                                      "clusterStatus"))
                                    (:shape-name "KxAttachedCluster"))

(smithy/sdk/shapes:define-list kx-attached-clusters :member kx-attached-cluster)

(smithy/sdk/shapes:define-enum kx-az-mode
    common-lisp:nil
  (:single "SINGLE")
  (:multi "MULTI"))

(smithy/sdk/shapes:define-structure kx-cache-storage-configuration
                                    common-lisp:nil
                                    ((type :target-type kx-cache-storage-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (size :target-type kx-cache-storage-size
                                      :required common-lisp:t :member-name
                                      "size"))
                                    (:shape-name "KxCacheStorageConfiguration"))

(smithy/sdk/shapes:define-list kx-cache-storage-configurations :member
                               kx-cache-storage-configuration)

(smithy/sdk/shapes:define-type kx-cache-storage-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type kx-cache-storage-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kx-changeset-list-entry common-lisp:nil
                                    ((changeset-id :target-type changeset-id
                                      :member-name "changesetId")
                                     (created-timestamp :target-type timestamp
                                      :member-name "createdTimestamp")
                                     (active-from-timestamp :target-type
                                      timestamp :member-name
                                      "activeFromTimestamp")
                                     (last-modified-timestamp :target-type
                                      timestamp :member-name
                                      "lastModifiedTimestamp")
                                     (status :target-type changeset-status
                                      :member-name "status"))
                                    (:shape-name "KxChangesetListEntry"))

(smithy/sdk/shapes:define-list kx-changesets :member kx-changeset-list-entry)

(smithy/sdk/shapes:define-structure kx-cluster common-lisp:nil
                                    ((status :target-type kx-cluster-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      kx-cluster-status-reason :member-name
                                      "statusReason")
                                     (cluster-name :target-type kx-cluster-name
                                      :member-name "clusterName")
                                     (cluster-type :target-type kx-cluster-type
                                      :member-name "clusterType")
                                     (cluster-description :target-type
                                      kx-cluster-description :member-name
                                      "clusterDescription")
                                     (release-label :target-type release-label
                                      :member-name "releaseLabel")
                                     (volumes :target-type volumes :member-name
                                      "volumes")
                                     (initialization-script :target-type
                                      initialization-script-file-path
                                      :member-name "initializationScript")
                                     (execution-role :target-type
                                      execution-role-arn :member-name
                                      "executionRole")
                                     (az-mode :target-type kx-az-mode
                                      :member-name "azMode")
                                     (availability-zone-id :target-type
                                      availability-zone-id :member-name
                                      "availabilityZoneId")
                                     (last-modified-timestamp :target-type
                                      timestamp :member-name
                                      "lastModifiedTimestamp")
                                     (created-timestamp :target-type timestamp
                                      :member-name "createdTimestamp"))
                                    (:shape-name "KxCluster"))

(smithy/sdk/shapes:define-structure kx-cluster-code-deployment-configuration
                                    common-lisp:nil
                                    ((deployment-strategy :target-type
                                      kx-cluster-code-deployment-strategy
                                      :required common-lisp:t :member-name
                                      "deploymentStrategy"))
                                    (:shape-name
                                     "KxClusterCodeDeploymentConfiguration"))

(smithy/sdk/shapes:define-enum kx-cluster-code-deployment-strategy
    common-lisp:nil
  (:no-restart "NO_RESTART")
  (:rolling "ROLLING")
  (:force "FORCE"))

(smithy/sdk/shapes:define-type kx-cluster-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kx-cluster-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list kx-cluster-name-list :member kx-cluster-name)

(smithy/sdk/shapes:define-type kx-cluster-node-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum kx-cluster-status
    common-lisp:nil
  (:pending "PENDING")
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:running "RUNNING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-type kx-cluster-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum kx-cluster-type
    common-lisp:nil
  (:hdb "HDB")
  (:rdb "RDB")
  (:gateway "GATEWAY")
  (:gp "GP")
  (:tickerplant "TICKERPLANT"))

(smithy/sdk/shapes:define-list kx-clusters :member kx-cluster)

(smithy/sdk/shapes:define-structure kx-command-line-argument common-lisp:nil
                                    ((key :target-type
                                      kx-command-line-argument-key :member-name
                                      "key")
                                     (value :target-type
                                      kx-command-line-argument-value
                                      :member-name "value"))
                                    (:shape-name "KxCommandLineArgument"))

(smithy/sdk/shapes:define-type kx-command-line-argument-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kx-command-line-argument-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list kx-command-line-arguments :member
                               kx-command-line-argument)

(smithy/sdk/shapes:define-structure kx-database-cache-configuration
                                    common-lisp:nil
                                    ((cache-type :target-type
                                      kx-cache-storage-type :required
                                      common-lisp:t :member-name "cacheType")
                                     (db-paths :target-type db-paths :required
                                      common-lisp:t :member-name "dbPaths")
                                     (dataview-name :target-type
                                      kx-dataview-name :member-name
                                      "dataviewName"))
                                    (:shape-name
                                     "KxDatabaseCacheConfiguration"))

(smithy/sdk/shapes:define-list kx-database-cache-configurations :member
                               kx-database-cache-configuration)

(smithy/sdk/shapes:define-structure kx-database-configuration common-lisp:nil
                                    ((database-name :target-type database-name
                                      :required common-lisp:t :member-name
                                      "databaseName")
                                     (cache-configurations :target-type
                                      kx-database-cache-configurations
                                      :member-name "cacheConfigurations")
                                     (changeset-id :target-type changeset-id
                                      :member-name "changesetId")
                                     (dataview-name :target-type
                                      kx-dataview-name :member-name
                                      "dataviewName")
                                     (dataview-configuration :target-type
                                      kx-dataview-configuration :member-name
                                      "dataviewConfiguration"))
                                    (:shape-name "KxDatabaseConfiguration"))

(smithy/sdk/shapes:define-list kx-database-configurations :member
                               kx-database-configuration)

(smithy/sdk/shapes:define-structure kx-database-list-entry common-lisp:nil
                                    ((database-name :target-type database-name
                                      :member-name "databaseName")
                                     (created-timestamp :target-type timestamp
                                      :member-name "createdTimestamp")
                                     (last-modified-timestamp :target-type
                                      timestamp :member-name
                                      "lastModifiedTimestamp"))
                                    (:shape-name "KxDatabaseListEntry"))

(smithy/sdk/shapes:define-list kx-databases :member kx-database-list-entry)

(smithy/sdk/shapes:define-structure kx-dataview-active-version common-lisp:nil
                                    ((changeset-id :target-type changeset-id
                                      :member-name "changesetId")
                                     (segment-configurations :target-type
                                      kx-dataview-segment-configuration-list
                                      :member-name "segmentConfigurations")
                                     (attached-clusters :target-type
                                      attached-cluster-list :member-name
                                      "attachedClusters")
                                     (created-timestamp :target-type timestamp
                                      :member-name "createdTimestamp")
                                     (version-id :target-type version-id
                                      :member-name "versionId"))
                                    (:shape-name "KxDataviewActiveVersion"))

(smithy/sdk/shapes:define-list kx-dataview-active-version-list :member
                               kx-dataview-active-version)

(smithy/sdk/shapes:define-structure kx-dataview-configuration common-lisp:nil
                                    ((dataview-name :target-type
                                      kx-dataview-name :member-name
                                      "dataviewName")
                                     (dataview-version-id :target-type
                                      version-id :member-name
                                      "dataviewVersionId")
                                     (changeset-id :target-type changeset-id
                                      :member-name "changesetId")
                                     (segment-configurations :target-type
                                      kx-dataview-segment-configuration-list
                                      :member-name "segmentConfigurations"))
                                    (:shape-name "KxDataviewConfiguration"))

(smithy/sdk/shapes:define-structure kx-dataview-list-entry common-lisp:nil
                                    ((environment-id :target-type
                                      environment-id :member-name
                                      "environmentId")
                                     (database-name :target-type database-name
                                      :member-name "databaseName")
                                     (dataview-name :target-type
                                      kx-dataview-name :member-name
                                      "dataviewName")
                                     (az-mode :target-type kx-az-mode
                                      :member-name "azMode")
                                     (availability-zone-id :target-type
                                      availability-zone-id :member-name
                                      "availabilityZoneId")
                                     (changeset-id :target-type changeset-id
                                      :member-name "changesetId")
                                     (segment-configurations :target-type
                                      kx-dataview-segment-configuration-list
                                      :member-name "segmentConfigurations")
                                     (active-versions :target-type
                                      kx-dataview-active-version-list
                                      :member-name "activeVersions")
                                     (status :target-type kx-dataview-status
                                      :member-name "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (auto-update :target-type boolean-value
                                      :member-name "autoUpdate")
                                     (read-write :target-type boolean-value
                                      :member-name "readWrite")
                                     (created-timestamp :target-type timestamp
                                      :member-name "createdTimestamp")
                                     (last-modified-timestamp :target-type
                                      timestamp :member-name
                                      "lastModifiedTimestamp")
                                     (status-reason :target-type
                                      kx-dataview-status-reason :member-name
                                      "statusReason"))
                                    (:shape-name "KxDataviewListEntry"))

(smithy/sdk/shapes:define-type kx-dataview-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kx-dataview-segment-configuration
                                    common-lisp:nil
                                    ((db-paths :target-type
                                      segment-configuration-db-path-list
                                      :required common-lisp:t :member-name
                                      "dbPaths")
                                     (volume-name :target-type kx-volume-name
                                      :required common-lisp:t :member-name
                                      "volumeName")
                                     (on-demand :target-type boolean-value
                                      :member-name "onDemand"))
                                    (:shape-name
                                     "KxDataviewSegmentConfiguration"))

(smithy/sdk/shapes:define-list kx-dataview-segment-configuration-list :member
                               kx-dataview-segment-configuration)

(smithy/sdk/shapes:define-enum kx-dataview-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:failed "FAILED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-type kx-dataview-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list kx-dataviews :member kx-dataview-list-entry)

(smithy/sdk/shapes:define-structure kx-deployment-configuration common-lisp:nil
                                    ((deployment-strategy :target-type
                                      kx-deployment-strategy :required
                                      common-lisp:t :member-name
                                      "deploymentStrategy"))
                                    (:shape-name "KxDeploymentConfiguration"))

(smithy/sdk/shapes:define-enum kx-deployment-strategy
    common-lisp:nil
  (:no-restart "NO_RESTART")
  (:rolling "ROLLING"))

(smithy/sdk/shapes:define-structure kx-environment common-lisp:nil
                                    ((name :target-type kx-environment-name
                                      :member-name "name")
                                     (environment-id :target-type id-type
                                      :member-name "environmentId")
                                     (aws-account-id :target-type id-type
                                      :member-name "awsAccountId")
                                     (status :target-type environment-status
                                      :member-name "status")
                                     (tgw-status :target-type tgw-status
                                      :member-name "tgwStatus")
                                     (dns-status :target-type dns-status
                                      :member-name "dnsStatus")
                                     (error-message :target-type
                                      environment-error-message :member-name
                                      "errorMessage")
                                     (description :target-type description
                                      :member-name "description")
                                     (environment-arn :target-type
                                      environment-arn :member-name
                                      "environmentArn")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId")
                                     (dedicated-service-account-id :target-type
                                      id-type :member-name
                                      "dedicatedServiceAccountId")
                                     (transit-gateway-configuration
                                      :target-type
                                      transit-gateway-configuration
                                      :member-name
                                      "transitGatewayConfiguration")
                                     (custom-dnsconfiguration :target-type
                                      custom-dnsconfiguration :member-name
                                      "customDNSConfiguration")
                                     (creation-timestamp :target-type timestamp
                                      :member-name "creationTimestamp")
                                     (update-timestamp :target-type timestamp
                                      :member-name "updateTimestamp")
                                     (availability-zone-ids :target-type
                                      availability-zone-ids :member-name
                                      "availabilityZoneIds")
                                     (certificate-authority-arn :target-type
                                      string-value-length1to255 :member-name
                                      "certificateAuthorityArn"))
                                    (:shape-name "KxEnvironment"))

(smithy/sdk/shapes:define-type kx-environment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list kx-environment-list :member kx-environment)

(smithy/sdk/shapes:define-type kx-environment-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kx-host-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kx-nas1configuration common-lisp:nil
                                    ((type :target-type kx-nas1type
                                      :member-name "type")
                                     (size :target-type kx-nas1size
                                      :member-name "size"))
                                    (:shape-name "KxNAS1Configuration"))

(smithy/sdk/shapes:define-type kx-nas1size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum kx-nas1type
    common-lisp:nil
  (:ssd-1000 "SSD_1000")
  (:ssd-250 "SSD_250")
  (:hdd-12 "HDD_12"))

(smithy/sdk/shapes:define-structure kx-node common-lisp:nil
                                    ((node-id :target-type
                                      kx-cluster-node-id-string :member-name
                                      "nodeId")
                                     (availability-zone-id :target-type
                                      availability-zone-id :member-name
                                      "availabilityZoneId")
                                     (launch-time :target-type timestamp
                                      :member-name "launchTime")
                                     (status :target-type kx-node-status
                                      :member-name "status"))
                                    (:shape-name "KxNode"))

(smithy/sdk/shapes:define-enum kx-node-status
    common-lisp:nil
  (:running "RUNNING")
  (:provisioning "PROVISIONING"))

(smithy/sdk/shapes:define-list kx-node-summaries :member kx-node)

(smithy/sdk/shapes:define-structure kx-savedown-storage-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      kx-savedown-storage-type :member-name
                                      "type")
                                     (size :target-type
                                      kx-savedown-storage-size :member-name
                                      "size")
                                     (volume-name :target-type kx-volume-name
                                      :member-name "volumeName"))
                                    (:shape-name
                                     "KxSavedownStorageConfiguration"))

(smithy/sdk/shapes:define-type kx-savedown-storage-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum kx-savedown-storage-type
    common-lisp:nil
  (:sds01 "SDS01"))

(smithy/sdk/shapes:define-structure kx-scaling-group common-lisp:nil
                                    ((scaling-group-name :target-type
                                      kx-scaling-group-name :member-name
                                      "scalingGroupName")
                                     (host-type :target-type kx-host-type
                                      :member-name "hostType")
                                     (clusters :target-type
                                      kx-cluster-name-list :member-name
                                      "clusters")
                                     (availability-zone-id :target-type
                                      availability-zone-id :member-name
                                      "availabilityZoneId")
                                     (status :target-type
                                      kx-scaling-group-status :member-name
                                      "status")
                                     (status-reason :target-type
                                      kx-cluster-status-reason :member-name
                                      "statusReason")
                                     (last-modified-timestamp :target-type
                                      timestamp :member-name
                                      "lastModifiedTimestamp")
                                     (created-timestamp :target-type timestamp
                                      :member-name "createdTimestamp"))
                                    (:shape-name "KxScalingGroup"))

(smithy/sdk/shapes:define-structure kx-scaling-group-configuration
                                    common-lisp:nil
                                    ((scaling-group-name :target-type
                                      kx-scaling-group-name :required
                                      common-lisp:t :member-name
                                      "scalingGroupName")
                                     (memory-limit :target-type memory-mib
                                      :member-name "memoryLimit")
                                     (memory-reservation :target-type
                                      memory-mib :required common-lisp:t
                                      :member-name "memoryReservation")
                                     (node-count :target-type
                                      cluster-node-count :required
                                      common-lisp:t :member-name "nodeCount")
                                     (cpu :target-type cpu-count :member-name
                                      "cpu"))
                                    (:shape-name "KxScalingGroupConfiguration"))

(smithy/sdk/shapes:define-list kx-scaling-group-list :member kx-scaling-group)

(smithy/sdk/shapes:define-type kx-scaling-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum kx-scaling-group-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-structure kx-user common-lisp:nil
                                    ((user-arn :target-type kx-user-arn
                                      :member-name "userArn")
                                     (user-name :target-type
                                      kx-user-name-string :member-name
                                      "userName")
                                     (iam-role :target-type role-arn
                                      :member-name "iamRole")
                                     (create-timestamp :target-type timestamp
                                      :member-name "createTimestamp")
                                     (update-timestamp :target-type timestamp
                                      :member-name "updateTimestamp"))
                                    (:shape-name "KxUser"))

(smithy/sdk/shapes:define-type kx-user-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list kx-user-list :member kx-user)

(smithy/sdk/shapes:define-type kx-user-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kx-volume common-lisp:nil
                                    ((volume-name :target-type kx-volume-name
                                      :member-name "volumeName")
                                     (volume-type :target-type kx-volume-type
                                      :member-name "volumeType")
                                     (status :target-type kx-volume-status
                                      :member-name "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (status-reason :target-type
                                      kx-volume-status-reason :member-name
                                      "statusReason")
                                     (az-mode :target-type kx-az-mode
                                      :member-name "azMode")
                                     (availability-zone-ids :target-type
                                      availability-zone-ids :member-name
                                      "availabilityZoneIds")
                                     (created-timestamp :target-type timestamp
                                      :member-name "createdTimestamp")
                                     (last-modified-timestamp :target-type
                                      timestamp :member-name
                                      "lastModifiedTimestamp"))
                                    (:shape-name "KxVolume"))

(smithy/sdk/shapes:define-type kx-volume-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kx-volume-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum kx-volume-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:updated "UPDATED")
  (:update-failed "UPDATE_FAILED")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-type kx-volume-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum kx-volume-type
    common-lisp:nil
  (:nas-1 "NAS_1"))

(smithy/sdk/shapes:define-list kx-volumes :member kx-volume)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-environments-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type result-limit
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListEnvironmentsRequest"))

(smithy/sdk/shapes:define-output list-environments-response common-lisp:nil
                                 ((environments :target-type environment-list
                                   :member-name "environments")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEnvironmentsResponse"))

(smithy/sdk/shapes:define-input list-kx-changesets-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListKxChangesetsRequest"))

(smithy/sdk/shapes:define-output list-kx-changesets-response common-lisp:nil
                                 ((kx-changesets :target-type kx-changesets
                                   :member-name "kxChangesets")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKxChangesetsResponse"))

(smithy/sdk/shapes:define-input list-kx-cluster-nodes-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (cluster-name :target-type kx-cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type result-limit
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListKxClusterNodesRequest"))

(smithy/sdk/shapes:define-output list-kx-cluster-nodes-response common-lisp:nil
                                 ((nodes :target-type kx-node-summaries
                                   :member-name "nodes")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKxClusterNodesResponse"))

(smithy/sdk/shapes:define-input list-kx-clusters-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (cluster-type :target-type kx-cluster-type
                                  :member-name "clusterType" :http-query
                                  "clusterType")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListKxClustersRequest"))

(smithy/sdk/shapes:define-output list-kx-clusters-response common-lisp:nil
                                 ((kx-cluster-summaries :target-type
                                   kx-clusters :member-name
                                   "kxClusterSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKxClustersResponse"))

(smithy/sdk/shapes:define-input list-kx-databases-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListKxDatabasesRequest"))

(smithy/sdk/shapes:define-output list-kx-databases-response common-lisp:nil
                                 ((kx-databases :target-type kx-databases
                                   :member-name "kxDatabases")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKxDatabasesResponse"))

(smithy/sdk/shapes:define-input list-kx-dataviews-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListKxDataviewsRequest"))

(smithy/sdk/shapes:define-output list-kx-dataviews-response common-lisp:nil
                                 ((kx-dataviews :target-type kx-dataviews
                                   :member-name "kxDataviews")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKxDataviewsResponse"))

(smithy/sdk/shapes:define-input list-kx-environments-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListKxEnvironmentsRequest"))

(smithy/sdk/shapes:define-output list-kx-environments-response common-lisp:nil
                                 ((environments :target-type
                                   kx-environment-list :member-name
                                   "environments")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKxEnvironmentsResponse"))

(smithy/sdk/shapes:define-input list-kx-scaling-groups-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListKxScalingGroupsRequest"))

(smithy/sdk/shapes:define-output list-kx-scaling-groups-response
                                 common-lisp:nil
                                 ((scaling-groups :target-type
                                   kx-scaling-group-list :member-name
                                   "scalingGroups")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKxScalingGroupsResponse"))

(smithy/sdk/shapes:define-input list-kx-users-request common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type result-limit
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListKxUsersRequest"))

(smithy/sdk/shapes:define-output list-kx-users-response common-lisp:nil
                                 ((users :target-type kx-user-list :member-name
                                   "users")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKxUsersResponse"))

(smithy/sdk/shapes:define-input list-kx-volumes-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (volume-type :target-type kx-volume-type
                                  :member-name "volumeType" :http-query
                                  "volumeType"))
                                (:shape-name "ListKxVolumesRequest"))

(smithy/sdk/shapes:define-output list-kx-volumes-response common-lisp:nil
                                 ((kx-volume-summaries :target-type kx-volumes
                                   :member-name "kxVolumeSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListKxVolumesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  fin-space-taggable-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type memory-mib smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-aclconfiguration :member
                               network-aclentry)

(smithy/sdk/shapes:define-structure network-aclentry common-lisp:nil
                                    ((rule-number :target-type rule-number
                                      :required common-lisp:t :member-name
                                      "ruleNumber")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "protocol")
                                     (rule-action :target-type rule-action
                                      :required common-lisp:t :member-name
                                      "ruleAction")
                                     (port-range :target-type port-range
                                      :member-name "portRange")
                                     (icmp-type-code :target-type
                                      icmp-type-code :member-name
                                      "icmpTypeCode")
                                     (cidr-block :target-type valid-cidrblock
                                      :required common-lisp:t :member-name
                                      "cidrBlock"))
                                    (:shape-name "NetworkACLEntry"))

(smithy/sdk/shapes:define-type node-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type node-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure port-range common-lisp:nil
                                    ((from :target-type port :required
                                      common-lisp:t :member-name "from")
                                     (to :target-type port :required
                                      common-lisp:t :member-name "to"))
                                    (:shape-name "PortRange"))

(smithy/sdk/shapes:define-type protocol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type release-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type result-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rule-action
    common-lisp:nil
  (:allow "allow")
  (:deny "deny"))

(smithy/sdk/shapes:define-type rule-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type saml-metadata-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-id-list :member
                               security-group-id-string)

(smithy/sdk/shapes:define-type security-group-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list segment-configuration-db-path-list :member
                               db-path)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type signed-kx-connection-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sms-domain-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id-string)

(smithy/sdk/shapes:define-type subnet-id-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure superuser-parameters common-lisp:nil
                                    ((email-address :target-type email-id
                                      :required common-lisp:t :member-name
                                      "emailAddress")
                                     (first-name :target-type name-string
                                      :required common-lisp:t :member-name
                                      "firstName")
                                     (last-name :target-type name-string
                                      :required common-lisp:t :member-name
                                      "lastName"))
                                    (:shape-name "SuperuserParameters"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  fin-space-taggable-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure tickerplant-log-configuration
                                    common-lisp:nil
                                    ((tickerplant-log-volumes :target-type
                                      tickerplant-log-volumes :member-name
                                      "tickerplantLogVolumes"))
                                    (:shape-name "TickerplantLogConfiguration"))

(smithy/sdk/shapes:define-list tickerplant-log-volumes :member volume-name)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure transit-gateway-configuration
                                    common-lisp:nil
                                    ((transit-gateway-id :target-type
                                      transit-gateway-id :required
                                      common-lisp:t :member-name
                                      "transitGatewayID")
                                     (routable-cidrspace :target-type
                                      valid-cidrspace :required common-lisp:t
                                      :member-name "routableCIDRSpace")
                                     (attachment-network-acl-configuration
                                      :target-type network-aclconfiguration
                                      :member-name
                                      "attachmentNetworkAclConfiguration"))
                                    (:shape-name "TransitGatewayConfiguration"))

(smithy/sdk/shapes:define-type transit-gateway-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  fin-space-taggable-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-environment-request common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t)
                                 (name :target-type environment-name
                                  :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (federation-mode :target-type federation-mode
                                  :member-name "federationMode")
                                 (federation-parameters :target-type
                                  federation-parameters :member-name
                                  "federationParameters"))
                                (:shape-name "UpdateEnvironmentRequest"))

(smithy/sdk/shapes:define-output update-environment-response common-lisp:nil
                                 ((environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name "UpdateEnvironmentResponse"))

(smithy/sdk/shapes:define-input update-kx-cluster-code-configuration-request
                                common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (cluster-name :target-type kx-cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (client-token :target-type client-token-string
                                  :member-name "clientToken")
                                 (code :target-type code-configuration
                                  :required common-lisp:t :member-name "code")
                                 (initialization-script :target-type
                                  initialization-script-file-path :member-name
                                  "initializationScript")
                                 (command-line-arguments :target-type
                                  kx-command-line-arguments :member-name
                                  "commandLineArguments")
                                 (deployment-configuration :target-type
                                  kx-cluster-code-deployment-configuration
                                  :member-name "deploymentConfiguration"))
                                (:shape-name
                                 "UpdateKxClusterCodeConfigurationRequest"))

(smithy/sdk/shapes:define-output update-kx-cluster-code-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateKxClusterCodeConfigurationResponse"))

(smithy/sdk/shapes:define-input update-kx-cluster-databases-request
                                common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (cluster-name :target-type kx-cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (client-token :target-type client-token-string
                                  :member-name "clientToken")
                                 (databases :target-type
                                  kx-database-configurations :required
                                  common-lisp:t :member-name "databases")
                                 (deployment-configuration :target-type
                                  kx-deployment-configuration :member-name
                                  "deploymentConfiguration"))
                                (:shape-name "UpdateKxClusterDatabasesRequest"))

(smithy/sdk/shapes:define-output update-kx-cluster-databases-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateKxClusterDatabasesResponse"))

(smithy/sdk/shapes:define-input update-kx-database-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "UpdateKxDatabaseRequest"))

(smithy/sdk/shapes:define-output update-kx-database-response common-lisp:nil
                                 ((database-name :target-type database-name
                                   :member-name "databaseName")
                                  (environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (description :target-type description
                                   :member-name "description")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp"))
                                 (:shape-name "UpdateKxDatabaseResponse"))

(smithy/sdk/shapes:define-input update-kx-dataview-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (database-name :target-type database-name
                                  :required common-lisp:t :member-name
                                  "databaseName" :http-label common-lisp:t)
                                 (dataview-name :target-type kx-dataview-name
                                  :required common-lisp:t :member-name
                                  "dataviewName" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (changeset-id :target-type changeset-id
                                  :member-name "changesetId")
                                 (segment-configurations :target-type
                                  kx-dataview-segment-configuration-list
                                  :member-name "segmentConfigurations")
                                 (client-token :target-type client-token-string
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "UpdateKxDataviewRequest"))

(smithy/sdk/shapes:define-output update-kx-dataview-response common-lisp:nil
                                 ((environment-id :target-type environment-id
                                   :member-name "environmentId")
                                  (database-name :target-type database-name
                                   :member-name "databaseName")
                                  (dataview-name :target-type kx-dataview-name
                                   :member-name "dataviewName")
                                  (az-mode :target-type kx-az-mode :member-name
                                   "azMode")
                                  (availability-zone-id :target-type
                                   availability-zone-id :member-name
                                   "availabilityZoneId")
                                  (changeset-id :target-type changeset-id
                                   :member-name "changesetId")
                                  (segment-configurations :target-type
                                   kx-dataview-segment-configuration-list
                                   :member-name "segmentConfigurations")
                                  (active-versions :target-type
                                   kx-dataview-active-version-list :member-name
                                   "activeVersions")
                                  (status :target-type kx-dataview-status
                                   :member-name "status")
                                  (auto-update :target-type boolean-value
                                   :member-name "autoUpdate")
                                  (read-write :target-type boolean-value
                                   :member-name "readWrite")
                                  (description :target-type description
                                   :member-name "description")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp"))
                                 (:shape-name "UpdateKxDataviewResponse"))

(smithy/sdk/shapes:define-input update-kx-environment-network-request
                                common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t)
                                 (transit-gateway-configuration :target-type
                                  transit-gateway-configuration :member-name
                                  "transitGatewayConfiguration")
                                 (custom-dnsconfiguration :target-type
                                  custom-dnsconfiguration :member-name
                                  "customDNSConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "UpdateKxEnvironmentNetworkRequest"))

(smithy/sdk/shapes:define-output update-kx-environment-network-response
                                 common-lisp:nil
                                 ((name :target-type kx-environment-name
                                   :member-name "name")
                                  (environment-id :target-type id-type
                                   :member-name "environmentId")
                                  (aws-account-id :target-type id-type
                                   :member-name "awsAccountId")
                                  (status :target-type environment-status
                                   :member-name "status")
                                  (tgw-status :target-type tgw-status
                                   :member-name "tgwStatus")
                                  (dns-status :target-type dns-status
                                   :member-name "dnsStatus")
                                  (error-message :target-type
                                   environment-error-message :member-name
                                   "errorMessage")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-arn :target-type environment-arn
                                   :member-name "environmentArn")
                                  (kms-key-id :target-type kms-key-id
                                   :member-name "kmsKeyId")
                                  (dedicated-service-account-id :target-type
                                   id-type :member-name
                                   "dedicatedServiceAccountId")
                                  (transit-gateway-configuration :target-type
                                   transit-gateway-configuration :member-name
                                   "transitGatewayConfiguration")
                                  (custom-dnsconfiguration :target-type
                                   custom-dnsconfiguration :member-name
                                   "customDNSConfiguration")
                                  (creation-timestamp :target-type timestamp
                                   :member-name "creationTimestamp")
                                  (update-timestamp :target-type timestamp
                                   :member-name "updateTimestamp")
                                  (availability-zone-ids :target-type
                                   availability-zone-ids :member-name
                                   "availabilityZoneIds"))
                                 (:shape-name
                                  "UpdateKxEnvironmentNetworkResponse"))

(smithy/sdk/shapes:define-input update-kx-environment-request common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t)
                                 (name :target-type kx-environment-name
                                  :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateKxEnvironmentRequest"))

(smithy/sdk/shapes:define-output update-kx-environment-response common-lisp:nil
                                 ((name :target-type kx-environment-name
                                   :member-name "name")
                                  (environment-id :target-type id-type
                                   :member-name "environmentId")
                                  (aws-account-id :target-type id-type
                                   :member-name "awsAccountId")
                                  (status :target-type environment-status
                                   :member-name "status")
                                  (tgw-status :target-type tgw-status
                                   :member-name "tgwStatus")
                                  (dns-status :target-type dns-status
                                   :member-name "dnsStatus")
                                  (error-message :target-type
                                   environment-error-message :member-name
                                   "errorMessage")
                                  (description :target-type description
                                   :member-name "description")
                                  (environment-arn :target-type environment-arn
                                   :member-name "environmentArn")
                                  (kms-key-id :target-type kms-key-id
                                   :member-name "kmsKeyId")
                                  (dedicated-service-account-id :target-type
                                   id-type :member-name
                                   "dedicatedServiceAccountId")
                                  (transit-gateway-configuration :target-type
                                   transit-gateway-configuration :member-name
                                   "transitGatewayConfiguration")
                                  (custom-dnsconfiguration :target-type
                                   custom-dnsconfiguration :member-name
                                   "customDNSConfiguration")
                                  (creation-timestamp :target-type timestamp
                                   :member-name "creationTimestamp")
                                  (update-timestamp :target-type timestamp
                                   :member-name "updateTimestamp")
                                  (availability-zone-ids :target-type
                                   availability-zone-ids :member-name
                                   "availabilityZoneIds"))
                                 (:shape-name "UpdateKxEnvironmentResponse"))

(smithy/sdk/shapes:define-input update-kx-user-request common-lisp:nil
                                ((environment-id :target-type id-type :required
                                  common-lisp:t :member-name "environmentId"
                                  :http-label common-lisp:t)
                                 (user-name :target-type kx-user-name-string
                                  :required common-lisp:t :member-name
                                  "userName" :http-label common-lisp:t)
                                 (iam-role :target-type role-arn :required
                                  common-lisp:t :member-name "iamRole")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateKxUserRequest"))

(smithy/sdk/shapes:define-output update-kx-user-response common-lisp:nil
                                 ((user-name :target-type kx-user-name-string
                                   :member-name "userName")
                                  (user-arn :target-type kx-user-arn
                                   :member-name "userArn")
                                  (environment-id :target-type id-type
                                   :member-name "environmentId")
                                  (iam-role :target-type role-arn :member-name
                                   "iamRole"))
                                 (:shape-name "UpdateKxUserResponse"))

(smithy/sdk/shapes:define-input update-kx-volume-request common-lisp:nil
                                ((environment-id :target-type kx-environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t)
                                 (volume-name :target-type kx-volume-name
                                  :required common-lisp:t :member-name
                                  "volumeName" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (client-token :target-type client-token-string
                                  :member-name "clientToken")
                                 (nas1configuration :target-type
                                  kx-nas1configuration :member-name
                                  "nas1Configuration"))
                                (:shape-name "UpdateKxVolumeRequest"))

(smithy/sdk/shapes:define-output update-kx-volume-response common-lisp:nil
                                 ((environment-id :target-type
                                   kx-environment-id :member-name
                                   "environmentId")
                                  (volume-name :target-type kx-volume-name
                                   :member-name "volumeName")
                                  (volume-type :target-type kx-volume-type
                                   :member-name "volumeType")
                                  (volume-arn :target-type kx-volume-arn
                                   :member-name "volumeArn")
                                  (nas1configuration :target-type
                                   kx-nas1configuration :member-name
                                   "nas1Configuration")
                                  (status :target-type kx-volume-status
                                   :member-name "status")
                                  (description :target-type description
                                   :member-name "description")
                                  (status-reason :target-type
                                   kx-volume-status-reason :member-name
                                   "statusReason")
                                  (created-timestamp :target-type timestamp
                                   :member-name "createdTimestamp")
                                  (az-mode :target-type kx-az-mode :member-name
                                   "azMode")
                                  (availability-zone-ids :target-type
                                   availability-zone-ids :member-name
                                   "availabilityZoneIds")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (attached-clusters :target-type
                                   kx-attached-clusters :member-name
                                   "attachedClusters"))
                                 (:shape-name "UpdateKxVolumeResponse"))

(smithy/sdk/shapes:define-type valid-cidrblock smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type valid-cidrspace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type valid-hostname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type valid-ipaddress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message2
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure volume common-lisp:nil
                                    ((volume-name :target-type volume-name
                                      :member-name "volumeName")
                                     (volume-type :target-type volume-type
                                      :member-name "volumeType"))
                                    (:shape-name "Volume"))

(smithy/sdk/shapes:define-type volume-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum volume-type
    common-lisp:nil
  (:nas-1 "NAS_1"))

(smithy/sdk/shapes:define-list volumes :member volume)

(smithy/sdk/shapes:define-structure vpc-configuration common-lisp:nil
                                    ((vpc-id :target-type vpc-id-string
                                      :member-name "vpcId")
                                     (security-group-ids :target-type
                                      security-group-id-list :member-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type subnet-id-list
                                      :member-name "subnetIds")
                                     (ip-address-type :target-type
                                      ipaddress-type :member-name
                                      "ipAddressType"))
                                    (:shape-name "VpcConfiguration"))

(smithy/sdk/shapes:define-type vpc-id-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean-value smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum dns-status
    common-lisp:nil
  (:none "NONE")
  (:update-requested "UPDATE_REQUESTED")
  (:updating "UPDATING")
  (:failed-update "FAILED_UPDATE")
  (:successfully-updated "SUCCESSFULLY_UPDATED"))

(smithy/sdk/shapes:define-type num-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type num-changesets smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type num-files smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type string-value-length1to255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum tgw-status
    common-lisp:nil
  (:none "NONE")
  (:update-requested "UPDATE_REQUESTED")
  (:updating "UPDATING")
  (:failed-update "FAILED_UPDATE")
  (:successfully-updated "SUCCESSFULLY_UPDATED"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type urn smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-request :output
                                       create-environment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/environment" :code
                                       200)

(smithy/sdk/operation:define-operation create-kx-changeset :shape-name
                                       "CreateKxChangeset" :input
                                       create-kx-changeset-request :output
                                       create-kx-changeset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}/changesets"
                                       :code 200)

(smithy/sdk/operation:define-operation create-kx-cluster :shape-name
                                       "CreateKxCluster" :input
                                       create-kx-cluster-request :output
                                       create-kx-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/kx/environments/{environmentId}/clusters"
                                       :code 200)

(smithy/sdk/operation:define-operation create-kx-database :shape-name
                                       "CreateKxDatabase" :input
                                       create-kx-database-request :output
                                       create-kx-database-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/kx/environments/{environmentId}/databases"
                                       :code 200)

(smithy/sdk/operation:define-operation create-kx-dataview :shape-name
                                       "CreateKxDataview" :input
                                       create-kx-dataview-request :output
                                       create-kx-dataview-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}/dataviews"
                                       :code 200)

(smithy/sdk/operation:define-operation create-kx-environment :shape-name
                                       "CreateKxEnvironment" :input
                                       create-kx-environment-request :output
                                       create-kx-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/kx/environments"
                                       :code 200)

(smithy/sdk/operation:define-operation create-kx-scaling-group :shape-name
                                       "CreateKxScalingGroup" :input
                                       create-kx-scaling-group-request :output
                                       create-kx-scaling-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/kx/environments/{environmentId}/scalingGroups"
                                       :code 200)

(smithy/sdk/operation:define-operation create-kx-user :shape-name
                                       "CreateKxUser" :input
                                       create-kx-user-request :output
                                       create-kx-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/kx/environments/{environmentId}/users"
                                       :code 200)

(smithy/sdk/operation:define-operation create-kx-volume :shape-name
                                       "CreateKxVolume" :input
                                       create-kx-volume-request :output
                                       create-kx-volume-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/kx/environments/{environmentId}/kxvolumes"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-request :output
                                       delete-environment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/environment/{environmentId}" :code 200)

(smithy/sdk/operation:define-operation delete-kx-cluster :shape-name
                                       "DeleteKxCluster" :input
                                       delete-kx-cluster-request :output
                                       delete-kx-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/kx/environments/{environmentId}/clusters/{clusterName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-kx-cluster-node :shape-name
                                       "DeleteKxClusterNode" :input
                                       delete-kx-cluster-node-request :output
                                       delete-kx-cluster-node-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/kx/environments/{environmentId}/clusters/{clusterName}/nodes/{nodeId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-kx-database :shape-name
                                       "DeleteKxDatabase" :input
                                       delete-kx-database-request :output
                                       delete-kx-database-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-kx-dataview :shape-name
                                       "DeleteKxDataview" :input
                                       delete-kx-dataview-request :output
                                       delete-kx-dataview-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-kx-environment :shape-name
                                       "DeleteKxEnvironment" :input
                                       delete-kx-environment-request :output
                                       delete-kx-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/kx/environments/{environmentId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-kx-scaling-group :shape-name
                                       "DeleteKxScalingGroup" :input
                                       delete-kx-scaling-group-request :output
                                       delete-kx-scaling-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/kx/environments/{environmentId}/scalingGroups/{scalingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-kx-user :shape-name
                                       "DeleteKxUser" :input
                                       delete-kx-user-request :output
                                       delete-kx-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/kx/environments/{environmentId}/users/{userName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-kx-volume :shape-name
                                       "DeleteKxVolume" :input
                                       delete-kx-volume-request :output
                                       delete-kx-volume-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/kx/environments/{environmentId}/kxvolumes/{volumeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment :shape-name
                                       "GetEnvironment" :input
                                       get-environment-request :output
                                       get-environment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environment/{environmentId}" :code 200)

(smithy/sdk/operation:define-operation get-kx-changeset :shape-name
                                       "GetKxChangeset" :input
                                       get-kx-changeset-request :output
                                       get-kx-changeset-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}/changesets/{changesetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-kx-cluster :shape-name
                                       "GetKxCluster" :input
                                       get-kx-cluster-request :output
                                       get-kx-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/clusters/{clusterName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-kx-connection-string :shape-name
                                       "GetKxConnectionString" :input
                                       get-kx-connection-string-request :output
                                       get-kx-connection-string-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/connectionString"
                                       :code 200)

(smithy/sdk/operation:define-operation get-kx-database :shape-name
                                       "GetKxDatabase" :input
                                       get-kx-database-request :output
                                       get-kx-database-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-kx-dataview :shape-name
                                       "GetKxDataview" :input
                                       get-kx-dataview-request :output
                                       get-kx-dataview-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-kx-environment :shape-name
                                       "GetKxEnvironment" :input
                                       get-kx-environment-request :output
                                       get-kx-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-kx-scaling-group :shape-name
                                       "GetKxScalingGroup" :input
                                       get-kx-scaling-group-request :output
                                       get-kx-scaling-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/scalingGroups/{scalingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-kx-user :shape-name "GetKxUser"
                                       :input get-kx-user-request :output
                                       get-kx-user-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/users/{userName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-kx-volume :shape-name "GetKxVolume"
                                       :input get-kx-volume-request :output
                                       get-kx-volume-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/kxvolumes/{volumeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-request :output
                                       list-environments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/environment" :code
                                       200)

(smithy/sdk/operation:define-operation list-kx-changesets :shape-name
                                       "ListKxChangesets" :input
                                       list-kx-changesets-request :output
                                       list-kx-changesets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}/changesets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-kx-cluster-nodes :shape-name
                                       "ListKxClusterNodes" :input
                                       list-kx-cluster-nodes-request :output
                                       list-kx-cluster-nodes-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/clusters/{clusterName}/nodes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-kx-clusters :shape-name
                                       "ListKxClusters" :input
                                       list-kx-clusters-request :output
                                       list-kx-clusters-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/clusters"
                                       :code 200)

(smithy/sdk/operation:define-operation list-kx-databases :shape-name
                                       "ListKxDatabases" :input
                                       list-kx-databases-request :output
                                       list-kx-databases-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/databases"
                                       :code 200)

(smithy/sdk/operation:define-operation list-kx-dataviews :shape-name
                                       "ListKxDataviews" :input
                                       list-kx-dataviews-request :output
                                       list-kx-dataviews-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}/dataviews"
                                       :code 200)

(smithy/sdk/operation:define-operation list-kx-environments :shape-name
                                       "ListKxEnvironments" :input
                                       list-kx-environments-request :output
                                       list-kx-environments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/kx/environments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-kx-scaling-groups :shape-name
                                       "ListKxScalingGroups" :input
                                       list-kx-scaling-groups-request :output
                                       list-kx-scaling-groups-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/scalingGroups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-kx-users :shape-name "ListKxUsers"
                                       :input list-kx-users-request :output
                                       list-kx-users-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/users"
                                       :code 200)

(smithy/sdk/operation:define-operation list-kx-volumes :shape-name
                                       "ListKxVolumes" :input
                                       list-kx-volumes-request :output
                                       list-kx-volumes-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/kx/environments/{environmentId}/kxvolumes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-environment :shape-name
                                       "UpdateEnvironment" :input
                                       update-environment-request :output
                                       update-environment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/environment/{environmentId}" :code 200)

(smithy/sdk/operation:define-operation update-kx-cluster-code-configuration
                                       :shape-name
                                       "UpdateKxClusterCodeConfiguration"
                                       :input
                                       update-kx-cluster-code-configuration-request
                                       :output
                                       update-kx-cluster-code-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/kx/environments/{environmentId}/clusters/{clusterName}/configuration/code"
                                       :code 200)

(smithy/sdk/operation:define-operation update-kx-cluster-databases :shape-name
                                       "UpdateKxClusterDatabases" :input
                                       update-kx-cluster-databases-request
                                       :output
                                       update-kx-cluster-databases-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/kx/environments/{environmentId}/clusters/{clusterName}/configuration/databases"
                                       :code 200)

(smithy/sdk/operation:define-operation update-kx-database :shape-name
                                       "UpdateKxDatabase" :input
                                       update-kx-database-request :output
                                       update-kx-database-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-kx-dataview :shape-name
                                       "UpdateKxDataview" :input
                                       update-kx-dataview-request :output
                                       update-kx-dataview-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-kx-environment :shape-name
                                       "UpdateKxEnvironment" :input
                                       update-kx-environment-request :output
                                       update-kx-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/kx/environments/{environmentId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-kx-environment-network
                                       :shape-name "UpdateKxEnvironmentNetwork"
                                       :input
                                       update-kx-environment-network-request
                                       :output
                                       update-kx-environment-network-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/kx/environments/{environmentId}/network"
                                       :code 200)

(smithy/sdk/operation:define-operation update-kx-user :shape-name
                                       "UpdateKxUser" :input
                                       update-kx-user-request :output
                                       update-kx-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/kx/environments/{environmentId}/users/{userName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-kx-volume :shape-name
                                       "UpdateKxVolume" :input
                                       update-kx-volume-request :output
                                       update-kx-volume-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/kx/environments/{environmentId}/kxvolumes/{volumeName}"
                                       :code 200)
