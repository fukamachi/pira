(uiop/package:define-package #:pira/athena (:use)
                             (:export #:acl-configuration #:age
                              #:allocated-dpus-integer #:amazon-athena
                              #:amazon-resource-name #:application-dpusizes
                              #:application-dpusizes-list #:athena-error
                              #:auth-token #:authentication-type
                              #:aws-account-id #:batch-get-named-query
                              #:batch-get-prepared-statement
                              #:batch-get-query-execution #:boolean
                              #:boxed-boolean #:bytes-scanned-cutoff-value
                              #:calculation-configuration
                              #:calculation-execution-id
                              #:calculation-execution-state
                              #:calculation-result #:calculation-result-type
                              #:calculation-statistics #:calculation-status
                              #:calculation-summary #:calculations-list
                              #:cancel-capacity-reservation
                              #:capacity-allocation
                              #:capacity-allocation-status
                              #:capacity-assignment
                              #:capacity-assignment-configuration
                              #:capacity-assignments-list
                              #:capacity-reservation
                              #:capacity-reservation-name
                              #:capacity-reservation-status
                              #:capacity-reservations-list
                              #:catalog-name-string #:client-request-token
                              #:code-block #:column #:column-info
                              #:column-info-list #:column-list
                              #:column-nullable #:comment-string
                              #:connection-type #:coordinator-dpu-size
                              #:create-capacity-reservation
                              #:create-data-catalog #:create-named-query
                              #:create-notebook #:create-prepared-statement
                              #:create-presigned-notebook-url
                              #:create-work-group
                              #:customer-content-encryption-configuration
                              #:data-catalog #:data-catalog-status
                              #:data-catalog-summary
                              #:data-catalog-summary-list #:data-catalog-type
                              #:database #:database-list #:database-string
                              #:date #:datum #:default-executor-dpu-size
                              #:delete-capacity-reservation
                              #:delete-data-catalog #:delete-named-query
                              #:delete-notebook #:delete-prepared-statement
                              #:delete-work-group #:description-string
                              #:encryption-configuration #:encryption-option
                              #:engine-configuration #:engine-version
                              #:engine-versions-list #:error-category
                              #:error-code #:error-message #:error-type
                              #:execution-parameter #:execution-parameters
                              #:executor-id #:executor-state #:executor-type
                              #:executors-summary #:executors-summary-list
                              #:export-notebook #:expression-string
                              #:filter-definition #:get-calculation-execution
                              #:get-calculation-execution-code
                              #:get-calculation-execution-status
                              #:get-capacity-assignment-configuration
                              #:get-capacity-reservation #:get-data-catalog
                              #:get-database #:get-named-query
                              #:get-notebook-metadata #:get-prepared-statement
                              #:get-query-execution #:get-query-results
                              #:get-query-runtime-statistics #:get-session
                              #:get-session-status #:get-table-metadata
                              #:get-work-group #:idempotency-token
                              #:identity-center-application-arn
                              #:identity-center-configuration
                              #:identity-center-instance-arn #:import-notebook
                              #:integer #:key-string #:kms-key
                              #:list-application-dpusizes
                              #:list-calculation-executions
                              #:list-capacity-reservations #:list-data-catalogs
                              #:list-databases #:list-engine-versions
                              #:list-executors #:list-named-queries
                              #:list-notebook-metadata #:list-notebook-sessions
                              #:list-prepared-statements
                              #:list-query-executions #:list-sessions
                              #:list-table-metadata #:list-tags-for-resource
                              #:list-work-groups #:long
                              #:managed-query-results-configuration
                              #:managed-query-results-configuration-updates
                              #:managed-query-results-encryption-configuration
                              #:max-application-dpusizes-count
                              #:max-calculations-count
                              #:max-capacity-reservations-count
                              #:max-concurrent-dpus #:max-data-catalogs-count
                              #:max-databases-count #:max-engine-versions-count
                              #:max-list-executors-count
                              #:max-named-queries-count #:max-notebooks-count
                              #:max-prepared-statements-count
                              #:max-query-executions-count #:max-query-results
                              #:max-sessions-count #:max-table-metadata-count
                              #:max-tags-count #:max-work-groups-count
                              #:name-string #:named-query
                              #:named-query-description-string #:named-query-id
                              #:named-query-id-list #:named-query-list
                              #:notebook-id #:notebook-metadata
                              #:notebook-metadata-array #:notebook-name
                              #:notebook-session-summary
                              #:notebook-sessions-list #:notebook-type
                              #:parameters-map #:parameters-map-value #:payload
                              #:prepared-statement
                              #:prepared-statement-details-list
                              #:prepared-statement-name-list
                              #:prepared-statement-summary
                              #:prepared-statements-list
                              #:put-capacity-assignment-configuration
                              #:query-execution #:query-execution-context
                              #:query-execution-id #:query-execution-id-list
                              #:query-execution-list #:query-execution-state
                              #:query-execution-statistics
                              #:query-execution-status #:query-result-type
                              #:query-results-s3access-grants-configuration
                              #:query-runtime-statistics
                              #:query-runtime-statistics-rows
                              #:query-runtime-statistics-timeline #:query-stage
                              #:query-stage-plan-node #:query-stage-plan-nodes
                              #:query-stages #:query-string
                              #:result-configuration
                              #:result-configuration-updates
                              #:result-output-location
                              #:result-reuse-by-age-configuration
                              #:result-reuse-configuration
                              #:result-reuse-information #:result-set
                              #:result-set-metadata #:role-arn #:row #:row-list
                              #:s3acl-option #:s3uri #:session-configuration
                              #:session-id #:session-idle-timeout-in-minutes
                              #:session-manager-token #:session-state
                              #:session-statistics #:session-status
                              #:session-summary #:sessions-list
                              #:start-calculation-execution
                              #:start-query-execution #:start-session
                              #:statement-name #:statement-type
                              #:stop-calculation-execution
                              #:stop-query-execution #:string #:string-list
                              #:supported-dpusize-list #:table-metadata
                              #:table-metadata-list #:table-type-string #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:target-dpus-integer
                              #:terminate-session #:throttle-reason #:timestamp
                              #:token #:type-string
                              #:unprocessed-named-query-id
                              #:unprocessed-named-query-id-list
                              #:unprocessed-prepared-statement-name
                              #:unprocessed-prepared-statement-name-list
                              #:unprocessed-query-execution-id
                              #:unprocessed-query-execution-id-list
                              #:untag-resource #:update-capacity-reservation
                              #:update-data-catalog #:update-named-query
                              #:update-notebook #:update-notebook-metadata
                              #:update-prepared-statement #:update-work-group
                              #:work-group #:work-group-configuration
                              #:work-group-configuration-updates
                              #:work-group-description-string #:work-group-name
                              #:work-group-names-list #:work-group-state
                              #:work-group-summary #:work-groups-list
                              #:datum-list #:datum-string))
(common-lisp:in-package #:pira/athena)

(smithy/sdk/service:define-service amazon-athena :shape-name "AmazonAthena"
                                   :version "2017-05-18" :title "Amazon Athena"
                                   :operations
                                   '(batch-get-named-query
                                     batch-get-prepared-statement
                                     batch-get-query-execution
                                     cancel-capacity-reservation
                                     create-capacity-reservation
                                     create-data-catalog create-named-query
                                     create-notebook create-prepared-statement
                                     create-presigned-notebook-url
                                     create-work-group
                                     delete-capacity-reservation
                                     delete-data-catalog delete-named-query
                                     delete-notebook delete-prepared-statement
                                     delete-work-group export-notebook
                                     get-calculation-execution
                                     get-calculation-execution-code
                                     get-calculation-execution-status
                                     get-capacity-assignment-configuration
                                     get-capacity-reservation get-database
                                     get-data-catalog get-named-query
                                     get-notebook-metadata
                                     get-prepared-statement get-query-execution
                                     get-query-results
                                     get-query-runtime-statistics get-session
                                     get-session-status get-table-metadata
                                     get-work-group import-notebook
                                     list-application-dpusizes
                                     list-calculation-executions
                                     list-capacity-reservations list-databases
                                     list-data-catalogs list-engine-versions
                                     list-executors list-named-queries
                                     list-notebook-metadata
                                     list-notebook-sessions
                                     list-prepared-statements
                                     list-query-executions list-sessions
                                     list-table-metadata list-tags-for-resource
                                     list-work-groups
                                     put-capacity-assignment-configuration
                                     start-calculation-execution
                                     start-query-execution start-session
                                     stop-calculation-execution
                                     stop-query-execution tag-resource
                                     terminate-session untag-resource
                                     update-capacity-reservation
                                     update-data-catalog update-named-query
                                     update-notebook update-notebook-metadata
                                     update-prepared-statement
                                     update-work-group)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Athena")
                                      ("arnNamespace" . "athena")
                                      ("cloudFormationName" . "Athena")
                                      ("cloudTrailEventSource"
                                       . "athena.amazonaws.com")
                                      ("endpointPrefix" . "athena"))
                                     ("aws.auth#sigv4" ("name" . "athena"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure acl-configuration common-lisp:nil
                                    ((s3acl-option :target-type s3acl-option
                                      :required common-lisp:t :member-name
                                      "S3AclOption"))
                                    (:shape-name "AclConfiguration"))

(smithy/sdk/shapes:define-type age smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type allocated-dpus-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-dpusizes common-lisp:nil
                                    ((application-runtime-id :target-type
                                      name-string :member-name
                                      "ApplicationRuntimeId")
                                     (supported-dpusizes :target-type
                                      supported-dpusize-list :member-name
                                      "SupportedDPUSizes"))
                                    (:shape-name "ApplicationDPUSizes"))

(smithy/sdk/shapes:define-list application-dpusizes-list :member
                               application-dpusizes)

(smithy/sdk/shapes:define-structure athena-error common-lisp:nil
                                    ((error-category :target-type
                                      error-category :member-name
                                      "ErrorCategory")
                                     (error-type :target-type error-type
                                      :member-name "ErrorType")
                                     (retryable :target-type boolean
                                      :member-name "Retryable")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "AthenaError"))

(smithy/sdk/shapes:define-type auth-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum authentication-type
    common-lisp:nil
  (:directory-identity "DIRECTORY_IDENTITY"))

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-get-named-query-input common-lisp:nil
                                ((named-query-ids :target-type
                                  named-query-id-list :required common-lisp:t
                                  :member-name "NamedQueryIds"))
                                (:shape-name "BatchGetNamedQueryInput"))

(smithy/sdk/shapes:define-output batch-get-named-query-output common-lisp:nil
                                 ((named-queries :target-type named-query-list
                                   :member-name "NamedQueries")
                                  (unprocessed-named-query-ids :target-type
                                   unprocessed-named-query-id-list :member-name
                                   "UnprocessedNamedQueryIds"))
                                 (:shape-name "BatchGetNamedQueryOutput"))

(smithy/sdk/shapes:define-input batch-get-prepared-statement-input
                                common-lisp:nil
                                ((prepared-statement-names :target-type
                                  prepared-statement-name-list :required
                                  common-lisp:t :member-name
                                  "PreparedStatementNames")
                                 (work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup"))
                                (:shape-name "BatchGetPreparedStatementInput"))

(smithy/sdk/shapes:define-output batch-get-prepared-statement-output
                                 common-lisp:nil
                                 ((prepared-statements :target-type
                                   prepared-statement-details-list :member-name
                                   "PreparedStatements")
                                  (unprocessed-prepared-statement-names
                                   :target-type
                                   unprocessed-prepared-statement-name-list
                                   :member-name
                                   "UnprocessedPreparedStatementNames"))
                                 (:shape-name
                                  "BatchGetPreparedStatementOutput"))

(smithy/sdk/shapes:define-input batch-get-query-execution-input common-lisp:nil
                                ((query-execution-ids :target-type
                                  query-execution-id-list :required
                                  common-lisp:t :member-name
                                  "QueryExecutionIds"))
                                (:shape-name "BatchGetQueryExecutionInput"))

(smithy/sdk/shapes:define-output batch-get-query-execution-output
                                 common-lisp:nil
                                 ((query-executions :target-type
                                   query-execution-list :member-name
                                   "QueryExecutions")
                                  (unprocessed-query-execution-ids :target-type
                                   unprocessed-query-execution-id-list
                                   :member-name
                                   "UnprocessedQueryExecutionIds"))
                                 (:shape-name "BatchGetQueryExecutionOutput"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bytes-scanned-cutoff-value
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure calculation-configuration common-lisp:nil
                                    ((code-block :target-type code-block
                                      :member-name "CodeBlock"))
                                    (:shape-name "CalculationConfiguration"))

(smithy/sdk/shapes:define-type calculation-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum calculation-execution-state
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:queued "QUEUED")
  (:running "RUNNING")
  (:canceling "CANCELING")
  (:canceled "CANCELED")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure calculation-result common-lisp:nil
                                    ((std-out-s3uri :target-type s3uri
                                      :member-name "StdOutS3Uri")
                                     (std-error-s3uri :target-type s3uri
                                      :member-name "StdErrorS3Uri")
                                     (result-s3uri :target-type s3uri
                                      :member-name "ResultS3Uri")
                                     (result-type :target-type
                                      calculation-result-type :member-name
                                      "ResultType"))
                                    (:shape-name "CalculationResult"))

(smithy/sdk/shapes:define-type calculation-result-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure calculation-statistics common-lisp:nil
                                    ((dpu-execution-in-millis :target-type long
                                      :member-name "DpuExecutionInMillis")
                                     (progress :target-type description-string
                                      :member-name "Progress"))
                                    (:shape-name "CalculationStatistics"))

(smithy/sdk/shapes:define-structure calculation-status common-lisp:nil
                                    ((submission-date-time :target-type date
                                      :member-name "SubmissionDateTime")
                                     (completion-date-time :target-type date
                                      :member-name "CompletionDateTime")
                                     (state :target-type
                                      calculation-execution-state :member-name
                                      "State")
                                     (state-change-reason :target-type
                                      description-string :member-name
                                      "StateChangeReason"))
                                    (:shape-name "CalculationStatus"))

(smithy/sdk/shapes:define-structure calculation-summary common-lisp:nil
                                    ((calculation-execution-id :target-type
                                      calculation-execution-id :member-name
                                      "CalculationExecutionId")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (status :target-type calculation-status
                                      :member-name "Status"))
                                    (:shape-name "CalculationSummary"))

(smithy/sdk/shapes:define-list calculations-list :member calculation-summary)

(smithy/sdk/shapes:define-input cancel-capacity-reservation-input
                                common-lisp:nil
                                ((name :target-type capacity-reservation-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "CancelCapacityReservationInput"))

(smithy/sdk/shapes:define-output cancel-capacity-reservation-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelCapacityReservationOutput"))

(smithy/sdk/shapes:define-structure capacity-allocation common-lisp:nil
                                    ((status :target-type
                                      capacity-allocation-status :required
                                      common-lisp:t :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (request-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "RequestTime")
                                     (request-completion-time :target-type
                                      timestamp :member-name
                                      "RequestCompletionTime"))
                                    (:shape-name "CapacityAllocation"))

(smithy/sdk/shapes:define-enum capacity-allocation-status
    common-lisp:nil
  (:pending "PENDING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure capacity-assignment common-lisp:nil
                                    ((work-group-names :target-type
                                      work-group-names-list :member-name
                                      "WorkGroupNames"))
                                    (:shape-name "CapacityAssignment"))

(smithy/sdk/shapes:define-structure capacity-assignment-configuration
                                    common-lisp:nil
                                    ((capacity-reservation-name :target-type
                                      capacity-reservation-name :member-name
                                      "CapacityReservationName")
                                     (capacity-assignments :target-type
                                      capacity-assignments-list :member-name
                                      "CapacityAssignments"))
                                    (:shape-name
                                     "CapacityAssignmentConfiguration"))

(smithy/sdk/shapes:define-list capacity-assignments-list :member
                               capacity-assignment)

(smithy/sdk/shapes:define-structure capacity-reservation common-lisp:nil
                                    ((name :target-type
                                      capacity-reservation-name :required
                                      common-lisp:t :member-name "Name")
                                     (status :target-type
                                      capacity-reservation-status :required
                                      common-lisp:t :member-name "Status")
                                     (target-dpus :target-type
                                      target-dpus-integer :required
                                      common-lisp:t :member-name "TargetDpus")
                                     (allocated-dpus :target-type
                                      allocated-dpus-integer :required
                                      common-lisp:t :member-name
                                      "AllocatedDpus")
                                     (last-allocation :target-type
                                      capacity-allocation :member-name
                                      "LastAllocation")
                                     (last-successful-allocation-time
                                      :target-type timestamp :member-name
                                      "LastSuccessfulAllocationTime")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime"))
                                    (:shape-name "CapacityReservation"))

(smithy/sdk/shapes:define-type capacity-reservation-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum capacity-reservation-status
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:cancelling "CANCELLING")
  (:cancelled "CANCELLED")
  (:failed "FAILED")
  (:update-pending "UPDATE_PENDING"))

(smithy/sdk/shapes:define-list capacity-reservations-list :member
                               capacity-reservation)

(smithy/sdk/shapes:define-type catalog-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-block smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure column common-lisp:nil
                                    ((name :target-type name-string :required
                                      common-lisp:t :member-name "Name")
                                     (type :target-type type-string
                                      :member-name "Type")
                                     (comment :target-type comment-string
                                      :member-name "Comment"))
                                    (:shape-name "Column"))

(smithy/sdk/shapes:define-structure column-info common-lisp:nil
                                    ((catalog-name :target-type string
                                      :member-name "CatalogName")
                                     (schema-name :target-type string
                                      :member-name "SchemaName")
                                     (table-name :target-type string
                                      :member-name "TableName")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (label :target-type string :member-name
                                      "Label")
                                     (type :target-type string :required
                                      common-lisp:t :member-name "Type")
                                     (precision :target-type integer
                                      :member-name "Precision")
                                     (scale :target-type integer :member-name
                                      "Scale")
                                     (nullable :target-type column-nullable
                                      :member-name "Nullable")
                                     (case-sensitive :target-type boolean
                                      :member-name "CaseSensitive"))
                                    (:shape-name "ColumnInfo"))

(smithy/sdk/shapes:define-list column-info-list :member column-info)

(smithy/sdk/shapes:define-list column-list :member column)

(smithy/sdk/shapes:define-enum column-nullable
    common-lisp:nil
  (:not-null "NOT_NULL")
  (:nullable "NULLABLE")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-type comment-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum connection-type
    common-lisp:nil
  (:dynamodb "DYNAMODB")
  (:mysql "MYSQL")
  (:postgresql "POSTGRESQL")
  (:redshift "REDSHIFT")
  (:oracle "ORACLE")
  (:synapse "SYNAPSE")
  (:sqlserver "SQLSERVER")
  (:db2 "DB2")
  (:opensearch "OPENSEARCH")
  (:bigquery "BIGQUERY")
  (:googlecloudstorage "GOOGLECLOUDSTORAGE")
  (:hbase "HBASE")
  (:documentdb "DOCUMENTDB")
  (:cmdb "CMDB")
  (:tpcds "TPCDS")
  (:timestream "TIMESTREAM")
  (:saphana "SAPHANA")
  (:snowflake "SNOWFLAKE")
  (:datalakegen2 "DATALAKEGEN2")
  (:db2as400 "DB2AS400"))

(smithy/sdk/shapes:define-type coordinator-dpu-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-capacity-reservation-input
                                common-lisp:nil
                                ((target-dpus :target-type target-dpus-integer
                                  :required common-lisp:t :member-name
                                  "TargetDpus")
                                 (name :target-type capacity-reservation-name
                                  :required common-lisp:t :member-name "Name")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateCapacityReservationInput"))

(smithy/sdk/shapes:define-output create-capacity-reservation-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateCapacityReservationOutput"))

(smithy/sdk/shapes:define-input create-data-catalog-input common-lisp:nil
                                ((name :target-type catalog-name-string
                                  :required common-lisp:t :member-name "Name")
                                 (type :target-type data-catalog-type :required
                                  common-lisp:t :member-name "Type")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (parameters :target-type parameters-map
                                  :member-name "Parameters")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDataCatalogInput"))

(smithy/sdk/shapes:define-output create-data-catalog-output common-lisp:nil
                                 ((data-catalog :target-type data-catalog
                                   :member-name "DataCatalog"))
                                 (:shape-name "CreateDataCatalogOutput"))

(smithy/sdk/shapes:define-input create-named-query-input common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (database :target-type database-string
                                  :required common-lisp:t :member-name
                                  "Database")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "QueryString")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "ClientRequestToken")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup"))
                                (:shape-name "CreateNamedQueryInput"))

(smithy/sdk/shapes:define-output create-named-query-output common-lisp:nil
                                 ((named-query-id :target-type named-query-id
                                   :member-name "NamedQueryId"))
                                 (:shape-name "CreateNamedQueryOutput"))

(smithy/sdk/shapes:define-input create-notebook-input common-lisp:nil
                                ((work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup")
                                 (name :target-type notebook-name :required
                                  common-lisp:t :member-name "Name")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "CreateNotebookInput"))

(smithy/sdk/shapes:define-output create-notebook-output common-lisp:nil
                                 ((notebook-id :target-type notebook-id
                                   :member-name "NotebookId"))
                                 (:shape-name "CreateNotebookOutput"))

(smithy/sdk/shapes:define-input create-prepared-statement-input common-lisp:nil
                                ((statement-name :target-type statement-name
                                  :required common-lisp:t :member-name
                                  "StatementName")
                                 (work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup")
                                 (query-statement :target-type query-string
                                  :required common-lisp:t :member-name
                                  "QueryStatement")
                                 (description :target-type description-string
                                  :member-name "Description"))
                                (:shape-name "CreatePreparedStatementInput"))

(smithy/sdk/shapes:define-output create-prepared-statement-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreatePreparedStatementOutput"))

(smithy/sdk/shapes:define-input create-presigned-notebook-url-request
                                common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId"))
                                (:shape-name
                                 "CreatePresignedNotebookUrlRequest"))

(smithy/sdk/shapes:define-output create-presigned-notebook-url-response
                                 common-lisp:nil
                                 ((notebook-url :target-type string :required
                                   common-lisp:t :member-name "NotebookUrl")
                                  (auth-token :target-type auth-token :required
                                   common-lisp:t :member-name "AuthToken")
                                  (auth-token-expiration-time :target-type long
                                   :required common-lisp:t :member-name
                                   "AuthTokenExpirationTime"))
                                 (:shape-name
                                  "CreatePresignedNotebookUrlResponse"))

(smithy/sdk/shapes:define-input create-work-group-input common-lisp:nil
                                ((name :target-type work-group-name :required
                                  common-lisp:t :member-name "Name")
                                 (configuration :target-type
                                  work-group-configuration :member-name
                                  "Configuration")
                                 (description :target-type
                                  work-group-description-string :member-name
                                  "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateWorkGroupInput"))

(smithy/sdk/shapes:define-output create-work-group-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateWorkGroupOutput"))

(smithy/sdk/shapes:define-structure customer-content-encryption-configuration
                                    common-lisp:nil
                                    ((kms-key :target-type kms-key :required
                                      common-lisp:t :member-name "KmsKey"))
                                    (:shape-name
                                     "CustomerContentEncryptionConfiguration"))

(smithy/sdk/shapes:define-structure data-catalog common-lisp:nil
                                    ((name :target-type catalog-name-string
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (type :target-type data-catalog-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (parameters :target-type parameters-map
                                      :member-name "Parameters")
                                     (status :target-type data-catalog-status
                                      :member-name "Status")
                                     (connection-type :target-type
                                      connection-type :member-name
                                      "ConnectionType")
                                     (error :target-type error-message
                                      :member-name "Error"))
                                    (:shape-name "DataCatalog"))

(smithy/sdk/shapes:define-enum data-catalog-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-complete "CREATE_COMPLETE")
  (:create-failed "CREATE_FAILED")
  (:create-failed-cleanup-in-progress "CREATE_FAILED_CLEANUP_IN_PROGRESS")
  (:create-failed-cleanup-complete "CREATE_FAILED_CLEANUP_COMPLETE")
  (:create-failed-cleanup-failed "CREATE_FAILED_CLEANUP_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-complete "DELETE_COMPLETE")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-structure data-catalog-summary common-lisp:nil
                                    ((catalog-name :target-type
                                      catalog-name-string :member-name
                                      "CatalogName")
                                     (type :target-type data-catalog-type
                                      :member-name "Type")
                                     (status :target-type data-catalog-status
                                      :member-name "Status")
                                     (connection-type :target-type
                                      connection-type :member-name
                                      "ConnectionType")
                                     (error :target-type error-message
                                      :member-name "Error"))
                                    (:shape-name "DataCatalogSummary"))

(smithy/sdk/shapes:define-list data-catalog-summary-list :member
                               data-catalog-summary)

(smithy/sdk/shapes:define-enum data-catalog-type
    common-lisp:nil
  (:lambda "LAMBDA")
  (:glue "GLUE")
  (:hive "HIVE")
  (:federated "FEDERATED"))

(smithy/sdk/shapes:define-structure database common-lisp:nil
                                    ((name :target-type name-string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (parameters :target-type parameters-map
                                      :member-name "Parameters"))
                                    (:shape-name "Database"))

(smithy/sdk/shapes:define-list database-list :member database)

(smithy/sdk/shapes:define-type database-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure datum common-lisp:nil
                                    ((var-char-value :target-type datum-string
                                      :member-name "VarCharValue"))
                                    (:shape-name "Datum"))

(smithy/sdk/shapes:define-type default-executor-dpu-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input delete-capacity-reservation-input
                                common-lisp:nil
                                ((name :target-type capacity-reservation-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteCapacityReservationInput"))

(smithy/sdk/shapes:define-output delete-capacity-reservation-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCapacityReservationOutput"))

(smithy/sdk/shapes:define-input delete-data-catalog-input common-lisp:nil
                                ((name :target-type catalog-name-string
                                  :required common-lisp:t :member-name "Name")
                                 (delete-catalog-only :target-type boolean
                                  :member-name "DeleteCatalogOnly"))
                                (:shape-name "DeleteDataCatalogInput"))

(smithy/sdk/shapes:define-output delete-data-catalog-output common-lisp:nil
                                 ((data-catalog :target-type data-catalog
                                   :member-name "DataCatalog"))
                                 (:shape-name "DeleteDataCatalogOutput"))

(smithy/sdk/shapes:define-input delete-named-query-input common-lisp:nil
                                ((named-query-id :target-type named-query-id
                                  :required common-lisp:t :member-name
                                  "NamedQueryId"))
                                (:shape-name "DeleteNamedQueryInput"))

(smithy/sdk/shapes:define-output delete-named-query-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteNamedQueryOutput"))

(smithy/sdk/shapes:define-input delete-notebook-input common-lisp:nil
                                ((notebook-id :target-type notebook-id
                                  :required common-lisp:t :member-name
                                  "NotebookId"))
                                (:shape-name "DeleteNotebookInput"))

(smithy/sdk/shapes:define-output delete-notebook-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteNotebookOutput"))

(smithy/sdk/shapes:define-input delete-prepared-statement-input common-lisp:nil
                                ((statement-name :target-type statement-name
                                  :required common-lisp:t :member-name
                                  "StatementName")
                                 (work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup"))
                                (:shape-name "DeletePreparedStatementInput"))

(smithy/sdk/shapes:define-output delete-prepared-statement-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeletePreparedStatementOutput"))

(smithy/sdk/shapes:define-input delete-work-group-input common-lisp:nil
                                ((work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup")
                                 (recursive-delete-option :target-type
                                  boxed-boolean :member-name
                                  "RecursiveDeleteOption"))
                                (:shape-name "DeleteWorkGroupInput"))

(smithy/sdk/shapes:define-output delete-work-group-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWorkGroupOutput"))

(smithy/sdk/shapes:define-type description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((encryption-option :target-type
                                      encryption-option :required common-lisp:t
                                      :member-name "EncryptionOption")
                                     (kms-key :target-type string :member-name
                                      "KmsKey"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-enum encryption-option
    common-lisp:nil
  (:sse-s3 "SSE_S3")
  (:sse-kms "SSE_KMS")
  (:cse-kms "CSE_KMS"))

(smithy/sdk/shapes:define-structure engine-configuration common-lisp:nil
                                    ((coordinator-dpu-size :target-type
                                      coordinator-dpu-size :member-name
                                      "CoordinatorDpuSize")
                                     (max-concurrent-dpus :target-type
                                      max-concurrent-dpus :required
                                      common-lisp:t :member-name
                                      "MaxConcurrentDpus")
                                     (default-executor-dpu-size :target-type
                                      default-executor-dpu-size :member-name
                                      "DefaultExecutorDpuSize")
                                     (additional-configs :target-type
                                      parameters-map :member-name
                                      "AdditionalConfigs")
                                     (spark-properties :target-type
                                      parameters-map :member-name
                                      "SparkProperties"))
                                    (:shape-name "EngineConfiguration"))

(smithy/sdk/shapes:define-structure engine-version common-lisp:nil
                                    ((selected-engine-version :target-type
                                      name-string :member-name
                                      "SelectedEngineVersion")
                                     (effective-engine-version :target-type
                                      name-string :member-name
                                      "EffectiveEngineVersion"))
                                    (:shape-name "EngineVersion"))

(smithy/sdk/shapes:define-list engine-versions-list :member engine-version)

(smithy/sdk/shapes:define-type error-category smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type execution-parameter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list execution-parameters :member execution-parameter)

(smithy/sdk/shapes:define-type executor-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum executor-state
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:registered "REGISTERED")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum executor-type
    common-lisp:nil
  (:coordinator "COORDINATOR")
  (:gateway "GATEWAY")
  (:worker "WORKER"))

(smithy/sdk/shapes:define-structure executors-summary common-lisp:nil
                                    ((executor-id :target-type executor-id
                                      :required common-lisp:t :member-name
                                      "ExecutorId")
                                     (executor-type :target-type executor-type
                                      :member-name "ExecutorType")
                                     (start-date-time :target-type long
                                      :member-name "StartDateTime")
                                     (termination-date-time :target-type long
                                      :member-name "TerminationDateTime")
                                     (executor-state :target-type
                                      executor-state :member-name
                                      "ExecutorState")
                                     (executor-size :target-type long
                                      :member-name "ExecutorSize"))
                                    (:shape-name "ExecutorsSummary"))

(smithy/sdk/shapes:define-list executors-summary-list :member executors-summary)

(smithy/sdk/shapes:define-input export-notebook-input common-lisp:nil
                                ((notebook-id :target-type notebook-id
                                  :required common-lisp:t :member-name
                                  "NotebookId"))
                                (:shape-name "ExportNotebookInput"))

(smithy/sdk/shapes:define-output export-notebook-output common-lisp:nil
                                 ((notebook-metadata :target-type
                                   notebook-metadata :member-name
                                   "NotebookMetadata")
                                  (payload :target-type payload :member-name
                                   "Payload"))
                                 (:shape-name "ExportNotebookOutput"))

(smithy/sdk/shapes:define-type expression-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter-definition common-lisp:nil
                                    ((name :target-type notebook-name
                                      :member-name "Name"))
                                    (:shape-name "FilterDefinition"))

(smithy/sdk/shapes:define-input get-calculation-execution-code-request
                                common-lisp:nil
                                ((calculation-execution-id :target-type
                                  calculation-execution-id :required
                                  common-lisp:t :member-name
                                  "CalculationExecutionId"))
                                (:shape-name
                                 "GetCalculationExecutionCodeRequest"))

(smithy/sdk/shapes:define-output get-calculation-execution-code-response
                                 common-lisp:nil
                                 ((code-block :target-type code-block
                                   :member-name "CodeBlock"))
                                 (:shape-name
                                  "GetCalculationExecutionCodeResponse"))

(smithy/sdk/shapes:define-input get-calculation-execution-request
                                common-lisp:nil
                                ((calculation-execution-id :target-type
                                  calculation-execution-id :required
                                  common-lisp:t :member-name
                                  "CalculationExecutionId"))
                                (:shape-name "GetCalculationExecutionRequest"))

(smithy/sdk/shapes:define-output get-calculation-execution-response
                                 common-lisp:nil
                                 ((calculation-execution-id :target-type
                                   calculation-execution-id :member-name
                                   "CalculationExecutionId")
                                  (session-id :target-type session-id
                                   :member-name "SessionId")
                                  (description :target-type description-string
                                   :member-name "Description")
                                  (working-directory :target-type s3uri
                                   :member-name "WorkingDirectory")
                                  (status :target-type calculation-status
                                   :member-name "Status")
                                  (statistics :target-type
                                   calculation-statistics :member-name
                                   "Statistics")
                                  (result :target-type calculation-result
                                   :member-name "Result"))
                                 (:shape-name
                                  "GetCalculationExecutionResponse"))

(smithy/sdk/shapes:define-input get-calculation-execution-status-request
                                common-lisp:nil
                                ((calculation-execution-id :target-type
                                  calculation-execution-id :required
                                  common-lisp:t :member-name
                                  "CalculationExecutionId"))
                                (:shape-name
                                 "GetCalculationExecutionStatusRequest"))

(smithy/sdk/shapes:define-output get-calculation-execution-status-response
                                 common-lisp:nil
                                 ((status :target-type calculation-status
                                   :member-name "Status")
                                  (statistics :target-type
                                   calculation-statistics :member-name
                                   "Statistics"))
                                 (:shape-name
                                  "GetCalculationExecutionStatusResponse"))

(smithy/sdk/shapes:define-input get-capacity-assignment-configuration-input
                                common-lisp:nil
                                ((capacity-reservation-name :target-type
                                  capacity-reservation-name :required
                                  common-lisp:t :member-name
                                  "CapacityReservationName"))
                                (:shape-name
                                 "GetCapacityAssignmentConfigurationInput"))

(smithy/sdk/shapes:define-output get-capacity-assignment-configuration-output
                                 common-lisp:nil
                                 ((capacity-assignment-configuration
                                   :target-type
                                   capacity-assignment-configuration :required
                                   common-lisp:t :member-name
                                   "CapacityAssignmentConfiguration"))
                                 (:shape-name
                                  "GetCapacityAssignmentConfigurationOutput"))

(smithy/sdk/shapes:define-input get-capacity-reservation-input common-lisp:nil
                                ((name :target-type capacity-reservation-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "GetCapacityReservationInput"))

(smithy/sdk/shapes:define-output get-capacity-reservation-output
                                 common-lisp:nil
                                 ((capacity-reservation :target-type
                                   capacity-reservation :required common-lisp:t
                                   :member-name "CapacityReservation"))
                                 (:shape-name "GetCapacityReservationOutput"))

(smithy/sdk/shapes:define-input get-data-catalog-input common-lisp:nil
                                ((name :target-type catalog-name-string
                                  :required common-lisp:t :member-name "Name")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup"))
                                (:shape-name "GetDataCatalogInput"))

(smithy/sdk/shapes:define-output get-data-catalog-output common-lisp:nil
                                 ((data-catalog :target-type data-catalog
                                   :member-name "DataCatalog"))
                                 (:shape-name "GetDataCatalogOutput"))

(smithy/sdk/shapes:define-input get-database-input common-lisp:nil
                                ((catalog-name :target-type catalog-name-string
                                  :required common-lisp:t :member-name
                                  "CatalogName")
                                 (database-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup"))
                                (:shape-name "GetDatabaseInput"))

(smithy/sdk/shapes:define-output get-database-output common-lisp:nil
                                 ((database :target-type database :member-name
                                   "Database"))
                                 (:shape-name "GetDatabaseOutput"))

(smithy/sdk/shapes:define-input get-named-query-input common-lisp:nil
                                ((named-query-id :target-type named-query-id
                                  :required common-lisp:t :member-name
                                  "NamedQueryId"))
                                (:shape-name "GetNamedQueryInput"))

(smithy/sdk/shapes:define-output get-named-query-output common-lisp:nil
                                 ((named-query :target-type named-query
                                   :member-name "NamedQuery"))
                                 (:shape-name "GetNamedQueryOutput"))

(smithy/sdk/shapes:define-input get-notebook-metadata-input common-lisp:nil
                                ((notebook-id :target-type notebook-id
                                  :required common-lisp:t :member-name
                                  "NotebookId"))
                                (:shape-name "GetNotebookMetadataInput"))

(smithy/sdk/shapes:define-output get-notebook-metadata-output common-lisp:nil
                                 ((notebook-metadata :target-type
                                   notebook-metadata :member-name
                                   "NotebookMetadata"))
                                 (:shape-name "GetNotebookMetadataOutput"))

(smithy/sdk/shapes:define-input get-prepared-statement-input common-lisp:nil
                                ((statement-name :target-type statement-name
                                  :required common-lisp:t :member-name
                                  "StatementName")
                                 (work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup"))
                                (:shape-name "GetPreparedStatementInput"))

(smithy/sdk/shapes:define-output get-prepared-statement-output common-lisp:nil
                                 ((prepared-statement :target-type
                                   prepared-statement :member-name
                                   "PreparedStatement"))
                                 (:shape-name "GetPreparedStatementOutput"))

(smithy/sdk/shapes:define-input get-query-execution-input common-lisp:nil
                                ((query-execution-id :target-type
                                  query-execution-id :required common-lisp:t
                                  :member-name "QueryExecutionId"))
                                (:shape-name "GetQueryExecutionInput"))

(smithy/sdk/shapes:define-output get-query-execution-output common-lisp:nil
                                 ((query-execution :target-type query-execution
                                   :member-name "QueryExecution"))
                                 (:shape-name "GetQueryExecutionOutput"))

(smithy/sdk/shapes:define-input get-query-results-input common-lisp:nil
                                ((query-execution-id :target-type
                                  query-execution-id :required common-lisp:t
                                  :member-name "QueryExecutionId")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-query-results
                                  :member-name "MaxResults")
                                 (query-result-type :target-type
                                  query-result-type :member-name
                                  "QueryResultType"))
                                (:shape-name "GetQueryResultsInput"))

(smithy/sdk/shapes:define-output get-query-results-output common-lisp:nil
                                 ((update-count :target-type long :member-name
                                   "UpdateCount")
                                  (result-set :target-type result-set
                                   :member-name "ResultSet")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "GetQueryResultsOutput"))

(smithy/sdk/shapes:define-input get-query-runtime-statistics-input
                                common-lisp:nil
                                ((query-execution-id :target-type
                                  query-execution-id :required common-lisp:t
                                  :member-name "QueryExecutionId"))
                                (:shape-name "GetQueryRuntimeStatisticsInput"))

(smithy/sdk/shapes:define-output get-query-runtime-statistics-output
                                 common-lisp:nil
                                 ((query-runtime-statistics :target-type
                                   query-runtime-statistics :member-name
                                   "QueryRuntimeStatistics"))
                                 (:shape-name
                                  "GetQueryRuntimeStatisticsOutput"))

(smithy/sdk/shapes:define-input get-session-request common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId"))
                                (:shape-name "GetSessionRequest"))

(smithy/sdk/shapes:define-output get-session-response common-lisp:nil
                                 ((session-id :target-type session-id
                                   :member-name "SessionId")
                                  (description :target-type description-string
                                   :member-name "Description")
                                  (work-group :target-type work-group-name
                                   :member-name "WorkGroup")
                                  (engine-version :target-type name-string
                                   :member-name "EngineVersion")
                                  (engine-configuration :target-type
                                   engine-configuration :member-name
                                   "EngineConfiguration")
                                  (notebook-version :target-type name-string
                                   :member-name "NotebookVersion")
                                  (session-configuration :target-type
                                   session-configuration :member-name
                                   "SessionConfiguration")
                                  (status :target-type session-status
                                   :member-name "Status")
                                  (statistics :target-type session-statistics
                                   :member-name "Statistics"))
                                 (:shape-name "GetSessionResponse"))

(smithy/sdk/shapes:define-input get-session-status-request common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId"))
                                (:shape-name "GetSessionStatusRequest"))

(smithy/sdk/shapes:define-output get-session-status-response common-lisp:nil
                                 ((session-id :target-type session-id
                                   :member-name "SessionId")
                                  (status :target-type session-status
                                   :member-name "Status"))
                                 (:shape-name "GetSessionStatusResponse"))

(smithy/sdk/shapes:define-input get-table-metadata-input common-lisp:nil
                                ((catalog-name :target-type catalog-name-string
                                  :required common-lisp:t :member-name
                                  "CatalogName")
                                 (database-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type name-string :required
                                  common-lisp:t :member-name "TableName")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup"))
                                (:shape-name "GetTableMetadataInput"))

(smithy/sdk/shapes:define-output get-table-metadata-output common-lisp:nil
                                 ((table-metadata :target-type table-metadata
                                   :member-name "TableMetadata"))
                                 (:shape-name "GetTableMetadataOutput"))

(smithy/sdk/shapes:define-input get-work-group-input common-lisp:nil
                                ((work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup"))
                                (:shape-name "GetWorkGroupInput"))

(smithy/sdk/shapes:define-output get-work-group-output common-lisp:nil
                                 ((work-group :target-type work-group
                                   :member-name "WorkGroup"))
                                 (:shape-name "GetWorkGroupOutput"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-application-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-center-configuration
                                    common-lisp:nil
                                    ((enable-identity-center :target-type
                                      boxed-boolean :member-name
                                      "EnableIdentityCenter")
                                     (identity-center-instance-arn :target-type
                                      identity-center-instance-arn :member-name
                                      "IdentityCenterInstanceArn"))
                                    (:shape-name "IdentityCenterConfiguration"))

(smithy/sdk/shapes:define-type identity-center-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input import-notebook-input common-lisp:nil
                                ((work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup")
                                 (name :target-type notebook-name :required
                                  common-lisp:t :member-name "Name")
                                 (payload :target-type payload :member-name
                                  "Payload")
                                 (type :target-type notebook-type :required
                                  common-lisp:t :member-name "Type")
                                 (notebook-s3location-uri :target-type s3uri
                                  :member-name "NotebookS3LocationUri")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "ImportNotebookInput"))

(smithy/sdk/shapes:define-output import-notebook-output common-lisp:nil
                                 ((notebook-id :target-type notebook-id
                                   :member-name "NotebookId"))
                                 (:shape-name "ImportNotebookOutput"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((athena-error-code :target-type error-code
                                  :member-name "AthenaErrorCode")
                                 (message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type key-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-application-dpusizes-input common-lisp:nil
                                ((max-results :target-type
                                  max-application-dpusizes-count :member-name
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListApplicationDPUSizesInput"))

(smithy/sdk/shapes:define-output list-application-dpusizes-output
                                 common-lisp:nil
                                 ((application-dpusizes :target-type
                                   application-dpusizes-list :member-name
                                   "ApplicationDPUSizes")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListApplicationDPUSizesOutput"))

(smithy/sdk/shapes:define-input list-calculation-executions-request
                                common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId")
                                 (state-filter :target-type
                                  calculation-execution-state :member-name
                                  "StateFilter")
                                 (max-results :target-type
                                  max-calculations-count :member-name
                                  "MaxResults")
                                 (next-token :target-type session-manager-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListCalculationExecutionsRequest"))

(smithy/sdk/shapes:define-output list-calculation-executions-response
                                 common-lisp:nil
                                 ((next-token :target-type
                                   session-manager-token :member-name
                                   "NextToken")
                                  (calculations :target-type calculations-list
                                   :member-name "Calculations"))
                                 (:shape-name
                                  "ListCalculationExecutionsResponse"))

(smithy/sdk/shapes:define-input list-capacity-reservations-input
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-capacity-reservations-count :member-name
                                  "MaxResults"))
                                (:shape-name "ListCapacityReservationsInput"))

(smithy/sdk/shapes:define-output list-capacity-reservations-output
                                 common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (capacity-reservations :target-type
                                   capacity-reservations-list :required
                                   common-lisp:t :member-name
                                   "CapacityReservations"))
                                 (:shape-name "ListCapacityReservationsOutput"))

(smithy/sdk/shapes:define-input list-data-catalogs-input common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-data-catalogs-count :member-name
                                  "MaxResults")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup"))
                                (:shape-name "ListDataCatalogsInput"))

(smithy/sdk/shapes:define-output list-data-catalogs-output common-lisp:nil
                                 ((data-catalogs-summary :target-type
                                   data-catalog-summary-list :member-name
                                   "DataCatalogsSummary")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListDataCatalogsOutput"))

(smithy/sdk/shapes:define-input list-databases-input common-lisp:nil
                                ((catalog-name :target-type catalog-name-string
                                  :required common-lisp:t :member-name
                                  "CatalogName")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-databases-count
                                  :member-name "MaxResults")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup"))
                                (:shape-name "ListDatabasesInput"))

(smithy/sdk/shapes:define-output list-databases-output common-lisp:nil
                                 ((database-list :target-type database-list
                                   :member-name "DatabaseList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListDatabasesOutput"))

(smithy/sdk/shapes:define-input list-engine-versions-input common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-engine-versions-count :member-name
                                  "MaxResults"))
                                (:shape-name "ListEngineVersionsInput"))

(smithy/sdk/shapes:define-output list-engine-versions-output common-lisp:nil
                                 ((engine-versions :target-type
                                   engine-versions-list :member-name
                                   "EngineVersions")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListEngineVersionsOutput"))

(smithy/sdk/shapes:define-input list-executors-request common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId")
                                 (executor-state-filter :target-type
                                  executor-state :member-name
                                  "ExecutorStateFilter")
                                 (max-results :target-type
                                  max-list-executors-count :member-name
                                  "MaxResults")
                                 (next-token :target-type session-manager-token
                                  :member-name "NextToken"))
                                (:shape-name "ListExecutorsRequest"))

(smithy/sdk/shapes:define-output list-executors-response common-lisp:nil
                                 ((session-id :target-type session-id :required
                                   common-lisp:t :member-name "SessionId")
                                  (next-token :target-type
                                   session-manager-token :member-name
                                   "NextToken")
                                  (executors-summary :target-type
                                   executors-summary-list :member-name
                                   "ExecutorsSummary"))
                                 (:shape-name "ListExecutorsResponse"))

(smithy/sdk/shapes:define-input list-named-queries-input common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-named-queries-count :member-name
                                  "MaxResults")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup"))
                                (:shape-name "ListNamedQueriesInput"))

(smithy/sdk/shapes:define-output list-named-queries-output common-lisp:nil
                                 ((named-query-ids :target-type
                                   named-query-id-list :member-name
                                   "NamedQueryIds")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListNamedQueriesOutput"))

(smithy/sdk/shapes:define-input list-notebook-metadata-input common-lisp:nil
                                ((filters :target-type filter-definition
                                  :member-name "Filters")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-notebooks-count
                                  :member-name "MaxResults")
                                 (work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup"))
                                (:shape-name "ListNotebookMetadataInput"))

(smithy/sdk/shapes:define-output list-notebook-metadata-output common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (notebook-metadata-list :target-type
                                   notebook-metadata-array :member-name
                                   "NotebookMetadataList"))
                                 (:shape-name "ListNotebookMetadataOutput"))

(smithy/sdk/shapes:define-input list-notebook-sessions-request common-lisp:nil
                                ((notebook-id :target-type notebook-id
                                  :required common-lisp:t :member-name
                                  "NotebookId")
                                 (max-results :target-type max-sessions-count
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListNotebookSessionsRequest"))

(smithy/sdk/shapes:define-output list-notebook-sessions-response
                                 common-lisp:nil
                                 ((notebook-sessions-list :target-type
                                   notebook-sessions-list :required
                                   common-lisp:t :member-name
                                   "NotebookSessionsList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListNotebookSessionsResponse"))

(smithy/sdk/shapes:define-input list-prepared-statements-input common-lisp:nil
                                ((work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-prepared-statements-count :member-name
                                  "MaxResults"))
                                (:shape-name "ListPreparedStatementsInput"))

(smithy/sdk/shapes:define-output list-prepared-statements-output
                                 common-lisp:nil
                                 ((prepared-statements :target-type
                                   prepared-statements-list :member-name
                                   "PreparedStatements")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListPreparedStatementsOutput"))

(smithy/sdk/shapes:define-input list-query-executions-input common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-query-executions-count :member-name
                                  "MaxResults")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup"))
                                (:shape-name "ListQueryExecutionsInput"))

(smithy/sdk/shapes:define-output list-query-executions-output common-lisp:nil
                                 ((query-execution-ids :target-type
                                   query-execution-id-list :member-name
                                   "QueryExecutionIds")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListQueryExecutionsOutput"))

(smithy/sdk/shapes:define-input list-sessions-request common-lisp:nil
                                ((work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup")
                                 (state-filter :target-type session-state
                                  :member-name "StateFilter")
                                 (max-results :target-type max-sessions-count
                                  :member-name "MaxResults")
                                 (next-token :target-type session-manager-token
                                  :member-name "NextToken"))
                                (:shape-name "ListSessionsRequest"))

(smithy/sdk/shapes:define-output list-sessions-response common-lisp:nil
                                 ((next-token :target-type
                                   session-manager-token :member-name
                                   "NextToken")
                                  (sessions :target-type sessions-list
                                   :member-name "Sessions"))
                                 (:shape-name "ListSessionsResponse"))

(smithy/sdk/shapes:define-input list-table-metadata-input common-lisp:nil
                                ((catalog-name :target-type catalog-name-string
                                  :required common-lisp:t :member-name
                                  "CatalogName")
                                 (database-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (expression :target-type expression-string
                                  :member-name "Expression")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-table-metadata-count :member-name
                                  "MaxResults")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup"))
                                (:shape-name "ListTableMetadataInput"))

(smithy/sdk/shapes:define-output list-table-metadata-output common-lisp:nil
                                 ((table-metadata-list :target-type
                                   table-metadata-list :member-name
                                   "TableMetadataList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListTableMetadataOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-tags-count
                                  :member-name "MaxResults"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-work-groups-input common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  max-work-groups-count :member-name
                                  "MaxResults"))
                                (:shape-name "ListWorkGroupsInput"))

(smithy/sdk/shapes:define-output list-work-groups-output common-lisp:nil
                                 ((work-groups :target-type work-groups-list
                                   :member-name "WorkGroups")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListWorkGroupsOutput"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure managed-query-results-configuration
                                    common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (encryption-configuration :target-type
                                      managed-query-results-encryption-configuration
                                      :member-name "EncryptionConfiguration"))
                                    (:shape-name
                                     "ManagedQueryResultsConfiguration"))

(smithy/sdk/shapes:define-structure managed-query-results-configuration-updates
                                    common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :member-name "Enabled")
                                     (encryption-configuration :target-type
                                      managed-query-results-encryption-configuration
                                      :member-name "EncryptionConfiguration")
                                     (remove-encryption-configuration
                                      :target-type boxed-boolean :member-name
                                      "RemoveEncryptionConfiguration"))
                                    (:shape-name
                                     "ManagedQueryResultsConfigurationUpdates"))

(smithy/sdk/shapes:define-structure
 managed-query-results-encryption-configuration common-lisp:nil
 ((kms-key :target-type kms-key :required common-lisp:t :member-name "KmsKey"))
 (:shape-name "ManagedQueryResultsEncryptionConfiguration"))

(smithy/sdk/shapes:define-type max-application-dpusizes-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-calculations-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-capacity-reservations-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-concurrent-dpus
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-data-catalogs-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-databases-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-engine-versions-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-list-executors-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-named-queries-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-notebooks-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-prepared-statements-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-query-executions-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-query-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-sessions-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-table-metadata-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-tags-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-work-groups-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error metadata-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "MetadataException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure named-query common-lisp:nil
                                    ((name :target-type name-string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (database :target-type database-string
                                      :required common-lisp:t :member-name
                                      "Database")
                                     (query-string :target-type query-string
                                      :required common-lisp:t :member-name
                                      "QueryString")
                                     (named-query-id :target-type
                                      named-query-id :member-name
                                      "NamedQueryId")
                                     (work-group :target-type work-group-name
                                      :member-name "WorkGroup"))
                                    (:shape-name "NamedQuery"))

(smithy/sdk/shapes:define-type named-query-description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type named-query-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list named-query-id-list :member named-query-id)

(smithy/sdk/shapes:define-list named-query-list :member named-query)

(smithy/sdk/shapes:define-type notebook-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notebook-metadata common-lisp:nil
                                    ((notebook-id :target-type notebook-id
                                      :member-name "NotebookId")
                                     (name :target-type notebook-name
                                      :member-name "Name")
                                     (work-group :target-type work-group-name
                                      :member-name "WorkGroup")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (type :target-type notebook-type
                                      :member-name "Type")
                                     (last-modified-time :target-type date
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "NotebookMetadata"))

(smithy/sdk/shapes:define-list notebook-metadata-array :member
                               notebook-metadata)

(smithy/sdk/shapes:define-type notebook-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notebook-session-summary common-lisp:nil
                                    ((session-id :target-type session-id
                                      :member-name "SessionId")
                                     (creation-time :target-type date
                                      :member-name "CreationTime"))
                                    (:shape-name "NotebookSessionSummary"))

(smithy/sdk/shapes:define-list notebook-sessions-list :member
                               notebook-session-summary)

(smithy/sdk/shapes:define-enum notebook-type
    common-lisp:nil
  (:ipynb "IPYNB"))

(smithy/sdk/shapes:define-map parameters-map :key key-string :value
                              parameters-map-value)

(smithy/sdk/shapes:define-type parameters-map-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type payload smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure prepared-statement common-lisp:nil
                                    ((statement-name :target-type
                                      statement-name :member-name
                                      "StatementName")
                                     (query-statement :target-type query-string
                                      :member-name "QueryStatement")
                                     (work-group-name :target-type
                                      work-group-name :member-name
                                      "WorkGroupName")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (last-modified-time :target-type date
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "PreparedStatement"))

(smithy/sdk/shapes:define-list prepared-statement-details-list :member
                               prepared-statement)

(smithy/sdk/shapes:define-list prepared-statement-name-list :member
                               statement-name)

(smithy/sdk/shapes:define-structure prepared-statement-summary common-lisp:nil
                                    ((statement-name :target-type
                                      statement-name :member-name
                                      "StatementName")
                                     (last-modified-time :target-type date
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "PreparedStatementSummary"))

(smithy/sdk/shapes:define-list prepared-statements-list :member
                               prepared-statement-summary)

(smithy/sdk/shapes:define-input put-capacity-assignment-configuration-input
                                common-lisp:nil
                                ((capacity-reservation-name :target-type
                                  capacity-reservation-name :required
                                  common-lisp:t :member-name
                                  "CapacityReservationName")
                                 (capacity-assignments :target-type
                                  capacity-assignments-list :required
                                  common-lisp:t :member-name
                                  "CapacityAssignments"))
                                (:shape-name
                                 "PutCapacityAssignmentConfigurationInput"))

(smithy/sdk/shapes:define-output put-capacity-assignment-configuration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutCapacityAssignmentConfigurationOutput"))

(smithy/sdk/shapes:define-structure query-execution common-lisp:nil
                                    ((query-execution-id :target-type
                                      query-execution-id :member-name
                                      "QueryExecutionId")
                                     (query :target-type query-string
                                      :member-name "Query")
                                     (statement-type :target-type
                                      statement-type :member-name
                                      "StatementType")
                                     (managed-query-results-configuration
                                      :target-type
                                      managed-query-results-configuration
                                      :member-name
                                      "ManagedQueryResultsConfiguration")
                                     (result-configuration :target-type
                                      result-configuration :member-name
                                      "ResultConfiguration")
                                     (result-reuse-configuration :target-type
                                      result-reuse-configuration :member-name
                                      "ResultReuseConfiguration")
                                     (query-execution-context :target-type
                                      query-execution-context :member-name
                                      "QueryExecutionContext")
                                     (status :target-type
                                      query-execution-status :member-name
                                      "Status")
                                     (statistics :target-type
                                      query-execution-statistics :member-name
                                      "Statistics")
                                     (work-group :target-type work-group-name
                                      :member-name "WorkGroup")
                                     (engine-version :target-type
                                      engine-version :member-name
                                      "EngineVersion")
                                     (execution-parameters :target-type
                                      execution-parameters :member-name
                                      "ExecutionParameters")
                                     (substatement-type :target-type string
                                      :member-name "SubstatementType")
                                     (query-results-s3access-grants-configuration
                                      :target-type
                                      query-results-s3access-grants-configuration
                                      :member-name
                                      "QueryResultsS3AccessGrantsConfiguration"))
                                    (:shape-name "QueryExecution"))

(smithy/sdk/shapes:define-structure query-execution-context common-lisp:nil
                                    ((database :target-type database-string
                                      :member-name "Database")
                                     (catalog :target-type catalog-name-string
                                      :member-name "Catalog"))
                                    (:shape-name "QueryExecutionContext"))

(smithy/sdk/shapes:define-type query-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-execution-id-list :member
                               query-execution-id)

(smithy/sdk/shapes:define-list query-execution-list :member query-execution)

(smithy/sdk/shapes:define-enum query-execution-state
    common-lisp:nil
  (:queued "QUEUED")
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-structure query-execution-statistics common-lisp:nil
                                    ((engine-execution-time-in-millis
                                      :target-type long :member-name
                                      "EngineExecutionTimeInMillis")
                                     (data-scanned-in-bytes :target-type long
                                      :member-name "DataScannedInBytes")
                                     (data-manifest-location :target-type
                                      string :member-name
                                      "DataManifestLocation")
                                     (total-execution-time-in-millis
                                      :target-type long :member-name
                                      "TotalExecutionTimeInMillis")
                                     (query-queue-time-in-millis :target-type
                                      long :member-name
                                      "QueryQueueTimeInMillis")
                                     (service-pre-processing-time-in-millis
                                      :target-type long :member-name
                                      "ServicePreProcessingTimeInMillis")
                                     (query-planning-time-in-millis
                                      :target-type long :member-name
                                      "QueryPlanningTimeInMillis")
                                     (service-processing-time-in-millis
                                      :target-type long :member-name
                                      "ServiceProcessingTimeInMillis")
                                     (result-reuse-information :target-type
                                      result-reuse-information :member-name
                                      "ResultReuseInformation"))
                                    (:shape-name "QueryExecutionStatistics"))

(smithy/sdk/shapes:define-structure query-execution-status common-lisp:nil
                                    ((state :target-type query-execution-state
                                      :member-name "State")
                                     (state-change-reason :target-type string
                                      :member-name "StateChangeReason")
                                     (submission-date-time :target-type date
                                      :member-name "SubmissionDateTime")
                                     (completion-date-time :target-type date
                                      :member-name "CompletionDateTime")
                                     (athena-error :target-type athena-error
                                      :member-name "AthenaError"))
                                    (:shape-name "QueryExecutionStatus"))

(smithy/sdk/shapes:define-enum query-result-type
    common-lisp:nil
  (:data-manifest "DATA_MANIFEST")
  (:data-rows "DATA_ROWS"))

(smithy/sdk/shapes:define-structure query-results-s3access-grants-configuration
                                    common-lisp:nil
                                    ((enable-s3access-grants :target-type
                                      boxed-boolean :required common-lisp:t
                                      :member-name "EnableS3AccessGrants")
                                     (create-user-level-prefix :target-type
                                      boxed-boolean :member-name
                                      "CreateUserLevelPrefix")
                                     (authentication-type :target-type
                                      authentication-type :required
                                      common-lisp:t :member-name
                                      "AuthenticationType"))
                                    (:shape-name
                                     "QueryResultsS3AccessGrantsConfiguration"))

(smithy/sdk/shapes:define-structure query-runtime-statistics common-lisp:nil
                                    ((timeline :target-type
                                      query-runtime-statistics-timeline
                                      :member-name "Timeline")
                                     (rows :target-type
                                      query-runtime-statistics-rows
                                      :member-name "Rows")
                                     (output-stage :target-type query-stage
                                      :member-name "OutputStage"))
                                    (:shape-name "QueryRuntimeStatistics"))

(smithy/sdk/shapes:define-structure query-runtime-statistics-rows
                                    common-lisp:nil
                                    ((input-rows :target-type long :member-name
                                      "InputRows")
                                     (input-bytes :target-type long
                                      :member-name "InputBytes")
                                     (output-bytes :target-type long
                                      :member-name "OutputBytes")
                                     (output-rows :target-type long
                                      :member-name "OutputRows"))
                                    (:shape-name "QueryRuntimeStatisticsRows"))

(smithy/sdk/shapes:define-structure query-runtime-statistics-timeline
                                    common-lisp:nil
                                    ((query-queue-time-in-millis :target-type
                                      long :member-name
                                      "QueryQueueTimeInMillis")
                                     (service-pre-processing-time-in-millis
                                      :target-type long :member-name
                                      "ServicePreProcessingTimeInMillis")
                                     (query-planning-time-in-millis
                                      :target-type long :member-name
                                      "QueryPlanningTimeInMillis")
                                     (engine-execution-time-in-millis
                                      :target-type long :member-name
                                      "EngineExecutionTimeInMillis")
                                     (service-processing-time-in-millis
                                      :target-type long :member-name
                                      "ServiceProcessingTimeInMillis")
                                     (total-execution-time-in-millis
                                      :target-type long :member-name
                                      "TotalExecutionTimeInMillis"))
                                    (:shape-name
                                     "QueryRuntimeStatisticsTimeline"))

(smithy/sdk/shapes:define-structure query-stage common-lisp:nil
                                    ((stage-id :target-type long :member-name
                                      "StageId")
                                     (state :target-type string :member-name
                                      "State")
                                     (output-bytes :target-type long
                                      :member-name "OutputBytes")
                                     (output-rows :target-type long
                                      :member-name "OutputRows")
                                     (input-bytes :target-type long
                                      :member-name "InputBytes")
                                     (input-rows :target-type long :member-name
                                      "InputRows")
                                     (execution-time :target-type long
                                      :member-name "ExecutionTime")
                                     (query-stage-plan :target-type
                                      query-stage-plan-node :member-name
                                      "QueryStagePlan")
                                     (sub-stages :target-type query-stages
                                      :member-name "SubStages"))
                                    (:shape-name "QueryStage"))

(smithy/sdk/shapes:define-structure query-stage-plan-node common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (identifier :target-type string
                                      :member-name "Identifier")
                                     (children :target-type
                                      query-stage-plan-nodes :member-name
                                      "Children")
                                     (remote-sources :target-type string-list
                                      :member-name "RemoteSources"))
                                    (:shape-name "QueryStagePlanNode"))

(smithy/sdk/shapes:define-list query-stage-plan-nodes :member
                               query-stage-plan-node)

(smithy/sdk/shapes:define-list query-stages :member query-stage)

(smithy/sdk/shapes:define-type query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure result-configuration common-lisp:nil
                                    ((output-location :target-type
                                      result-output-location :member-name
                                      "OutputLocation")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (expected-bucket-owner :target-type
                                      aws-account-id :member-name
                                      "ExpectedBucketOwner")
                                     (acl-configuration :target-type
                                      acl-configuration :member-name
                                      "AclConfiguration"))
                                    (:shape-name "ResultConfiguration"))

(smithy/sdk/shapes:define-structure result-configuration-updates
                                    common-lisp:nil
                                    ((output-location :target-type
                                      result-output-location :member-name
                                      "OutputLocation")
                                     (remove-output-location :target-type
                                      boxed-boolean :member-name
                                      "RemoveOutputLocation")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (remove-encryption-configuration
                                      :target-type boxed-boolean :member-name
                                      "RemoveEncryptionConfiguration")
                                     (expected-bucket-owner :target-type
                                      aws-account-id :member-name
                                      "ExpectedBucketOwner")
                                     (remove-expected-bucket-owner :target-type
                                      boxed-boolean :member-name
                                      "RemoveExpectedBucketOwner")
                                     (acl-configuration :target-type
                                      acl-configuration :member-name
                                      "AclConfiguration")
                                     (remove-acl-configuration :target-type
                                      boxed-boolean :member-name
                                      "RemoveAclConfiguration"))
                                    (:shape-name "ResultConfigurationUpdates"))

(smithy/sdk/shapes:define-type result-output-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure result-reuse-by-age-configuration
                                    common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (max-age-in-minutes :target-type age
                                      :member-name "MaxAgeInMinutes"))
                                    (:shape-name
                                     "ResultReuseByAgeConfiguration"))

(smithy/sdk/shapes:define-structure result-reuse-configuration common-lisp:nil
                                    ((result-reuse-by-age-configuration
                                      :target-type
                                      result-reuse-by-age-configuration
                                      :member-name
                                      "ResultReuseByAgeConfiguration"))
                                    (:shape-name "ResultReuseConfiguration"))

(smithy/sdk/shapes:define-structure result-reuse-information common-lisp:nil
                                    ((reused-previous-result :target-type
                                      boolean :required common-lisp:t
                                      :member-name "ReusedPreviousResult"))
                                    (:shape-name "ResultReuseInformation"))

(smithy/sdk/shapes:define-structure result-set common-lisp:nil
                                    ((rows :target-type row-list :member-name
                                      "Rows")
                                     (result-set-metadata :target-type
                                      result-set-metadata :member-name
                                      "ResultSetMetadata"))
                                    (:shape-name "ResultSet"))

(smithy/sdk/shapes:define-structure result-set-metadata common-lisp:nil
                                    ((column-info :target-type column-info-list
                                      :member-name "ColumnInfo"))
                                    (:shape-name "ResultSetMetadata"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure row common-lisp:nil
                                    ((data :target-type datum-list :member-name
                                      "Data"))
                                    (:shape-name "Row"))

(smithy/sdk/shapes:define-list row-list :member row)

(smithy/sdk/shapes:define-enum s3acl-option
    common-lisp:nil
  (:bucket-owner-full-control "BUCKET_OWNER_FULL_CONTROL"))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error session-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "SessionAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure session-configuration common-lisp:nil
                                    ((execution-role :target-type role-arn
                                      :member-name "ExecutionRole")
                                     (working-directory :target-type
                                      result-output-location :member-name
                                      "WorkingDirectory")
                                     (idle-timeout-seconds :target-type long
                                      :member-name "IdleTimeoutSeconds")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration"))
                                    (:shape-name "SessionConfiguration"))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-idle-timeout-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type session-manager-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum session-state
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:idle "IDLE")
  (:busy "BUSY")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED")
  (:degraded "DEGRADED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure session-statistics common-lisp:nil
                                    ((dpu-execution-in-millis :target-type long
                                      :member-name "DpuExecutionInMillis"))
                                    (:shape-name "SessionStatistics"))

(smithy/sdk/shapes:define-structure session-status common-lisp:nil
                                    ((start-date-time :target-type date
                                      :member-name "StartDateTime")
                                     (last-modified-date-time :target-type date
                                      :member-name "LastModifiedDateTime")
                                     (end-date-time :target-type date
                                      :member-name "EndDateTime")
                                     (idle-since-date-time :target-type date
                                      :member-name "IdleSinceDateTime")
                                     (state :target-type session-state
                                      :member-name "State")
                                     (state-change-reason :target-type
                                      description-string :member-name
                                      "StateChangeReason"))
                                    (:shape-name "SessionStatus"))

(smithy/sdk/shapes:define-structure session-summary common-lisp:nil
                                    ((session-id :target-type session-id
                                      :member-name "SessionId")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (engine-version :target-type
                                      engine-version :member-name
                                      "EngineVersion")
                                     (notebook-version :target-type name-string
                                      :member-name "NotebookVersion")
                                     (status :target-type session-status
                                      :member-name "Status"))
                                    (:shape-name "SessionSummary"))

(smithy/sdk/shapes:define-list sessions-list :member session-summary)

(smithy/sdk/shapes:define-input start-calculation-execution-request
                                common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (calculation-configuration :target-type
                                  calculation-configuration :member-name
                                  "CalculationConfiguration")
                                 (code-block :target-type code-block
                                  :member-name "CodeBlock")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name
                                 "StartCalculationExecutionRequest"))

(smithy/sdk/shapes:define-output start-calculation-execution-response
                                 common-lisp:nil
                                 ((calculation-execution-id :target-type
                                   calculation-execution-id :member-name
                                   "CalculationExecutionId")
                                  (state :target-type
                                   calculation-execution-state :member-name
                                   "State"))
                                 (:shape-name
                                  "StartCalculationExecutionResponse"))

(smithy/sdk/shapes:define-input start-query-execution-input common-lisp:nil
                                ((query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "QueryString")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "ClientRequestToken")
                                 (query-execution-context :target-type
                                  query-execution-context :member-name
                                  "QueryExecutionContext")
                                 (result-configuration :target-type
                                  result-configuration :member-name
                                  "ResultConfiguration")
                                 (work-group :target-type work-group-name
                                  :member-name "WorkGroup")
                                 (execution-parameters :target-type
                                  execution-parameters :member-name
                                  "ExecutionParameters")
                                 (result-reuse-configuration :target-type
                                  result-reuse-configuration :member-name
                                  "ResultReuseConfiguration"))
                                (:shape-name "StartQueryExecutionInput"))

(smithy/sdk/shapes:define-output start-query-execution-output common-lisp:nil
                                 ((query-execution-id :target-type
                                   query-execution-id :member-name
                                   "QueryExecutionId"))
                                 (:shape-name "StartQueryExecutionOutput"))

(smithy/sdk/shapes:define-input start-session-request common-lisp:nil
                                ((description :target-type description-string
                                  :member-name "Description")
                                 (work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup")
                                 (engine-configuration :target-type
                                  engine-configuration :required common-lisp:t
                                  :member-name "EngineConfiguration")
                                 (notebook-version :target-type name-string
                                  :member-name "NotebookVersion")
                                 (session-idle-timeout-in-minutes :target-type
                                  session-idle-timeout-in-minutes :member-name
                                  "SessionIdleTimeoutInMinutes")
                                 (client-request-token :target-type
                                  idempotency-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "StartSessionRequest"))

(smithy/sdk/shapes:define-output start-session-response common-lisp:nil
                                 ((session-id :target-type session-id
                                   :member-name "SessionId")
                                  (state :target-type session-state
                                   :member-name "State"))
                                 (:shape-name "StartSessionResponse"))

(smithy/sdk/shapes:define-type statement-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum statement-type
    common-lisp:nil
  (:ddl "DDL")
  (:dml "DML")
  (:utility "UTILITY"))

(smithy/sdk/shapes:define-input stop-calculation-execution-request
                                common-lisp:nil
                                ((calculation-execution-id :target-type
                                  calculation-execution-id :required
                                  common-lisp:t :member-name
                                  "CalculationExecutionId"))
                                (:shape-name "StopCalculationExecutionRequest"))

(smithy/sdk/shapes:define-output stop-calculation-execution-response
                                 common-lisp:nil
                                 ((state :target-type
                                   calculation-execution-state :member-name
                                   "State"))
                                 (:shape-name
                                  "StopCalculationExecutionResponse"))

(smithy/sdk/shapes:define-input stop-query-execution-input common-lisp:nil
                                ((query-execution-id :target-type
                                  query-execution-id :required common-lisp:t
                                  :member-name "QueryExecutionId"))
                                (:shape-name "StopQueryExecutionInput"))

(smithy/sdk/shapes:define-output stop-query-execution-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopQueryExecutionOutput"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-list supported-dpusize-list :member integer)

(smithy/sdk/shapes:define-structure table-metadata common-lisp:nil
                                    ((name :target-type name-string :required
                                      common-lisp:t :member-name "Name")
                                     (create-time :target-type timestamp
                                      :member-name "CreateTime")
                                     (last-access-time :target-type timestamp
                                      :member-name "LastAccessTime")
                                     (table-type :target-type table-type-string
                                      :member-name "TableType")
                                     (columns :target-type column-list
                                      :member-name "Columns")
                                     (partition-keys :target-type column-list
                                      :member-name "PartitionKeys")
                                     (parameters :target-type parameters-map
                                      :member-name "Parameters"))
                                    (:shape-name "TableMetadata"))

(smithy/sdk/shapes:define-list table-metadata-list :member table-metadata)

(smithy/sdk/shapes:define-type table-type-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-dpus-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input terminate-session-request common-lisp:nil
                                ((session-id :target-type session-id :required
                                  common-lisp:t :member-name "SessionId"))
                                (:shape-name "TerminateSessionRequest"))

(smithy/sdk/shapes:define-output terminate-session-response common-lisp:nil
                                 ((state :target-type session-state
                                   :member-name "State"))
                                 (:shape-name "TerminateSessionResponse"))

(smithy/sdk/shapes:define-enum throttle-reason
    common-lisp:nil
  (:concurrent-query-limit-exceeded "CONCURRENT_QUERY_LIMIT_EXCEEDED"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (reason :target-type throttle-reason
                                  :member-name "Reason"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type type-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure unprocessed-named-query-id common-lisp:nil
                                    ((named-query-id :target-type
                                      named-query-id :member-name
                                      "NamedQueryId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "UnprocessedNamedQueryId"))

(smithy/sdk/shapes:define-list unprocessed-named-query-id-list :member
                               unprocessed-named-query-id)

(smithy/sdk/shapes:define-structure unprocessed-prepared-statement-name
                                    common-lisp:nil
                                    ((statement-name :target-type
                                      statement-name :member-name
                                      "StatementName")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "UnprocessedPreparedStatementName"))

(smithy/sdk/shapes:define-list unprocessed-prepared-statement-name-list :member
                               unprocessed-prepared-statement-name)

(smithy/sdk/shapes:define-structure unprocessed-query-execution-id
                                    common-lisp:nil
                                    ((query-execution-id :target-type
                                      query-execution-id :member-name
                                      "QueryExecutionId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "UnprocessedQueryExecutionId"))

(smithy/sdk/shapes:define-list unprocessed-query-execution-id-list :member
                               unprocessed-query-execution-id)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-capacity-reservation-input
                                common-lisp:nil
                                ((target-dpus :target-type target-dpus-integer
                                  :required common-lisp:t :member-name
                                  "TargetDpus")
                                 (name :target-type capacity-reservation-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "UpdateCapacityReservationInput"))

(smithy/sdk/shapes:define-output update-capacity-reservation-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateCapacityReservationOutput"))

(smithy/sdk/shapes:define-input update-data-catalog-input common-lisp:nil
                                ((name :target-type catalog-name-string
                                  :required common-lisp:t :member-name "Name")
                                 (type :target-type data-catalog-type :required
                                  common-lisp:t :member-name "Type")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (parameters :target-type parameters-map
                                  :member-name "Parameters"))
                                (:shape-name "UpdateDataCatalogInput"))

(smithy/sdk/shapes:define-output update-data-catalog-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDataCatalogOutput"))

(smithy/sdk/shapes:define-input update-named-query-input common-lisp:nil
                                ((named-query-id :target-type named-query-id
                                  :required common-lisp:t :member-name
                                  "NamedQueryId")
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type
                                  named-query-description-string :member-name
                                  "Description")
                                 (query-string :target-type query-string
                                  :required common-lisp:t :member-name
                                  "QueryString"))
                                (:shape-name "UpdateNamedQueryInput"))

(smithy/sdk/shapes:define-output update-named-query-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateNamedQueryOutput"))

(smithy/sdk/shapes:define-input update-notebook-input common-lisp:nil
                                ((notebook-id :target-type notebook-id
                                  :required common-lisp:t :member-name
                                  "NotebookId")
                                 (payload :target-type payload :required
                                  common-lisp:t :member-name "Payload")
                                 (type :target-type notebook-type :required
                                  common-lisp:t :member-name "Type")
                                 (session-id :target-type session-id
                                  :member-name "SessionId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "UpdateNotebookInput"))

(smithy/sdk/shapes:define-input update-notebook-metadata-input common-lisp:nil
                                ((notebook-id :target-type notebook-id
                                  :required common-lisp:t :member-name
                                  "NotebookId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (name :target-type notebook-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "UpdateNotebookMetadataInput"))

(smithy/sdk/shapes:define-output update-notebook-metadata-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateNotebookMetadataOutput"))

(smithy/sdk/shapes:define-output update-notebook-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateNotebookOutput"))

(smithy/sdk/shapes:define-input update-prepared-statement-input common-lisp:nil
                                ((statement-name :target-type statement-name
                                  :required common-lisp:t :member-name
                                  "StatementName")
                                 (work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup")
                                 (query-statement :target-type query-string
                                  :required common-lisp:t :member-name
                                  "QueryStatement")
                                 (description :target-type description-string
                                  :member-name "Description"))
                                (:shape-name "UpdatePreparedStatementInput"))

(smithy/sdk/shapes:define-output update-prepared-statement-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdatePreparedStatementOutput"))

(smithy/sdk/shapes:define-input update-work-group-input common-lisp:nil
                                ((work-group :target-type work-group-name
                                  :required common-lisp:t :member-name
                                  "WorkGroup")
                                 (description :target-type
                                  work-group-description-string :member-name
                                  "Description")
                                 (configuration-updates :target-type
                                  work-group-configuration-updates :member-name
                                  "ConfigurationUpdates")
                                 (state :target-type work-group-state
                                  :member-name "State"))
                                (:shape-name "UpdateWorkGroupInput"))

(smithy/sdk/shapes:define-output update-work-group-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateWorkGroupOutput"))

(smithy/sdk/shapes:define-structure work-group common-lisp:nil
                                    ((name :target-type work-group-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (state :target-type work-group-state
                                      :member-name "State")
                                     (configuration :target-type
                                      work-group-configuration :member-name
                                      "Configuration")
                                     (description :target-type
                                      work-group-description-string
                                      :member-name "Description")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (identity-center-application-arn
                                      :target-type
                                      identity-center-application-arn
                                      :member-name
                                      "IdentityCenterApplicationArn"))
                                    (:shape-name "WorkGroup"))

(smithy/sdk/shapes:define-structure work-group-configuration common-lisp:nil
                                    ((result-configuration :target-type
                                      result-configuration :member-name
                                      "ResultConfiguration")
                                     (managed-query-results-configuration
                                      :target-type
                                      managed-query-results-configuration
                                      :member-name
                                      "ManagedQueryResultsConfiguration")
                                     (enforce-work-group-configuration
                                      :target-type boxed-boolean :member-name
                                      "EnforceWorkGroupConfiguration")
                                     (publish-cloud-watch-metrics-enabled
                                      :target-type boxed-boolean :member-name
                                      "PublishCloudWatchMetricsEnabled")
                                     (bytes-scanned-cutoff-per-query
                                      :target-type bytes-scanned-cutoff-value
                                      :member-name
                                      "BytesScannedCutoffPerQuery")
                                     (requester-pays-enabled :target-type
                                      boxed-boolean :member-name
                                      "RequesterPaysEnabled")
                                     (engine-version :target-type
                                      engine-version :member-name
                                      "EngineVersion")
                                     (additional-configuration :target-type
                                      name-string :member-name
                                      "AdditionalConfiguration")
                                     (execution-role :target-type role-arn
                                      :member-name "ExecutionRole")
                                     (customer-content-encryption-configuration
                                      :target-type
                                      customer-content-encryption-configuration
                                      :member-name
                                      "CustomerContentEncryptionConfiguration")
                                     (enable-minimum-encryption-configuration
                                      :target-type boxed-boolean :member-name
                                      "EnableMinimumEncryptionConfiguration")
                                     (identity-center-configuration
                                      :target-type
                                      identity-center-configuration
                                      :member-name
                                      "IdentityCenterConfiguration")
                                     (query-results-s3access-grants-configuration
                                      :target-type
                                      query-results-s3access-grants-configuration
                                      :member-name
                                      "QueryResultsS3AccessGrantsConfiguration"))
                                    (:shape-name "WorkGroupConfiguration"))

(smithy/sdk/shapes:define-structure work-group-configuration-updates
                                    common-lisp:nil
                                    ((enforce-work-group-configuration
                                      :target-type boxed-boolean :member-name
                                      "EnforceWorkGroupConfiguration")
                                     (result-configuration-updates :target-type
                                      result-configuration-updates :member-name
                                      "ResultConfigurationUpdates")
                                     (managed-query-results-configuration-updates
                                      :target-type
                                      managed-query-results-configuration-updates
                                      :member-name
                                      "ManagedQueryResultsConfigurationUpdates")
                                     (publish-cloud-watch-metrics-enabled
                                      :target-type boxed-boolean :member-name
                                      "PublishCloudWatchMetricsEnabled")
                                     (bytes-scanned-cutoff-per-query
                                      :target-type bytes-scanned-cutoff-value
                                      :member-name
                                      "BytesScannedCutoffPerQuery")
                                     (remove-bytes-scanned-cutoff-per-query
                                      :target-type boxed-boolean :member-name
                                      "RemoveBytesScannedCutoffPerQuery")
                                     (requester-pays-enabled :target-type
                                      boxed-boolean :member-name
                                      "RequesterPaysEnabled")
                                     (engine-version :target-type
                                      engine-version :member-name
                                      "EngineVersion")
                                     (remove-customer-content-encryption-configuration
                                      :target-type boxed-boolean :member-name
                                      "RemoveCustomerContentEncryptionConfiguration")
                                     (additional-configuration :target-type
                                      name-string :member-name
                                      "AdditionalConfiguration")
                                     (execution-role :target-type role-arn
                                      :member-name "ExecutionRole")
                                     (customer-content-encryption-configuration
                                      :target-type
                                      customer-content-encryption-configuration
                                      :member-name
                                      "CustomerContentEncryptionConfiguration")
                                     (enable-minimum-encryption-configuration
                                      :target-type boxed-boolean :member-name
                                      "EnableMinimumEncryptionConfiguration")
                                     (query-results-s3access-grants-configuration
                                      :target-type
                                      query-results-s3access-grants-configuration
                                      :member-name
                                      "QueryResultsS3AccessGrantsConfiguration"))
                                    (:shape-name
                                     "WorkGroupConfigurationUpdates"))

(smithy/sdk/shapes:define-type work-group-description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type work-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list work-group-names-list :member work-group-name)

(smithy/sdk/shapes:define-enum work-group-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure work-group-summary common-lisp:nil
                                    ((name :target-type work-group-name
                                      :member-name "Name")
                                     (state :target-type work-group-state
                                      :member-name "State")
                                     (description :target-type
                                      work-group-description-string
                                      :member-name "Description")
                                     (creation-time :target-type date
                                      :member-name "CreationTime")
                                     (engine-version :target-type
                                      engine-version :member-name
                                      "EngineVersion")
                                     (identity-center-application-arn
                                      :target-type
                                      identity-center-application-arn
                                      :member-name
                                      "IdentityCenterApplicationArn"))
                                    (:shape-name "WorkGroupSummary"))

(smithy/sdk/shapes:define-list work-groups-list :member work-group-summary)

(smithy/sdk/shapes:define-list datum-list :member datum)

(smithy/sdk/shapes:define-type datum-string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-get-named-query :shape-name
                                       "BatchGetNamedQuery" :input
                                       batch-get-named-query-input :output
                                       batch-get-named-query-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation batch-get-prepared-statement :shape-name
                                       "BatchGetPreparedStatement" :input
                                       batch-get-prepared-statement-input
                                       :output
                                       batch-get-prepared-statement-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation batch-get-query-execution :shape-name
                                       "BatchGetQueryExecution" :input
                                       batch-get-query-execution-input :output
                                       batch-get-query-execution-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation cancel-capacity-reservation :shape-name
                                       "CancelCapacityReservation" :input
                                       cancel-capacity-reservation-input
                                       :output
                                       cancel-capacity-reservation-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-capacity-reservation :shape-name
                                       "CreateCapacityReservation" :input
                                       create-capacity-reservation-input
                                       :output
                                       create-capacity-reservation-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-data-catalog :shape-name
                                       "CreateDataCatalog" :input
                                       create-data-catalog-input :output
                                       create-data-catalog-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-named-query :shape-name
                                       "CreateNamedQuery" :input
                                       create-named-query-input :output
                                       create-named-query-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-notebook :shape-name
                                       "CreateNotebook" :input
                                       create-notebook-input :output
                                       create-notebook-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-prepared-statement :shape-name
                                       "CreatePreparedStatement" :input
                                       create-prepared-statement-input :output
                                       create-prepared-statement-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-presigned-notebook-url
                                       :shape-name "CreatePresignedNotebookUrl"
                                       :input
                                       create-presigned-notebook-url-request
                                       :output
                                       create-presigned-notebook-url-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-work-group :shape-name
                                       "CreateWorkGroup" :input
                                       create-work-group-input :output
                                       create-work-group-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-capacity-reservation :shape-name
                                       "DeleteCapacityReservation" :input
                                       delete-capacity-reservation-input
                                       :output
                                       delete-capacity-reservation-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-data-catalog :shape-name
                                       "DeleteDataCatalog" :input
                                       delete-data-catalog-input :output
                                       delete-data-catalog-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-named-query :shape-name
                                       "DeleteNamedQuery" :input
                                       delete-named-query-input :output
                                       delete-named-query-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-notebook :shape-name
                                       "DeleteNotebook" :input
                                       delete-notebook-input :output
                                       delete-notebook-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-prepared-statement :shape-name
                                       "DeletePreparedStatement" :input
                                       delete-prepared-statement-input :output
                                       delete-prepared-statement-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-work-group :shape-name
                                       "DeleteWorkGroup" :input
                                       delete-work-group-input :output
                                       delete-work-group-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation export-notebook :shape-name
                                       "ExportNotebook" :input
                                       export-notebook-input :output
                                       export-notebook-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-calculation-execution :shape-name
                                       "GetCalculationExecution" :input
                                       get-calculation-execution-request
                                       :output
                                       get-calculation-execution-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-calculation-execution-code
                                       :shape-name
                                       "GetCalculationExecutionCode" :input
                                       get-calculation-execution-code-request
                                       :output
                                       get-calculation-execution-code-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-calculation-execution-status
                                       :shape-name
                                       "GetCalculationExecutionStatus" :input
                                       get-calculation-execution-status-request
                                       :output
                                       get-calculation-execution-status-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-capacity-assignment-configuration
                                       :shape-name
                                       "GetCapacityAssignmentConfiguration"
                                       :input
                                       get-capacity-assignment-configuration-input
                                       :output
                                       get-capacity-assignment-configuration-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-capacity-reservation :shape-name
                                       "GetCapacityReservation" :input
                                       get-capacity-reservation-input :output
                                       get-capacity-reservation-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-data-catalog :shape-name
                                       "GetDataCatalog" :input
                                       get-data-catalog-input :output
                                       get-data-catalog-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-database :shape-name "GetDatabase"
                                       :input get-database-input :output
                                       get-database-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        metadata-exception))

(smithy/sdk/operation:define-operation get-named-query :shape-name
                                       "GetNamedQuery" :input
                                       get-named-query-input :output
                                       get-named-query-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-notebook-metadata :shape-name
                                       "GetNotebookMetadata" :input
                                       get-notebook-metadata-input :output
                                       get-notebook-metadata-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-prepared-statement :shape-name
                                       "GetPreparedStatement" :input
                                       get-prepared-statement-input :output
                                       get-prepared-statement-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-query-execution :shape-name
                                       "GetQueryExecution" :input
                                       get-query-execution-input :output
                                       get-query-execution-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-query-results :shape-name
                                       "GetQueryResults" :input
                                       get-query-results-input :output
                                       get-query-results-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-query-runtime-statistics :shape-name
                                       "GetQueryRuntimeStatistics" :input
                                       get-query-runtime-statistics-input
                                       :output
                                       get-query-runtime-statistics-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-session :shape-name "GetSession"
                                       :input get-session-request :output
                                       get-session-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-session-status :shape-name
                                       "GetSessionStatus" :input
                                       get-session-status-request :output
                                       get-session-status-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-table-metadata :shape-name
                                       "GetTableMetadata" :input
                                       get-table-metadata-input :output
                                       get-table-metadata-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        metadata-exception))

(smithy/sdk/operation:define-operation get-work-group :shape-name
                                       "GetWorkGroup" :input
                                       get-work-group-input :output
                                       get-work-group-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation import-notebook :shape-name
                                       "ImportNotebook" :input
                                       import-notebook-input :output
                                       import-notebook-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-application-dpusizes :shape-name
                                       "ListApplicationDPUSizes" :input
                                       list-application-dpusizes-input :output
                                       list-application-dpusizes-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-calculation-executions :shape-name
                                       "ListCalculationExecutions" :input
                                       list-calculation-executions-request
                                       :output
                                       list-calculation-executions-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-capacity-reservations :shape-name
                                       "ListCapacityReservations" :input
                                       list-capacity-reservations-input :output
                                       list-capacity-reservations-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-data-catalogs :shape-name
                                       "ListDataCatalogs" :input
                                       list-data-catalogs-input :output
                                       list-data-catalogs-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-databases :shape-name
                                       "ListDatabases" :input
                                       list-databases-input :output
                                       list-databases-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        metadata-exception))

(smithy/sdk/operation:define-operation list-engine-versions :shape-name
                                       "ListEngineVersions" :input
                                       list-engine-versions-input :output
                                       list-engine-versions-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-executors :shape-name
                                       "ListExecutors" :input
                                       list-executors-request :output
                                       list-executors-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-named-queries :shape-name
                                       "ListNamedQueries" :input
                                       list-named-queries-input :output
                                       list-named-queries-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-notebook-metadata :shape-name
                                       "ListNotebookMetadata" :input
                                       list-notebook-metadata-input :output
                                       list-notebook-metadata-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-notebook-sessions :shape-name
                                       "ListNotebookSessions" :input
                                       list-notebook-sessions-request :output
                                       list-notebook-sessions-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-prepared-statements :shape-name
                                       "ListPreparedStatements" :input
                                       list-prepared-statements-input :output
                                       list-prepared-statements-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-query-executions :shape-name
                                       "ListQueryExecutions" :input
                                       list-query-executions-input :output
                                       list-query-executions-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-sessions :shape-name "ListSessions"
                                       :input list-sessions-request :output
                                       list-sessions-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-table-metadata :shape-name
                                       "ListTableMetadata" :input
                                       list-table-metadata-input :output
                                       list-table-metadata-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        metadata-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-work-groups :shape-name
                                       "ListWorkGroups" :input
                                       list-work-groups-input :output
                                       list-work-groups-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation put-capacity-assignment-configuration
                                       :shape-name
                                       "PutCapacityAssignmentConfiguration"
                                       :input
                                       put-capacity-assignment-configuration-input
                                       :output
                                       put-capacity-assignment-configuration-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation start-calculation-execution :shape-name
                                       "StartCalculationExecution" :input
                                       start-calculation-execution-request
                                       :output
                                       start-calculation-execution-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-query-execution :shape-name
                                       "StartQueryExecution" :input
                                       start-query-execution-input :output
                                       start-query-execution-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation start-session :shape-name "StartSession"
                                       :input start-session-request :output
                                       start-session-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        session-already-exists-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation stop-calculation-execution :shape-name
                                       "StopCalculationExecution" :input
                                       stop-calculation-execution-request
                                       :output
                                       stop-calculation-execution-response
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-query-execution :shape-name
                                       "StopQueryExecution" :input
                                       stop-query-execution-input :output
                                       stop-query-execution-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation terminate-session :shape-name
                                       "TerminateSession" :input
                                       terminate-session-request :output
                                       terminate-session-response :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-capacity-reservation :shape-name
                                       "UpdateCapacityReservation" :input
                                       update-capacity-reservation-input
                                       :output
                                       update-capacity-reservation-output
                                       :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-data-catalog :shape-name
                                       "UpdateDataCatalog" :input
                                       update-data-catalog-input :output
                                       update-data-catalog-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-named-query :shape-name
                                       "UpdateNamedQuery" :input
                                       update-named-query-input :output
                                       update-named-query-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation update-notebook :shape-name
                                       "UpdateNotebook" :input
                                       update-notebook-input :output
                                       update-notebook-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-notebook-metadata :shape-name
                                       "UpdateNotebookMetadata" :input
                                       update-notebook-metadata-input :output
                                       update-notebook-metadata-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-prepared-statement :shape-name
                                       "UpdatePreparedStatement" :input
                                       update-prepared-statement-input :output
                                       update-prepared-statement-output :errors
                                       (internal-server-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-work-group :shape-name
                                       "UpdateWorkGroup" :input
                                       update-work-group-input :output
                                       update-work-group-output :errors
                                       (internal-server-exception
                                        invalid-request-exception))
