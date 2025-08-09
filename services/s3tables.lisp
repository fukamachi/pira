(uiop/package:define-package #:pira/s3tables (:use)
                             (:export #:access-denied-exception #:account-id
                              #:bad-request-exception #:conflict-exception
                              #:create-namespace #:create-namespace-request
                              #:create-namespace-response #:create-table
                              #:create-table-bucket
                              #:create-table-bucket-request
                              #:create-table-bucket-response
                              #:create-table-request #:create-table-response
                              #:delete-namespace #:delete-namespace-request
                              #:delete-table #:delete-table-bucket
                              #:delete-table-bucket-encryption
                              #:delete-table-bucket-encryption-request
                              #:delete-table-bucket-policy
                              #:delete-table-bucket-policy-request
                              #:delete-table-bucket-request
                              #:delete-table-policy
                              #:delete-table-policy-request
                              #:delete-table-request #:encryption-configuration
                              #:error-message #:forbidden-exception
                              #:get-namespace #:get-namespace-request
                              #:get-namespace-response #:get-table
                              #:get-table-bucket #:get-table-bucket-encryption
                              #:get-table-bucket-encryption-request
                              #:get-table-bucket-encryption-response
                              #:get-table-bucket-maintenance-configuration
                              #:get-table-bucket-maintenance-configuration-request
                              #:get-table-bucket-maintenance-configuration-response
                              #:get-table-bucket-policy
                              #:get-table-bucket-policy-request
                              #:get-table-bucket-policy-response
                              #:get-table-bucket-request
                              #:get-table-bucket-response
                              #:get-table-encryption
                              #:get-table-encryption-request
                              #:get-table-encryption-response
                              #:get-table-maintenance-configuration
                              #:get-table-maintenance-configuration-request
                              #:get-table-maintenance-configuration-response
                              #:get-table-maintenance-job-status
                              #:get-table-maintenance-job-status-request
                              #:get-table-maintenance-job-status-response
                              #:get-table-metadata-location
                              #:get-table-metadata-location-request
                              #:get-table-metadata-location-response
                              #:get-table-policy #:get-table-policy-request
                              #:get-table-policy-response #:get-table-request
                              #:get-table-response
                              #:iceberg-compaction-settings
                              #:iceberg-compaction-strategy #:iceberg-metadata
                              #:iceberg-schema
                              #:iceberg-snapshot-management-settings
                              #:iceberg-unreferenced-file-removal-settings
                              #:internal-server-error-exception #:job-status
                              #:list-namespaces #:list-namespaces-limit
                              #:list-namespaces-request
                              #:list-namespaces-response #:list-table-buckets
                              #:list-table-buckets-limit
                              #:list-table-buckets-request
                              #:list-table-buckets-response #:list-tables
                              #:list-tables-limit #:list-tables-request
                              #:list-tables-response #:maintenance-status
                              #:metadata-location #:namespace-id
                              #:namespace-list #:namespace-name
                              #:namespace-resource #:namespace-summary
                              #:namespace-summary-list #:next-token
                              #:not-found-exception #:open-table-format
                              #:positive-integer #:put-table-bucket-encryption
                              #:put-table-bucket-encryption-request
                              #:put-table-bucket-maintenance-configuration
                              #:put-table-bucket-maintenance-configuration-request
                              #:put-table-bucket-policy
                              #:put-table-bucket-policy-request
                              #:put-table-maintenance-configuration
                              #:put-table-maintenance-configuration-request
                              #:put-table-policy #:put-table-policy-request
                              #:rename-table #:rename-table-request
                              #:resource-policy #:s3table-buckets
                              #:ssealgorithm #:schema-field #:schema-field-list
                              #:table-arn #:table-bucket-arn
                              #:table-bucket-encryption-resource
                              #:table-bucket-id
                              #:table-bucket-maintenance-configuration
                              #:table-bucket-maintenance-configuration-value
                              #:table-bucket-maintenance-settings
                              #:table-bucket-maintenance-type
                              #:table-bucket-name
                              #:table-bucket-policy-resource
                              #:table-bucket-resource #:table-bucket-summary
                              #:table-bucket-summary-list #:table-bucket-type
                              #:table-encryption-resource
                              #:table-maintenance-configuration
                              #:table-maintenance-configuration-value
                              #:table-maintenance-job-status
                              #:table-maintenance-job-status-value
                              #:table-maintenance-job-type
                              #:table-maintenance-settings
                              #:table-maintenance-type #:table-metadata
                              #:table-name #:table-policy-resource
                              #:table-resource #:table-summary
                              #:table-summary-list #:table-type
                              #:too-many-requests-exception
                              #:update-table-metadata-location
                              #:update-table-metadata-location-request
                              #:update-table-metadata-location-response
                              #:version-token #:warehouse-location))
(common-lisp:in-package #:pira/s3tables)

(smithy/sdk/service:define-service s3table-buckets :shape-name "S3TableBuckets"
                                   :version "2018-05-10" :title
                                   "Amazon S3 Tables" :traits
                                   '(("aws.api#service" ("sdkId" . "S3Tables")
                                      ("arnNamespace" . "s3tables")
                                      ("cloudTrailEventSource"
                                       . "s3tables.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "s3tables"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-namespace-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-list
                                  :required common-lisp:t :member-name
                                  "namespace"))
                                (:shape-name "CreateNamespaceRequest"))

(smithy/sdk/shapes:define-output create-namespace-response common-lisp:nil
                                 ((table-bucket-arn :target-type
                                   table-bucket-arn :required common-lisp:t
                                   :member-name "tableBucketARN")
                                  (namespace :target-type namespace-list
                                   :required common-lisp:t :member-name
                                   "namespace"))
                                 (:shape-name "CreateNamespaceResponse"))

(smithy/sdk/shapes:define-input create-table-bucket-request common-lisp:nil
                                ((name :target-type table-bucket-name :required
                                  common-lisp:t :member-name "name")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration"))
                                (:shape-name "CreateTableBucketRequest"))

(smithy/sdk/shapes:define-output create-table-bucket-response common-lisp:nil
                                 ((arn :target-type table-bucket-arn :required
                                   common-lisp:t :member-name "arn"))
                                 (:shape-name "CreateTableBucketResponse"))

(smithy/sdk/shapes:define-input create-table-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name")
                                 (format :target-type open-table-format
                                  :required common-lisp:t :member-name
                                  "format")
                                 (metadata :target-type table-metadata
                                  :member-name "metadata")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration"))
                                (:shape-name "CreateTableRequest"))

(smithy/sdk/shapes:define-output create-table-response common-lisp:nil
                                 ((table-arn :target-type table-arn :required
                                   common-lisp:t :member-name "tableARN")
                                  (version-token :target-type version-token
                                   :required common-lisp:t :member-name
                                   "versionToken"))
                                 (:shape-name "CreateTableResponse"))

(smithy/sdk/shapes:define-input delete-namespace-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t))
                                (:shape-name "DeleteNamespaceRequest"))

(smithy/sdk/shapes:define-input delete-table-bucket-encryption-request
                                common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteTableBucketEncryptionRequest"))

(smithy/sdk/shapes:define-input delete-table-bucket-policy-request
                                common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteTableBucketPolicyRequest"))

(smithy/sdk/shapes:define-input delete-table-bucket-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteTableBucketRequest"))

(smithy/sdk/shapes:define-input delete-table-policy-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteTablePolicyRequest"))

(smithy/sdk/shapes:define-input delete-table-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version-token :target-type version-token
                                  :member-name "versionToken" :http-query
                                  "versionToken"))
                                (:shape-name "DeleteTableRequest"))

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((sse-algorithm :target-type ssealgorithm
                                      :required common-lisp:t :member-name
                                      "sseAlgorithm")
                                     (kms-key-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-namespace-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t))
                                (:shape-name "GetNamespaceRequest"))

(smithy/sdk/shapes:define-output get-namespace-response common-lisp:nil
                                 ((namespace :target-type namespace-list
                                   :required common-lisp:t :member-name
                                   "namespace")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt"
                                   :timestamp-format "date-time")
                                  (created-by :target-type account-id :required
                                   common-lisp:t :member-name "createdBy")
                                  (owner-account-id :target-type account-id
                                   :required common-lisp:t :member-name
                                   "ownerAccountId")
                                  (namespace-id :target-type namespace-id
                                   :member-name "namespaceId")
                                  (table-bucket-id :target-type table-bucket-id
                                   :member-name "tableBucketId"))
                                 (:shape-name "GetNamespaceResponse"))

(smithy/sdk/shapes:define-input get-table-bucket-encryption-request
                                common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTableBucketEncryptionRequest"))

(smithy/sdk/shapes:define-output get-table-bucket-encryption-response
                                 common-lisp:nil
                                 ((encryption-configuration :target-type
                                   encryption-configuration :required
                                   common-lisp:t :member-name
                                   "encryptionConfiguration"))
                                 (:shape-name
                                  "GetTableBucketEncryptionResponse"))

(smithy/sdk/shapes:define-input
 get-table-bucket-maintenance-configuration-request common-lisp:nil
 ((table-bucket-arn :target-type table-bucket-arn :required common-lisp:t
   :member-name "tableBucketARN" :http-label common-lisp:t))
 (:shape-name "GetTableBucketMaintenanceConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-table-bucket-maintenance-configuration-response common-lisp:nil
 ((table-bucket-arn :target-type table-bucket-arn :required common-lisp:t
   :member-name "tableBucketARN")
  (configuration :target-type table-bucket-maintenance-configuration :required
   common-lisp:t :member-name "configuration"))
 (:shape-name "GetTableBucketMaintenanceConfigurationResponse"))

(smithy/sdk/shapes:define-input get-table-bucket-policy-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTableBucketPolicyRequest"))

(smithy/sdk/shapes:define-output get-table-bucket-policy-response
                                 common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :required common-lisp:t :member-name
                                   "resourcePolicy"))
                                 (:shape-name "GetTableBucketPolicyResponse"))

(smithy/sdk/shapes:define-input get-table-bucket-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTableBucketRequest"))

(smithy/sdk/shapes:define-output get-table-bucket-response common-lisp:nil
                                 ((arn :target-type table-bucket-arn :required
                                   common-lisp:t :member-name "arn")
                                  (name :target-type table-bucket-name
                                   :required common-lisp:t :member-name "name")
                                  (owner-account-id :target-type account-id
                                   :required common-lisp:t :member-name
                                   "ownerAccountId")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt"
                                   :timestamp-format "date-time")
                                  (table-bucket-id :target-type table-bucket-id
                                   :member-name "tableBucketId")
                                  (type :target-type table-bucket-type
                                   :member-name "type"))
                                 (:shape-name "GetTableBucketResponse"))

(smithy/sdk/shapes:define-input get-table-encryption-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTableEncryptionRequest"))

(smithy/sdk/shapes:define-output get-table-encryption-response common-lisp:nil
                                 ((encryption-configuration :target-type
                                   encryption-configuration :required
                                   common-lisp:t :member-name
                                   "encryptionConfiguration"))
                                 (:shape-name "GetTableEncryptionResponse"))

(smithy/sdk/shapes:define-input get-table-maintenance-configuration-request
                                common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetTableMaintenanceConfigurationRequest"))

(smithy/sdk/shapes:define-output get-table-maintenance-configuration-response
                                 common-lisp:nil
                                 ((table-arn :target-type table-arn :required
                                   common-lisp:t :member-name "tableARN")
                                  (configuration :target-type
                                   table-maintenance-configuration :required
                                   common-lisp:t :member-name "configuration"))
                                 (:shape-name
                                  "GetTableMaintenanceConfigurationResponse"))

(smithy/sdk/shapes:define-input get-table-maintenance-job-status-request
                                common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetTableMaintenanceJobStatusRequest"))

(smithy/sdk/shapes:define-output get-table-maintenance-job-status-response
                                 common-lisp:nil
                                 ((table-arn :target-type table-arn :required
                                   common-lisp:t :member-name "tableARN")
                                  (status :target-type
                                   table-maintenance-job-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name
                                  "GetTableMaintenanceJobStatusResponse"))

(smithy/sdk/shapes:define-input get-table-metadata-location-request
                                common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTableMetadataLocationRequest"))

(smithy/sdk/shapes:define-output get-table-metadata-location-response
                                 common-lisp:nil
                                 ((version-token :target-type version-token
                                   :required common-lisp:t :member-name
                                   "versionToken")
                                  (metadata-location :target-type
                                   metadata-location :member-name
                                   "metadataLocation")
                                  (warehouse-location :target-type
                                   warehouse-location :required common-lisp:t
                                   :member-name "warehouseLocation"))
                                 (:shape-name
                                  "GetTableMetadataLocationResponse"))

(smithy/sdk/shapes:define-input get-table-policy-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetTablePolicyRequest"))

(smithy/sdk/shapes:define-output get-table-policy-response common-lisp:nil
                                 ((resource-policy :target-type resource-policy
                                   :required common-lisp:t :member-name
                                   "resourcePolicy"))
                                 (:shape-name "GetTablePolicyResponse"))

(smithy/sdk/shapes:define-input get-table-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :member-name
                                  "tableBucketARN" :http-query
                                  "tableBucketARN")
                                 (namespace :target-type namespace-name
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (name :target-type table-name :member-name
                                  "name" :http-query "name")
                                 (table-arn :target-type table-arn :member-name
                                  "tableArn" :http-query "tableArn"))
                                (:shape-name "GetTableRequest"))

(smithy/sdk/shapes:define-output get-table-response common-lisp:nil
                                 ((name :target-type table-name :required
                                   common-lisp:t :member-name "name")
                                  (type :target-type table-type :required
                                   common-lisp:t :member-name "type")
                                  (table-arn :target-type table-arn :required
                                   common-lisp:t :member-name "tableARN")
                                  (namespace :target-type namespace-list
                                   :required common-lisp:t :member-name
                                   "namespace")
                                  (namespace-id :target-type namespace-id
                                   :member-name "namespaceId")
                                  (version-token :target-type version-token
                                   :required common-lisp:t :member-name
                                   "versionToken")
                                  (metadata-location :target-type
                                   metadata-location :member-name
                                   "metadataLocation")
                                  (warehouse-location :target-type
                                   warehouse-location :required common-lisp:t
                                   :member-name "warehouseLocation")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt"
                                   :timestamp-format "date-time")
                                  (created-by :target-type account-id :required
                                   common-lisp:t :member-name "createdBy")
                                  (managed-by-service :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "managedByService")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "modifiedAt"
                                   :timestamp-format "date-time")
                                  (modified-by :target-type account-id
                                   :required common-lisp:t :member-name
                                   "modifiedBy")
                                  (owner-account-id :target-type account-id
                                   :required common-lisp:t :member-name
                                   "ownerAccountId")
                                  (format :target-type open-table-format
                                   :required common-lisp:t :member-name
                                   "format")
                                  (table-bucket-id :target-type table-bucket-id
                                   :member-name "tableBucketId"))
                                 (:shape-name "GetTableResponse"))

(smithy/sdk/shapes:define-structure iceberg-compaction-settings common-lisp:nil
                                    ((target-file-size-mb :target-type
                                      positive-integer :member-name
                                      "targetFileSizeMB")
                                     (strategy :target-type
                                      iceberg-compaction-strategy :member-name
                                      "strategy"))
                                    (:shape-name "IcebergCompactionSettings"))

(smithy/sdk/shapes:define-enum iceberg-compaction-strategy
    common-lisp:nil
  (:auto "auto")
  (:binpack "binpack")
  (:sort "sort")
  (:zorder "z-order"))

(smithy/sdk/shapes:define-structure iceberg-metadata common-lisp:nil
                                    ((schema :target-type iceberg-schema
                                      :required common-lisp:t :member-name
                                      "schema"))
                                    (:shape-name "IcebergMetadata"))

(smithy/sdk/shapes:define-structure iceberg-schema common-lisp:nil
                                    ((fields :target-type schema-field-list
                                      :required common-lisp:t :member-name
                                      "fields"))
                                    (:shape-name "IcebergSchema"))

(smithy/sdk/shapes:define-structure iceberg-snapshot-management-settings
                                    common-lisp:nil
                                    ((min-snapshots-to-keep :target-type
                                      positive-integer :member-name
                                      "minSnapshotsToKeep")
                                     (max-snapshot-age-hours :target-type
                                      positive-integer :member-name
                                      "maxSnapshotAgeHours"))
                                    (:shape-name
                                     "IcebergSnapshotManagementSettings"))

(smithy/sdk/shapes:define-structure iceberg-unreferenced-file-removal-settings
                                    common-lisp:nil
                                    ((unreferenced-days :target-type
                                      positive-integer :member-name
                                      "unreferencedDays")
                                     (non-current-days :target-type
                                      positive-integer :member-name
                                      "nonCurrentDays"))
                                    (:shape-name
                                     "IcebergUnreferencedFileRemovalSettings"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:not-yet-run "Not_Yet_Run")
  (:successful "Successful")
  (:failed "Failed")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type list-namespaces-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-namespaces-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (prefix :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "prefix" :http-query "prefix")
                                 (continuation-token :target-type next-token
                                  :member-name "continuationToken" :http-query
                                  "continuationToken")
                                 (max-namespaces :target-type
                                  list-namespaces-limit :member-name
                                  "maxNamespaces" :http-query "maxNamespaces"))
                                (:shape-name "ListNamespacesRequest"))

(smithy/sdk/shapes:define-output list-namespaces-response common-lisp:nil
                                 ((namespaces :target-type
                                   namespace-summary-list :required
                                   common-lisp:t :member-name "namespaces")
                                  (continuation-token :target-type next-token
                                   :member-name "continuationToken"))
                                 (:shape-name "ListNamespacesResponse"))

(smithy/sdk/shapes:define-type list-table-buckets-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-table-buckets-request common-lisp:nil
                                ((prefix :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "prefix" :http-query "prefix")
                                 (continuation-token :target-type next-token
                                  :member-name "continuationToken" :http-query
                                  "continuationToken")
                                 (max-buckets :target-type
                                  list-table-buckets-limit :member-name
                                  "maxBuckets" :http-query "maxBuckets")
                                 (type :target-type table-bucket-type
                                  :member-name "type" :http-query "type"))
                                (:shape-name "ListTableBucketsRequest"))

(smithy/sdk/shapes:define-output list-table-buckets-response common-lisp:nil
                                 ((table-buckets :target-type
                                   table-bucket-summary-list :required
                                   common-lisp:t :member-name "tableBuckets")
                                  (continuation-token :target-type next-token
                                   :member-name "continuationToken"))
                                 (:shape-name "ListTableBucketsResponse"))

(smithy/sdk/shapes:define-type list-tables-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-tables-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (prefix :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "prefix" :http-query "prefix")
                                 (continuation-token :target-type next-token
                                  :member-name "continuationToken" :http-query
                                  "continuationToken")
                                 (max-tables :target-type list-tables-limit
                                  :member-name "maxTables" :http-query
                                  "maxTables"))
                                (:shape-name "ListTablesRequest"))

(smithy/sdk/shapes:define-output list-tables-response common-lisp:nil
                                 ((tables :target-type table-summary-list
                                   :required common-lisp:t :member-name
                                   "tables")
                                  (continuation-token :target-type next-token
                                   :member-name "continuationToken"))
                                 (:shape-name "ListTablesResponse"))

(smithy/sdk/shapes:define-enum maintenance-status
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-type metadata-location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespace-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list namespace-list :member namespace-name)

(smithy/sdk/shapes:define-type namespace-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure namespace-summary common-lisp:nil
                                    ((namespace :target-type namespace-list
                                      :required common-lisp:t :member-name
                                      "namespace")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (created-by :target-type account-id
                                      :required common-lisp:t :member-name
                                      "createdBy")
                                     (owner-account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "ownerAccountId")
                                     (namespace-id :target-type namespace-id
                                      :member-name "namespaceId")
                                     (table-bucket-id :target-type
                                      table-bucket-id :member-name
                                      "tableBucketId"))
                                    (:shape-name "NamespaceSummary"))

(smithy/sdk/shapes:define-list namespace-summary-list :member namespace-summary)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum open-table-format
    common-lisp:nil
  (:iceberg "ICEBERG"))

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input put-table-bucket-encryption-request
                                common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (encryption-configuration :target-type
                                  encryption-configuration :required
                                  common-lisp:t :member-name
                                  "encryptionConfiguration"))
                                (:shape-name "PutTableBucketEncryptionRequest"))

