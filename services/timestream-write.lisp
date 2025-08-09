(uiop/package:define-package #:pira/timestream-write (:use)
                             (:export #:access-denied-exception
                              #:amazon-resource-name #:batch-load-data-format
                              #:batch-load-progress-report #:batch-load-status
                              #:batch-load-task #:batch-load-task-description
                              #:batch-load-task-id #:batch-load-task-list
                              #:boolean #:client-request-token
                              #:conflict-exception #:create-batch-load-task
                              #:create-batch-load-task-request
                              #:create-batch-load-task-response
                              #:create-database #:create-database-request
                              #:create-database-response #:create-table
                              #:create-table-request #:create-table-response
                              #:csv-configuration #:data-model
                              #:data-model-configuration
                              #:data-model-s3configuration
                              #:data-source-configuration
                              #:data-source-s3configuration #:database
                              #:database-list #:date #:delete-database
                              #:delete-database-request #:delete-table
                              #:delete-table-request #:describe-batch-load-task
                              #:describe-batch-load-task-request
                              #:describe-batch-load-task-response
                              #:describe-database #:describe-database-request
                              #:describe-database-response #:describe-endpoints
                              #:describe-endpoints-request
                              #:describe-endpoints-response #:describe-table
                              #:describe-table-request
                              #:describe-table-response #:dimension
                              #:dimension-mapping #:dimension-mappings
                              #:dimension-value-type #:dimensions #:endpoint
                              #:endpoints #:error-message #:integer
                              #:internal-server-exception
                              #:invalid-endpoint-exception
                              #:list-batch-load-tasks
                              #:list-batch-load-tasks-request
                              #:list-batch-load-tasks-response #:list-databases
                              #:list-databases-request
                              #:list-databases-response #:list-tables
                              #:list-tables-request #:list-tables-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:long
                              #:magnetic-store-rejected-data-location
                              #:magnetic-store-retention-period-in-days
                              #:magnetic-store-write-properties #:measure-value
                              #:measure-value-type #:measure-values
                              #:memory-store-retention-period-in-hours
                              #:mixed-measure-mapping
                              #:mixed-measure-mapping-list
                              #:multi-measure-attribute-mapping
                              #:multi-measure-attribute-mapping-list
                              #:multi-measure-mappings #:page-limit
                              #:pagination-limit #:partition-key
                              #:partition-key-enforcement-level
                              #:partition-key-list #:partition-key-type
                              #:record #:record-index #:record-version
                              #:records #:records-ingested #:rejected-record
                              #:rejected-records #:rejected-records-exception
                              #:report-configuration #:report-s3configuration
                              #:resource-create-apiname #:resource-name
                              #:resource-not-found-exception
                              #:resume-batch-load-task
                              #:resume-batch-load-task-request
                              #:resume-batch-load-task-response
                              #:retention-properties #:s3bucket-name
                              #:s3configuration #:s3encryption-option
                              #:s3object-key #:s3object-key-prefix
                              #:scalar-measure-value-type #:schema
                              #:schema-name #:schema-value
                              #:service-quota-exceeded-exception #:string
                              #:string-value1 #:string-value2048
                              #:string-value256 #:table #:table-list
                              #:table-status #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:throttling-exception #:time-unit
                              #:timestream-20181101 #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-database
                              #:update-database-request
                              #:update-database-response #:update-table
                              #:update-table-request #:update-table-response
                              #:validation-exception #:write-records
                              #:write-records-request #:write-records-response))
(common-lisp:in-package #:pira/timestream-write)

(smithy/sdk/service:define-service timestream-20181101 :shape-name
                                   "Timestream_20181101" :version "2018-11-01"
                                   :title "Amazon Timestream Write" :traits
                                   '(("aws.api#clientEndpointDiscovery"
                                      ("operation"
                                       . "com.amazonaws.timestreamwrite#DescribeEndpoints")
                                      ("error"
                                       . "com.amazonaws.timestreamwrite#InvalidEndpointException"))
                                     ("aws.api#service"
                                      ("sdkId" . "Timestream Write")
                                      ("arnNamespace" . "timestream")
                                      ("cloudFormationName"
                                       . "TimestreamWrite")
                                      ("cloudTrailEventSource"
                                       . "timestreamwrite.amazonaws.com")
                                      ("endpointPrefix" . "ingest.timestream"))
                                     ("aws.auth#sigv4" ("name" . "timestream"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum batch-load-data-format
    common-lisp:nil
  (:csv "CSV"))

(smithy/sdk/shapes:define-structure batch-load-progress-report common-lisp:nil
                                    ((records-processed :target-type long
                                      :member-name "RecordsProcessed")
                                     (records-ingested :target-type long
                                      :member-name "RecordsIngested")
                                     (parse-failures :target-type long
                                      :member-name "ParseFailures")
                                     (record-ingestion-failures :target-type
                                      long :member-name
                                      "RecordIngestionFailures")
                                     (file-failures :target-type long
                                      :member-name "FileFailures")
                                     (bytes-metered :target-type long
                                      :member-name "BytesMetered"))
                                    (:shape-name "BatchLoadProgressReport"))

(smithy/sdk/shapes:define-enum batch-load-status
    common-lisp:nil
  (:created "CREATED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:progress-stopped "PROGRESS_STOPPED")
  (:pending-resume "PENDING_RESUME"))

(smithy/sdk/shapes:define-structure batch-load-task common-lisp:nil
                                    ((task-id :target-type batch-load-task-id
                                      :member-name "TaskId")
                                     (task-status :target-type
                                      batch-load-status :member-name
                                      "TaskStatus")
                                     (database-name :target-type resource-name
                                      :member-name "DatabaseName")
                                     (table-name :target-type resource-name
                                      :member-name "TableName")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (last-updated-time :target-type date
                                      :member-name "LastUpdatedTime")
                                     (resumable-until :target-type date
                                      :member-name "ResumableUntil"))
                                    (:shape-name "BatchLoadTask"))

(smithy/sdk/shapes:define-structure batch-load-task-description common-lisp:nil
                                    ((task-id :target-type batch-load-task-id
                                      :member-name "TaskId")
                                     (error-message :target-type
                                      string-value2048 :member-name
                                      "ErrorMessage")
                                     (data-source-configuration :target-type
                                      data-source-configuration :member-name
                                      "DataSourceConfiguration")
                                     (progress-report :target-type
                                      batch-load-progress-report :member-name
                                      "ProgressReport")
                                     (report-configuration :target-type
                                      report-configuration :member-name
                                      "ReportConfiguration")
                                     (data-model-configuration :target-type
                                      data-model-configuration :member-name
                                      "DataModelConfiguration")
                                     (target-database-name :target-type
                                      resource-name :member-name
                                      "TargetDatabaseName")
                                     (target-table-name :target-type
                                      resource-name :member-name
                                      "TargetTableName")
                                     (task-status :target-type
                                      batch-load-status :member-name
                                      "TaskStatus")
                                     (record-version :target-type
                                      record-version :member-name
                                      "RecordVersion")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (last-updated-time :target-type date
                                      :member-name "LastUpdatedTime")
                                     (resumable-until :target-type date
                                      :member-name "ResumableUntil"))
                                    (:shape-name "BatchLoadTaskDescription"))

(smithy/sdk/shapes:define-type batch-load-task-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list batch-load-task-list :member batch-load-task)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-batch-load-task-request common-lisp:nil
                                ((client-token :target-type
                                  client-request-token :member-name
                                  "ClientToken")
                                 (data-model-configuration :target-type
                                  data-model-configuration :member-name
                                  "DataModelConfiguration")
                                 (data-source-configuration :target-type
                                  data-source-configuration :required
                                  common-lisp:t :member-name
                                  "DataSourceConfiguration")
                                 (report-configuration :target-type
                                  report-configuration :required common-lisp:t
                                  :member-name "ReportConfiguration")
                                 (target-database-name :target-type
                                  resource-create-apiname :required
                                  common-lisp:t :member-name
                                  "TargetDatabaseName")
                                 (target-table-name :target-type
                                  resource-create-apiname :required
                                  common-lisp:t :member-name "TargetTableName")
                                 (record-version :target-type record-version
                                  :member-name "RecordVersion"))
                                (:shape-name "CreateBatchLoadTaskRequest"))

(smithy/sdk/shapes:define-output create-batch-load-task-response
                                 common-lisp:nil
                                 ((task-id :target-type batch-load-task-id
                                   :required common-lisp:t :member-name
                                   "TaskId"))
                                 (:shape-name "CreateBatchLoadTaskResponse"))

(smithy/sdk/shapes:define-input create-database-request common-lisp:nil
                                ((database-name :target-type
                                  resource-create-apiname :required
                                  common-lisp:t :member-name "DatabaseName")
                                 (kms-key-id :target-type string-value2048
                                  :member-name "KmsKeyId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDatabaseRequest"))

(smithy/sdk/shapes:define-output create-database-response common-lisp:nil
                                 ((database :target-type database :member-name
                                   "Database"))
                                 (:shape-name "CreateDatabaseResponse"))

(smithy/sdk/shapes:define-input create-table-request common-lisp:nil
                                ((database-name :target-type
                                  resource-create-apiname :required
                                  common-lisp:t :member-name "DatabaseName")
                                 (table-name :target-type
                                  resource-create-apiname :required
                                  common-lisp:t :member-name "TableName")
                                 (retention-properties :target-type
                                  retention-properties :member-name
                                  "RetentionProperties")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (magnetic-store-write-properties :target-type
                                  magnetic-store-write-properties :member-name
                                  "MagneticStoreWriteProperties")
                                 (schema :target-type schema :member-name
                                  "Schema"))
                                (:shape-name "CreateTableRequest"))

(smithy/sdk/shapes:define-output create-table-response common-lisp:nil
                                 ((table :target-type table :member-name
                                   "Table"))
                                 (:shape-name "CreateTableResponse"))

(smithy/sdk/shapes:define-structure csv-configuration common-lisp:nil
                                    ((column-separator :target-type
                                      string-value1 :member-name
                                      "ColumnSeparator")
                                     (escape-char :target-type string-value1
                                      :member-name "EscapeChar")
                                     (quote-char :target-type string-value1
                                      :member-name "QuoteChar")
                                     (null-value :target-type string-value256
                                      :member-name "NullValue")
                                     (trim-white-space :target-type boolean
                                      :member-name "TrimWhiteSpace"))
                                    (:shape-name "CsvConfiguration"))

(smithy/sdk/shapes:define-structure data-model common-lisp:nil
                                    ((time-column :target-type string-value256
                                      :member-name "TimeColumn")
                                     (time-unit :target-type time-unit
                                      :member-name "TimeUnit")
                                     (dimension-mappings :target-type
                                      dimension-mappings :required
                                      common-lisp:t :member-name
                                      "DimensionMappings")
                                     (multi-measure-mappings :target-type
                                      multi-measure-mappings :member-name
                                      "MultiMeasureMappings")
                                     (mixed-measure-mappings :target-type
                                      mixed-measure-mapping-list :member-name
                                      "MixedMeasureMappings")
                                     (measure-name-column :target-type
                                      string-value256 :member-name
                                      "MeasureNameColumn"))
                                    (:shape-name "DataModel"))

(smithy/sdk/shapes:define-structure data-model-configuration common-lisp:nil
                                    ((data-model :target-type data-model
                                      :member-name "DataModel")
                                     (data-model-s3configuration :target-type
                                      data-model-s3configuration :member-name
                                      "DataModelS3Configuration"))
                                    (:shape-name "DataModelConfiguration"))

(smithy/sdk/shapes:define-structure data-model-s3configuration common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :member-name "BucketName")
                                     (object-key :target-type s3object-key
                                      :member-name "ObjectKey"))
                                    (:shape-name "DataModelS3Configuration"))

(smithy/sdk/shapes:define-structure data-source-configuration common-lisp:nil
                                    ((data-source-s3configuration :target-type
                                      data-source-s3configuration :required
                                      common-lisp:t :member-name
                                      "DataSourceS3Configuration")
                                     (csv-configuration :target-type
                                      csv-configuration :member-name
                                      "CsvConfiguration")
                                     (data-format :target-type
                                      batch-load-data-format :required
                                      common-lisp:t :member-name "DataFormat"))
                                    (:shape-name "DataSourceConfiguration"))

(smithy/sdk/shapes:define-structure data-source-s3configuration common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (object-key-prefix :target-type
                                      s3object-key :member-name
                                      "ObjectKeyPrefix"))
                                    (:shape-name "DataSourceS3Configuration"))

(smithy/sdk/shapes:define-structure database common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (database-name :target-type resource-name
                                      :member-name "DatabaseName")
                                     (table-count :target-type long
                                      :member-name "TableCount")
                                     (kms-key-id :target-type string-value2048
                                      :member-name "KmsKeyId")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (last-updated-time :target-type date
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "Database"))

(smithy/sdk/shapes:define-list database-list :member database)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-database-request common-lisp:nil
                                ((database-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "DatabaseName"))
                                (:shape-name "DeleteDatabaseRequest"))

(smithy/sdk/shapes:define-input delete-table-request common-lisp:nil
                                ((database-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "TableName"))
                                (:shape-name "DeleteTableRequest"))

(smithy/sdk/shapes:define-input describe-batch-load-task-request
                                common-lisp:nil
                                ((task-id :target-type batch-load-task-id
                                  :required common-lisp:t :member-name
                                  "TaskId"))
                                (:shape-name "DescribeBatchLoadTaskRequest"))

(smithy/sdk/shapes:define-output describe-batch-load-task-response
                                 common-lisp:nil
                                 ((batch-load-task-description :target-type
                                   batch-load-task-description :required
                                   common-lisp:t :member-name
                                   "BatchLoadTaskDescription"))
                                 (:shape-name "DescribeBatchLoadTaskResponse"))

(smithy/sdk/shapes:define-input describe-database-request common-lisp:nil
                                ((database-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "DatabaseName"))
                                (:shape-name "DescribeDatabaseRequest"))

(smithy/sdk/shapes:define-output describe-database-response common-lisp:nil
                                 ((database :target-type database :member-name
                                   "Database"))
                                 (:shape-name "DescribeDatabaseResponse"))

(smithy/sdk/shapes:define-input describe-endpoints-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeEndpointsRequest"))

(smithy/sdk/shapes:define-output describe-endpoints-response common-lisp:nil
                                 ((endpoints :target-type endpoints :required
                                   common-lisp:t :member-name "Endpoints"))
                                 (:shape-name "DescribeEndpointsResponse"))

(smithy/sdk/shapes:define-input describe-table-request common-lisp:nil
                                ((database-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "TableName"))
                                (:shape-name "DescribeTableRequest"))

(smithy/sdk/shapes:define-output describe-table-response common-lisp:nil
                                 ((table :target-type table :member-name
                                   "Table"))
                                 (:shape-name "DescribeTableResponse"))

(smithy/sdk/shapes:define-structure dimension common-lisp:nil
                                    ((name :target-type schema-name :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type schema-value :required
                                      common-lisp:t :member-name "Value")
                                     (dimension-value-type :target-type
                                      dimension-value-type :member-name
                                      "DimensionValueType"))
                                    (:shape-name "Dimension"))

(smithy/sdk/shapes:define-structure dimension-mapping common-lisp:nil
                                    ((source-column :target-type schema-name
                                      :member-name "SourceColumn")
                                     (destination-column :target-type
                                      schema-name :member-name
                                      "DestinationColumn"))
                                    (:shape-name "DimensionMapping"))

(smithy/sdk/shapes:define-list dimension-mappings :member dimension-mapping)

(smithy/sdk/shapes:define-enum dimension-value-type
    common-lisp:nil
  (:varchar "VARCHAR"))

(smithy/sdk/shapes:define-list dimensions :member dimension)

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type string :required
                                      common-lisp:t :member-name "Address")
                                     (cache-period-in-minutes :target-type long
                                      :required common-lisp:t :member-name
                                      "CachePeriodInMinutes"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-list endpoints :member endpoint)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-endpoint-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidEndpointException")
                                (:error-code 421))

