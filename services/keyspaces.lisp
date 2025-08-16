(uiop/package:define-package #:pira/keyspaces (:use)
                             (:export #:arn #:auto-scaling-policy
                              #:auto-scaling-settings
                              #:auto-scaling-specification #:boolean-object
                              #:capacity-specification
                              #:capacity-specification-summary #:capacity-units
                              #:cdc-propagate-tags #:cdc-specification
                              #:cdc-specification-summary #:cdc-status
                              #:client-side-timestamps
                              #:client-side-timestamps-status #:clustering-key
                              #:clustering-key-list #:column-definition
                              #:column-definition-list #:comment
                              #:create-keyspace #:create-keyspace-request
                              #:create-keyspace-response #:create-table
                              #:create-table-request #:create-table-response
                              #:create-type #:default-time-to-live
                              #:delete-keyspace #:delete-keyspace-request
                              #:delete-keyspace-response #:delete-table
                              #:delete-table-request #:delete-table-response
                              #:delete-type #:depth #:double-object
                              #:encryption-specification #:encryption-type
                              #:field-definition #:field-list #:generic-string
                              #:get-keyspace #:get-keyspace-request
                              #:get-keyspace-response #:get-table
                              #:get-table-auto-scaling-settings
                              #:get-table-request #:get-table-response
                              #:get-type #:integer-object #:keyspace-name
                              #:keyspace-status #:keyspace-summary
                              #:keyspace-summary-list #:keyspaces-service
                              #:list-keyspaces #:list-keyspaces-request
                              #:list-keyspaces-response #:list-tables
                              #:list-tables-request #:list-tables-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:list-types
                              #:max-results #:next-token #:partition-key
                              #:partition-key-list #:point-in-time-recovery
                              #:point-in-time-recovery-status
                              #:point-in-time-recovery-summary #:region-list
                              #:replica-auto-scaling-specification
                              #:replica-auto-scaling-specification-list
                              #:replica-specification
                              #:replica-specification-list
                              #:replica-specification-summary
                              #:replica-specification-summary-list
                              #:replication-group-status
                              #:replication-group-status-list
                              #:replication-specification #:restore-table
                              #:restore-table-request #:restore-table-response
                              #:schema-definition #:sort-order #:static-column
                              #:static-column-list #:stream-arn #:table-name
                              #:table-name-list #:table-status #:table-summary
                              #:table-summary-list
                              #:tables-replication-progress #:tag #:tag-key
                              #:tag-list #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:target-tracking-scaling-policy-configuration
                              #:throughput-mode #:time-to-live
                              #:time-to-live-status #:timestamp #:type-name
                              #:type-name-list #:type-status #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-keyspace
                              #:update-table #:update-table-request
                              #:update-table-response #:view-type #:kms-key-arn
                              #:region #:rs))
(common-lisp:in-package #:pira/keyspaces)

(smithy/sdk/service:define-service keyspaces-service :shape-name
                                   "KeyspacesService" :version "2022-02-10"
                                   :title "Amazon Keyspaces" :traits
                                   '(("aws.api#service" ("sdkId" . "Keyspaces")
                                      ("cloudFormationName" . "Cassandra")
                                      ("arnNamespace" . "cassandra")
                                      ("cloudTrailEventSource"
                                       . "cassandra.amazonaws.com")
                                      ("endpointPrefix" . "cassandra"))
                                     ("aws.auth#sigv4" ("name" . "cassandra"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure auto-scaling-policy common-lisp:nil
                                    ((target-tracking-scaling-policy-configuration
                                      :target-type
                                      target-tracking-scaling-policy-configuration
                                      :member-name
                                      "targetTrackingScalingPolicyConfiguration"))
                                    (:shape-name "AutoScalingPolicy"))

(smithy/sdk/shapes:define-structure auto-scaling-settings common-lisp:nil
                                    ((auto-scaling-disabled :target-type
                                      boolean-object :member-name
                                      "autoScalingDisabled")
                                     (minimum-units :target-type capacity-units
                                      :member-name "minimumUnits")
                                     (maximum-units :target-type capacity-units
                                      :member-name "maximumUnits")
                                     (scaling-policy :target-type
                                      auto-scaling-policy :member-name
                                      "scalingPolicy"))
                                    (:shape-name "AutoScalingSettings"))

(smithy/sdk/shapes:define-structure auto-scaling-specification common-lisp:nil
                                    ((write-capacity-auto-scaling :target-type
                                      auto-scaling-settings :member-name
                                      "writeCapacityAutoScaling")
                                     (read-capacity-auto-scaling :target-type
                                      auto-scaling-settings :member-name
                                      "readCapacityAutoScaling"))
                                    (:shape-name "AutoScalingSpecification"))

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure capacity-specification common-lisp:nil
                                    ((throughput-mode :target-type
                                      throughput-mode :required common-lisp:t
                                      :member-name "throughputMode")
                                     (read-capacity-units :target-type
                                      capacity-units :member-name
                                      "readCapacityUnits")
                                     (write-capacity-units :target-type
                                      capacity-units :member-name
                                      "writeCapacityUnits"))
                                    (:shape-name "CapacitySpecification"))

(smithy/sdk/shapes:define-structure capacity-specification-summary
                                    common-lisp:nil
                                    ((throughput-mode :target-type
                                      throughput-mode :required common-lisp:t
                                      :member-name "throughputMode")
                                     (read-capacity-units :target-type
                                      capacity-units :member-name
                                      "readCapacityUnits")
                                     (write-capacity-units :target-type
                                      capacity-units :member-name
                                      "writeCapacityUnits")
                                     (last-update-to-pay-per-request-timestamp
                                      :target-type timestamp :member-name
                                      "lastUpdateToPayPerRequestTimestamp"))
                                    (:shape-name
                                     "CapacitySpecificationSummary"))

(smithy/sdk/shapes:define-type capacity-units smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type cdc-propagate-tags
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cdc-specification common-lisp:nil
                                    ((status :target-type cdc-status :required
                                      common-lisp:t :member-name "status")
                                     (view-type :target-type view-type
                                      :member-name "viewType")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (propagate-tags :target-type
                                      cdc-propagate-tags :member-name
                                      "propagateTags"))
                                    (:shape-name "CdcSpecification"))

(smithy/sdk/shapes:define-structure cdc-specification-summary common-lisp:nil
                                    ((status :target-type cdc-status :required
                                      common-lisp:t :member-name "status")
                                     (view-type :target-type view-type
                                      :member-name "viewType"))
                                    (:shape-name "CdcSpecificationSummary"))

(smithy/sdk/shapes:define-type cdc-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure client-side-timestamps common-lisp:nil
                                    ((status :target-type
                                      client-side-timestamps-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "ClientSideTimestamps"))

(smithy/sdk/shapes:define-type client-side-timestamps-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure clustering-key common-lisp:nil
                                    ((name :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (order-by :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "orderBy"))
                                    (:shape-name "ClusteringKey"))

(smithy/sdk/shapes:define-list clustering-key-list :member clustering-key)

(smithy/sdk/shapes:define-structure column-definition common-lisp:nil
                                    ((name :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "ColumnDefinition"))

(smithy/sdk/shapes:define-list column-definition-list :member column-definition)

(smithy/sdk/shapes:define-structure comment common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "Comment"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-keyspace-request common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (replication-specification :target-type
                                      replication-specification :member-name
                                      "replicationSpecification"))
                                    (:shape-name "CreateKeyspaceRequest"))

(smithy/sdk/shapes:define-structure create-keyspace-response common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "CreateKeyspaceResponse"))

(smithy/sdk/shapes:define-structure create-table-request common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (schema-definition :target-type
                                      schema-definition :required common-lisp:t
                                      :member-name "schemaDefinition")
                                     (comment :target-type comment :member-name
                                      "comment")
                                     (capacity-specification :target-type
                                      capacity-specification :member-name
                                      "capacitySpecification")
                                     (encryption-specification :target-type
                                      encryption-specification :member-name
                                      "encryptionSpecification")
                                     (point-in-time-recovery :target-type
                                      point-in-time-recovery :member-name
                                      "pointInTimeRecovery")
                                     (ttl :target-type time-to-live
                                      :member-name "ttl")
                                     (default-time-to-live :target-type
                                      default-time-to-live :member-name
                                      "defaultTimeToLive")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-side-timestamps :target-type
                                      client-side-timestamps :member-name
                                      "clientSideTimestamps")
                                     (auto-scaling-specification :target-type
                                      auto-scaling-specification :member-name
                                      "autoScalingSpecification")
                                     (replica-specifications :target-type
                                      replica-specification-list :member-name
                                      "replicaSpecifications")
                                     (cdc-specification :target-type
                                      cdc-specification :member-name
                                      "cdcSpecification"))
                                    (:shape-name "CreateTableRequest"))

(smithy/sdk/shapes:define-structure create-table-response common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "CreateTableResponse"))

(smithy/sdk/shapes:define-input create-type-request common-lisp:nil
                                ((keyspace-name :target-type keyspace-name
                                  :required common-lisp:t :member-name
                                  "keyspaceName")
                                 (type-name :target-type type-name :required
                                  common-lisp:t :member-name "typeName")
                                 (field-definitions :target-type field-list
                                  :required common-lisp:t :member-name
                                  "fieldDefinitions"))
                                (:shape-name "CreateTypeRequest"))

(smithy/sdk/shapes:define-output create-type-response common-lisp:nil
                                 ((keyspace-arn :target-type arn :required
                                   common-lisp:t :member-name "keyspaceArn")
                                  (type-name :target-type type-name :required
                                   common-lisp:t :member-name "typeName"))
                                 (:shape-name "CreateTypeResponse"))

(smithy/sdk/shapes:define-type default-time-to-live
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure delete-keyspace-request common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName"))
                                    (:shape-name "DeleteKeyspaceRequest"))

(smithy/sdk/shapes:define-structure delete-keyspace-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteKeyspaceResponse"))

(smithy/sdk/shapes:define-structure delete-table-request common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "tableName"))
                                    (:shape-name "DeleteTableRequest"))