(smithy/sdk/shapes:define-input
 put-table-bucket-maintenance-configuration-request common-lisp:nil
 ((table-bucket-arn :target-type table-bucket-arn :required common-lisp:t
   :member-name "tableBucketARN" :http-label common-lisp:t)
  (type :target-type table-bucket-maintenance-type :required common-lisp:t
   :member-name "type" :http-label common-lisp:t)
  (value :target-type table-bucket-maintenance-configuration-value :required
   common-lisp:t :member-name "value"))
 (:shape-name "PutTableBucketMaintenanceConfigurationRequest"))

(smithy/sdk/shapes:define-input put-table-bucket-policy-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (resource-policy :target-type resource-policy
                                  :required common-lisp:t :member-name
                                  "resourcePolicy"))
                                (:shape-name "PutTableBucketPolicyRequest"))

(smithy/sdk/shapes:define-input put-table-maintenance-configuration-request
                                common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (type :target-type table-maintenance-type
                                  :required common-lisp:t :member-name "type"
                                  :http-label common-lisp:t)
                                 (value :target-type
                                  table-maintenance-configuration-value
                                  :required common-lisp:t :member-name
                                  "value"))
                                (:shape-name
                                 "PutTableMaintenanceConfigurationRequest"))

(smithy/sdk/shapes:define-input put-table-policy-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (resource-policy :target-type resource-policy
                                  :required common-lisp:t :member-name
                                  "resourcePolicy"))
                                (:shape-name "PutTablePolicyRequest"))

