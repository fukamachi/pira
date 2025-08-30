(uiop/package:define-package #:pira/redshift-data (:use)
                             (:export #:active-sessions-exceeded-exception
                              #:active-statements-exceeded-exception
                              #:batch-execute-statement
                              #:batch-execute-statement-exception #:blob
                              #:boxed-boolean #:boxed-double #:boxed-long
                              #:cancel-statement #:client-token
                              #:cluster-identifier-string #:column-list
                              #:column-metadata #:column-metadata-list
                              #:database-connection-exception #:database-list
                              #:db-group-list #:describe-statement
                              #:describe-table #:execute-statement
                              #:execute-statement-exception #:field
                              #:field-list #:formatted-sql-records
                              #:get-statement-result #:get-statement-result-v2
                              #:integer #:internal-server-exception
                              #:list-databases #:list-schemas #:list-statements
                              #:list-statements-limit #:list-tables #:long
                              #:page-size #:parameter-name #:parameter-value
                              #:query-records #:query-timeout-exception
                              #:redshift-data #:resource-not-found-exception
                              #:result-format-string #:schema-list #:secret-arn
                              #:session-alive-seconds #:sql-list
                              #:sql-parameter #:sql-parameters-list
                              #:sql-records #:statement-data #:statement-list
                              #:statement-name-string #:statement-status-string
                              #:statement-string #:statement-string-list
                              #:status-string #:string #:sub-statement-data
                              #:sub-statement-list #:table-list #:table-member
                              #:uuid #:validation-exception
                              #:workgroup-name-string #:bool
                              #:redshift-data-error))
(common-lisp:in-package #:pira/redshift-data)

(common-lisp:define-condition redshift-data-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service redshift-data :shape-name "RedshiftData"
                                   :version "2019-12-20" :title
                                   "Redshift Data API Service" :operations
                                   '(batch-execute-statement cancel-statement
                                     describe-statement describe-table
                                     execute-statement get-statement-result
                                     get-statement-result-v2 list-databases
                                     list-schemas list-statements list-tables)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Redshift Data")
                                      ("arnNamespace" . "redshift-data"))
                                     ("aws.auth#sigv4"
                                      ("name" . "redshift-data"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error active-sessions-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ActiveSessionsExceededException")
                                (:error-code 400)
                                (:base-class redshift-data-error))

(smithy/sdk/shapes:define-error active-statements-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ActiveStatementsExceededException")
                                (:error-code 400)
                                (:base-class redshift-data-error))

(smithy/sdk/shapes:define-error batch-execute-statement-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (statement-id :target-type string :required
                                  common-lisp:t :member-name "StatementId"))
                                (:shape-name "BatchExecuteStatementException")
                                (:error-code 500)
                                (:base-class redshift-data-error))

(smithy/sdk/shapes:define-input batch-execute-statement-input common-lisp:nil
                                ((sqls :target-type sql-list :required
                                  common-lisp:t :member-name "Sqls")
                                 (cluster-identifier :target-type
                                  cluster-identifier-string :member-name
                                  "ClusterIdentifier")
                                 (secret-arn :target-type secret-arn
                                  :member-name "SecretArn")
                                 (db-user :target-type string :member-name
                                  "DbUser")
                                 (database :target-type string :member-name
                                  "Database")
                                 (with-event :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "WithEvent")
                                 (statement-name :target-type
                                  statement-name-string :member-name
                                  "StatementName")
                                 (workgroup-name :target-type
                                  workgroup-name-string :member-name
                                  "WorkgroupName")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (session-keep-alive-seconds :target-type
                                  session-alive-seconds :member-name
                                  "SessionKeepAliveSeconds")
                                 (session-id :target-type uuid :member-name
                                  "SessionId")
                                 (result-format :target-type
                                  result-format-string :member-name
                                  "ResultFormat"))
                                (:shape-name "BatchExecuteStatementInput"))

(smithy/sdk/shapes:define-output batch-execute-statement-output common-lisp:nil
                                 ((id :target-type uuid :member-name "Id")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (cluster-identifier :target-type
                                   cluster-identifier-string :member-name
                                   "ClusterIdentifier")
                                  (db-user :target-type string :member-name
                                   "DbUser")
                                  (db-groups :target-type db-group-list
                                   :member-name "DbGroups")
                                  (database :target-type string :member-name
                                   "Database")
                                  (secret-arn :target-type secret-arn
                                   :member-name "SecretArn")
                                  (workgroup-name :target-type
                                   workgroup-name-string :member-name
                                   "WorkgroupName")
                                  (session-id :target-type uuid :member-name
                                   "SessionId"))
                                 (:shape-name "BatchExecuteStatementOutput"))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boxed-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type boxed-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input cancel-statement-request common-lisp:nil
                                ((id :target-type uuid :required common-lisp:t
                                  :member-name "Id"))
                                (:shape-name "CancelStatementRequest"))

(smithy/sdk/shapes:define-output cancel-statement-response common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "Status"))
                                 (:shape-name "CancelStatementResponse"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cluster-identifier-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list column-list :member column-metadata)

