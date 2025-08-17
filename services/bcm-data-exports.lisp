(uiop/package:define-package #:pira/bcm-data-exports (:use)
                             (:export
                              #:awsbilling-and-cost-management-data-exports
                              #:arn #:column #:column-list #:compression-option
                              #:create-export #:data-query #:delete-export
                              #:destination-configurations
                              #:execution-reference #:execution-reference-list
                              #:execution-status #:execution-status-code
                              #:execution-status-reason #:export #:export-name
                              #:export-reference #:export-reference-list
                              #:export-status #:export-status-code
                              #:format-option #:frequency-option
                              #:generic-string #:generic-string-list
                              #:get-execution #:get-export #:get-table
                              #:list-executions #:list-exports #:list-tables
                              #:list-tags-for-resource #:max-results
                              #:next-page-token #:overwrite-option
                              #:query-statement #:refresh-cadence
                              #:resource-tag #:resource-tag-key
                              #:resource-tag-key-list #:resource-tag-list
                              #:resource-tag-value #:s3destination
                              #:s3output-configurations #:s3output-type #:table
                              #:table-configurations #:table-list #:table-name
                              #:table-properties #:table-property
                              #:table-property-description
                              #:table-property-description-list #:tag-resource
                              #:untag-resource #:update-export
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/bcm-data-exports)

(smithy/sdk/service:define-service awsbilling-and-cost-management-data-exports
                                   :shape-name
                                   "AWSBillingAndCostManagementDataExports"
                                   :version "2023-11-26" :title
                                   "AWS Billing and Cost Management Data Exports"
                                   :operations
                                   '(create-export delete-export get-execution
                                     get-export get-table list-executions
                                     list-exports list-tables
                                     list-tags-for-resource tag-resource
                                     untag-resource update-export)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "BCM Data Exports")
                                      ("arnNamespace" . "bcm-data-exports")
                                      ("cloudTrailEventSource"
                                       . "bcm-data-exports.amazonaws.com")
                                      ("endpointPrefix" . "bcm-data-exports"))
                                     ("aws.auth#sigv4"
                                      ("name" . "bcm-data-exports"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure column common-lisp:nil
                                    ((name :target-type generic-string
                                      :member-name "Name")
                                     (type :target-type generic-string
                                      :member-name "Type")
                                     (description :target-type generic-string
                                      :member-name "Description"))
                                    (:shape-name "Column"))

(smithy/sdk/shapes:define-list column-list :member column)

(smithy/sdk/shapes:define-enum compression-option
    common-lisp:nil
  (:gzip "GZIP")
  (:parquet "PARQUET"))

(smithy/sdk/shapes:define-input create-export-request common-lisp:nil
                                ((export :target-type export :required
                                  common-lisp:t :member-name "Export")
                                 (resource-tags :target-type resource-tag-list
                                  :member-name "ResourceTags"))
                                (:shape-name "CreateExportRequest"))

(smithy/sdk/shapes:define-output create-export-response common-lisp:nil
                                 ((export-arn :target-type arn :member-name
                                   "ExportArn"))
                                 (:shape-name "CreateExportResponse"))

(smithy/sdk/shapes:define-structure data-query common-lisp:nil
                                    ((query-statement :target-type
                                      query-statement :required common-lisp:t
                                      :member-name "QueryStatement")
                                     (table-configurations :target-type
                                      table-configurations :member-name
                                      "TableConfigurations"))
                                    (:shape-name "DataQuery"))

(smithy/sdk/shapes:define-input delete-export-request common-lisp:nil
                                ((export-arn :target-type arn :required
                                  common-lisp:t :member-name "ExportArn"))
                                (:shape-name "DeleteExportRequest"))

(smithy/sdk/shapes:define-output delete-export-response common-lisp:nil
                                 ((export-arn :target-type arn :member-name
                                   "ExportArn"))
                                 (:shape-name "DeleteExportResponse"))

(smithy/sdk/shapes:define-structure destination-configurations common-lisp:nil
                                    ((s3destination :target-type s3destination
                                      :required common-lisp:t :member-name
                                      "S3Destination"))
                                    (:shape-name "DestinationConfigurations"))

(smithy/sdk/shapes:define-structure execution-reference common-lisp:nil
                                    ((execution-id :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "ExecutionId")
                                     (execution-status :target-type
                                      execution-status :required common-lisp:t
                                      :member-name "ExecutionStatus"))
                                    (:shape-name "ExecutionReference"))

(smithy/sdk/shapes:define-list execution-reference-list :member
                               execution-reference)

(smithy/sdk/shapes:define-structure execution-status common-lisp:nil
                                    ((status-code :target-type
                                      execution-status-code :member-name
                                      "StatusCode")
                                     (status-reason :target-type
                                      execution-status-reason :member-name
                                      "StatusReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt"
                                      :timestamp-format "date-time")
                                     (completed-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CompletedAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ExecutionStatus"))

(smithy/sdk/shapes:define-enum execution-status-code
    common-lisp:nil
  (:initiation-in-process "INITIATION_IN_PROCESS")
  (:query-queued "QUERY_QUEUED")
  (:query-in-process "QUERY_IN_PROCESS")
  (:query-failure "QUERY_FAILURE")
  (:delivery-in-process "DELIVERY_IN_PROCESS")
  (:delivery-success "DELIVERY_SUCCESS")
  (:delivery-failure "DELIVERY_FAILURE"))

(smithy/sdk/shapes:define-enum execution-status-reason
    common-lisp:nil
  (:insufficient-permission "INSUFFICIENT_PERMISSION")
  (:bill-owner-changed "BILL_OWNER_CHANGED")
  (:internal-failure "INTERNAL_FAILURE"))

(smithy/sdk/shapes:define-structure export common-lisp:nil
                                    ((export-arn :target-type arn :member-name
                                      "ExportArn")
                                     (name :target-type export-name :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type generic-string
                                      :member-name "Description")
                                     (data-query :target-type data-query
                                      :required common-lisp:t :member-name
                                      "DataQuery")
                                     (destination-configurations :target-type
                                      destination-configurations :required
                                      common-lisp:t :member-name
                                      "DestinationConfigurations")
                                     (refresh-cadence :target-type
                                      refresh-cadence :required common-lisp:t
                                      :member-name "RefreshCadence"))
                                    (:shape-name "Export"))

(smithy/sdk/shapes:define-type export-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-reference common-lisp:nil
                                    ((export-arn :target-type arn :required
                                      common-lisp:t :member-name "ExportArn")
                                     (export-name :target-type export-name
                                      :required common-lisp:t :member-name
                                      "ExportName")
                                     (export-status :target-type export-status
                                      :required common-lisp:t :member-name
                                      "ExportStatus"))
                                    (:shape-name "ExportReference"))

(smithy/sdk/shapes:define-list export-reference-list :member export-reference)

(smithy/sdk/shapes:define-structure export-status common-lisp:nil
                                    ((status-code :target-type
                                      export-status-code :member-name
                                      "StatusCode")
                                     (status-reason :target-type
                                      execution-status-reason :member-name
                                      "StatusReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt"
                                      :timestamp-format "date-time")
                                     (last-refreshed-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastRefreshedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ExportStatus"))

(smithy/sdk/shapes:define-enum export-status-code
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-enum format-option
    common-lisp:nil
  (:text-or-csv "TEXT_OR_CSV")
  (:parquet "PARQUET"))

(smithy/sdk/shapes:define-enum frequency-option
    common-lisp:nil
  (:synchronous "SYNCHRONOUS"))

(smithy/sdk/shapes:define-type generic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list generic-string-list :member generic-string)

(smithy/sdk/shapes:define-input get-execution-request common-lisp:nil
                                ((export-arn :target-type arn :required
                                  common-lisp:t :member-name "ExportArn")
                                 (execution-id :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ExecutionId"))
                                (:shape-name "GetExecutionRequest"))

(smithy/sdk/shapes:define-output get-execution-response common-lisp:nil
                                 ((execution-id :target-type generic-string
                                   :member-name "ExecutionId")
                                  (export :target-type export :member-name
                                   "Export")
                                  (execution-status :target-type
                                   execution-status :member-name
                                   "ExecutionStatus"))
                                 (:shape-name "GetExecutionResponse"))

(smithy/sdk/shapes:define-input get-export-request common-lisp:nil
                                ((export-arn :target-type arn :required
                                  common-lisp:t :member-name "ExportArn"))
                                (:shape-name "GetExportRequest"))

(smithy/sdk/shapes:define-output get-export-response common-lisp:nil
                                 ((export :target-type export :member-name
                                   "Export")
                                  (export-status :target-type export-status
                                   :member-name "ExportStatus"))
                                 (:shape-name "GetExportResponse"))

(smithy/sdk/shapes:define-input get-table-request common-lisp:nil
                                ((table-name :target-type table-name :required
                                  common-lisp:t :member-name "TableName")
                                 (table-properties :target-type
                                  table-properties :member-name
                                  "TableProperties"))
                                (:shape-name "GetTableRequest"))

(smithy/sdk/shapes:define-output get-table-response common-lisp:nil
                                 ((table-name :target-type table-name
                                   :member-name "TableName")
                                  (description :target-type generic-string
                                   :member-name "Description")
                                  (table-properties :target-type
                                   table-properties :member-name
                                   "TableProperties")
                                  (schema :target-type column-list :member-name
                                   "Schema"))
                                 (:shape-name "GetTableResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-executions-request common-lisp:nil
                                ((export-arn :target-type arn :required
                                  common-lisp:t :member-name "ExportArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-page-token
                                  :member-name "NextToken"))
                                (:shape-name "ListExecutionsRequest"))

(smithy/sdk/shapes:define-output list-executions-response common-lisp:nil
                                 ((executions :target-type
                                   execution-reference-list :member-name
                                   "Executions")
                                  (next-token :target-type next-page-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListExecutionsResponse"))

(smithy/sdk/shapes:define-input list-exports-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-page-token
                                  :member-name "NextToken"))
                                (:shape-name "ListExportsRequest"))

(smithy/sdk/shapes:define-output list-exports-response common-lisp:nil
                                 ((exports :target-type export-reference-list
                                   :member-name "Exports")
                                  (next-token :target-type next-page-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListExportsResponse"))

(smithy/sdk/shapes:define-input list-tables-request common-lisp:nil
                                ((next-token :target-type next-page-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListTablesRequest"))

(smithy/sdk/shapes:define-output list-tables-response common-lisp:nil
                                 ((tables :target-type table-list :member-name
                                   "Tables")
                                  (next-token :target-type next-page-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTablesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-page-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-tags :target-type resource-tag-list
                                   :member-name "ResourceTags")
                                  (next-token :target-type next-page-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum overwrite-option
    common-lisp:nil
  (:create-new-report "CREATE_NEW_REPORT")
  (:overwrite-report "OVERWRITE_REPORT"))

(smithy/sdk/shapes:define-type query-statement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure refresh-cadence common-lisp:nil
                                    ((frequency :target-type frequency-option
                                      :required common-lisp:t :member-name
                                      "Frequency"))
                                    (:shape-name "RefreshCadence"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (resource-type :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-tag common-lisp:nil
                                    ((key :target-type resource-tag-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (value :target-type resource-tag-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "ResourceTag"))

(smithy/sdk/shapes:define-type resource-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-tag-key-list :member resource-tag-key)

(smithy/sdk/shapes:define-list resource-tag-list :member resource-tag)

(smithy/sdk/shapes:define-type resource-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3destination common-lisp:nil
                                    ((s3bucket :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "S3Bucket")
                                     (s3prefix :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "S3Prefix")
                                     (s3region :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "S3Region")
                                     (s3output-configurations :target-type
                                      s3output-configurations :required
                                      common-lisp:t :member-name
                                      "S3OutputConfigurations"))
                                    (:shape-name "S3Destination"))

(smithy/sdk/shapes:define-structure s3output-configurations common-lisp:nil
                                    ((output-type :target-type s3output-type
                                      :required common-lisp:t :member-name
                                      "OutputType")
                                     (format :target-type format-option
                                      :required common-lisp:t :member-name
                                      "Format")
                                     (compression :target-type
                                      compression-option :required
                                      common-lisp:t :member-name "Compression")
                                     (overwrite :target-type overwrite-option
                                      :required common-lisp:t :member-name
                                      "Overwrite"))
                                    (:shape-name "S3OutputConfigurations"))

(smithy/sdk/shapes:define-enum s3output-type
    common-lisp:nil
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type generic-string
                                  :member-name "ResourceId")
                                 (resource-type :target-type generic-string
                                  :member-name "ResourceType")
                                 (quota-code :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "QuotaCode")
                                 (service-code :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ServiceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure table common-lisp:nil
                                    ((table-name :target-type table-name
                                      :member-name "TableName")
                                     (description :target-type generic-string
                                      :member-name "Description")
                                     (table-properties :target-type
                                      table-property-description-list
                                      :member-name "TableProperties"))
                                    (:shape-name "Table"))

(smithy/sdk/shapes:define-map table-configurations :key table-name :value
                              table-properties)

(smithy/sdk/shapes:define-list table-list :member table)

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map table-properties :key table-property :value
                              generic-string)

(smithy/sdk/shapes:define-type table-property smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure table-property-description common-lisp:nil
                                    ((name :target-type generic-string
                                      :member-name "Name")
                                     (valid-values :target-type
                                      generic-string-list :member-name
                                      "ValidValues")
                                     (default-value :target-type generic-string
                                      :member-name "DefaultValue")
                                     (description :target-type generic-string
                                      :member-name "Description"))
                                    (:shape-name "TablePropertyDescription"))

(smithy/sdk/shapes:define-list table-property-description-list :member
                               table-property-description)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (resource-tags :target-type resource-tag-list
                                  :required common-lisp:t :member-name
                                  "ResourceTags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "Message")
                                 (quota-code :target-type generic-string
                                  :member-name "QuotaCode")
                                 (service-code :target-type generic-string
                                  :member-name "ServiceCode"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (resource-tag-keys :target-type
                                  resource-tag-key-list :required common-lisp:t
                                  :member-name "ResourceTagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-export-request common-lisp:nil
                                ((export-arn :target-type arn :required
                                  common-lisp:t :member-name "ExportArn")
                                 (export :target-type export :required
                                  common-lisp:t :member-name "Export"))
                                (:shape-name "UpdateExportRequest"))

(smithy/sdk/shapes:define-output update-export-response common-lisp:nil
                                 ((export-arn :target-type arn :member-name
                                   "ExportArn"))
                                 (:shape-name "UpdateExportResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type generic-string :required
                                  common-lisp:t :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "Fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (message :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:other "other"))

(smithy/sdk/operation:define-operation create-export :shape-name "CreateExport"
                                       :input create-export-request :output
                                       create-export-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-export :shape-name "DeleteExport"
                                       :input delete-export-request :output
                                       delete-export-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-execution :shape-name "GetExecution"
                                       :input get-execution-request :output
                                       get-execution-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-export :shape-name "GetExport"
                                       :input get-export-request :output
                                       get-export-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-table :shape-name "GetTable" :input
                                       get-table-request :output
                                       get-table-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-executions :shape-name
                                       "ListExecutions" :input
                                       list-executions-request :output
                                       list-executions-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-exports :shape-name "ListExports"
                                       :input list-exports-request :output
                                       list-exports-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tables :shape-name "ListTables"
                                       :input list-tables-request :output
                                       list-tables-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-export :shape-name "UpdateExport"
                                       :input update-export-request :output
                                       update-export-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