(smithy/sdk/shapes:define-input rename-table-request common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (new-namespace-name :target-type
                                  namespace-name :member-name
                                  "newNamespaceName")
                                 (new-name :target-type table-name :member-name
                                  "newName")
                                 (version-token :target-type version-token
                                  :member-name "versionToken"))
                                (:shape-name "RenameTableRequest"))

(smithy/sdk/shapes:define-type resource-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ssealgorithm
    common-lisp:nil
  (:aes256 "AES256")
  (:aws-kms "aws:kms"))

(smithy/sdk/shapes:define-structure schema-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required"))
                                    (:shape-name "SchemaField"))

(smithy/sdk/shapes:define-list schema-field-list :member schema-field)

(smithy/sdk/shapes:define-type table-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type table-bucket-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type table-bucket-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map table-bucket-maintenance-configuration :key
                              table-bucket-maintenance-type :value
                              table-bucket-maintenance-configuration-value)

(smithy/sdk/shapes:define-structure
 table-bucket-maintenance-configuration-value common-lisp:nil
 ((status :target-type maintenance-status :member-name "status")
  (settings :target-type table-bucket-maintenance-settings :member-name
   "settings"))
 (:shape-name "TableBucketMaintenanceConfigurationValue"))

(smithy/sdk/shapes:define-union table-bucket-maintenance-settings
                                common-lisp:nil
                                ((iceberg-unreferenced-file-removal
                                  :target-type
                                  iceberg-unreferenced-file-removal-settings
                                  :member-name
                                  "icebergUnreferencedFileRemoval"))
                                (:shape-name "TableBucketMaintenanceSettings"))