(smithy/sdk/shapes:define-structure column-metadata common-lisp:nil
                                    ((is-case-sensitive :target-type bool
                                      :member-name "isCaseSensitive")
                                     (is-currency :target-type bool
                                      :member-name "isCurrency")
                                     (is-signed :target-type bool :member-name
                                      "isSigned")
                                     (label :target-type string :member-name
                                      "label")
                                     (name :target-type string :member-name
                                      "name")
                                     (nullable :target-type integer
                                      :member-name "nullable")
                                     (precision :target-type integer
                                      :member-name "precision")
                                     (scale :target-type integer :member-name
                                      "scale")
                                     (schema-name :target-type string
                                      :member-name "schemaName")
                                     (table-name :target-type string
                                      :member-name "tableName")
                                     (type-name :target-type string
                                      :member-name "typeName")
                                     (length :target-type integer :member-name
                                      "length")
                                     (column-default :target-type string
                                      :member-name "columnDefault"))
                                    (:shape-name "ColumnMetadata"))

(smithy/sdk/shapes:define-list column-metadata-list :member column-metadata)

(smithy/sdk/shapes:define-error database-connection-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "DatabaseConnectionException")
                                (:error-code 500)
                                (:base-class redshift-data-error))

(smithy/sdk/shapes:define-list database-list :member string)

(smithy/sdk/shapes:define-list db-group-list :member string)

(smithy/sdk/shapes:define-input describe-statement-request common-lisp:nil
                                ((id :target-type uuid :required common-lisp:t
                                  :member-name "Id"))
                                (:shape-name "DescribeStatementRequest"))

(smithy/sdk/shapes:define-output describe-statement-response common-lisp:nil
                                 ((id :target-type uuid :required common-lisp:t
                                   :member-name "Id")
                                  (secret-arn :target-type secret-arn
                                   :member-name "SecretArn")
                                  (db-user :target-type string :member-name
                                   "DbUser")
                                  (database :target-type string :member-name
                                   "Database")
                                  (cluster-identifier :target-type string
                                   :member-name "ClusterIdentifier")
                                  (duration :target-type long :member-name
                                   "Duration")
                                  (error :target-type string :member-name
                                   "Error")
                                  (status :target-type status-string
                                   :member-name "Status")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "UpdatedAt")
                                  (redshift-pid :target-type long :member-name
                                   "RedshiftPid")
                                  (has-result-set :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "HasResultSet")
                                  (query-string :target-type statement-string
                                   :member-name "QueryString")
                                  (result-rows :target-type long :member-name
                                   "ResultRows")
                                  (result-size :target-type long :member-name
                                   "ResultSize")
                                  (redshift-query-id :target-type long
                                   :member-name "RedshiftQueryId")
                                  (query-parameters :target-type
                                   sql-parameters-list :member-name
                                   "QueryParameters")
                                  (sub-statements :target-type
                                   sub-statement-list :member-name
                                   "SubStatements")
                                  (workgroup-name :target-type
                                   workgroup-name-string :member-name
                                   "WorkgroupName")
                                  (session-id :target-type string :member-name
                                   "SessionId")
                                  (result-format :target-type
                                   result-format-string :member-name
                                   "ResultFormat"))
                                 (:shape-name "DescribeStatementResponse"))

(smithy/sdk/shapes:define-input describe-table-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier-string :member-name
                                  "ClusterIdentifier")
                                 (secret-arn :target-type secret-arn
                                  :member-name "SecretArn")
                                 (db-user :target-type string :member-name
                                  "DbUser")
                                 (database :target-type string :required
                                  common-lisp:t :member-name "Database")
                                 (connected-database :target-type string
                                  :member-name "ConnectedDatabase")
                                 (schema :target-type string :member-name
                                  "Schema")
                                 (table :target-type string :member-name
                                  "Table")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (workgroup-name :target-type
                                  workgroup-name-string :member-name
                                  "WorkgroupName"))
                                (:shape-name "DescribeTableRequest"))