(smithy/sdk/shapes:define-structure delete-table-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteTableResponse"))

(smithy/sdk/shapes:define-input delete-type-request common-lisp:nil
                                ((keyspace-name :target-type keyspace-name
                                  :required common-lisp:t :member-name
                                  "keyspaceName")
                                 (type-name :target-type type-name :required
                                  common-lisp:t :member-name "typeName"))
                                (:shape-name "DeleteTypeRequest"))

(smithy/sdk/shapes:define-output delete-type-response common-lisp:nil
                                 ((keyspace-arn :target-type arn :required
                                   common-lisp:t :member-name "keyspaceArn")
                                  (type-name :target-type type-name :required
                                   common-lisp:t :member-name "typeName"))
                                 (:shape-name "DeleteTypeResponse"))

(smithy/sdk/shapes:define-type depth smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type double-object smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure encryption-specification common-lisp:nil
                                    ((type :target-type encryption-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (kms-key-identifier :target-type
                                      kms-key-arn :member-name
                                      "kmsKeyIdentifier"))
                                    (:shape-name "EncryptionSpecification"))

(smithy/sdk/shapes:define-type encryption-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-definition common-lisp:nil
                                    ((name :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "FieldDefinition"))

(smithy/sdk/shapes:define-list field-list :member field-definition)

(smithy/sdk/shapes:define-type generic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-keyspace-request common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName"))
                                    (:shape-name "GetKeyspaceRequest"))

(smithy/sdk/shapes:define-structure get-keyspace-response common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (replication-strategy :target-type rs
                                      :required common-lisp:t :member-name
                                      "replicationStrategy")
                                     (replication-regions :target-type
                                      region-list :member-name
                                      "replicationRegions")
                                     (replication-group-statuses :target-type
                                      replication-group-status-list
                                      :member-name "replicationGroupStatuses"))
                                    (:shape-name "GetKeyspaceResponse"))

(smithy/sdk/shapes:define-input get-table-auto-scaling-settings-request
                                common-lisp:nil
                                ((keyspace-name :target-type keyspace-name
                                  :required common-lisp:t :member-name
                                  "keyspaceName")
                                 (table-name :target-type table-name :required
                                  common-lisp:t :member-name "tableName"))
                                (:shape-name
                                 "GetTableAutoScalingSettingsRequest"))

(smithy/sdk/shapes:define-output get-table-auto-scaling-settings-response
                                 common-lisp:nil
                                 ((keyspace-name :target-type keyspace-name
                                   :required common-lisp:t :member-name
                                   "keyspaceName")
                                  (table-name :target-type table-name :required
                                   common-lisp:t :member-name "tableName")
                                  (resource-arn :target-type arn :required
                                   common-lisp:t :member-name "resourceArn")
                                  (auto-scaling-specification :target-type
                                   auto-scaling-specification :member-name
                                   "autoScalingSpecification")
                                  (replica-specifications :target-type
                                   replica-auto-scaling-specification-list
                                   :member-name "replicaSpecifications"))
                                 (:shape-name
                                  "GetTableAutoScalingSettingsResponse"))

(smithy/sdk/shapes:define-structure get-table-request common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "tableName"))
                                    (:shape-name "GetTableRequest"))