(smithy/sdk/shapes:define-input list-batch-load-tasks-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type page-limit
                                  :member-name "MaxResults")
                                 (task-status :target-type batch-load-status
                                  :member-name "TaskStatus"))
                                (:shape-name "ListBatchLoadTasksRequest"))

(smithy/sdk/shapes:define-output list-batch-load-tasks-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (batch-load-tasks :target-type
                                   batch-load-task-list :member-name
                                   "BatchLoadTasks"))
                                 (:shape-name "ListBatchLoadTasksResponse"))

(smithy/sdk/shapes:define-input list-databases-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type pagination-limit
                                  :member-name "MaxResults"))
                                (:shape-name "ListDatabasesRequest"))

(smithy/sdk/shapes:define-output list-databases-response common-lisp:nil
                                 ((databases :target-type database-list
                                   :member-name "Databases")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListDatabasesResponse"))

(smithy/sdk/shapes:define-input list-tables-request common-lisp:nil
                                ((database-name :target-type resource-name
                                  :member-name "DatabaseName")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type pagination-limit
                                  :member-name "MaxResults"))
                                (:shape-name "ListTablesRequest"))

(smithy/sdk/shapes:define-output list-tables-response common-lisp:nil
                                 ((tables :target-type table-list :member-name
                                   "Tables")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListTablesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure magnetic-store-rejected-data-location
                                    common-lisp:nil
                                    ((s3configuration :target-type
                                      s3configuration :member-name
                                      "S3Configuration"))
                                    (:shape-name
                                     "MagneticStoreRejectedDataLocation"))

(smithy/sdk/shapes:define-type magnetic-store-retention-period-in-days
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure magnetic-store-write-properties
                                    common-lisp:nil
                                    ((enable-magnetic-store-writes :target-type
                                      boolean :required common-lisp:t
                                      :member-name "EnableMagneticStoreWrites")
                                     (magnetic-store-rejected-data-location
                                      :target-type
                                      magnetic-store-rejected-data-location
                                      :member-name
                                      "MagneticStoreRejectedDataLocation"))
                                    (:shape-name
                                     "MagneticStoreWriteProperties"))

(smithy/sdk/shapes:define-structure measure-value common-lisp:nil
                                    ((name :target-type schema-name :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type string-value2048
                                      :required common-lisp:t :member-name
                                      "Value")
                                     (type :target-type measure-value-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "MeasureValue"))

(smithy/sdk/shapes:define-enum measure-value-type
    common-lisp:nil
  (:double "DOUBLE")
  (:bigint "BIGINT")
  (:varchar "VARCHAR")
  (:boolean "BOOLEAN")
  (:timestamp "TIMESTAMP")
  (:multi "MULTI"))

(smithy/sdk/shapes:define-list measure-values :member measure-value)

(smithy/sdk/shapes:define-type memory-store-retention-period-in-hours
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure mixed-measure-mapping common-lisp:nil
                                    ((measure-name :target-type schema-name
                                      :member-name "MeasureName")
                                     (source-column :target-type schema-name
                                      :member-name "SourceColumn")
                                     (target-measure-name :target-type
                                      schema-name :member-name
                                      "TargetMeasureName")
                                     (measure-value-type :target-type
                                      measure-value-type :required
                                      common-lisp:t :member-name
                                      "MeasureValueType")
                                     (multi-measure-attribute-mappings
                                      :target-type
                                      multi-measure-attribute-mapping-list
                                      :member-name
                                      "MultiMeasureAttributeMappings"))
                                    (:shape-name "MixedMeasureMapping"))

(smithy/sdk/shapes:define-list mixed-measure-mapping-list :member
                               mixed-measure-mapping)

(smithy/sdk/shapes:define-structure multi-measure-attribute-mapping
                                    common-lisp:nil
                                    ((source-column :target-type schema-name
                                      :required common-lisp:t :member-name
                                      "SourceColumn")
                                     (target-multi-measure-attribute-name
                                      :target-type schema-name :member-name
                                      "TargetMultiMeasureAttributeName")
                                     (measure-value-type :target-type
                                      scalar-measure-value-type :member-name
                                      "MeasureValueType"))
                                    (:shape-name
                                     "MultiMeasureAttributeMapping"))

(smithy/sdk/shapes:define-list multi-measure-attribute-mapping-list :member
                               multi-measure-attribute-mapping)

(smithy/sdk/shapes:define-structure multi-measure-mappings common-lisp:nil
                                    ((target-multi-measure-name :target-type
                                      schema-name :member-name
                                      "TargetMultiMeasureName")
                                     (multi-measure-attribute-mappings
                                      :target-type
                                      multi-measure-attribute-mapping-list
                                      :required common-lisp:t :member-name
                                      "MultiMeasureAttributeMappings"))
                                    (:shape-name "MultiMeasureMappings"))

(smithy/sdk/shapes:define-type page-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure partition-key common-lisp:nil
                                    ((type :target-type partition-key-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (name :target-type schema-name
                                      :member-name "Name")
                                     (enforcement-in-record :target-type
                                      partition-key-enforcement-level
                                      :member-name "EnforcementInRecord"))
                                    (:shape-name "PartitionKey"))

(smithy/sdk/shapes:define-enum partition-key-enforcement-level
    common-lisp:nil
  (:required "REQUIRED")
  (:optional "OPTIONAL"))

(smithy/sdk/shapes:define-list partition-key-list :member partition-key)

(smithy/sdk/shapes:define-enum partition-key-type
    common-lisp:nil
  (:dimension "DIMENSION")
  (:measure "MEASURE"))

(smithy/sdk/shapes:define-structure record common-lisp:nil
                                    ((dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (measure-name :target-type schema-name
                                      :member-name "MeasureName")
                                     (measure-value :target-type
                                      string-value2048 :member-name
                                      "MeasureValue")
                                     (measure-value-type :target-type
                                      measure-value-type :member-name
                                      "MeasureValueType")
                                     (time :target-type string-value256
                                      :member-name "Time")
                                     (time-unit :target-type time-unit
                                      :member-name "TimeUnit")
                                     (version :target-type record-version
                                      :member-name "Version")
                                     (measure-values :target-type
                                      measure-values :member-name
                                      "MeasureValues"))
                                    (:shape-name "Record"))

(smithy/sdk/shapes:define-type record-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type record-version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list records :member record)

(smithy/sdk/shapes:define-structure records-ingested common-lisp:nil
                                    ((total :target-type integer :member-name
                                      "Total")
                                     (memory-store :target-type integer
                                      :member-name "MemoryStore")
                                     (magnetic-store :target-type integer
                                      :member-name "MagneticStore"))
                                    (:shape-name "RecordsIngested"))

(smithy/sdk/shapes:define-structure rejected-record common-lisp:nil
                                    ((record-index :target-type record-index
                                      :member-name "RecordIndex")
                                     (reason :target-type error-message
                                      :member-name "Reason")
                                     (existing-version :target-type
                                      record-version :member-name
                                      "ExistingVersion"))
                                    (:shape-name "RejectedRecord"))

(smithy/sdk/shapes:define-list rejected-records :member rejected-record)

(smithy/sdk/shapes:define-error rejected-records-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (rejected-records :target-type
                                  rejected-records :member-name
                                  "RejectedRecords"))
                                (:shape-name "RejectedRecordsException")
                                (:error-code 419))

(smithy/sdk/shapes:define-structure report-configuration common-lisp:nil
                                    ((report-s3configuration :target-type
                                      report-s3configuration :member-name
                                      "ReportS3Configuration"))
                                    (:shape-name "ReportConfiguration"))

(smithy/sdk/shapes:define-structure report-s3configuration common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (object-key-prefix :target-type
                                      s3object-key-prefix :member-name
                                      "ObjectKeyPrefix")
                                     (encryption-option :target-type
                                      s3encryption-option :member-name
                                      "EncryptionOption")
                                     (kms-key-id :target-type string-value2048
                                      :member-name "KmsKeyId"))
                                    (:shape-name "ReportS3Configuration"))

(smithy/sdk/shapes:define-type resource-create-apiname
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input resume-batch-load-task-request common-lisp:nil
                                ((task-id :target-type batch-load-task-id
                                  :required common-lisp:t :member-name
                                  "TaskId"))
                                (:shape-name "ResumeBatchLoadTaskRequest"))

(smithy/sdk/shapes:define-output resume-batch-load-task-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ResumeBatchLoadTaskResponse"))

(smithy/sdk/shapes:define-structure retention-properties common-lisp:nil
                                    ((memory-store-retention-period-in-hours
                                      :target-type
                                      memory-store-retention-period-in-hours
                                      :required common-lisp:t :member-name
                                      "MemoryStoreRetentionPeriodInHours")
                                     (magnetic-store-retention-period-in-days
                                      :target-type
                                      magnetic-store-retention-period-in-days
                                      :required common-lisp:t :member-name
                                      "MagneticStoreRetentionPeriodInDays"))
                                    (:shape-name "RetentionProperties"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3configuration common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :member-name "BucketName")
                                     (object-key-prefix :target-type
                                      s3object-key-prefix :member-name
                                      "ObjectKeyPrefix")
                                     (encryption-option :target-type
                                      s3encryption-option :member-name
                                      "EncryptionOption")
                                     (kms-key-id :target-type string-value2048
                                      :member-name "KmsKeyId"))
                                    (:shape-name "S3Configuration"))

(smithy/sdk/shapes:define-enum s3encryption-option
    common-lisp:nil
  (:sse-s3 "SSE_S3")
  (:sse-kms "SSE_KMS"))

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-key-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum scalar-measure-value-type
    common-lisp:nil
  (:double "DOUBLE")
  (:bigint "BIGINT")
  (:boolean "BOOLEAN")
  (:varchar "VARCHAR")
  (:timestamp "TIMESTAMP"))

(smithy/sdk/shapes:define-structure schema common-lisp:nil
                                    ((composite-partition-key :target-type
                                      partition-key-list :member-name
                                      "CompositePartitionKey"))
                                    (:shape-name "Schema"))

(smithy/sdk/shapes:define-type schema-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schema-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value1 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value2048 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure table common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (table-name :target-type resource-name
                                      :member-name "TableName")
                                     (database-name :target-type resource-name
                                      :member-name "DatabaseName")
                                     (table-status :target-type table-status
                                      :member-name "TableStatus")
                                     (retention-properties :target-type
                                      retention-properties :member-name
                                      "RetentionProperties")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (last-updated-time :target-type date
                                      :member-name "LastUpdatedTime")
                                     (magnetic-store-write-properties
                                      :target-type
                                      magnetic-store-write-properties
                                      :member-name
                                      "MagneticStoreWriteProperties")
                                     (schema :target-type schema :member-name
                                      "Schema"))
                                    (:shape-name "Table"))

(smithy/sdk/shapes:define-list table-list :member table)

(smithy/sdk/shapes:define-enum table-status
    common-lisp:nil
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:restoring "RESTORING"))

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
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum time-unit
    common-lisp:nil
  (:milliseconds "MILLISECONDS")
  (:seconds "SECONDS")
  (:microseconds "MICROSECONDS")
  (:nanoseconds "NANOSECONDS"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-database-request common-lisp:nil
                                ((database-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (kms-key-id :target-type string-value2048
                                  :required common-lisp:t :member-name
                                  "KmsKeyId"))
                                (:shape-name "UpdateDatabaseRequest"))

(smithy/sdk/shapes:define-output update-database-response common-lisp:nil
                                 ((database :target-type database :member-name
                                   "Database"))
                                 (:shape-name "UpdateDatabaseResponse"))

(smithy/sdk/shapes:define-input update-table-request common-lisp:nil
                                ((database-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "TableName")
                                 (retention-properties :target-type
                                  retention-properties :member-name
                                  "RetentionProperties")
                                 (magnetic-store-write-properties :target-type
                                  magnetic-store-write-properties :member-name
                                  "MagneticStoreWriteProperties")
                                 (schema :target-type schema :member-name
                                  "Schema"))
                                (:shape-name "UpdateTableRequest"))

(smithy/sdk/shapes:define-output update-table-response common-lisp:nil
                                 ((table :target-type table :member-name
                                   "Table"))
                                 (:shape-name "UpdateTableResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input write-records-request common-lisp:nil
                                ((database-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "TableName")
                                 (common-attributes :target-type record
                                  :member-name "CommonAttributes")
                                 (records :target-type records :required
                                  common-lisp:t :member-name "Records"))
                                (:shape-name "WriteRecordsRequest"))

(smithy/sdk/shapes:define-output write-records-response common-lisp:nil
                                 ((records-ingested :target-type
                                   records-ingested :member-name
                                   "RecordsIngested"))
                                 (:shape-name "WriteRecordsResponse"))

(smithy/sdk/operation:define-operation create-batch-load-task :shape-name
                                       "CreateBatchLoadTask" :input
                                       create-batch-load-task-request :output
                                       create-batch-load-task-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-database :shape-name
                                       "CreateDatabase" :input
                                       create-database-request :output
                                       create-database-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-table :shape-name "CreateTable"
                                       :input create-table-request :output
                                       create-table-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-database :shape-name
                                       "DeleteDatabase" :input
                                       delete-database-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-table :shape-name "DeleteTable"
                                       :input delete-table-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-batch-load-task :shape-name
                                       "DescribeBatchLoadTask" :input
                                       describe-batch-load-task-request :output
                                       describe-batch-load-task-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-database :shape-name
                                       "DescribeDatabase" :input
                                       describe-database-request :output
                                       describe-database-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-endpoints :shape-name
                                       "DescribeEndpoints" :input
                                       describe-endpoints-request :output
                                       describe-endpoints-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-table :shape-name
                                       "DescribeTable" :input
                                       describe-table-request :output
                                       describe-table-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-batch-load-tasks :shape-name
                                       "ListBatchLoadTasks" :input
                                       list-batch-load-tasks-request :output
                                       list-batch-load-tasks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-databases :shape-name
                                       "ListDatabases" :input
                                       list-databases-request :output
                                       list-databases-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tables :shape-name "ListTables"
                                       :input list-tables-request :output
                                       list-tables-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation resume-batch-load-task :shape-name
                                       "ResumeBatchLoadTask" :input
                                       resume-batch-load-task-request :output
                                       resume-batch-load-task-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-endpoint-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-endpoint-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-database :shape-name
                                       "UpdateDatabase" :input
                                       update-database-request :output
                                       update-database-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-table :shape-name "UpdateTable"
                                       :input update-table-request :output
                                       update-table-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation write-records :shape-name "WriteRecords"
                                       :input write-records-request :output
                                       write-records-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        rejected-records-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