(smithy/sdk/shapes:define-output describe-table-response common-lisp:nil
                                 ((table-name :target-type string :member-name
                                   "TableName")
                                  (column-list :target-type column-list
                                   :member-name "ColumnList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeTableResponse"))

(smithy/sdk/shapes:define-error execute-statement-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (statement-id :target-type string :required
                                  common-lisp:t :member-name "StatementId"))
                                (:shape-name "ExecuteStatementException")
                                (:error-code 500)
                                (:base-class redshift-data-error))

(smithy/sdk/shapes:define-input execute-statement-input common-lisp:nil
                                ((sql :target-type statement-string :required
                                  common-lisp:t :member-name "Sql")
                                 (cluster-identifier :target-type
                                  cluster-identifier-string :member-name
                                  "ClusterIdentifier")
                                 (secret-arn :target-type secret-arn
                                  :member-name "SecretArn")
                                 (db-user :target-type string :member-name
                                  "DbUser")
                                 (database :target-type string :member-name
                                  "Database")
                                 (with-event :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "WithEvent")
                                 (statement-name :target-type
                                  statement-name-string :member-name
                                  "StatementName")
                                 (parameters :target-type sql-parameters-list
                                  :member-name "Parameters")
                                 (workgroup-name :target-type
                                  workgroup-name-string :member-name
                                  "WorkgroupName")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (session-keep-alive-seconds :target-type
                                  session-alive-seconds :member-name
                                  "SessionKeepAliveSeconds")
                                 (session-id :target-type uuid :member-name
                                  "SessionId")
                                 (result-format :target-type
                                  result-format-string :member-name
                                  "ResultFormat"))
                                (:shape-name "ExecuteStatementInput"))

(smithy/sdk/shapes:define-output execute-statement-output common-lisp:nil
                                 ((id :target-type uuid :member-name "Id")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt")
                                  (cluster-identifier :target-type
                                   cluster-identifier-string :member-name
                                   "ClusterIdentifier")
                                  (db-user :target-type string :member-name
                                   "DbUser")
                                  (db-groups :target-type db-group-list
                                   :member-name "DbGroups")
                                  (database :target-type string :member-name
                                   "Database")
                                  (secret-arn :target-type secret-arn
                                   :member-name "SecretArn")
                                  (workgroup-name :target-type
                                   workgroup-name-string :member-name
                                   "WorkgroupName")
                                  (session-id :target-type uuid :member-name
                                   "SessionId"))
                                 (:shape-name "ExecuteStatementOutput"))

(smithy/sdk/shapes:define-union field common-lisp:nil
                                ((is-null :target-type boxed-boolean
                                  :member-name "isNull")
                                 (boolean-value :target-type boxed-boolean
                                  :member-name "booleanValue")
                                 (long-value :target-type boxed-long
                                  :member-name "longValue")
                                 (double-value :target-type boxed-double
                                  :member-name "doubleValue")
                                 (string-value :target-type string :member-name
                                  "stringValue")
                                 (blob-value :target-type blob :member-name
                                  "blobValue"))
                                (:shape-name "Field"))

(smithy/sdk/shapes:define-list field-list :member field)

(smithy/sdk/shapes:define-list formatted-sql-records :member query-records)

(smithy/sdk/shapes:define-input get-statement-result-request common-lisp:nil
                                ((id :target-type uuid :required common-lisp:t
                                  :member-name "Id")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "GetStatementResultRequest"))

