(uiop/package:define-package #:pira/rds-data (:use)
                             (:export #:arn #:array-of-array #:array-value
                              #:array-value-list #:batch-execute-statement
                              #:batch-execute-statement-request
                              #:batch-execute-statement-response
                              #:begin-transaction #:begin-transaction-request
                              #:begin-transaction-response #:blob #:boolean
                              #:boolean-array #:boxed-boolean #:boxed-double
                              #:boxed-float #:boxed-integer #:boxed-long
                              #:column-metadata #:commit-transaction
                              #:commit-transaction-request
                              #:commit-transaction-response #:db-name
                              #:decimal-return-type #:double-array
                              #:error-message #:execute-sql
                              #:execute-sql-request #:execute-sql-response
                              #:execute-statement #:execute-statement-request
                              #:execute-statement-response #:field #:field-list
                              #:formatted-sql-records #:id #:integer #:long
                              #:long-array #:long-return-type #:metadata
                              #:parameter-name #:rds-data-service #:record
                              #:records #:records-format-type #:records-updated
                              #:result-frame #:result-set-metadata
                              #:result-set-options #:rollback-transaction
                              #:rollback-transaction-request
                              #:rollback-transaction-response #:row
                              #:sql-parameter #:sql-parameter-sets
                              #:sql-parameters-list #:sql-records
                              #:sql-statement #:sql-statement-result
                              #:sql-statement-results #:string #:string-array
                              #:struct-value #:transaction-status #:type-hint
                              #:update-result #:update-results #:value))
(common-lisp:in-package #:pira/rds-data)

(smithy/sdk/service:define-service rds-data-service :shape-name
                                   "RdsDataService" :version "2018-08-01"
                                   :title "AWS RDS DataService" :traits
                                   '(("aws.api#service" ("sdkId" . "RDS Data")
                                      ("arnNamespace" . "rds-data"))
                                     ("aws.auth#sigv4" ("name" . "rds-data"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list array-of-array :member array-value)

(smithy/sdk/shapes:define-union array-value common-lisp:nil
                                ((boolean-values :target-type boolean-array
                                  :member-name "booleanValues")
                                 (long-values :target-type long-array
                                  :member-name "longValues")
                                 (double-values :target-type double-array
                                  :member-name "doubleValues")
                                 (string-values :target-type string-array
                                  :member-name "stringValues")
                                 (array-values :target-type array-of-array
                                  :member-name "arrayValues"))
                                (:shape-name "ArrayValue"))

(smithy/sdk/shapes:define-list array-value-list :member value)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure batch-execute-statement-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (secret-arn :target-type arn :required
                                      common-lisp:t :member-name "secretArn")
                                     (sql :target-type sql-statement :required
                                      common-lisp:t :member-name "sql")
                                     (database :target-type db-name
                                      :member-name "database")
                                     (schema :target-type db-name :member-name
                                      "schema")
                                     (parameter-sets :target-type
                                      sql-parameter-sets :member-name
                                      "parameterSets")
                                     (transaction-id :target-type id
                                      :member-name "transactionId"))
                                    (:shape-name
                                     "BatchExecuteStatementRequest"))

(smithy/sdk/shapes:define-structure batch-execute-statement-response
                                    common-lisp:nil
                                    ((update-results :target-type
                                      update-results :member-name
                                      "updateResults"))
                                    (:shape-name
                                     "BatchExecuteStatementResponse"))

(smithy/sdk/shapes:define-structure begin-transaction-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (secret-arn :target-type arn :required
                                      common-lisp:t :member-name "secretArn")
                                     (database :target-type db-name
                                      :member-name "database")
                                     (schema :target-type db-name :member-name
                                      "schema"))
                                    (:shape-name "BeginTransactionRequest"))

(smithy/sdk/shapes:define-structure begin-transaction-response common-lisp:nil
                                    ((transaction-id :target-type id
                                      :member-name "transactionId"))
                                    (:shape-name "BeginTransactionResponse"))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list boolean-array :member boxed-boolean)