(smithy/sdk/shapes:define-structure get-table-response common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (creation-timestamp :target-type timestamp
                                      :member-name "creationTimestamp")
                                     (status :target-type table-status
                                      :member-name "status")
                                     (schema-definition :target-type
                                      schema-definition :member-name
                                      "schemaDefinition")
                                     (capacity-specification :target-type
                                      capacity-specification-summary
                                      :member-name "capacitySpecification")
                                     (encryption-specification :target-type
                                      encryption-specification :member-name
                                      "encryptionSpecification")
                                     (point-in-time-recovery :target-type
                                      point-in-time-recovery-summary
                                      :member-name "pointInTimeRecovery")
                                     (ttl :target-type time-to-live
                                      :member-name "ttl")
                                     (default-time-to-live :target-type
                                      default-time-to-live :member-name
                                      "defaultTimeToLive")
                                     (comment :target-type comment :member-name
                                      "comment")
                                     (client-side-timestamps :target-type
                                      client-side-timestamps :member-name
                                      "clientSideTimestamps")
                                     (replica-specifications :target-type
                                      replica-specification-summary-list
                                      :member-name "replicaSpecifications")
                                     (latest-stream-arn :target-type stream-arn
                                      :member-name "latestStreamArn")
                                     (cdc-specification :target-type
                                      cdc-specification-summary :member-name
                                      "cdcSpecification"))
                                    (:shape-name "GetTableResponse"))

