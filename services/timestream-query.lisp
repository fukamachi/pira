(uiop/package:define-package #:pira/timestream-query (:use)
                             (:export
                              #:account-settings-notification-configuration
                              #:amazon-resource-name #:cancel-query
                              #:client-request-token #:client-token
                              #:column-info #:column-info-list #:compute-mode
                              #:create-scheduled-query #:datum #:datum-list
                              #:delete-scheduled-query
                              #:describe-account-settings #:describe-endpoints
                              #:describe-scheduled-query #:dimension-mapping
                              #:dimension-mapping-list #:dimension-value-type
                              #:double #:endpoint #:endpoints #:error-message
                              #:error-report-configuration
                              #:error-report-location #:execute-scheduled-query
                              #:execution-stats #:last-update
                              #:last-update-status #:list-scheduled-queries
                              #:list-tags-for-resource #:long
                              #:max-query-capacity #:max-query-results
                              #:max-scheduled-queries-results
                              #:max-tags-for-resource-result
                              #:measure-value-type #:mixed-measure-mapping
                              #:mixed-measure-mapping-list
                              #:multi-measure-attribute-mapping
                              #:multi-measure-attribute-mapping-list
                              #:multi-measure-mappings
                              #:next-scheduled-queries-results-token
                              #:next-tags-for-resource-results-token
                              #:notification-configuration #:nullable-boolean
                              #:pagination-token #:parameter-mapping
                              #:parameter-mapping-list #:partition-key
                              #:partition-key-list #:prepare-query
                              #:provisioned-capacity-request
                              #:provisioned-capacity-response #:query
                              #:query-compute-request #:query-compute-response
                              #:query-id #:query-insights #:query-insights-mode
                              #:query-insights-response #:query-pricing-model
                              #:query-spatial-coverage
                              #:query-spatial-coverage-max #:query-status
                              #:query-string #:query-tcu #:query-temporal-range
                              #:query-temporal-range-max #:resource-name #:row
                              #:row-list #:s3bucket-name #:s3configuration
                              #:s3encryption-option #:s3object-key
                              #:s3object-key-prefix #:s3report-location
                              #:scalar-measure-value-type #:scalar-type
                              #:scalar-value #:schedule-configuration
                              #:schedule-expression #:scheduled-query
                              #:scheduled-query-description
                              #:scheduled-query-insights
                              #:scheduled-query-insights-mode
                              #:scheduled-query-insights-response
                              #:scheduled-query-list #:scheduled-query-name
                              #:scheduled-query-run-status
                              #:scheduled-query-run-summary
                              #:scheduled-query-run-summary-list
                              #:scheduled-query-state #:schema-name
                              #:select-column #:select-column-list
                              #:service-error-message #:sns-configuration
                              #:string #:string-value2048 #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:target-configuration
                              #:target-destination #:time
                              #:time-series-data-point
                              #:time-series-data-point-list #:timestamp
                              #:timestream-configuration
                              #:timestream-destination #:timestream-20181101
                              #:type #:untag-resource #:update-account-settings
                              #:update-scheduled-query))
(common-lisp:in-package #:pira/timestream-query)

(smithy/sdk/service:define-service timestream-20181101 :shape-name
                                   "Timestream_20181101" :version "2018-11-01"
                                   :title "Amazon Timestream Query" :operations
                                   '(cancel-query create-scheduled-query
                                     delete-scheduled-query
                                     describe-account-settings
                                     describe-endpoints
                                     describe-scheduled-query
                                     execute-scheduled-query
                                     list-scheduled-queries
                                     list-tags-for-resource prepare-query query
                                     tag-resource untag-resource
                                     update-account-settings
                                     update-scheduled-query)
                                   :traits
                                   '(("aws.api#clientEndpointDiscovery"
                                      ("operation"
                                       . "com.amazonaws.timestreamquery#DescribeEndpoints")
                                      ("error"
                                       . "com.amazonaws.timestreamquery#InvalidEndpointException"))
                                     ("aws.api#service"
                                      ("sdkId" . "Timestream Query")
                                      ("arnNamespace" . "timestream")
                                      ("cloudFormationName"
                                       . "TimestreamQuery")
                                      ("cloudTrailEventSource"
                                       . "timestreamquery.amazonaws.com")
                                      ("endpointPrefix" . "query.timestream"))
                                     ("aws.auth#sigv4" ("name" . "timestream"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type service-error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-name "AccessDenied") (:error-code 403))

(smithy/sdk/shapes:define-structure account-settings-notification-configuration
                                    common-lisp:nil
                                    ((sns-configuration :target-type
                                      sns-configuration :member-name
                                      "SnsConfiguration")
                                     (role-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "RoleArn"))
                                    (:shape-name
                                     "AccountSettingsNotificationConfiguration"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-query-request common-lisp:nil
                                ((query-id :target-type query-id :required
                                  common-lisp:t :member-name "QueryId"))
                                (:shape-name "CancelQueryRequest"))

(smithy/sdk/shapes:define-output cancel-query-response common-lisp:nil
                                 ((cancellation-message :target-type string
                                   :member-name "CancellationMessage"))
                                 (:shape-name "CancelQueryResponse"))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure column-info common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "ColumnInfo"))

(smithy/sdk/shapes:define-list column-info-list :member column-info)

(smithy/sdk/shapes:define-enum compute-mode
    common-lisp:nil
  (:on-demand "ON_DEMAND")
  (:provisioned "PROVISIONED"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-scheduled-query-request common-lisp:nil
                                ((name :target-type scheduled-query-name
                                  :required common-lisp:t :member-name "Name")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "QueryString")
                                 (schedule-configuration :target-type
                                  schedule-configuration :required
                                  common-lisp:t :member-name
                                  "ScheduleConfiguration")
                                 (notification-configuration :target-type
                                  notification-configuration :required
                                  common-lisp:t :member-name
                                  "NotificationConfiguration")
                                 (target-configuration :target-type
                                  target-configuration :member-name
                                  "TargetConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (scheduled-query-execution-role-arn
                                  :target-type amazon-resource-name :required
                                  common-lisp:t :member-name
                                  "ScheduledQueryExecutionRoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (kms-key-id :target-type string-value2048
                                  :member-name "KmsKeyId")
                                 (error-report-configuration :target-type
                                  error-report-configuration :required
                                  common-lisp:t :member-name
                                  "ErrorReportConfiguration"))
                                (:shape-name "CreateScheduledQueryRequest"))

(smithy/sdk/shapes:define-output create-scheduled-query-response
                                 common-lisp:nil
                                 ((arn :target-type amazon-resource-name
                                   :required common-lisp:t :member-name "Arn"))
                                 (:shape-name "CreateScheduledQueryResponse"))

(smithy/sdk/shapes:define-structure datum common-lisp:nil
                                    ((scalar-value :target-type scalar-value
                                      :member-name "ScalarValue")
                                     (time-series-value :target-type
                                      time-series-data-point-list :member-name
                                      "TimeSeriesValue")
                                     (array-value :target-type datum-list
                                      :member-name "ArrayValue")
                                     (row-value :target-type row :member-name
                                      "RowValue")
                                     (null-value :target-type nullable-boolean
                                      :member-name "NullValue"))
                                    (:shape-name "Datum"))

(smithy/sdk/shapes:define-list datum-list :member datum)

(smithy/sdk/shapes:define-input delete-scheduled-query-request common-lisp:nil
                                ((scheduled-query-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ScheduledQueryArn"))
                                (:shape-name "DeleteScheduledQueryRequest"))

(smithy/sdk/shapes:define-input describe-account-settings-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "DescribeAccountSettingsRequest"))

(smithy/sdk/shapes:define-output describe-account-settings-response
                                 common-lisp:nil
                                 ((max-query-tcu :target-type
                                   max-query-capacity :member-name
                                   "MaxQueryTCU")
                                  (query-pricing-model :target-type
                                   query-pricing-model :member-name
                                   "QueryPricingModel")
                                  (query-compute :target-type
                                   query-compute-response :member-name
                                   "QueryCompute"))
                                 (:shape-name
                                  "DescribeAccountSettingsResponse"))

(smithy/sdk/shapes:define-input describe-endpoints-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeEndpointsRequest"))

(smithy/sdk/shapes:define-output describe-endpoints-response common-lisp:nil
                                 ((endpoints :target-type endpoints :required
                                   common-lisp:t :member-name "Endpoints"))
                                 (:shape-name "DescribeEndpointsResponse"))

(smithy/sdk/shapes:define-input describe-scheduled-query-request
                                common-lisp:nil
                                ((scheduled-query-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ScheduledQueryArn"))
                                (:shape-name "DescribeScheduledQueryRequest"))

(smithy/sdk/shapes:define-output describe-scheduled-query-response
                                 common-lisp:nil
                                 ((scheduled-query :target-type
                                   scheduled-query-description :required
                                   common-lisp:t :member-name
                                   "ScheduledQuery"))
                                 (:shape-name "DescribeScheduledQueryResponse"))

(smithy/sdk/shapes:define-structure dimension-mapping common-lisp:nil
                                    ((name :target-type schema-name :required
                                      common-lisp:t :member-name "Name")
                                     (dimension-value-type :target-type
                                      dimension-value-type :required
                                      common-lisp:t :member-name
                                      "DimensionValueType"))
                                    (:shape-name "DimensionMapping"))

(smithy/sdk/shapes:define-list dimension-mapping-list :member dimension-mapping)

(smithy/sdk/shapes:define-enum dimension-value-type
    common-lisp:nil
  (:varchar "VARCHAR"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((address :target-type string :required
                                      common-lisp:t :member-name "Address")
                                     (cache-period-in-minutes :target-type long
                                      :required common-lisp:t :member-name
                                      "CachePeriodInMinutes"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-list endpoints :member endpoint)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-report-configuration common-lisp:nil
                                    ((s3configuration :target-type
                                      s3configuration :required common-lisp:t
                                      :member-name "S3Configuration"))
                                    (:shape-name "ErrorReportConfiguration"))

(smithy/sdk/shapes:define-structure error-report-location common-lisp:nil
                                    ((s3report-location :target-type
                                      s3report-location :member-name
                                      "S3ReportLocation"))
                                    (:shape-name "ErrorReportLocation"))

(smithy/sdk/shapes:define-input execute-scheduled-query-request common-lisp:nil
                                ((scheduled-query-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ScheduledQueryArn")
                                 (invocation-time :target-type time :required
                                  common-lisp:t :member-name "InvocationTime")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (query-insights :target-type
                                  scheduled-query-insights :member-name
                                  "QueryInsights"))
                                (:shape-name "ExecuteScheduledQueryRequest"))

(smithy/sdk/shapes:define-structure execution-stats common-lisp:nil
                                    ((execution-time-in-millis :target-type
                                      long :member-name
                                      "ExecutionTimeInMillis")
                                     (data-writes :target-type long
                                      :member-name "DataWrites")
                                     (bytes-metered :target-type long
                                      :member-name "BytesMetered")
                                     (cumulative-bytes-scanned :target-type
                                      long :member-name
                                      "CumulativeBytesScanned")
                                     (records-ingested :target-type long
                                      :member-name "RecordsIngested")
                                     (query-result-rows :target-type long
                                      :member-name "QueryResultRows"))
                                    (:shape-name "ExecutionStats"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-endpoint-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidEndpointException")
                                (:error-code 421))

(smithy/sdk/shapes:define-structure last-update common-lisp:nil
                                    ((target-query-tcu :target-type query-tcu
                                      :member-name "TargetQueryTCU")
                                     (status :target-type last-update-status
                                      :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage"))
                                    (:shape-name "LastUpdate"))

(smithy/sdk/shapes:define-enum last-update-status
    common-lisp:nil
  (:pending "PENDING")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED"))

(smithy/sdk/shapes:define-input list-scheduled-queries-request common-lisp:nil
                                ((max-results :target-type
                                  max-scheduled-queries-results :member-name
                                  "MaxResults")
                                 (next-token :target-type
                                  next-scheduled-queries-results-token
                                  :member-name "NextToken"))
                                (:shape-name "ListScheduledQueriesRequest"))

(smithy/sdk/shapes:define-output list-scheduled-queries-response
                                 common-lisp:nil
                                 ((scheduled-queries :target-type
                                   scheduled-query-list :required common-lisp:t
                                   :member-name "ScheduledQueries")
                                  (next-token :target-type
                                   next-scheduled-queries-results-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListScheduledQueriesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (max-results :target-type
                                  max-tags-for-resource-result :member-name
                                  "MaxResults")
                                 (next-token :target-type
                                  next-tags-for-resource-results-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :required
                                   common-lisp:t :member-name "Tags")
                                  (next-token :target-type
                                   next-tags-for-resource-results-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-query-capacity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-query-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-scheduled-queries-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-tags-for-resource-result
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum measure-value-type
    common-lisp:nil
  (:bigint "BIGINT")
  (:boolean "BOOLEAN")
  (:double "DOUBLE")
  (:varchar "VARCHAR")
  (:multi "MULTI"))

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
                                      scalar-measure-value-type :required
                                      common-lisp:t :member-name
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

(smithy/sdk/shapes:define-type next-scheduled-queries-results-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-tags-for-resource-results-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-configuration common-lisp:nil
                                    ((sns-configuration :target-type
                                      sns-configuration :required common-lisp:t
                                      :member-name "SnsConfiguration"))
                                    (:shape-name "NotificationConfiguration"))

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parameter-mapping common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "ParameterMapping"))

(smithy/sdk/shapes:define-list parameter-mapping-list :member parameter-mapping)

(smithy/sdk/shapes:define-type partition-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list partition-key-list :member partition-key)

(smithy/sdk/shapes:define-input prepare-query-request common-lisp:nil
                                ((query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "QueryString")
                                 (validate-only :target-type nullable-boolean
                                  :member-name "ValidateOnly"))
                                (:shape-name "PrepareQueryRequest"))

(smithy/sdk/shapes:define-output prepare-query-response common-lisp:nil
                                 ((query-string :target-type query-string
                                   :required common-lisp:t :member-name
                                   "QueryString")
                                  (columns :target-type select-column-list
                                   :required common-lisp:t :member-name
                                   "Columns")
                                  (parameters :target-type
                                   parameter-mapping-list :required
                                   common-lisp:t :member-name "Parameters"))
                                 (:shape-name "PrepareQueryResponse"))

(smithy/sdk/shapes:define-structure provisioned-capacity-request
                                    common-lisp:nil
                                    ((target-query-tcu :target-type query-tcu
                                      :required common-lisp:t :member-name
                                      "TargetQueryTCU")
                                     (notification-configuration :target-type
                                      account-settings-notification-configuration
                                      :member-name
                                      "NotificationConfiguration"))
                                    (:shape-name "ProvisionedCapacityRequest"))

(smithy/sdk/shapes:define-structure provisioned-capacity-response
                                    common-lisp:nil
                                    ((active-query-tcu :target-type query-tcu
                                      :member-name "ActiveQueryTCU")
                                     (notification-configuration :target-type
                                      account-settings-notification-configuration
                                      :member-name "NotificationConfiguration")
                                     (last-update :target-type last-update
                                      :member-name "LastUpdate"))
                                    (:shape-name "ProvisionedCapacityResponse"))

(smithy/sdk/shapes:define-structure query-compute-request common-lisp:nil
                                    ((compute-mode :target-type compute-mode
                                      :member-name "ComputeMode")
                                     (provisioned-capacity :target-type
                                      provisioned-capacity-request :member-name
                                      "ProvisionedCapacity"))
                                    (:shape-name "QueryComputeRequest"))

(smithy/sdk/shapes:define-structure query-compute-response common-lisp:nil
                                    ((compute-mode :target-type compute-mode
                                      :member-name "ComputeMode")
                                     (provisioned-capacity :target-type
                                      provisioned-capacity-response
                                      :member-name "ProvisionedCapacity"))
                                    (:shape-name "QueryComputeResponse"))

(smithy/sdk/shapes:define-error query-execution-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "QueryExecutionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type query-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-insights common-lisp:nil
                                    ((mode :target-type query-insights-mode
                                      :required common-lisp:t :member-name
                                      "Mode"))
                                    (:shape-name "QueryInsights"))

(smithy/sdk/shapes:define-enum query-insights-mode
    common-lisp:nil
  (:enabled-with-rate-control "ENABLED_WITH_RATE_CONTROL")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure query-insights-response common-lisp:nil
                                    ((query-spatial-coverage :target-type
                                      query-spatial-coverage :member-name
                                      "QuerySpatialCoverage")
                                     (query-temporal-range :target-type
                                      query-temporal-range :member-name
                                      "QueryTemporalRange")
                                     (query-table-count :target-type long
                                      :member-name "QueryTableCount")
                                     (output-rows :target-type long
                                      :member-name "OutputRows")
                                     (output-bytes :target-type long
                                      :member-name "OutputBytes")
                                     (unload-partition-count :target-type long
                                      :member-name "UnloadPartitionCount")
                                     (unload-written-rows :target-type long
                                      :member-name "UnloadWrittenRows")
                                     (unload-written-bytes :target-type long
                                      :member-name "UnloadWrittenBytes"))
                                    (:shape-name "QueryInsightsResponse"))

(smithy/sdk/shapes:define-enum query-pricing-model
    common-lisp:nil
  (:bytes-scanned "BYTES_SCANNED")
  (:compute-units "COMPUTE_UNITS"))

(smithy/sdk/shapes:define-input query-request common-lisp:nil
                                ((query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "QueryString")
                                 (client-token :target-type
                                  client-request-token :member-name
                                  "ClientToken")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-rows :target-type max-query-results
                                  :member-name "MaxRows")
                                 (query-insights :target-type query-insights
                                  :member-name "QueryInsights"))
                                (:shape-name "QueryRequest"))

(smithy/sdk/shapes:define-output query-response common-lisp:nil
                                 ((query-id :target-type query-id :required
                                   common-lisp:t :member-name "QueryId")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (rows :target-type row-list :required
                                   common-lisp:t :member-name "Rows")
                                  (column-info :target-type column-info-list
                                   :required common-lisp:t :member-name
                                   "ColumnInfo")
                                  (query-status :target-type query-status
                                   :member-name "QueryStatus")
                                  (query-insights-response :target-type
                                   query-insights-response :member-name
                                   "QueryInsightsResponse"))
                                 (:shape-name "QueryResponse"))

(smithy/sdk/shapes:define-structure query-spatial-coverage common-lisp:nil
                                    ((max :target-type
                                      query-spatial-coverage-max :member-name
                                      "Max"))
                                    (:shape-name "QuerySpatialCoverage"))

(smithy/sdk/shapes:define-structure query-spatial-coverage-max common-lisp:nil
                                    ((value :target-type double :member-name
                                      "Value")
                                     (table-arn :target-type
                                      amazon-resource-name :member-name
                                      "TableArn")
                                     (partition-key :target-type
                                      partition-key-list :member-name
                                      "PartitionKey"))
                                    (:shape-name "QuerySpatialCoverageMax"))

(smithy/sdk/shapes:define-structure query-status common-lisp:nil
                                    ((progress-percentage :target-type double
                                      :member-name "ProgressPercentage")
                                     (cumulative-bytes-scanned :target-type
                                      long :member-name
                                      "CumulativeBytesScanned")
                                     (cumulative-bytes-metered :target-type
                                      long :member-name
                                      "CumulativeBytesMetered"))
                                    (:shape-name "QueryStatus"))

(smithy/sdk/shapes:define-type query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-tcu smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure query-temporal-range common-lisp:nil
                                    ((max :target-type query-temporal-range-max
                                      :member-name "Max"))
                                    (:shape-name "QueryTemporalRange"))

(smithy/sdk/shapes:define-structure query-temporal-range-max common-lisp:nil
                                    ((value :target-type long :member-name
                                      "Value")
                                     (table-arn :target-type
                                      amazon-resource-name :member-name
                                      "TableArn"))
                                    (:shape-name "QueryTemporalRangeMax"))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (scheduled-query-arn :target-type
                                  amazon-resource-name :member-name
                                  "ScheduledQueryArn"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure row common-lisp:nil
                                    ((data :target-type datum-list :required
                                      common-lisp:t :member-name "Data"))
                                    (:shape-name "Row"))

(smithy/sdk/shapes:define-list row-list :member row)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3configuration common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (object-key-prefix :target-type
                                      s3object-key-prefix :member-name
                                      "ObjectKeyPrefix")
                                     (encryption-option :target-type
                                      s3encryption-option :member-name
                                      "EncryptionOption"))
                                    (:shape-name "S3Configuration"))

(smithy/sdk/shapes:define-enum s3encryption-option
    common-lisp:nil
  (:sse-s3 "SSE_S3")
  (:sse-kms "SSE_KMS"))

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-key-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3report-location common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :member-name "BucketName")
                                     (object-key :target-type s3object-key
                                      :member-name "ObjectKey"))
                                    (:shape-name "S3ReportLocation"))

(smithy/sdk/shapes:define-enum scalar-measure-value-type
    common-lisp:nil
  (:bigint "BIGINT")
  (:boolean "BOOLEAN")
  (:double "DOUBLE")
  (:varchar "VARCHAR")
  (:timestamp "TIMESTAMP"))

(smithy/sdk/shapes:define-enum scalar-type
    common-lisp:nil
  (:varchar "VARCHAR")
  (:boolean "BOOLEAN")
  (:bigint "BIGINT")
  (:double "DOUBLE")
  (:timestamp "TIMESTAMP")
  (:date "DATE")
  (:time "TIME")
  (:interval-day-to-second "INTERVAL_DAY_TO_SECOND")
  (:interval-year-to-month "INTERVAL_YEAR_TO_MONTH")
  (:unknown "UNKNOWN")
  (:integer "INTEGER"))

(smithy/sdk/shapes:define-type scalar-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure schedule-configuration common-lisp:nil
                                    ((schedule-expression :target-type
                                      schedule-expression :required
                                      common-lisp:t :member-name
                                      "ScheduleExpression"))
                                    (:shape-name "ScheduleConfiguration"))

(smithy/sdk/shapes:define-type schedule-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scheduled-query common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (name :target-type scheduled-query-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (creation-time :target-type time
                                      :member-name "CreationTime")
                                     (state :target-type scheduled-query-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (previous-invocation-time :target-type
                                      time :member-name
                                      "PreviousInvocationTime")
                                     (next-invocation-time :target-type time
                                      :member-name "NextInvocationTime")
                                     (error-report-configuration :target-type
                                      error-report-configuration :member-name
                                      "ErrorReportConfiguration")
                                     (target-destination :target-type
                                      target-destination :member-name
                                      "TargetDestination")
                                     (last-run-status :target-type
                                      scheduled-query-run-status :member-name
                                      "LastRunStatus"))
                                    (:shape-name "ScheduledQuery"))

(smithy/sdk/shapes:define-structure scheduled-query-description common-lisp:nil
                                    ((arn :target-type amazon-resource-name
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (name :target-type scheduled-query-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (query-string :target-type query-string
                                      :required common-lisp:t :member-name
                                      "QueryString")
                                     (creation-time :target-type time
                                      :member-name "CreationTime")
                                     (state :target-type scheduled-query-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (previous-invocation-time :target-type
                                      time :member-name
                                      "PreviousInvocationTime")
                                     (next-invocation-time :target-type time
                                      :member-name "NextInvocationTime")
                                     (schedule-configuration :target-type
                                      schedule-configuration :required
                                      common-lisp:t :member-name
                                      "ScheduleConfiguration")
                                     (notification-configuration :target-type
                                      notification-configuration :required
                                      common-lisp:t :member-name
                                      "NotificationConfiguration")
                                     (target-configuration :target-type
                                      target-configuration :member-name
                                      "TargetConfiguration")
                                     (scheduled-query-execution-role-arn
                                      :target-type amazon-resource-name
                                      :member-name
                                      "ScheduledQueryExecutionRoleArn")
                                     (kms-key-id :target-type string-value2048
                                      :member-name "KmsKeyId")
                                     (error-report-configuration :target-type
                                      error-report-configuration :member-name
                                      "ErrorReportConfiguration")
                                     (last-run-summary :target-type
                                      scheduled-query-run-summary :member-name
                                      "LastRunSummary")
                                     (recently-failed-runs :target-type
                                      scheduled-query-run-summary-list
                                      :member-name "RecentlyFailedRuns"))
                                    (:shape-name "ScheduledQueryDescription"))

(smithy/sdk/shapes:define-structure scheduled-query-insights common-lisp:nil
                                    ((mode :target-type
                                      scheduled-query-insights-mode :required
                                      common-lisp:t :member-name "Mode"))
                                    (:shape-name "ScheduledQueryInsights"))

(smithy/sdk/shapes:define-enum scheduled-query-insights-mode
    common-lisp:nil
  (:enabled-with-rate-control "ENABLED_WITH_RATE_CONTROL")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure scheduled-query-insights-response
                                    common-lisp:nil
                                    ((query-spatial-coverage :target-type
                                      query-spatial-coverage :member-name
                                      "QuerySpatialCoverage")
                                     (query-temporal-range :target-type
                                      query-temporal-range :member-name
                                      "QueryTemporalRange")
                                     (query-table-count :target-type long
                                      :member-name "QueryTableCount")
                                     (output-rows :target-type long
                                      :member-name "OutputRows")
                                     (output-bytes :target-type long
                                      :member-name "OutputBytes"))
                                    (:shape-name
                                     "ScheduledQueryInsightsResponse"))

(smithy/sdk/shapes:define-list scheduled-query-list :member scheduled-query)

(smithy/sdk/shapes:define-type scheduled-query-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum scheduled-query-run-status
    common-lisp:nil
  (:auto-trigger-success "AUTO_TRIGGER_SUCCESS")
  (:auto-trigger-failure "AUTO_TRIGGER_FAILURE")
  (:manual-trigger-success "MANUAL_TRIGGER_SUCCESS")
  (:manual-trigger-failure "MANUAL_TRIGGER_FAILURE"))

(smithy/sdk/shapes:define-structure scheduled-query-run-summary common-lisp:nil
                                    ((invocation-time :target-type time
                                      :member-name "InvocationTime")
                                     (trigger-time :target-type time
                                      :member-name "TriggerTime")
                                     (run-status :target-type
                                      scheduled-query-run-status :member-name
                                      "RunStatus")
                                     (execution-stats :target-type
                                      execution-stats :member-name
                                      "ExecutionStats")
                                     (query-insights-response :target-type
                                      scheduled-query-insights-response
                                      :member-name "QueryInsightsResponse")
                                     (error-report-location :target-type
                                      error-report-location :member-name
                                      "ErrorReportLocation")
                                     (failure-reason :target-type error-message
                                      :member-name "FailureReason"))
                                    (:shape-name "ScheduledQueryRunSummary"))

(smithy/sdk/shapes:define-list scheduled-query-run-summary-list :member
                               scheduled-query-run-summary)

(smithy/sdk/shapes:define-enum scheduled-query-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type schema-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure select-column common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (type :target-type type :member-name
                                      "Type")
                                     (database-name :target-type resource-name
                                      :member-name "DatabaseName")
                                     (table-name :target-type resource-name
                                      :member-name "TableName")
                                     (aliased :target-type nullable-boolean
                                      :member-name "Aliased"))
                                    (:shape-name "SelectColumn"))

(smithy/sdk/shapes:define-list select-column-list :member select-column)

(smithy/sdk/shapes:define-type service-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure sns-configuration common-lisp:nil
                                    ((topic-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "TopicArn"))
                                    (:shape-name "SnsConfiguration"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value2048 smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure target-configuration common-lisp:nil
                                    ((timestream-configuration :target-type
                                      timestream-configuration :required
                                      common-lisp:t :member-name
                                      "TimestreamConfiguration"))
                                    (:shape-name "TargetConfiguration"))

(smithy/sdk/shapes:define-structure target-destination common-lisp:nil
                                    ((timestream-destination :target-type
                                      timestream-destination :member-name
                                      "TimestreamDestination"))
                                    (:shape-name "TargetDestination"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure time-series-data-point common-lisp:nil
                                    ((time :target-type timestamp :required
                                      common-lisp:t :member-name "Time")
                                     (value :target-type datum :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "TimeSeriesDataPoint"))

(smithy/sdk/shapes:define-list time-series-data-point-list :member
                               time-series-data-point)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure timestream-configuration common-lisp:nil
                                    ((database-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (table-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (time-column :target-type schema-name
                                      :required common-lisp:t :member-name
                                      "TimeColumn")
                                     (dimension-mappings :target-type
                                      dimension-mapping-list :required
                                      common-lisp:t :member-name
                                      "DimensionMappings")
                                     (multi-measure-mappings :target-type
                                      multi-measure-mappings :member-name
                                      "MultiMeasureMappings")
                                     (mixed-measure-mappings :target-type
                                      mixed-measure-mapping-list :member-name
                                      "MixedMeasureMappings")
                                     (measure-name-column :target-type
                                      schema-name :member-name
                                      "MeasureNameColumn"))
                                    (:shape-name "TimestreamConfiguration"))

(smithy/sdk/shapes:define-structure timestream-destination common-lisp:nil
                                    ((database-name :target-type resource-name
                                      :member-name "DatabaseName")
                                     (table-name :target-type resource-name
                                      :member-name "TableName"))
                                    (:shape-name "TimestreamDestination"))

(smithy/sdk/shapes:define-structure type common-lisp:nil
                                    ((scalar-type :target-type scalar-type
                                      :member-name "ScalarType")
                                     (array-column-info :target-type
                                      column-info :member-name
                                      "ArrayColumnInfo")
                                     (time-series-measure-value-column-info
                                      :target-type column-info :member-name
                                      "TimeSeriesMeasureValueColumnInfo")
                                     (row-column-info :target-type
                                      column-info-list :member-name
                                      "RowColumnInfo"))
                                    (:shape-name "Type"))

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

(smithy/sdk/shapes:define-input update-account-settings-request common-lisp:nil
                                ((max-query-tcu :target-type max-query-capacity
                                  :member-name "MaxQueryTCU")
                                 (query-pricing-model :target-type
                                  query-pricing-model :member-name
                                  "QueryPricingModel")
                                 (query-compute :target-type
                                  query-compute-request :member-name
                                  "QueryCompute"))
                                (:shape-name "UpdateAccountSettingsRequest"))

(smithy/sdk/shapes:define-output update-account-settings-response
                                 common-lisp:nil
                                 ((max-query-tcu :target-type
                                   max-query-capacity :member-name
                                   "MaxQueryTCU")
                                  (query-pricing-model :target-type
                                   query-pricing-model :member-name
                                   "QueryPricingModel")
                                  (query-compute :target-type
                                   query-compute-response :member-name
                                   "QueryCompute"))
                                 (:shape-name "UpdateAccountSettingsResponse"))

(smithy/sdk/shapes:define-input update-scheduled-query-request common-lisp:nil
                                ((scheduled-query-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ScheduledQueryArn")
                                 (state :target-type scheduled-query-state
                                  :required common-lisp:t :member-name
                                  "State"))
                                (:shape-name "UpdateScheduledQueryRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation cancel-query :shape-name "CancelQuery"
                                       :input cancel-query-request :output
                                       cancel-query-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-scheduled-query :shape-name
                                       "CreateScheduledQuery" :input
                                       create-scheduled-query-request :output
                                       create-scheduled-query-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-scheduled-query :shape-name
                                       "DeleteScheduledQuery" :input
                                       delete-scheduled-query-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-account-settings :shape-name
                                       "DescribeAccountSettings" :input
                                       describe-account-settings-request
                                       :output
                                       describe-account-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-endpoints :shape-name
                                       "DescribeEndpoints" :input
                                       describe-endpoints-request :output
                                       describe-endpoints-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-scheduled-query :shape-name
                                       "DescribeScheduledQuery" :input
                                       describe-scheduled-query-request :output
                                       describe-scheduled-query-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation execute-scheduled-query :shape-name
                                       "ExecuteScheduledQuery" :input
                                       execute-scheduled-query-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-scheduled-queries :shape-name
                                       "ListScheduledQueries" :input
                                       list-scheduled-queries-request :output
                                       list-scheduled-queries-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
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

(smithy/sdk/operation:define-operation prepare-query :shape-name "PrepareQuery"
                                       :input prepare-query-request :output
                                       prepare-query-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation query :shape-name "Query" :input
                                       query-request :output query-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        query-execution-exception
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
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-account-settings :shape-name
                                       "UpdateAccountSettings" :input
                                       update-account-settings-request :output
                                       update-account-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-scheduled-query :shape-name
                                       "UpdateScheduledQuery" :input
                                       update-scheduled-query-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-endpoint-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