(smithy/sdk/shapes:define-type boxed-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type boxed-float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type boxed-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type boxed-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure column-metadata common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (type :target-type integer :member-name
                                      "type")
                                     (type-name :target-type string
                                      :member-name "typeName")
                                     (label :target-type string :member-name
                                      "label")
                                     (schema-name :target-type string
                                      :member-name "schemaName")
                                     (table-name :target-type string
                                      :member-name "tableName")
                                     (is-auto-increment :target-type boolean
                                      :member-name "isAutoIncrement")
                                     (is-signed :target-type boolean
                                      :member-name "isSigned")
                                     (is-currency :target-type boolean
                                      :member-name "isCurrency")
                                     (is-case-sensitive :target-type boolean
                                      :member-name "isCaseSensitive")
                                     (nullable :target-type integer
                                      :member-name "nullable")
                                     (precision :target-type integer
                                      :member-name "precision")
                                     (scale :target-type integer :member-name
                                      "scale")
                                     (array-base-column-type :target-type
                                      integer :member-name
                                      "arrayBaseColumnType"))
                                    (:shape-name "ColumnMetadata"))

(smithy/sdk/shapes:define-structure commit-transaction-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (secret-arn :target-type arn :required
                                      common-lisp:t :member-name "secretArn")
                                     (transaction-id :target-type id :required
                                      common-lisp:t :member-name
                                      "transactionId"))
                                    (:shape-name "CommitTransactionRequest"))

(smithy/sdk/shapes:define-structure commit-transaction-response common-lisp:nil
                                    ((transaction-status :target-type
                                      transaction-status :member-name
                                      "transactionStatus"))
                                    (:shape-name "CommitTransactionResponse"))

(smithy/sdk/shapes:define-error database-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DatabaseErrorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error database-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DatabaseNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error database-resuming-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DatabaseResumingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error database-unavailable-exception common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DatabaseUnavailableException")
                                (:error-code 504))

(smithy/sdk/shapes:define-type db-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type decimal-return-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list double-array :member boxed-double)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execute-sql-request common-lisp:nil
                                    ((db-cluster-or-instance-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "dbClusterOrInstanceArn")
                                     (aws-secret-store-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "awsSecretStoreArn")
                                     (sql-statements :target-type sql-statement
                                      :required common-lisp:t :member-name
                                      "sqlStatements")
                                     (database :target-type db-name
                                      :member-name "database")
                                     (schema :target-type db-name :member-name
                                      "schema"))
                                    (:shape-name "ExecuteSqlRequest"))

(smithy/sdk/shapes:define-structure execute-sql-response common-lisp:nil
                                    ((sql-statement-results :target-type
                                      sql-statement-results :member-name
                                      "sqlStatementResults"))
                                    (:shape-name "ExecuteSqlResponse"))

(smithy/sdk/shapes:define-structure execute-statement-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (secret-arn :target-type arn :required
                                      common-lisp:t :member-name "secretArn")
                                     (sql :target-type sql-statement :required
                                      common-lisp:t :member-name "sql")
                                     (database :target-type db-name
                                      :member-name "database")
                                     (schema :target-type db-name :member-name
                                      "schema")
                                     (parameters :target-type
                                      sql-parameters-list :member-name
                                      "parameters")
                                     (transaction-id :target-type id
                                      :member-name "transactionId")
                                     (include-result-metadata :target-type
                                      boolean :member-name
                                      "includeResultMetadata")
                                     (continue-after-timeout :target-type
                                      boolean :member-name
                                      "continueAfterTimeout")
                                     (result-set-options :target-type
                                      result-set-options :member-name
                                      "resultSetOptions")
                                     (format-records-as :target-type
                                      records-format-type :member-name
                                      "formatRecordsAs"))
                                    (:shape-name "ExecuteStatementRequest"))

(smithy/sdk/shapes:define-structure execute-statement-response common-lisp:nil
                                    ((records :target-type sql-records
                                      :member-name "records")
                                     (column-metadata :target-type metadata
                                      :member-name "columnMetadata")
                                     (number-of-records-updated :target-type
                                      records-updated :member-name
                                      "numberOfRecordsUpdated")
                                     (generated-fields :target-type field-list
                                      :member-name "generatedFields")
                                     (formatted-records :target-type
                                      formatted-sql-records :member-name
                                      "formattedRecords"))
                                    (:shape-name "ExecuteStatementResponse"))

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
                                  "blobValue")
                                 (array-value :target-type array-value
                                  :member-name "arrayValue"))
                                (:shape-name "Field"))