(smithy/sdk/shapes:define-input get-type-request common-lisp:nil
                                ((keyspace-name :target-type keyspace-name
                                  :required common-lisp:t :member-name
                                  "keyspaceName")
                                 (type-name :target-type type-name :required
                                  common-lisp:t :member-name "typeName"))
                                (:shape-name "GetTypeRequest"))

(smithy/sdk/shapes:define-output get-type-response common-lisp:nil
                                 ((keyspace-name :target-type keyspace-name
                                   :required common-lisp:t :member-name
                                   "keyspaceName")
                                  (type-name :target-type type-name :required
                                   common-lisp:t :member-name "typeName")
                                  (field-definitions :target-type field-list
                                   :member-name "fieldDefinitions")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "lastModifiedTimestamp")
                                  (status :target-type type-status :member-name
                                   "status")
                                  (direct-referring-tables :target-type
                                   table-name-list :member-name
                                   "directReferringTables")
                                  (direct-parent-types :target-type
                                   type-name-list :member-name
                                   "directParentTypes")
                                  (max-nesting-depth :target-type depth
                                   :member-name "maxNestingDepth")
                                  (keyspace-arn :target-type arn :required
                                   common-lisp:t :member-name "keyspaceArn"))
                                 (:shape-name "GetTypeResponse"))