(smithy/sdk/shapes:define-output get-statement-result-response common-lisp:nil
                                 ((records :target-type sql-records :required
                                   common-lisp:t :member-name "Records")
                                  (column-metadata :target-type
                                   column-metadata-list :member-name
                                   "ColumnMetadata")
                                  (total-num-rows :target-type long
                                   :member-name "TotalNumRows")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetStatementResultResponse"))

(smithy/sdk/shapes:define-input get-statement-result-v2request common-lisp:nil
                                ((id :target-type uuid :required common-lisp:t
                                  :member-name "Id")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "GetStatementResultV2Request"))

(smithy/sdk/shapes:define-output get-statement-result-v2response
                                 common-lisp:nil
                                 ((records :target-type formatted-sql-records
                                   :required common-lisp:t :member-name
                                   "Records")
                                  (column-metadata :target-type
                                   column-metadata-list :member-name
                                   "ColumnMetadata")
                                  (total-num-rows :target-type long
                                   :member-name "TotalNumRows")
                                  (result-format :target-type
                                   result-format-string :member-name
                                   "ResultFormat")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetStatementResultV2Response"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class redshift-data-error))

(smithy/sdk/shapes:define-input list-databases-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier-string :member-name
                                  "ClusterIdentifier")
                                 (database :target-type string :required
                                  common-lisp:t :member-name "Database")
                                 (secret-arn :target-type secret-arn
                                  :member-name "SecretArn")
                                 (db-user :target-type string :member-name
                                  "DbUser")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (workgroup-name :target-type
                                  workgroup-name-string :member-name
                                  "WorkgroupName"))
                                (:shape-name "ListDatabasesRequest"))

(smithy/sdk/shapes:define-output list-databases-response common-lisp:nil
                                 ((databases :target-type database-list
                                   :member-name "Databases")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListDatabasesResponse"))

(smithy/sdk/shapes:define-input list-schemas-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier-string :member-name
                                  "ClusterIdentifier")
                                 (secret-arn :target-type secret-arn
                                  :member-name "SecretArn")
                                 (db-user :target-type string :member-name
                                  "DbUser")
                                 (database :target-type string :required
                                  common-lisp:t :member-name "Database")
                                 (connected-database :target-type string
                                  :member-name "ConnectedDatabase")
                                 (schema-pattern :target-type string
                                  :member-name "SchemaPattern")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (workgroup-name :target-type
                                  workgroup-name-string :member-name
                                  "WorkgroupName"))
                                (:shape-name "ListSchemasRequest"))

(smithy/sdk/shapes:define-output list-schemas-response common-lisp:nil
                                 ((schemas :target-type schema-list
                                   :member-name "Schemas")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListSchemasResponse"))

(smithy/sdk/shapes:define-type list-statements-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-statements-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  list-statements-limit :member-name
                                  "MaxResults")
                                 (statement-name :target-type
                                  statement-name-string :member-name
                                  "StatementName")
                                 (status :target-type status-string
                                  :member-name "Status")
                                 (role-level :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "RoleLevel")
                                 (database :target-type string :member-name
                                  "Database")
                                 (cluster-identifier :target-type
                                  cluster-identifier-string :member-name
                                  "ClusterIdentifier")
                                 (workgroup-name :target-type
                                  workgroup-name-string :member-name
                                  "WorkgroupName"))
                                (:shape-name "ListStatementsRequest"))

(smithy/sdk/shapes:define-output list-statements-response common-lisp:nil
                                 ((statements :target-type statement-list
                                   :required common-lisp:t :member-name
                                   "Statements")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListStatementsResponse"))

(smithy/sdk/shapes:define-input list-tables-request common-lisp:nil
                                ((cluster-identifier :target-type
                                  cluster-identifier-string :member-name
                                  "ClusterIdentifier")
                                 (secret-arn :target-type secret-arn
                                  :member-name "SecretArn")
                                 (db-user :target-type string :member-name
                                  "DbUser")
                                 (database :target-type string :required
                                  common-lisp:t :member-name "Database")
                                 (connected-database :target-type string
                                  :member-name "ConnectedDatabase")
                                 (schema-pattern :target-type string
                                  :member-name "SchemaPattern")
                                 (table-pattern :target-type string
                                  :member-name "TablePattern")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (workgroup-name :target-type
                                  workgroup-name-string :member-name
                                  "WorkgroupName"))
                                (:shape-name "ListTablesRequest"))

(smithy/sdk/shapes:define-output list-tables-response common-lisp:nil
                                 ((tables :target-type table-list :member-name
                                   "Tables")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListTablesResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union query-records common-lisp:nil
                                ((csvrecords :target-type string :member-name
                                  "CSVRecords"))
                                (:shape-name "QueryRecords"))

(smithy/sdk/shapes:define-error query-timeout-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "QueryTimeoutException")
                                (:error-code 400)
                                (:base-class redshift-data-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class redshift-data-error))

(smithy/sdk/shapes:define-type result-format-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list schema-list :member string)

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-alive-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list sql-list :member statement-string)

(smithy/sdk/shapes:define-structure sql-parameter common-lisp:nil
                                    ((name :target-type parameter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type parameter-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "SqlParameter"))

(smithy/sdk/shapes:define-list sql-parameters-list :member sql-parameter)

(smithy/sdk/shapes:define-list sql-records :member field-list)

(smithy/sdk/shapes:define-structure statement-data common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "Id")
                                     (query-string :target-type
                                      statement-string :member-name
                                      "QueryString")
                                     (query-strings :target-type
                                      statement-string-list :member-name
                                      "QueryStrings")
                                     (secret-arn :target-type secret-arn
                                      :member-name "SecretArn")
                                     (status :target-type status-string
                                      :member-name "Status")
                                     (statement-name :target-type
                                      statement-name-string :member-name
                                      "StatementName")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt")
                                     (query-parameters :target-type
                                      sql-parameters-list :member-name
                                      "QueryParameters")
                                     (is-batch-statement :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "IsBatchStatement")
                                     (result-format :target-type
                                      result-format-string :member-name
                                      "ResultFormat")
                                     (session-id :target-type uuid :member-name
                                      "SessionId"))
                                    (:shape-name "StatementData"))

(smithy/sdk/shapes:define-list statement-list :member statement-data)

(smithy/sdk/shapes:define-type statement-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type statement-status-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type statement-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list statement-string-list :member statement-string)

(smithy/sdk/shapes:define-type status-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sub-statement-data common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "Id")
                                     (duration :target-type long :member-name
                                      "Duration")
                                     (error :target-type string :member-name
                                      "Error")
                                     (status :target-type
                                      statement-status-string :member-name
                                      "Status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt")
                                     (query-string :target-type
                                      statement-string :member-name
                                      "QueryString")
                                     (result-rows :target-type long
                                      :member-name "ResultRows")
                                     (result-size :target-type long
                                      :member-name "ResultSize")
                                     (redshift-query-id :target-type long
                                      :member-name "RedshiftQueryId")
                                     (has-result-set :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "HasResultSet"))
                                    (:shape-name "SubStatementData"))