(smithy/sdk/shapes:define-list field-list :member field)

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type formatted-sql-records
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error http-endpoint-not-enabled-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "HttpEndpointNotEnabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-resource-state-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidResourceStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-secret-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidSecretException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list long-array :member boxed-long)

(smithy/sdk/shapes:define-type long-return-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metadata :member column-metadata)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure record common-lisp:nil
                                    ((values :target-type row :member-name
                                      "values"))
                                    (:shape-name "Record"))

(smithy/sdk/shapes:define-list records :member record)

(smithy/sdk/shapes:define-type records-format-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type records-updated smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure result-frame common-lisp:nil
                                    ((result-set-metadata :target-type
                                      result-set-metadata :member-name
                                      "resultSetMetadata")
                                     (records :target-type records :member-name
                                      "records"))
                                    (:shape-name "ResultFrame"))

(smithy/sdk/shapes:define-structure result-set-metadata common-lisp:nil
                                    ((column-count :target-type long
                                      :member-name "columnCount")
                                     (column-metadata :target-type metadata
                                      :member-name "columnMetadata"))
                                    (:shape-name "ResultSetMetadata"))

(smithy/sdk/shapes:define-structure result-set-options common-lisp:nil
                                    ((decimal-return-type :target-type
                                      decimal-return-type :member-name
                                      "decimalReturnType")
                                     (long-return-type :target-type
                                      long-return-type :member-name
                                      "longReturnType"))
                                    (:shape-name "ResultSetOptions"))

(smithy/sdk/shapes:define-structure rollback-transaction-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (secret-arn :target-type arn :required
                                      common-lisp:t :member-name "secretArn")
                                     (transaction-id :target-type id :required
                                      common-lisp:t :member-name
                                      "transactionId"))
                                    (:shape-name "RollbackTransactionRequest"))

(smithy/sdk/shapes:define-structure rollback-transaction-response
                                    common-lisp:nil
                                    ((transaction-status :target-type
                                      transaction-status :member-name
                                      "transactionStatus"))
                                    (:shape-name "RollbackTransactionResponse"))

(smithy/sdk/shapes:define-list row :member value)

(smithy/sdk/shapes:define-error secrets-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "SecretsErrorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error service-unavailable-error common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ServiceUnavailableError")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure sql-parameter common-lisp:nil
                                    ((name :target-type parameter-name
                                      :member-name "name")
                                     (value :target-type field :member-name
                                      "value")
                                     (type-hint :target-type type-hint
                                      :member-name "typeHint"))
                                    (:shape-name "SqlParameter"))

(smithy/sdk/shapes:define-list sql-parameter-sets :member sql-parameters-list)

(smithy/sdk/shapes:define-list sql-parameters-list :member sql-parameter)

(smithy/sdk/shapes:define-list sql-records :member field-list)

(smithy/sdk/shapes:define-type sql-statement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sql-statement-result common-lisp:nil
                                    ((result-frame :target-type result-frame
                                      :member-name "resultFrame")
                                     (number-of-records-updated :target-type
                                      records-updated :member-name
                                      "numberOfRecordsUpdated"))
                                    (:shape-name "SqlStatementResult"))

(smithy/sdk/shapes:define-list sql-statement-results :member
                               sql-statement-result)