(smithy/sdk/shapes:define-type integer-object smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type keyspace-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type keyspace-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure keyspace-summary common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (replication-strategy :target-type rs
                                      :required common-lisp:t :member-name
                                      "replicationStrategy")
                                     (replication-regions :target-type
                                      region-list :member-name
                                      "replicationRegions"))
                                    (:shape-name "KeyspaceSummary"))

(smithy/sdk/shapes:define-list keyspace-summary-list :member keyspace-summary)

(smithy/sdk/shapes:define-structure list-keyspaces-request common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListKeyspacesRequest"))

(smithy/sdk/shapes:define-structure list-keyspaces-response common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (keyspaces :target-type
                                      keyspace-summary-list :required
                                      common-lisp:t :member-name "keyspaces"))
                                    (:shape-name "ListKeyspacesResponse"))

(smithy/sdk/shapes:define-structure list-tables-request common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName"))
                                    (:shape-name "ListTablesRequest"))

(smithy/sdk/shapes:define-structure list-tables-response common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (tables :target-type table-summary-list
                                      :member-name "tables"))
                                    (:shape-name "ListTablesResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-types-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (keyspace-name :target-type keyspace-name
                                  :required common-lisp:t :member-name
                                  "keyspaceName"))
                                (:shape-name "ListTypesRequest"))