(smithy/sdk/shapes:define-enum table-bucket-maintenance-type
    common-lisp:nil
  (:iceberg-unreferenced-file-removal "icebergUnreferencedFileRemoval"))

(smithy/sdk/shapes:define-type table-bucket-name smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure table-bucket-summary common-lisp:nil
                                    ((arn :target-type table-bucket-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (name :target-type table-bucket-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (owner-account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "ownerAccountId")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (table-bucket-id :target-type
                                      table-bucket-id :member-name
                                      "tableBucketId")
                                     (type :target-type table-bucket-type
                                      :member-name "type"))
                                    (:shape-name "TableBucketSummary"))

(smithy/sdk/shapes:define-list table-bucket-summary-list :member
                               table-bucket-summary)

(smithy/sdk/shapes:define-enum table-bucket-type
    common-lisp:nil
  (:customer "customer")
  (:aws "aws"))

common-lisp:nil

(smithy/sdk/shapes:define-map table-maintenance-configuration :key
                              table-maintenance-type :value
                              table-maintenance-configuration-value)

(smithy/sdk/shapes:define-structure table-maintenance-configuration-value
                                    common-lisp:nil
                                    ((status :target-type maintenance-status
                                      :member-name "status")
                                     (settings :target-type
                                      table-maintenance-settings :member-name
                                      "settings"))
                                    (:shape-name
                                     "TableMaintenanceConfigurationValue"))

(smithy/sdk/shapes:define-map table-maintenance-job-status :key
                              table-maintenance-job-type :value
                              table-maintenance-job-status-value)

(smithy/sdk/shapes:define-structure table-maintenance-job-status-value
                                    common-lisp:nil
                                    ((status :target-type job-status :required
                                      common-lisp:t :member-name "status")
                                     (last-run-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastRunTimestamp"
                                      :timestamp-format "date-time")
                                     (failure-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureMessage"))
                                    (:shape-name
                                     "TableMaintenanceJobStatusValue"))

(smithy/sdk/shapes:define-enum table-maintenance-job-type
    common-lisp:nil
  (:iceberg-compaction "icebergCompaction")
  (:iceberg-snapshot-management "icebergSnapshotManagement")
  (:iceberg-unreferenced-file-removal "icebergUnreferencedFileRemoval"))

(smithy/sdk/shapes:define-union table-maintenance-settings common-lisp:nil
                                ((iceberg-compaction :target-type
                                  iceberg-compaction-settings :member-name
                                  "icebergCompaction")
                                 (iceberg-snapshot-management :target-type
                                  iceberg-snapshot-management-settings
                                  :member-name "icebergSnapshotManagement"))
                                (:shape-name "TableMaintenanceSettings"))

(smithy/sdk/shapes:define-enum table-maintenance-type
    common-lisp:nil
  (:iceberg-compaction "icebergCompaction")
  (:iceberg-snapshot-management "icebergSnapshotManagement"))

(smithy/sdk/shapes:define-union table-metadata common-lisp:nil
                                ((iceberg :target-type iceberg-metadata
                                  :member-name "iceberg"))
                                (:shape-name "TableMetadata"))

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure table-summary common-lisp:nil
                                    ((namespace :target-type namespace-list
                                      :required common-lisp:t :member-name
                                      "namespace")
                                     (name :target-type table-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type table-type :required
                                      common-lisp:t :member-name "type")
                                     (table-arn :target-type table-arn
                                      :required common-lisp:t :member-name
                                      "tableARN")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedAt" :timestamp-format
                                      "date-time")
                                     (namespace-id :target-type namespace-id
                                      :member-name "namespaceId")
                                     (table-bucket-id :target-type
                                      table-bucket-id :member-name
                                      "tableBucketId"))
                                    (:shape-name "TableSummary"))

(smithy/sdk/shapes:define-list table-summary-list :member table-summary)

(smithy/sdk/shapes:define-enum table-type
    common-lisp:nil
  (:customer "customer")
  (:aws "aws"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input update-table-metadata-location-request
                                common-lisp:nil
                                ((table-bucket-arn :target-type
                                  table-bucket-arn :required common-lisp:t
                                  :member-name "tableBucketARN" :http-label
                                  common-lisp:t)
                                 (namespace :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "namespace" :http-label common-lisp:t)
                                 (name :target-type table-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version-token :target-type version-token
                                  :required common-lisp:t :member-name
                                  "versionToken")
                                 (metadata-location :target-type
                                  metadata-location :required common-lisp:t
                                  :member-name "metadataLocation"))
                                (:shape-name
                                 "UpdateTableMetadataLocationRequest"))

(smithy/sdk/shapes:define-output update-table-metadata-location-response
                                 common-lisp:nil
                                 ((name :target-type table-name :required
                                   common-lisp:t :member-name "name")
                                  (table-arn :target-type table-arn :required
                                   common-lisp:t :member-name "tableARN")
                                  (namespace :target-type namespace-list
                                   :required common-lisp:t :member-name
                                   "namespace")
                                  (version-token :target-type version-token
                                   :required common-lisp:t :member-name
                                   "versionToken")
                                  (metadata-location :target-type
                                   metadata-location :required common-lisp:t
                                   :member-name "metadataLocation"))
                                 (:shape-name
                                  "UpdateTableMetadataLocationResponse"))

(smithy/sdk/shapes:define-type version-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type warehouse-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-namespace :shape-name
                                       "CreateNamespace" :input
                                       create-namespace-request :output
                                       create-namespace-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/namespaces/{tableBucketARN}" :code 200)

(smithy/sdk/operation:define-operation create-table :shape-name "CreateTable"
                                       :input create-table-request :output
                                       create-table-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/tables/{tableBucketARN}/{namespace}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-table-bucket :shape-name
                                       "CreateTableBucket" :input
                                       create-table-bucket-request :output
                                       create-table-bucket-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri "/buckets" :code 200)

(smithy/sdk/operation:define-operation delete-namespace :shape-name
                                       "DeleteNamespace" :input
                                       delete-namespace-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/namespaces/{tableBucketARN}/{namespace}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-table :shape-name "DeleteTable"
                                       :input delete-table-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-table-bucket :shape-name
                                       "DeleteTableBucket" :input
                                       delete-table-bucket-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/buckets/{tableBucketARN}" :code 204)

(smithy/sdk/operation:define-operation delete-table-bucket-encryption
                                       :shape-name
                                       "DeleteTableBucketEncryption" :input
                                       delete-table-bucket-encryption-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/buckets/{tableBucketARN}/encryption"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-table-bucket-policy :shape-name
                                       "DeleteTableBucketPolicy" :input
                                       delete-table-bucket-policy-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/buckets/{tableBucketARN}/policy" :code
                                       204)

(smithy/sdk/operation:define-operation delete-table-policy :shape-name
                                       "DeleteTablePolicy" :input
                                       delete-table-policy-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/policy"
                                       :code 204)

(smithy/sdk/operation:define-operation get-namespace :shape-name "GetNamespace"
                                       :input get-namespace-request :output
                                       get-namespace-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/namespaces/{tableBucketARN}/{namespace}")

(smithy/sdk/operation:define-operation get-table :shape-name "GetTable" :input
                                       get-table-request :output
                                       get-table-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/get-table")

(smithy/sdk/operation:define-operation get-table-bucket :shape-name
                                       "GetTableBucket" :input
                                       get-table-bucket-request :output
                                       get-table-bucket-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/buckets/{tableBucketARN}")

(smithy/sdk/operation:define-operation get-table-bucket-encryption :shape-name
                                       "GetTableBucketEncryption" :input
                                       get-table-bucket-encryption-request
                                       :output
                                       get-table-bucket-encryption-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/buckets/{tableBucketARN}/encryption")

(smithy/sdk/operation:define-operation
 get-table-bucket-maintenance-configuration :shape-name
 "GetTableBucketMaintenanceConfiguration" :input
 get-table-bucket-maintenance-configuration-request :output
 get-table-bucket-maintenance-configuration-response :errors
 (bad-request-exception conflict-exception forbidden-exception
  internal-server-error-exception not-found-exception
  too-many-requests-exception)
 :method "GET" :uri "/buckets/{tableBucketARN}/maintenance")

(smithy/sdk/operation:define-operation get-table-bucket-policy :shape-name
                                       "GetTableBucketPolicy" :input
                                       get-table-bucket-policy-request :output
                                       get-table-bucket-policy-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/buckets/{tableBucketARN}/policy")

(smithy/sdk/operation:define-operation get-table-encryption :shape-name
                                       "GetTableEncryption" :input
                                       get-table-encryption-request :output
                                       get-table-encryption-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/encryption")

(smithy/sdk/operation:define-operation get-table-maintenance-configuration
                                       :shape-name
                                       "GetTableMaintenanceConfiguration"
                                       :input
                                       get-table-maintenance-configuration-request
                                       :output
                                       get-table-maintenance-configuration-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/maintenance")

(smithy/sdk/operation:define-operation get-table-maintenance-job-status
                                       :shape-name
                                       "GetTableMaintenanceJobStatus" :input
                                       get-table-maintenance-job-status-request
                                       :output
                                       get-table-maintenance-job-status-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/maintenance-job-status")

(smithy/sdk/operation:define-operation get-table-metadata-location :shape-name
                                       "GetTableMetadataLocation" :input
                                       get-table-metadata-location-request
                                       :output
                                       get-table-metadata-location-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location")

(smithy/sdk/operation:define-operation get-table-policy :shape-name
                                       "GetTablePolicy" :input
                                       get-table-policy-request :output
                                       get-table-policy-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/policy")

(smithy/sdk/operation:define-operation list-namespaces :shape-name
                                       "ListNamespaces" :input
                                       list-namespaces-request :output
                                       list-namespaces-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/namespaces/{tableBucketARN}")

(smithy/sdk/operation:define-operation list-table-buckets :shape-name
                                       "ListTableBuckets" :input
                                       list-table-buckets-request :output
                                       list-table-buckets-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/buckets")

(smithy/sdk/operation:define-operation list-tables :shape-name "ListTables"
                                       :input list-tables-request :output
                                       list-tables-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/tables/{tableBucketARN}")

(smithy/sdk/operation:define-operation put-table-bucket-encryption :shape-name
                                       "PutTableBucketEncryption" :input
                                       put-table-bucket-encryption-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/buckets/{tableBucketARN}/encryption"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-table-bucket-maintenance-configuration :shape-name
 "PutTableBucketMaintenanceConfiguration" :input
 put-table-bucket-maintenance-configuration-request :output common-lisp:null
 :errors
 (bad-request-exception conflict-exception forbidden-exception
  internal-server-error-exception not-found-exception
  too-many-requests-exception)
 :method "PUT" :uri "/buckets/{tableBucketARN}/maintenance/{type}" :code 204)

(smithy/sdk/operation:define-operation put-table-bucket-policy :shape-name
                                       "PutTableBucketPolicy" :input
                                       put-table-bucket-policy-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/buckets/{tableBucketARN}/policy" :code
                                       200)

(smithy/sdk/operation:define-operation put-table-maintenance-configuration
                                       :shape-name
                                       "PutTableMaintenanceConfiguration"
                                       :input
                                       put-table-maintenance-configuration-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/maintenance/{type}"
                                       :code 204)

(smithy/sdk/operation:define-operation put-table-policy :shape-name
                                       "PutTablePolicy" :input
                                       put-table-policy-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation rename-table :shape-name "RenameTable"
                                       :input rename-table-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/rename"
                                       :code 204)

(smithy/sdk/operation:define-operation update-table-metadata-location
                                       :shape-name
                                       "UpdateTableMetadataLocation" :input
                                       update-table-metadata-location-request
                                       :output
                                       update-table-metadata-location-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location")