(smithy/sdk/shapes:define-error statement-timeout-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (db-connection-id :target-type long
                                  :member-name "dbConnectionId"))
                                (:shape-name "StatementTimeoutException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-array :member string)

(smithy/sdk/shapes:define-structure struct-value common-lisp:nil
                                    ((attributes :target-type array-value-list
                                      :member-name "attributes"))
                                    (:shape-name "StructValue"))

(smithy/sdk/shapes:define-error transaction-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TransactionNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type transaction-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-hint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unsupported-result-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedResultException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure update-result common-lisp:nil
                                    ((generated-fields :target-type field-list
                                      :member-name "generatedFields"))
                                    (:shape-name "UpdateResult"))

(smithy/sdk/shapes:define-list update-results :member update-result)

(smithy/sdk/shapes:define-union value common-lisp:nil
                                ((is-null :target-type boxed-boolean
                                  :member-name "isNull")
                                 (bit-value :target-type boxed-boolean
                                  :member-name "bitValue")
                                 (big-int-value :target-type boxed-long
                                  :member-name "bigIntValue")
                                 (int-value :target-type boxed-integer
                                  :member-name "intValue")
                                 (double-value :target-type boxed-double
                                  :member-name "doubleValue")
                                 (real-value :target-type boxed-float
                                  :member-name "realValue")
                                 (string-value :target-type string :member-name
                                  "stringValue")
                                 (blob-value :target-type blob :member-name
                                  "blobValue")
                                 (array-values :target-type array-value-list
                                  :member-name "arrayValues")
                                 (struct-value :target-type struct-value
                                  :member-name "structValue"))
                                (:shape-name "Value"))

(smithy/sdk/operation:define-operation batch-execute-statement :shape-name
                                       "BatchExecuteStatement" :input
                                       batch-execute-statement-request :output
                                       batch-execute-statement-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        database-error-exception
                                        database-not-found-exception
                                        database-resuming-exception
                                        database-unavailable-exception
                                        forbidden-exception
                                        http-endpoint-not-enabled-exception
                                        internal-server-error-exception
                                        invalid-resource-state-exception
                                        invalid-secret-exception
                                        secrets-error-exception
                                        service-unavailable-error
                                        statement-timeout-exception
                                        transaction-not-found-exception)
                                       :method "POST" :uri "/BatchExecute"
                                       :code 200)

(smithy/sdk/operation:define-operation begin-transaction :shape-name
                                       "BeginTransaction" :input
                                       begin-transaction-request :output
                                       begin-transaction-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        database-error-exception
                                        database-not-found-exception
                                        database-resuming-exception
                                        database-unavailable-exception
                                        forbidden-exception
                                        http-endpoint-not-enabled-exception
                                        internal-server-error-exception
                                        invalid-resource-state-exception
                                        invalid-secret-exception
                                        secrets-error-exception
                                        service-unavailable-error
                                        statement-timeout-exception
                                        transaction-not-found-exception)
                                       :method "POST" :uri "/BeginTransaction"
                                       :code 200)

(smithy/sdk/operation:define-operation commit-transaction :shape-name
                                       "CommitTransaction" :input
                                       commit-transaction-request :output
                                       commit-transaction-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        database-error-exception
                                        database-not-found-exception
                                        database-unavailable-exception
                                        forbidden-exception
                                        http-endpoint-not-enabled-exception
                                        internal-server-error-exception
                                        invalid-resource-state-exception
                                        invalid-secret-exception
                                        not-found-exception
                                        secrets-error-exception
                                        service-unavailable-error
                                        statement-timeout-exception
                                        transaction-not-found-exception)
                                       :method "POST" :uri "/CommitTransaction"
                                       :code 200)

(smithy/sdk/operation:define-operation execute-sql :shape-name "ExecuteSql"
                                       :input execute-sql-request :output
                                       execute-sql-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-error)
                                       :method "POST" :uri "/ExecuteSql" :code
                                       200)

(smithy/sdk/operation:define-operation execute-statement :shape-name
                                       "ExecuteStatement" :input
                                       execute-statement-request :output
                                       execute-statement-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        database-error-exception
                                        database-not-found-exception
                                        database-resuming-exception
                                        database-unavailable-exception
                                        forbidden-exception
                                        http-endpoint-not-enabled-exception
                                        internal-server-error-exception
                                        invalid-resource-state-exception
                                        invalid-secret-exception
                                        secrets-error-exception
                                        service-unavailable-error
                                        statement-timeout-exception
                                        transaction-not-found-exception
                                        unsupported-result-exception)
                                       :method "POST" :uri "/Execute" :code 200)

(smithy/sdk/operation:define-operation rollback-transaction :shape-name
                                       "RollbackTransaction" :input
                                       rollback-transaction-request :output
                                       rollback-transaction-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        database-error-exception
                                        database-not-found-exception
                                        database-unavailable-exception
                                        forbidden-exception
                                        http-endpoint-not-enabled-exception
                                        internal-server-error-exception
                                        invalid-resource-state-exception
                                        invalid-secret-exception
                                        not-found-exception
                                        secrets-error-exception
                                        service-unavailable-error
                                        statement-timeout-exception
                                        transaction-not-found-exception)
                                       :method "POST" :uri
                                       "/RollbackTransaction" :code 200)