(smithy/sdk/shapes:define-output list-types-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (types :target-type type-name-list :required
                                   common-lisp:t :member-name "types"))
                                 (:shape-name "ListTypesResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure partition-key common-lisp:nil
                                    ((name :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name "PartitionKey"))

(smithy/sdk/shapes:define-list partition-key-list :member partition-key)

(smithy/sdk/shapes:define-structure point-in-time-recovery common-lisp:nil
                                    ((status :target-type
                                      point-in-time-recovery-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "PointInTimeRecovery"))

(smithy/sdk/shapes:define-type point-in-time-recovery-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure point-in-time-recovery-summary
                                    common-lisp:nil
                                    ((status :target-type
                                      point-in-time-recovery-status :required
                                      common-lisp:t :member-name "status")
                                     (earliest-restorable-timestamp
                                      :target-type timestamp :member-name
                                      "earliestRestorableTimestamp"))
                                    (:shape-name "PointInTimeRecoverySummary"))

(smithy/sdk/shapes:define-list region-list :member region)

(smithy/sdk/shapes:define-structure replica-auto-scaling-specification
                                    common-lisp:nil
                                    ((region :target-type region :member-name
                                      "region")
                                     (auto-scaling-specification :target-type
                                      auto-scaling-specification :member-name
                                      "autoScalingSpecification"))
                                    (:shape-name
                                     "ReplicaAutoScalingSpecification"))

(smithy/sdk/shapes:define-list replica-auto-scaling-specification-list :member
                               replica-auto-scaling-specification)

(smithy/sdk/shapes:define-structure replica-specification common-lisp:nil
                                    ((region :target-type region :required
                                      common-lisp:t :member-name "region")
                                     (read-capacity-units :target-type
                                      capacity-units :member-name
                                      "readCapacityUnits")
                                     (read-capacity-auto-scaling :target-type
                                      auto-scaling-settings :member-name
                                      "readCapacityAutoScaling"))
                                    (:shape-name "ReplicaSpecification"))

(smithy/sdk/shapes:define-list replica-specification-list :member
                               replica-specification)

(smithy/sdk/shapes:define-structure replica-specification-summary
                                    common-lisp:nil
                                    ((region :target-type region :member-name
                                      "region")
                                     (status :target-type table-status
                                      :member-name "status")
                                     (capacity-specification :target-type
                                      capacity-specification-summary
                                      :member-name "capacitySpecification"))
                                    (:shape-name "ReplicaSpecificationSummary"))

(smithy/sdk/shapes:define-list replica-specification-summary-list :member
                               replica-specification-summary)

(smithy/sdk/shapes:define-structure replication-group-status common-lisp:nil
                                    ((region :target-type region :required
                                      common-lisp:t :member-name "region")
                                     (keyspace-status :target-type
                                      keyspace-status :required common-lisp:t
                                      :member-name "keyspaceStatus")
                                     (tables-replication-progress :target-type
                                      tables-replication-progress :member-name
                                      "tablesReplicationProgress"))
                                    (:shape-name "ReplicationGroupStatus"))

(smithy/sdk/shapes:define-list replication-group-status-list :member
                               replication-group-status)

(smithy/sdk/shapes:define-structure replication-specification common-lisp:nil
                                    ((replication-strategy :target-type rs
                                      :required common-lisp:t :member-name
                                      "replicationStrategy")
                                     (region-list :target-type region-list
                                      :member-name "regionList"))
                                    (:shape-name "ReplicationSpecification"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-arn :target-type arn :member-name
                                  "resourceArn"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure restore-table-request common-lisp:nil
                                    ((source-keyspace-name :target-type
                                      keyspace-name :required common-lisp:t
                                      :member-name "sourceKeyspaceName")
                                     (source-table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "sourceTableName")
                                     (target-keyspace-name :target-type
                                      keyspace-name :required common-lisp:t
                                      :member-name "targetKeyspaceName")
                                     (target-table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "targetTableName")
                                     (restore-timestamp :target-type timestamp
                                      :member-name "restoreTimestamp")
                                     (capacity-specification-override
                                      :target-type capacity-specification
                                      :member-name
                                      "capacitySpecificationOverride")
                                     (encryption-specification-override
                                      :target-type encryption-specification
                                      :member-name
                                      "encryptionSpecificationOverride")
                                     (point-in-time-recovery-override
                                      :target-type point-in-time-recovery
                                      :member-name
                                      "pointInTimeRecoveryOverride")
                                     (tags-override :target-type tag-list
                                      :member-name "tagsOverride")
                                     (auto-scaling-specification :target-type
                                      auto-scaling-specification :member-name
                                      "autoScalingSpecification")
                                     (replica-specifications :target-type
                                      replica-specification-list :member-name
                                      "replicaSpecifications"))
                                    (:shape-name "RestoreTableRequest"))

(smithy/sdk/shapes:define-structure restore-table-response common-lisp:nil
                                    ((restored-table-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "restoredTableARN"))
                                    (:shape-name "RestoreTableResponse"))

(smithy/sdk/shapes:define-structure schema-definition common-lisp:nil
                                    ((all-columns :target-type
                                      column-definition-list :required
                                      common-lisp:t :member-name "allColumns")
                                     (partition-keys :target-type
                                      partition-key-list :required
                                      common-lisp:t :member-name
                                      "partitionKeys")
                                     (clustering-keys :target-type
                                      clustering-key-list :member-name
                                      "clusteringKeys")
                                     (static-columns :target-type
                                      static-column-list :member-name
                                      "staticColumns"))
                                    (:shape-name "SchemaDefinition"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type sort-order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure static-column common-lisp:nil
                                    ((name :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name "StaticColumn"))

(smithy/sdk/shapes:define-list static-column-list :member static-column)

(smithy/sdk/shapes:define-type stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list table-name-list :member table-name)

(smithy/sdk/shapes:define-type table-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure table-summary common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "TableSummary"))

(smithy/sdk/shapes:define-list table-summary-list :member table-summary)

(smithy/sdk/shapes:define-type tables-replication-progress
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tag-list :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 target-tracking-scaling-policy-configuration common-lisp:nil
 ((disable-scale-in :target-type boolean-object :member-name "disableScaleIn")
  (scale-in-cooldown :target-type integer-object :member-name
   "scaleInCooldown")
  (scale-out-cooldown :target-type integer-object :member-name
   "scaleOutCooldown")
  (target-value :target-type double-object :required common-lisp:t :member-name
   "targetValue"))
 (:shape-name "TargetTrackingScalingPolicyConfiguration"))

(smithy/sdk/shapes:define-type throughput-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure time-to-live common-lisp:nil
                                    ((status :target-type time-to-live-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "TimeToLive"))

(smithy/sdk/shapes:define-type time-to-live-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list type-name-list :member type-name)

(smithy/sdk/shapes:define-type type-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tag-list :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-keyspace-request common-lisp:nil
                                ((keyspace-name :target-type keyspace-name
                                  :required common-lisp:t :member-name
                                  "keyspaceName")
                                 (replication-specification :target-type
                                  replication-specification :required
                                  common-lisp:t :member-name
                                  "replicationSpecification")
                                 (client-side-timestamps :target-type
                                  client-side-timestamps :member-name
                                  "clientSideTimestamps"))
                                (:shape-name "UpdateKeyspaceRequest"))

(smithy/sdk/shapes:define-output update-keyspace-response common-lisp:nil
                                 ((resource-arn :target-type arn :required
                                   common-lisp:t :member-name "resourceArn"))
                                 (:shape-name "UpdateKeyspaceResponse"))

(smithy/sdk/shapes:define-structure update-table-request common-lisp:nil
                                    ((keyspace-name :target-type keyspace-name
                                      :required common-lisp:t :member-name
                                      "keyspaceName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (add-columns :target-type
                                      column-definition-list :member-name
                                      "addColumns")
                                     (capacity-specification :target-type
                                      capacity-specification :member-name
                                      "capacitySpecification")
                                     (encryption-specification :target-type
                                      encryption-specification :member-name
                                      "encryptionSpecification")
                                     (point-in-time-recovery :target-type
                                      point-in-time-recovery :member-name
                                      "pointInTimeRecovery")
                                     (ttl :target-type time-to-live
                                      :member-name "ttl")
                                     (default-time-to-live :target-type
                                      default-time-to-live :member-name
                                      "defaultTimeToLive")
                                     (client-side-timestamps :target-type
                                      client-side-timestamps :member-name
                                      "clientSideTimestamps")
                                     (auto-scaling-specification :target-type
                                      auto-scaling-specification :member-name
                                      "autoScalingSpecification")
                                     (replica-specifications :target-type
                                      replica-specification-list :member-name
                                      "replicaSpecifications")
                                     (cdc-specification :target-type
                                      cdc-specification :member-name
                                      "cdcSpecification"))
                                    (:shape-name "UpdateTableRequest"))

(smithy/sdk/shapes:define-structure update-table-response common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "UpdateTableResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type view-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rs smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-keyspace :shape-name
                                       "CreateKeyspace" :input
                                       create-keyspace-request :output
                                       create-keyspace-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-table :shape-name "CreateTable"
                                       :input create-table-request :output
                                       create-table-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-type :shape-name "CreateType"
                                       :input create-type-request :output
                                       create-type-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-keyspace :shape-name
                                       "DeleteKeyspace" :input
                                       delete-keyspace-request :output
                                       delete-keyspace-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-table :shape-name "DeleteTable"
                                       :input delete-table-request :output
                                       delete-table-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-type :shape-name "DeleteType"
                                       :input delete-type-request :output
                                       delete-type-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-keyspace :shape-name "GetKeyspace"
                                       :input get-keyspace-request :output
                                       get-keyspace-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-table :shape-name "GetTable" :input
                                       get-table-request :output
                                       get-table-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-table-auto-scaling-settings
                                       :shape-name
                                       "GetTableAutoScalingSettings" :input
                                       get-table-auto-scaling-settings-request
                                       :output
                                       get-table-auto-scaling-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-type :shape-name "GetType" :input
                                       get-type-request :output
                                       get-type-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-keyspaces :shape-name
                                       "ListKeyspaces" :input
                                       list-keyspaces-request :output
                                       list-keyspaces-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tables :shape-name "ListTables"
                                       :input list-tables-request :output
                                       list-tables-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-types :shape-name "ListTypes"
                                       :input list-types-request :output
                                       list-types-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation restore-table :shape-name "RestoreTable"
                                       :input restore-table-request :output
                                       restore-table-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-keyspace :shape-name
                                       "UpdateKeyspace" :input
                                       update-keyspace-request :output
                                       update-keyspace-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-table :shape-name "UpdateTable"
                                       :input update-table-request :output
                                       update-table-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))