(smithy/sdk/shapes:define-list sub-statement-list :member sub-statement-data)

(smithy/sdk/shapes:define-list table-list :member table-member)

(smithy/sdk/shapes:define-structure table-member common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (type :target-type string :member-name
                                      "type")
                                     (schema :target-type string :member-name
                                      "schema"))
                                    (:shape-name "TableMember"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class redshift-data-error))

(smithy/sdk/shapes:define-type workgroup-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bool smithy/sdk/smithy-types:boolean)

(smithy/sdk/operation:define-operation batch-execute-statement :shape-name
                                       "BatchExecuteStatement" :input
                                       batch-execute-statement-input :output
                                       batch-execute-statement-output :errors
                                       (active-sessions-exceeded-exception
                                        active-statements-exceeded-exception
                                        batch-execute-statement-exception
                                        internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation cancel-statement :shape-name
                                       "CancelStatement" :input
                                       cancel-statement-request :output
                                       cancel-statement-response :errors
                                       (database-connection-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-statement :shape-name
                                       "DescribeStatement" :input
                                       describe-statement-request :output
                                       describe-statement-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-table :shape-name
                                       "DescribeTable" :input
                                       describe-table-request :output
                                       describe-table-response :errors
                                       (database-connection-exception
                                        internal-server-exception
                                        query-timeout-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation execute-statement :shape-name
                                       "ExecuteStatement" :input
                                       execute-statement-input :output
                                       execute-statement-output :errors
                                       (active-sessions-exceeded-exception
                                        active-statements-exceeded-exception
                                        execute-statement-exception
                                        internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-statement-result :shape-name
                                       "GetStatementResult" :input
                                       get-statement-result-request :output
                                       get-statement-result-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-statement-result-v2 :shape-name
                                       "GetStatementResultV2" :input
                                       get-statement-result-v2request :output
                                       get-statement-result-v2response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-databases :shape-name
                                       "ListDatabases" :input
                                       list-databases-request :output
                                       list-databases-response :errors
                                       (database-connection-exception
                                        internal-server-exception
                                        query-timeout-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-schemas :shape-name "ListSchemas"
                                       :input list-schemas-request :output
                                       list-schemas-response :errors
                                       (database-connection-exception
                                        internal-server-exception
                                        query-timeout-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-statements :shape-name
                                       "ListStatements" :input
                                       list-statements-request :output
                                       list-statements-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tables :shape-name "ListTables"
                                       :input list-tables-request :output
                                       list-tables-response :errors
                                       (database-connection-exception
                                        internal-server-exception
                                        query-timeout-exception
                                        validation-exception))
