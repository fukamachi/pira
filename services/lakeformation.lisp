(uiop/package:define-package #:pira/lakeformation (:use)
                             (:export #:awslake-formation
                              #:access-key-id-string #:add-lftags-to-resource
                              #:add-object-input #:additional-context-map
                              #:all-rows-wildcard #:application-arn
                              #:application-status
                              #:assume-decorated-role-with-saml #:audit-context
                              #:audit-context-string
                              #:authorized-session-tag-value-list
                              #:batch-grant-permissions
                              #:batch-permissions-failure-entry
                              #:batch-permissions-failure-list
                              #:batch-permissions-request-entry
                              #:batch-permissions-request-entry-list
                              #:batch-revoke-permissions #:boolean
                              #:boolean-nullable #:cancel-transaction
                              #:catalog-id-string #:catalog-resource
                              #:column-lftag #:column-lftags-list
                              #:column-names #:column-wildcard
                              #:commit-transaction #:comparison-operator
                              #:condition #:context-key #:context-value
                              #:create-data-cells-filter #:create-lftag
                              #:create-lftag-expression
                              #:create-lake-formation-identity-center-configuration
                              #:create-lake-formation-opt-in
                              #:credential-timeout-duration-second-integer
                              #:data-cells-filter #:data-cells-filter-list
                              #:data-cells-filter-resource
                              #:data-lake-principal #:data-lake-principal-list
                              #:data-lake-principal-string
                              #:data-lake-resource-type #:data-lake-settings
                              #:data-location-resource #:database-lftags-list
                              #:database-resource #:date-time
                              #:delete-data-cells-filter #:delete-lftag
                              #:delete-lftag-expression
                              #:delete-lake-formation-identity-center-configuration
                              #:delete-lake-formation-opt-in
                              #:delete-object-input #:delete-objects-on-cancel
                              #:deregister-resource
                              #:describe-lake-formation-identity-center-configuration
                              #:describe-resource #:describe-transaction
                              #:description-string #:details-map #:etag-string
                              #:enable-status #:error-detail
                              #:error-message-string #:execution-statistics
                              #:expiration-timestamp #:expression
                              #:expression-string #:extend-transaction
                              #:external-filtering-configuration
                              #:field-name-string #:filter-condition
                              #:filter-condition-list #:get-data-cells-filter
                              #:get-data-lake-principal
                              #:get-data-lake-settings
                              #:get-effective-permissions-for-path #:get-lftag
                              #:get-lftag-expression #:get-query-state
                              #:get-query-state-request-query-id-string
                              #:get-query-statistics
                              #:get-query-statistics-request-query-id-string
                              #:get-resource-lftags #:get-table-objects
                              #:get-temporary-glue-partition-credentials
                              #:get-temporary-glue-table-credentials
                              #:get-work-unit-results
                              #:get-work-unit-results-request-query-id-string
                              #:get-work-unit-results-request-work-unit-id-long
                              #:get-work-units
                              #:get-work-units-request-query-id-string
                              #:grant-permissions #:hash-string #:iamrole-arn
                              #:iamsamlprovider-arn #:identifier
                              #:identity-center-instance-arn #:identity-string
                              #:key-string #:lftag #:lftag-error #:lftag-errors
                              #:lftag-expression #:lftag-expression-resource
                              #:lftag-expressions-list #:lftag-key
                              #:lftag-key-resource #:lftag-pair
                              #:lftag-policy-resource #:lftag-value
                              #:lftags-list #:lake-formation-opt-ins-info
                              #:lake-formation-opt-ins-info-list
                              #:last-modified-timestamp
                              #:list-data-cells-filter #:list-lftag-expressions
                              #:list-lftags #:list-lake-formation-opt-ins
                              #:list-permissions #:list-resources
                              #:list-table-storage-optimizers
                              #:list-transactions #:message-string
                              #:name-string #:nullable-boolean
                              #:nullable-string #:number-of-bytes
                              #:number-of-items #:number-of-milliseconds
                              #:object-size #:optimizer-type #:page-size
                              #:parameters-map #:parameters-map-value
                              #:partition-objects #:partition-value-list
                              #:partition-value-string #:partition-values-list
                              #:partitioned-table-objects-list #:path-string
                              #:path-string-list #:permission #:permission-list
                              #:permission-type #:permission-type-list
                              #:planning-statistics #:predicate-string
                              #:principal-permissions
                              #:principal-permissions-list
                              #:principal-resource-permissions
                              #:principal-resource-permissions-list
                              #:put-data-lake-settings #:query-id-string
                              #:query-parameter-map #:query-planning-context
                              #:query-planning-context-database-name-string
                              #:query-session-context #:query-state-string
                              #:ramresource-share-arn #:register-resource
                              #:remove-lftags-from-resource #:resource
                              #:resource-arn-string #:resource-info
                              #:resource-info-list #:resource-share-list
                              #:resource-share-type #:resource-type #:result
                              #:result-stream #:revoke-permissions #:row-filter
                              #:samlassertion-string #:scope-target
                              #:scope-targets #:search-databases-by-lftags
                              #:search-page-size #:search-tables-by-lftags
                              #:secret-access-key-string #:session-token-string
                              #:start-query-planning #:start-transaction
                              #:storage-optimizer #:storage-optimizer-config
                              #:storage-optimizer-config-key
                              #:storage-optimizer-config-map
                              #:storage-optimizer-config-value
                              #:storage-optimizer-list #:string-value
                              #:string-value-list
                              #:synthetic-get-work-unit-results-request-work-unit-token-string
                              #:synthetic-start-query-planning-request-query-string
                              #:table-lftags-list #:table-object
                              #:table-object-list #:table-resource
                              #:table-wildcard #:table-with-columns-resource
                              #:tag-value-list #:tagged-database #:tagged-table
                              #:timestamp #:token #:token-string
                              #:transaction-description
                              #:transaction-description-list
                              #:transaction-id-string #:transaction-status
                              #:transaction-status-filter #:transaction-type
                              #:true-false-string #:trusted-resource-owners
                              #:uri #:update-data-cells-filter #:update-lftag
                              #:update-lftag-expression
                              #:update-lake-formation-identity-center-configuration
                              #:update-resource #:update-table-objects
                              #:update-table-storage-optimizer #:value-string
                              #:value-string-list #:version-string
                              #:virtual-object #:virtual-object-list
                              #:work-unit-id-long #:work-unit-range
                              #:work-unit-range-list #:work-unit-token-string
                              #:write-operation #:write-operation-list))
(common-lisp:in-package #:pira/lakeformation)

(smithy/sdk/service:define-service awslake-formation :shape-name
                                   "AWSLakeFormation" :version "2017-03-31"
                                   :title "AWS Lake Formation" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "LakeFormation")
                                      ("arnNamespace" . "lakeformation")
                                      ("cloudFormationName" . "LakeFormation")
                                      ("cloudTrailEventSource"
                                       . "lakeformation.amazonaws.com")
                                      ("endpointPrefix" . "lakeformation"))
                                     ("aws.auth#sigv4"
                                      ("name" . "lakeformation"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type access-key-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input add-lftags-to-resource-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (resource :target-type resource :required
                                  common-lisp:t :member-name "Resource")
                                 (lftags :target-type lftags-list :required
                                  common-lisp:t :member-name "LFTags"))
                                (:shape-name "AddLFTagsToResourceRequest"))

(smithy/sdk/shapes:define-output add-lftags-to-resource-response
                                 common-lisp:nil
                                 ((failures :target-type lftag-errors
                                   :member-name "Failures"))
                                 (:shape-name "AddLFTagsToResourceResponse"))

(smithy/sdk/shapes:define-structure add-object-input common-lisp:nil
                                    ((uri :target-type uri :required
                                      common-lisp:t :member-name "Uri")
                                     (etag :target-type etag-string :required
                                      common-lisp:t :member-name "ETag")
                                     (size :target-type object-size :required
                                      common-lisp:t :member-name "Size")
                                     (partition-values :target-type
                                      partition-values-list :member-name
                                      "PartitionValues"))
                                    (:shape-name "AddObjectInput"))

(smithy/sdk/shapes:define-map additional-context-map :key context-key :value
                              context-value)

(smithy/sdk/shapes:define-structure all-rows-wildcard common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AllRowsWildcard"))

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "AlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum application-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-input assume-decorated-role-with-samlrequest
                                common-lisp:nil
                                ((samlassertion :target-type
                                  samlassertion-string :required common-lisp:t
                                  :member-name "SAMLAssertion")
                                 (role-arn :target-type iamrole-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (principal-arn :target-type
                                  iamsamlprovider-arn :required common-lisp:t
                                  :member-name "PrincipalArn")
                                 (duration-seconds :target-type
                                  credential-timeout-duration-second-integer
                                  :member-name "DurationSeconds"))
                                (:shape-name
                                 "AssumeDecoratedRoleWithSAMLRequest"))

(smithy/sdk/shapes:define-output assume-decorated-role-with-samlresponse
                                 common-lisp:nil
                                 ((access-key-id :target-type
                                   access-key-id-string :member-name
                                   "AccessKeyId")
                                  (secret-access-key :target-type
                                   secret-access-key-string :member-name
                                   "SecretAccessKey")
                                  (session-token :target-type
                                   session-token-string :member-name
                                   "SessionToken")
                                  (expiration :target-type expiration-timestamp
                                   :member-name "Expiration"))
                                 (:shape-name
                                  "AssumeDecoratedRoleWithSAMLResponse"))

(smithy/sdk/shapes:define-structure audit-context common-lisp:nil
                                    ((additional-audit-context :target-type
                                      audit-context-string :member-name
                                      "AdditionalAuditContext"))
                                    (:shape-name "AuditContext"))

(smithy/sdk/shapes:define-type audit-context-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list authorized-session-tag-value-list :member
                               name-string)

(smithy/sdk/shapes:define-input batch-grant-permissions-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (entries :target-type
                                  batch-permissions-request-entry-list
                                  :required common-lisp:t :member-name
                                  "Entries"))
                                (:shape-name "BatchGrantPermissionsRequest"))

(smithy/sdk/shapes:define-output batch-grant-permissions-response
                                 common-lisp:nil
                                 ((failures :target-type
                                   batch-permissions-failure-list :member-name
                                   "Failures"))
                                 (:shape-name "BatchGrantPermissionsResponse"))

(smithy/sdk/shapes:define-structure batch-permissions-failure-entry
                                    common-lisp:nil
                                    ((request-entry :target-type
                                      batch-permissions-request-entry
                                      :member-name "RequestEntry")
                                     (error :target-type error-detail
                                      :member-name "Error"))
                                    (:shape-name
                                     "BatchPermissionsFailureEntry"))

(smithy/sdk/shapes:define-list batch-permissions-failure-list :member
                               batch-permissions-failure-entry)

(smithy/sdk/shapes:define-structure batch-permissions-request-entry
                                    common-lisp:nil
                                    ((id :target-type identifier :required
                                      common-lisp:t :member-name "Id")
                                     (principal :target-type
                                      data-lake-principal :member-name
                                      "Principal")
                                     (resource :target-type resource
                                      :member-name "Resource")
                                     (permissions :target-type permission-list
                                      :member-name "Permissions")
                                     (condition :target-type condition
                                      :member-name "Condition")
                                     (permissions-with-grant-option
                                      :target-type permission-list :member-name
                                      "PermissionsWithGrantOption"))
                                    (:shape-name
                                     "BatchPermissionsRequestEntry"))

(smithy/sdk/shapes:define-list batch-permissions-request-entry-list :member
                               batch-permissions-request-entry)

(smithy/sdk/shapes:define-input batch-revoke-permissions-request
                                common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (entries :target-type
                                  batch-permissions-request-entry-list
                                  :required common-lisp:t :member-name
                                  "Entries"))
                                (:shape-name "BatchRevokePermissionsRequest"))

(smithy/sdk/shapes:define-output batch-revoke-permissions-response
                                 common-lisp:nil
                                 ((failures :target-type
                                   batch-permissions-failure-list :member-name
                                   "Failures"))
                                 (:shape-name "BatchRevokePermissionsResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-nullable smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-transaction-request common-lisp:nil
                                ((transaction-id :target-type
                                  transaction-id-string :required common-lisp:t
                                  :member-name "TransactionId"))
                                (:shape-name "CancelTransactionRequest"))

(smithy/sdk/shapes:define-output cancel-transaction-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelTransactionResponse"))

(smithy/sdk/shapes:define-type catalog-id-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure catalog-resource common-lisp:nil
                                    ((id :target-type catalog-id-string
                                      :member-name "Id"))
                                    (:shape-name "CatalogResource"))

(smithy/sdk/shapes:define-structure column-lftag common-lisp:nil
                                    ((name :target-type name-string
                                      :member-name "Name")
                                     (lftags :target-type lftags-list
                                      :member-name "LFTags"))
                                    (:shape-name "ColumnLFTag"))

(smithy/sdk/shapes:define-list column-lftags-list :member column-lftag)

(smithy/sdk/shapes:define-list column-names :member name-string)

(smithy/sdk/shapes:define-structure column-wildcard common-lisp:nil
                                    ((excluded-column-names :target-type
                                      column-names :member-name
                                      "ExcludedColumnNames"))
                                    (:shape-name "ColumnWildcard"))

(smithy/sdk/shapes:define-input commit-transaction-request common-lisp:nil
                                ((transaction-id :target-type
                                  transaction-id-string :required common-lisp:t
                                  :member-name "TransactionId"))
                                (:shape-name "CommitTransactionRequest"))

(smithy/sdk/shapes:define-output commit-transaction-response common-lisp:nil
                                 ((transaction-status :target-type
                                   transaction-status :member-name
                                   "TransactionStatus"))
                                 (:shape-name "CommitTransactionResponse"))

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:eq "EQ")
  (:ne "NE")
  (:le "LE")
  (:lt "LT")
  (:ge "GE")
  (:gt "GT")
  (:contains "CONTAINS")
  (:not-contains "NOT_CONTAINS")
  (:begins-with "BEGINS_WITH")
  (:in "IN")
  (:between "BETWEEN"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((expression :target-type expression-string
                                      :member-name "Expression"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-type context-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type context-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-data-cells-filter-request
                                common-lisp:nil
                                ((table-data :target-type data-cells-filter
                                  :required common-lisp:t :member-name
                                  "TableData"))
                                (:shape-name "CreateDataCellsFilterRequest"))

(smithy/sdk/shapes:define-output create-data-cells-filter-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateDataCellsFilterResponse"))

(smithy/sdk/shapes:define-input create-lftag-expression-request common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (expression :target-type expression :required
                                  common-lisp:t :member-name "Expression"))
                                (:shape-name "CreateLFTagExpressionRequest"))

(smithy/sdk/shapes:define-output create-lftag-expression-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateLFTagExpressionResponse"))

(smithy/sdk/shapes:define-input create-lftag-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (tag-key :target-type lftag-key :required
                                  common-lisp:t :member-name "TagKey")
                                 (tag-values :target-type tag-value-list
                                  :required common-lisp:t :member-name
                                  "TagValues"))
                                (:shape-name "CreateLFTagRequest"))

(smithy/sdk/shapes:define-output create-lftag-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateLFTagResponse"))

(smithy/sdk/shapes:define-input
 create-lake-formation-identity-center-configuration-request common-lisp:nil
 ((catalog-id :target-type catalog-id-string :member-name "CatalogId")
  (instance-arn :target-type identity-center-instance-arn :member-name
   "InstanceArn")
  (external-filtering :target-type external-filtering-configuration
   :member-name "ExternalFiltering")
  (share-recipients :target-type data-lake-principal-list :member-name
   "ShareRecipients"))
 (:shape-name "CreateLakeFormationIdentityCenterConfigurationRequest"))

(smithy/sdk/shapes:define-output
 create-lake-formation-identity-center-configuration-response common-lisp:nil
 ((application-arn :target-type application-arn :member-name "ApplicationArn"))
 (:shape-name "CreateLakeFormationIdentityCenterConfigurationResponse"))

(smithy/sdk/shapes:define-input create-lake-formation-opt-in-request
                                common-lisp:nil
                                ((principal :target-type data-lake-principal
                                  :required common-lisp:t :member-name
                                  "Principal")
                                 (resource :target-type resource :required
                                  common-lisp:t :member-name "Resource")
                                 (condition :target-type condition :member-name
                                  "Condition"))
                                (:shape-name "CreateLakeFormationOptInRequest"))

(smithy/sdk/shapes:define-output create-lake-formation-opt-in-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateLakeFormationOptInResponse"))

(smithy/sdk/shapes:define-type credential-timeout-duration-second-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure data-cells-filter common-lisp:nil
                                    ((table-catalog-id :target-type
                                      catalog-id-string :required common-lisp:t
                                      :member-name "TableCatalogId")
                                     (database-name :target-type name-string
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (table-name :target-type name-string
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "Name")
                                     (row-filter :target-type row-filter
                                      :member-name "RowFilter")
                                     (column-names :target-type column-names
                                      :member-name "ColumnNames")
                                     (column-wildcard :target-type
                                      column-wildcard :member-name
                                      "ColumnWildcard")
                                     (version-id :target-type version-string
                                      :member-name "VersionId"))
                                    (:shape-name "DataCellsFilter"))

(smithy/sdk/shapes:define-list data-cells-filter-list :member data-cells-filter)

(smithy/sdk/shapes:define-structure data-cells-filter-resource common-lisp:nil
                                    ((table-catalog-id :target-type
                                      catalog-id-string :member-name
                                      "TableCatalogId")
                                     (database-name :target-type name-string
                                      :member-name "DatabaseName")
                                     (table-name :target-type name-string
                                      :member-name "TableName")
                                     (name :target-type name-string
                                      :member-name "Name"))
                                    (:shape-name "DataCellsFilterResource"))

(smithy/sdk/shapes:define-structure data-lake-principal common-lisp:nil
                                    ((data-lake-principal-identifier
                                      :target-type data-lake-principal-string
                                      :member-name
                                      "DataLakePrincipalIdentifier"))
                                    (:shape-name "DataLakePrincipal"))

(smithy/sdk/shapes:define-list data-lake-principal-list :member
                               data-lake-principal)

(smithy/sdk/shapes:define-type data-lake-principal-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-lake-resource-type
    common-lisp:nil
  (:catalog "CATALOG")
  (:database "DATABASE")
  (:table "TABLE")
  (:data-location "DATA_LOCATION")
  (:lf-tag "LF_TAG")
  (:lf-tag-policy "LF_TAG_POLICY")
  (:lf-tag-policy-database "LF_TAG_POLICY_DATABASE")
  (:lf-tag-policy-table "LF_TAG_POLICY_TABLE")
  (:lf-named-tag-expression "LF_NAMED_TAG_EXPRESSION"))

(smithy/sdk/shapes:define-structure data-lake-settings common-lisp:nil
                                    ((data-lake-admins :target-type
                                      data-lake-principal-list :member-name
                                      "DataLakeAdmins")
                                     (read-only-admins :target-type
                                      data-lake-principal-list :member-name
                                      "ReadOnlyAdmins")
                                     (create-database-default-permissions
                                      :target-type principal-permissions-list
                                      :member-name
                                      "CreateDatabaseDefaultPermissions")
                                     (create-table-default-permissions
                                      :target-type principal-permissions-list
                                      :member-name
                                      "CreateTableDefaultPermissions")
                                     (parameters :target-type parameters-map
                                      :member-name "Parameters")
                                     (trusted-resource-owners :target-type
                                      trusted-resource-owners :member-name
                                      "TrustedResourceOwners")
                                     (allow-external-data-filtering
                                      :target-type nullable-boolean
                                      :member-name
                                      "AllowExternalDataFiltering")
                                     (allow-full-table-external-data-access
                                      :target-type nullable-boolean
                                      :member-name
                                      "AllowFullTableExternalDataAccess")
                                     (external-data-filtering-allow-list
                                      :target-type data-lake-principal-list
                                      :member-name
                                      "ExternalDataFilteringAllowList")
                                     (authorized-session-tag-value-list
                                      :target-type
                                      authorized-session-tag-value-list
                                      :member-name
                                      "AuthorizedSessionTagValueList"))
                                    (:shape-name "DataLakeSettings"))

(smithy/sdk/shapes:define-structure data-location-resource common-lisp:nil
                                    ((catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (resource-arn :target-type
                                      resource-arn-string :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "DataLocationResource"))

(smithy/sdk/shapes:define-list database-lftags-list :member tagged-database)

(smithy/sdk/shapes:define-structure database-resource common-lisp:nil
                                    ((catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "DatabaseResource"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-data-cells-filter-request
                                common-lisp:nil
                                ((table-catalog-id :target-type
                                  catalog-id-string :member-name
                                  "TableCatalogId")
                                 (database-name :target-type name-string
                                  :member-name "DatabaseName")
                                 (table-name :target-type name-string
                                  :member-name "TableName")
                                 (name :target-type name-string :member-name
                                  "Name"))
                                (:shape-name "DeleteDataCellsFilterRequest"))

(smithy/sdk/shapes:define-output delete-data-cells-filter-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteDataCellsFilterResponse"))

(smithy/sdk/shapes:define-input delete-lftag-expression-request common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "Name")
                                 (catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId"))
                                (:shape-name "DeleteLFTagExpressionRequest"))

(smithy/sdk/shapes:define-output delete-lftag-expression-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteLFTagExpressionResponse"))

(smithy/sdk/shapes:define-input delete-lftag-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (tag-key :target-type lftag-key :required
                                  common-lisp:t :member-name "TagKey"))
                                (:shape-name "DeleteLFTagRequest"))

(smithy/sdk/shapes:define-output delete-lftag-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLFTagResponse"))

(smithy/sdk/shapes:define-input
 delete-lake-formation-identity-center-configuration-request common-lisp:nil
 ((catalog-id :target-type catalog-id-string :member-name "CatalogId"))
 (:shape-name "DeleteLakeFormationIdentityCenterConfigurationRequest"))

(smithy/sdk/shapes:define-output
 delete-lake-formation-identity-center-configuration-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DeleteLakeFormationIdentityCenterConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-lake-formation-opt-in-request
                                common-lisp:nil
                                ((principal :target-type data-lake-principal
                                  :required common-lisp:t :member-name
                                  "Principal")
                                 (resource :target-type resource :required
                                  common-lisp:t :member-name "Resource")
                                 (condition :target-type condition :member-name
                                  "Condition"))
                                (:shape-name "DeleteLakeFormationOptInRequest"))

(smithy/sdk/shapes:define-output delete-lake-formation-opt-in-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteLakeFormationOptInResponse"))

(smithy/sdk/shapes:define-structure delete-object-input common-lisp:nil
                                    ((uri :target-type uri :required
                                      common-lisp:t :member-name "Uri")
                                     (etag :target-type etag-string
                                      :member-name "ETag")
                                     (partition-values :target-type
                                      partition-values-list :member-name
                                      "PartitionValues"))
                                    (:shape-name "DeleteObjectInput"))

(smithy/sdk/shapes:define-input delete-objects-on-cancel-request
                                common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (database-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type name-string :required
                                  common-lisp:t :member-name "TableName")
                                 (transaction-id :target-type
                                  transaction-id-string :required common-lisp:t
                                  :member-name "TransactionId")
                                 (objects :target-type virtual-object-list
                                  :required common-lisp:t :member-name
                                  "Objects"))
                                (:shape-name "DeleteObjectsOnCancelRequest"))

(smithy/sdk/shapes:define-output delete-objects-on-cancel-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteObjectsOnCancelResponse"))

(smithy/sdk/shapes:define-input deregister-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DeregisterResourceRequest"))

(smithy/sdk/shapes:define-output deregister-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeregisterResourceResponse"))

(smithy/sdk/shapes:define-input
 describe-lake-formation-identity-center-configuration-request common-lisp:nil
 ((catalog-id :target-type catalog-id-string :member-name "CatalogId"))
 (:shape-name "DescribeLakeFormationIdentityCenterConfigurationRequest"))

(smithy/sdk/shapes:define-output
 describe-lake-formation-identity-center-configuration-response common-lisp:nil
 ((catalog-id :target-type catalog-id-string :member-name "CatalogId")
  (instance-arn :target-type identity-center-instance-arn :member-name
   "InstanceArn")
  (application-arn :target-type application-arn :member-name "ApplicationArn")
  (external-filtering :target-type external-filtering-configuration
   :member-name "ExternalFiltering")
  (share-recipients :target-type data-lake-principal-list :member-name
   "ShareRecipients")
  (resource-share :target-type ramresource-share-arn :member-name
   "ResourceShare"))
 (:shape-name "DescribeLakeFormationIdentityCenterConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DescribeResourceRequest"))

(smithy/sdk/shapes:define-output describe-resource-response common-lisp:nil
                                 ((resource-info :target-type resource-info
                                   :member-name "ResourceInfo"))
                                 (:shape-name "DescribeResourceResponse"))

(smithy/sdk/shapes:define-input describe-transaction-request common-lisp:nil
                                ((transaction-id :target-type
                                  transaction-id-string :required common-lisp:t
                                  :member-name "TransactionId"))
                                (:shape-name "DescribeTransactionRequest"))

(smithy/sdk/shapes:define-output describe-transaction-response common-lisp:nil
                                 ((transaction-description :target-type
                                   transaction-description :member-name
                                   "TransactionDescription"))
                                 (:shape-name "DescribeTransactionResponse"))

(smithy/sdk/shapes:define-type description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure details-map common-lisp:nil
                                    ((resource-share :target-type
                                      resource-share-list :member-name
                                      "ResourceShare"))
                                    (:shape-name "DetailsMap"))

(smithy/sdk/shapes:define-type etag-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum enable-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error entity-not-found-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "EntityNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure error-detail common-lisp:nil
                                    ((error-code :target-type name-string
                                      :member-name "ErrorCode")
                                     (error-message :target-type
                                      description-string :member-name
                                      "ErrorMessage"))
                                    (:shape-name "ErrorDetail"))

(smithy/sdk/shapes:define-type error-message-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-statistics common-lisp:nil
                                    ((average-execution-time-millis
                                      :target-type number-of-milliseconds
                                      :member-name
                                      "AverageExecutionTimeMillis")
                                     (data-scanned-bytes :target-type
                                      number-of-bytes :member-name
                                      "DataScannedBytes")
                                     (work-units-executed-count :target-type
                                      number-of-items :member-name
                                      "WorkUnitsExecutedCount"))
                                    (:shape-name "ExecutionStatistics"))

(smithy/sdk/shapes:define-type expiration-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error expired-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "ExpiredException")
                                (:error-code 410))

(smithy/sdk/shapes:define-list expression :member lftag)

(smithy/sdk/shapes:define-type expression-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input extend-transaction-request common-lisp:nil
                                ((transaction-id :target-type
                                  transaction-id-string :member-name
                                  "TransactionId"))
                                (:shape-name "ExtendTransactionRequest"))

(smithy/sdk/shapes:define-output extend-transaction-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ExtendTransactionResponse"))

(smithy/sdk/shapes:define-structure external-filtering-configuration
                                    common-lisp:nil
                                    ((status :target-type enable-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (authorized-targets :target-type
                                      scope-targets :required common-lisp:t
                                      :member-name "AuthorizedTargets"))
                                    (:shape-name
                                     "ExternalFilteringConfiguration"))

(smithy/sdk/shapes:define-enum field-name-string
    common-lisp:nil
  (:resource-arn "RESOURCE_ARN")
  (:role-arn "ROLE_ARN")
  (:last-modified "LAST_MODIFIED"))

(smithy/sdk/shapes:define-structure filter-condition common-lisp:nil
                                    ((field :target-type field-name-string
                                      :member-name "Field")
                                     (comparison-operator :target-type
                                      comparison-operator :member-name
                                      "ComparisonOperator")
                                     (string-value-list :target-type
                                      string-value-list :member-name
                                      "StringValueList"))
                                    (:shape-name "FilterCondition"))

(smithy/sdk/shapes:define-list filter-condition-list :member filter-condition)

(smithy/sdk/shapes:define-input get-data-cells-filter-request common-lisp:nil
                                ((table-catalog-id :target-type
                                  catalog-id-string :required common-lisp:t
                                  :member-name "TableCatalogId")
                                 (database-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type name-string :required
                                  common-lisp:t :member-name "TableName")
                                 (name :target-type name-string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "GetDataCellsFilterRequest"))

(smithy/sdk/shapes:define-output get-data-cells-filter-response common-lisp:nil
                                 ((data-cells-filter :target-type
                                   data-cells-filter :member-name
                                   "DataCellsFilter"))
                                 (:shape-name "GetDataCellsFilterResponse"))

(smithy/sdk/shapes:define-input get-data-lake-principal-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetDataLakePrincipalRequest"))

(smithy/sdk/shapes:define-output get-data-lake-principal-response
                                 common-lisp:nil
                                 ((identity :target-type identity-string
                                   :member-name "Identity"))
                                 (:shape-name "GetDataLakePrincipalResponse"))

(smithy/sdk/shapes:define-input get-data-lake-settings-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId"))
                                (:shape-name "GetDataLakeSettingsRequest"))

(smithy/sdk/shapes:define-output get-data-lake-settings-response
                                 common-lisp:nil
                                 ((data-lake-settings :target-type
                                   data-lake-settings :member-name
                                   "DataLakeSettings"))
                                 (:shape-name "GetDataLakeSettingsResponse"))

(smithy/sdk/shapes:define-input get-effective-permissions-for-path-request
                                common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "GetEffectivePermissionsForPathRequest"))

(smithy/sdk/shapes:define-output get-effective-permissions-for-path-response
                                 common-lisp:nil
                                 ((permissions :target-type
                                   principal-resource-permissions-list
                                   :member-name "Permissions")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "GetEffectivePermissionsForPathResponse"))

(smithy/sdk/shapes:define-input get-lftag-expression-request common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "Name")
                                 (catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId"))
                                (:shape-name "GetLFTagExpressionRequest"))

(smithy/sdk/shapes:define-output get-lftag-expression-response common-lisp:nil
                                 ((name :target-type name-string :member-name
                                   "Name")
                                  (description :target-type description-string
                                   :member-name "Description")
                                  (catalog-id :target-type catalog-id-string
                                   :member-name "CatalogId")
                                  (expression :target-type expression
                                   :member-name "Expression"))
                                 (:shape-name "GetLFTagExpressionResponse"))

(smithy/sdk/shapes:define-input get-lftag-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (tag-key :target-type lftag-key :required
                                  common-lisp:t :member-name "TagKey"))
                                (:shape-name "GetLFTagRequest"))

(smithy/sdk/shapes:define-output get-lftag-response common-lisp:nil
                                 ((catalog-id :target-type catalog-id-string
                                   :member-name "CatalogId")
                                  (tag-key :target-type lftag-key :member-name
                                   "TagKey")
                                  (tag-values :target-type tag-value-list
                                   :member-name "TagValues"))
                                 (:shape-name "GetLFTagResponse"))

(smithy/sdk/shapes:define-input get-query-state-request common-lisp:nil
                                ((query-id :target-type
                                  get-query-state-request-query-id-string
                                  :required common-lisp:t :member-name
                                  "QueryId"))
                                (:shape-name "GetQueryStateRequest"))

(smithy/sdk/shapes:define-type get-query-state-request-query-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output get-query-state-response common-lisp:nil
                                 ((error :target-type error-message-string
                                   :member-name "Error")
                                  (state :target-type query-state-string
                                   :required common-lisp:t :member-name
                                   "State"))
                                 (:shape-name "GetQueryStateResponse"))

(smithy/sdk/shapes:define-input get-query-statistics-request common-lisp:nil
                                ((query-id :target-type
                                  get-query-statistics-request-query-id-string
                                  :required common-lisp:t :member-name
                                  "QueryId"))
                                (:shape-name "GetQueryStatisticsRequest"))

(smithy/sdk/shapes:define-type get-query-statistics-request-query-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output get-query-statistics-response common-lisp:nil
                                 ((execution-statistics :target-type
                                   execution-statistics :member-name
                                   "ExecutionStatistics")
                                  (planning-statistics :target-type
                                   planning-statistics :member-name
                                   "PlanningStatistics")
                                  (query-submission-time :target-type date-time
                                   :member-name "QuerySubmissionTime"))
                                 (:shape-name "GetQueryStatisticsResponse"))

(smithy/sdk/shapes:define-input get-resource-lftags-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (resource :target-type resource :required
                                  common-lisp:t :member-name "Resource")
                                 (show-assigned-lftags :target-type
                                  boolean-nullable :member-name
                                  "ShowAssignedLFTags"))
                                (:shape-name "GetResourceLFTagsRequest"))

(smithy/sdk/shapes:define-output get-resource-lftags-response common-lisp:nil
                                 ((lftag-on-database :target-type lftags-list
                                   :member-name "LFTagOnDatabase")
                                  (lftags-on-table :target-type lftags-list
                                   :member-name "LFTagsOnTable")
                                  (lftags-on-columns :target-type
                                   column-lftags-list :member-name
                                   "LFTagsOnColumns"))
                                 (:shape-name "GetResourceLFTagsResponse"))

(smithy/sdk/shapes:define-input get-table-objects-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (database-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type name-string :required
                                  common-lisp:t :member-name "TableName")
                                 (transaction-id :target-type
                                  transaction-id-string :member-name
                                  "TransactionId")
                                 (query-as-of-time :target-type timestamp
                                  :member-name "QueryAsOfTime")
                                 (partition-predicate :target-type
                                  predicate-string :member-name
                                  "PartitionPredicate")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type token-string
                                  :member-name "NextToken"))
                                (:shape-name "GetTableObjectsRequest"))

(smithy/sdk/shapes:define-output get-table-objects-response common-lisp:nil
                                 ((objects :target-type
                                   partitioned-table-objects-list :member-name
                                   "Objects")
                                  (next-token :target-type token-string
                                   :member-name "NextToken"))
                                 (:shape-name "GetTableObjectsResponse"))

(smithy/sdk/shapes:define-input
 get-temporary-glue-partition-credentials-request common-lisp:nil
 ((table-arn :target-type resource-arn-string :required common-lisp:t
   :member-name "TableArn")
  (partition :target-type partition-value-list :required common-lisp:t
   :member-name "Partition")
  (permissions :target-type permission-list :member-name "Permissions")
  (duration-seconds :target-type credential-timeout-duration-second-integer
   :member-name "DurationSeconds")
  (audit-context :target-type audit-context :member-name "AuditContext")
  (supported-permission-types :target-type permission-type-list :member-name
   "SupportedPermissionTypes"))
 (:shape-name "GetTemporaryGluePartitionCredentialsRequest"))

(smithy/sdk/shapes:define-output
 get-temporary-glue-partition-credentials-response common-lisp:nil
 ((access-key-id :target-type access-key-id-string :member-name "AccessKeyId")
  (secret-access-key :target-type secret-access-key-string :member-name
   "SecretAccessKey")
  (session-token :target-type session-token-string :member-name "SessionToken")
  (expiration :target-type expiration-timestamp :member-name "Expiration"))
 (:shape-name "GetTemporaryGluePartitionCredentialsResponse"))

(smithy/sdk/shapes:define-input get-temporary-glue-table-credentials-request
                                common-lisp:nil
                                ((table-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "TableArn")
                                 (permissions :target-type permission-list
                                  :member-name "Permissions")
                                 (duration-seconds :target-type
                                  credential-timeout-duration-second-integer
                                  :member-name "DurationSeconds")
                                 (audit-context :target-type audit-context
                                  :member-name "AuditContext")
                                 (supported-permission-types :target-type
                                  permission-type-list :member-name
                                  "SupportedPermissionTypes")
                                 (s3path :target-type path-string :member-name
                                  "S3Path")
                                 (query-session-context :target-type
                                  query-session-context :member-name
                                  "QuerySessionContext"))
                                (:shape-name
                                 "GetTemporaryGlueTableCredentialsRequest"))

(smithy/sdk/shapes:define-output get-temporary-glue-table-credentials-response
                                 common-lisp:nil
                                 ((access-key-id :target-type
                                   access-key-id-string :member-name
                                   "AccessKeyId")
                                  (secret-access-key :target-type
                                   secret-access-key-string :member-name
                                   "SecretAccessKey")
                                  (session-token :target-type
                                   session-token-string :member-name
                                   "SessionToken")
                                  (expiration :target-type expiration-timestamp
                                   :member-name "Expiration")
                                  (vended-s3path :target-type path-string-list
                                   :member-name "VendedS3Path"))
                                 (:shape-name
                                  "GetTemporaryGlueTableCredentialsResponse"))

(smithy/sdk/shapes:define-input get-work-unit-results-request common-lisp:nil
                                ((query-id :target-type
                                  get-work-unit-results-request-query-id-string
                                  :required common-lisp:t :member-name
                                  "QueryId")
                                 (work-unit-id :target-type
                                  get-work-unit-results-request-work-unit-id-long
                                  :required common-lisp:t :member-name
                                  "WorkUnitId")
                                 (work-unit-token :target-type
                                  synthetic-get-work-unit-results-request-work-unit-token-string
                                  :required common-lisp:t :member-name
                                  "WorkUnitToken"))
                                (:shape-name "GetWorkUnitResultsRequest"))

(smithy/sdk/shapes:define-type get-work-unit-results-request-query-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type get-work-unit-results-request-work-unit-id-long
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-output get-work-unit-results-response common-lisp:nil
                                 ((result-stream :target-type result-stream
                                   :member-name "ResultStream" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetWorkUnitResultsResponse"))

(smithy/sdk/shapes:define-input get-work-units-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (page-size :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "PageSize")
                                 (query-id :target-type
                                  get-work-units-request-query-id-string
                                  :required common-lisp:t :member-name
                                  "QueryId"))
                                (:shape-name "GetWorkUnitsRequest"))

(smithy/sdk/shapes:define-type get-work-units-request-query-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output get-work-units-response common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (query-id :target-type query-id-string
                                   :required common-lisp:t :member-name
                                   "QueryId")
                                  (work-unit-ranges :target-type
                                   work-unit-range-list :required common-lisp:t
                                   :member-name "WorkUnitRanges"))
                                 (:shape-name "GetWorkUnitsResponse"))

(smithy/sdk/shapes:define-error glue-encryption-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "GlueEncryptionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input grant-permissions-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (principal :target-type data-lake-principal
                                  :required common-lisp:t :member-name
                                  "Principal")
                                 (resource :target-type resource :required
                                  common-lisp:t :member-name "Resource")
                                 (permissions :target-type permission-list
                                  :required common-lisp:t :member-name
                                  "Permissions")
                                 (condition :target-type condition :member-name
                                  "Condition")
                                 (permissions-with-grant-option :target-type
                                  permission-list :member-name
                                  "PermissionsWithGrantOption"))
                                (:shape-name "GrantPermissionsRequest"))

(smithy/sdk/shapes:define-output grant-permissions-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "GrantPermissionsResponse"))

(smithy/sdk/shapes:define-type hash-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iamsamlprovider-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type key-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lftag common-lisp:nil
                                    ((tag-key :target-type lftag-key :required
                                      common-lisp:t :member-name "TagKey")
                                     (tag-values :target-type tag-value-list
                                      :required common-lisp:t :member-name
                                      "TagValues"))
                                    (:shape-name "LFTag"))

(smithy/sdk/shapes:define-structure lftag-error common-lisp:nil
                                    ((lftag :target-type lftag-pair
                                      :member-name "LFTag")
                                     (error :target-type error-detail
                                      :member-name "Error"))
                                    (:shape-name "LFTagError"))

(smithy/sdk/shapes:define-list lftag-errors :member lftag-error)

(smithy/sdk/shapes:define-structure lftag-expression common-lisp:nil
                                    ((name :target-type name-string
                                      :member-name "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (expression :target-type expression
                                      :member-name "Expression"))
                                    (:shape-name "LFTagExpression"))

(smithy/sdk/shapes:define-structure lftag-expression-resource common-lisp:nil
                                    ((catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "LFTagExpressionResource"))

(smithy/sdk/shapes:define-list lftag-expressions-list :member lftag-expression)

(smithy/sdk/shapes:define-type lftag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lftag-key-resource common-lisp:nil
                                    ((catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (tag-key :target-type name-string
                                      :required common-lisp:t :member-name
                                      "TagKey")
                                     (tag-values :target-type tag-value-list
                                      :required common-lisp:t :member-name
                                      "TagValues"))
                                    (:shape-name "LFTagKeyResource"))

(smithy/sdk/shapes:define-structure lftag-pair common-lisp:nil
                                    ((catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (tag-key :target-type lftag-key :required
                                      common-lisp:t :member-name "TagKey")
                                     (tag-values :target-type tag-value-list
                                      :required common-lisp:t :member-name
                                      "TagValues"))
                                    (:shape-name "LFTagPair"))

(smithy/sdk/shapes:define-structure lftag-policy-resource common-lisp:nil
                                    ((catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (expression :target-type expression
                                      :member-name "Expression")
                                     (expression-name :target-type name-string
                                      :member-name "ExpressionName"))
                                    (:shape-name "LFTagPolicyResource"))

(smithy/sdk/shapes:define-type lftag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lftags-list :member lftag-pair)

(smithy/sdk/shapes:define-structure lake-formation-opt-ins-info common-lisp:nil
                                    ((resource :target-type resource
                                      :member-name "Resource")
                                     (principal :target-type
                                      data-lake-principal :member-name
                                      "Principal")
                                     (condition :target-type condition
                                      :member-name "Condition")
                                     (last-modified :target-type
                                      last-modified-timestamp :member-name
                                      "LastModified")
                                     (last-updated-by :target-type name-string
                                      :member-name "LastUpdatedBy"))
                                    (:shape-name "LakeFormationOptInsInfo"))

(smithy/sdk/shapes:define-list lake-formation-opt-ins-info-list :member
                               lake-formation-opt-ins-info)

(smithy/sdk/shapes:define-type last-modified-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input list-data-cells-filter-request common-lisp:nil
                                ((table :target-type table-resource
                                  :member-name "Table")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults"))
                                (:shape-name "ListDataCellsFilterRequest"))

(smithy/sdk/shapes:define-output list-data-cells-filter-response
                                 common-lisp:nil
                                 ((data-cells-filters :target-type
                                   data-cells-filter-list :member-name
                                   "DataCellsFilters")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListDataCellsFilterResponse"))

(smithy/sdk/shapes:define-input list-lftag-expressions-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListLFTagExpressionsRequest"))

(smithy/sdk/shapes:define-output list-lftag-expressions-response
                                 common-lisp:nil
                                 ((lftag-expressions :target-type
                                   lftag-expressions-list :member-name
                                   "LFTagExpressions")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListLFTagExpressionsResponse"))

(smithy/sdk/shapes:define-input list-lftags-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (resource-share-type :target-type
                                  resource-share-type :member-name
                                  "ResourceShareType")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListLFTagsRequest"))

(smithy/sdk/shapes:define-output list-lftags-response common-lisp:nil
                                 ((lftags :target-type lftags-list :member-name
                                   "LFTags")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListLFTagsResponse"))

(smithy/sdk/shapes:define-input list-lake-formation-opt-ins-request
                                common-lisp:nil
                                ((principal :target-type data-lake-principal
                                  :member-name "Principal")
                                 (resource :target-type resource :member-name
                                  "Resource")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListLakeFormationOptInsRequest"))

(smithy/sdk/shapes:define-output list-lake-formation-opt-ins-response
                                 common-lisp:nil
                                 ((lake-formation-opt-ins-info-list
                                   :target-type
                                   lake-formation-opt-ins-info-list
                                   :member-name "LakeFormationOptInsInfoList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListLakeFormationOptInsResponse"))

(smithy/sdk/shapes:define-input list-permissions-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (principal :target-type data-lake-principal
                                  :member-name "Principal")
                                 (resource-type :target-type
                                  data-lake-resource-type :member-name
                                  "ResourceType")
                                 (resource :target-type resource :member-name
                                  "Resource")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (include-related :target-type
                                  true-false-string :member-name
                                  "IncludeRelated"))
                                (:shape-name "ListPermissionsRequest"))

(smithy/sdk/shapes:define-output list-permissions-response common-lisp:nil
                                 ((principal-resource-permissions :target-type
                                   principal-resource-permissions-list
                                   :member-name "PrincipalResourcePermissions")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListPermissionsResponse"))

(smithy/sdk/shapes:define-input list-resources-request common-lisp:nil
                                ((filter-condition-list :target-type
                                  filter-condition-list :member-name
                                  "FilterConditionList")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListResourcesRequest"))

(smithy/sdk/shapes:define-output list-resources-response common-lisp:nil
                                 ((resource-info-list :target-type
                                   resource-info-list :member-name
                                   "ResourceInfoList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListResourcesResponse"))

(smithy/sdk/shapes:define-input list-table-storage-optimizers-request
                                common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (database-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type name-string :required
                                  common-lisp:t :member-name "TableName")
                                 (storage-optimizer-type :target-type
                                  optimizer-type :member-name
                                  "StorageOptimizerType")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListTableStorageOptimizersRequest"))

(smithy/sdk/shapes:define-output list-table-storage-optimizers-response
                                 common-lisp:nil
                                 ((storage-optimizer-list :target-type
                                   storage-optimizer-list :member-name
                                   "StorageOptimizerList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListTableStorageOptimizersResponse"))

(smithy/sdk/shapes:define-input list-transactions-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (status-filter :target-type
                                  transaction-status-filter :member-name
                                  "StatusFilter")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (next-token :target-type token-string
                                  :member-name "NextToken"))
                                (:shape-name "ListTransactionsRequest"))

(smithy/sdk/shapes:define-output list-transactions-response common-lisp:nil
                                 ((transactions :target-type
                                   transaction-description-list :member-name
                                   "Transactions")
                                  (next-token :target-type token-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListTransactionsResponse"))

(smithy/sdk/shapes:define-type message-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type nullable-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-of-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type number-of-items smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type number-of-milliseconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type object-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error operation-timeout-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "OperationTimeoutException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum optimizer-type
    common-lisp:nil
  (:compaction "COMPACTION")
  (:garbage-collection "GARBAGE_COLLECTION")
  (:generic "ALL"))

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map parameters-map :key key-string :value
                              parameters-map-value)

(smithy/sdk/shapes:define-type parameters-map-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure partition-objects common-lisp:nil
                                    ((partition-values :target-type
                                      partition-values-list :member-name
                                      "PartitionValues")
                                     (objects :target-type table-object-list
                                      :member-name "Objects"))
                                    (:shape-name "PartitionObjects"))

(smithy/sdk/shapes:define-structure partition-value-list common-lisp:nil
                                    ((values :target-type value-string-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "PartitionValueList"))

(smithy/sdk/shapes:define-type partition-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list partition-values-list :member
                               partition-value-string)

(smithy/sdk/shapes:define-list partitioned-table-objects-list :member
                               partition-objects)

(smithy/sdk/shapes:define-type path-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list path-string-list :member path-string)

(smithy/sdk/shapes:define-enum permission
    common-lisp:nil
  (:all "ALL")
  (:select "SELECT")
  (:alter "ALTER")
  (:drop "DROP")
  (:delete "DELETE")
  (:insert "INSERT")
  (:describe "DESCRIBE")
  (:create-database "CREATE_DATABASE")
  (:create-table "CREATE_TABLE")
  (:data-location-access "DATA_LOCATION_ACCESS")
  (:create-lf-tag "CREATE_LF_TAG")
  (:associate "ASSOCIATE")
  (:grant-with-lf-tag-expression "GRANT_WITH_LF_TAG_EXPRESSION")
  (:create-lf-tag-expression "CREATE_LF_TAG_EXPRESSION")
  (:create-catalog "CREATE_CATALOG")
  (:super-user "SUPER_USER"))

(smithy/sdk/shapes:define-list permission-list :member permission)

(smithy/sdk/shapes:define-enum permission-type
    common-lisp:nil
  (:column-permission "COLUMN_PERMISSION")
  (:cell-filter-permission "CELL_FILTER_PERMISSION")
  (:nested-permission "NESTED_PERMISSION")
  (:nested-cell-permission "NESTED_CELL_PERMISSION"))

(smithy/sdk/shapes:define-list permission-type-list :member permission-type)

(smithy/sdk/shapes:define-error permission-type-mismatch-exception
                                common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "PermissionTypeMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure planning-statistics common-lisp:nil
                                    ((estimated-data-to-scan-bytes :target-type
                                      number-of-bytes :member-name
                                      "EstimatedDataToScanBytes")
                                     (planning-time-millis :target-type
                                      number-of-milliseconds :member-name
                                      "PlanningTimeMillis")
                                     (queue-time-millis :target-type
                                      number-of-milliseconds :member-name
                                      "QueueTimeMillis")
                                     (work-units-generated-count :target-type
                                      number-of-items :member-name
                                      "WorkUnitsGeneratedCount"))
                                    (:shape-name "PlanningStatistics"))

(smithy/sdk/shapes:define-type predicate-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure principal-permissions common-lisp:nil
                                    ((principal :target-type
                                      data-lake-principal :member-name
                                      "Principal")
                                     (permissions :target-type permission-list
                                      :member-name "Permissions"))
                                    (:shape-name "PrincipalPermissions"))

(smithy/sdk/shapes:define-list principal-permissions-list :member
                               principal-permissions)

(smithy/sdk/shapes:define-structure principal-resource-permissions
                                    common-lisp:nil
                                    ((principal :target-type
                                      data-lake-principal :member-name
                                      "Principal")
                                     (resource :target-type resource
                                      :member-name "Resource")
                                     (condition :target-type condition
                                      :member-name "Condition")
                                     (permissions :target-type permission-list
                                      :member-name "Permissions")
                                     (permissions-with-grant-option
                                      :target-type permission-list :member-name
                                      "PermissionsWithGrantOption")
                                     (additional-details :target-type
                                      details-map :member-name
                                      "AdditionalDetails")
                                     (last-updated :target-type
                                      last-modified-timestamp :member-name
                                      "LastUpdated")
                                     (last-updated-by :target-type name-string
                                      :member-name "LastUpdatedBy"))
                                    (:shape-name
                                     "PrincipalResourcePermissions"))

(smithy/sdk/shapes:define-list principal-resource-permissions-list :member
                               principal-resource-permissions)

(smithy/sdk/shapes:define-input put-data-lake-settings-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (data-lake-settings :target-type
                                  data-lake-settings :required common-lisp:t
                                  :member-name "DataLakeSettings"))
                                (:shape-name "PutDataLakeSettingsRequest"))

(smithy/sdk/shapes:define-output put-data-lake-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutDataLakeSettingsResponse"))

(smithy/sdk/shapes:define-type query-id-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map query-parameter-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-planning-context common-lisp:nil
                                    ((catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (database-name :target-type
                                      query-planning-context-database-name-string
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (query-as-of-time :target-type timestamp
                                      :member-name "QueryAsOfTime")
                                     (query-parameters :target-type
                                      query-parameter-map :member-name
                                      "QueryParameters")
                                     (transaction-id :target-type
                                      transaction-id-string :member-name
                                      "TransactionId"))
                                    (:shape-name "QueryPlanningContext"))

(smithy/sdk/shapes:define-type query-planning-context-database-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-session-context common-lisp:nil
                                    ((query-id :target-type hash-string
                                      :member-name "QueryId")
                                     (query-start-time :target-type timestamp
                                      :member-name "QueryStartTime")
                                     (cluster-id :target-type nullable-string
                                      :member-name "ClusterId")
                                     (query-authorization-id :target-type
                                      hash-string :member-name
                                      "QueryAuthorizationId")
                                     (additional-context :target-type
                                      additional-context-map :member-name
                                      "AdditionalContext"))
                                    (:shape-name "QuerySessionContext"))

(smithy/sdk/shapes:define-enum query-state-string
    common-lisp:nil
  (:pending "PENDING")
  (:workunits-available "WORKUNITS_AVAILABLE")
  (:error "ERROR")
  (:finished "FINISHED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-type ramresource-share-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (use-service-linked-role :target-type
                                  nullable-boolean :member-name
                                  "UseServiceLinkedRole")
                                 (role-arn :target-type iamrole-arn
                                  :member-name "RoleArn")
                                 (with-federation :target-type nullable-boolean
                                  :member-name "WithFederation")
                                 (hybrid-access-enabled :target-type
                                  nullable-boolean :member-name
                                  "HybridAccessEnabled")
                                 (with-privileged-access :target-type boolean
                                  :member-name "WithPrivilegedAccess"))
                                (:shape-name "RegisterResourceRequest"))

(smithy/sdk/shapes:define-output register-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RegisterResourceResponse"))

(smithy/sdk/shapes:define-input remove-lftags-from-resource-request
                                common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (resource :target-type resource :required
                                  common-lisp:t :member-name "Resource")
                                 (lftags :target-type lftags-list :required
                                  common-lisp:t :member-name "LFTags"))
                                (:shape-name "RemoveLFTagsFromResourceRequest"))

(smithy/sdk/shapes:define-output remove-lftags-from-resource-response
                                 common-lisp:nil
                                 ((failures :target-type lftag-errors
                                   :member-name "Failures"))
                                 (:shape-name
                                  "RemoveLFTagsFromResourceResponse"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((catalog :target-type catalog-resource
                                      :member-name "Catalog")
                                     (database :target-type database-resource
                                      :member-name "Database")
                                     (table :target-type table-resource
                                      :member-name "Table")
                                     (table-with-columns :target-type
                                      table-with-columns-resource :member-name
                                      "TableWithColumns")
                                     (data-location :target-type
                                      data-location-resource :member-name
                                      "DataLocation")
                                     (data-cells-filter :target-type
                                      data-cells-filter-resource :member-name
                                      "DataCellsFilter")
                                     (lftag :target-type lftag-key-resource
                                      :member-name "LFTag")
                                     (lftag-policy :target-type
                                      lftag-policy-resource :member-name
                                      "LFTagPolicy")
                                     (lftag-expression :target-type
                                      lftag-expression-resource :member-name
                                      "LFTagExpression"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-type resource-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-info common-lisp:nil
                                    ((resource-arn :target-type
                                      resource-arn-string :member-name
                                      "ResourceArn")
                                     (role-arn :target-type iamrole-arn
                                      :member-name "RoleArn")
                                     (last-modified :target-type
                                      last-modified-timestamp :member-name
                                      "LastModified")
                                     (with-federation :target-type
                                      nullable-boolean :member-name
                                      "WithFederation")
                                     (hybrid-access-enabled :target-type
                                      nullable-boolean :member-name
                                      "HybridAccessEnabled")
                                     (with-privileged-access :target-type
                                      nullable-boolean :member-name
                                      "WithPrivilegedAccess"))
                                    (:shape-name "ResourceInfo"))

(smithy/sdk/shapes:define-list resource-info-list :member resource-info)

(smithy/sdk/shapes:define-error resource-not-ready-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "ResourceNotReadyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-number-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name
                                 "ResourceNumberLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list resource-share-list :member
                               ramresource-share-arn)

(smithy/sdk/shapes:define-enum resource-share-type
    common-lisp:nil
  (:foreign "FOREIGN")
  (:all "ALL"))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:database "DATABASE")
  (:table "TABLE"))

(smithy/sdk/shapes:define-type result smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type result-stream smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-input revoke-permissions-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (principal :target-type data-lake-principal
                                  :required common-lisp:t :member-name
                                  "Principal")
                                 (resource :target-type resource :required
                                  common-lisp:t :member-name "Resource")
                                 (permissions :target-type permission-list
                                  :required common-lisp:t :member-name
                                  "Permissions")
                                 (condition :target-type condition :member-name
                                  "Condition")
                                 (permissions-with-grant-option :target-type
                                  permission-list :member-name
                                  "PermissionsWithGrantOption"))
                                (:shape-name "RevokePermissionsRequest"))

(smithy/sdk/shapes:define-output revoke-permissions-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RevokePermissionsResponse"))

(smithy/sdk/shapes:define-structure row-filter common-lisp:nil
                                    ((filter-expression :target-type
                                      predicate-string :member-name
                                      "FilterExpression")
                                     (all-rows-wildcard :target-type
                                      all-rows-wildcard :member-name
                                      "AllRowsWildcard"))
                                    (:shape-name "RowFilter"))

(smithy/sdk/shapes:define-type samlassertion-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scope-target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scope-targets :member scope-target)

(smithy/sdk/shapes:define-input search-databases-by-lftags-request
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type search-page-size
                                  :member-name "MaxResults")
                                 (catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (expression :target-type expression :required
                                  common-lisp:t :member-name "Expression"))
                                (:shape-name "SearchDatabasesByLFTagsRequest"))

(smithy/sdk/shapes:define-output search-databases-by-lftags-response
                                 common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (database-list :target-type
                                   database-lftags-list :member-name
                                   "DatabaseList"))
                                 (:shape-name
                                  "SearchDatabasesByLFTagsResponse"))

(smithy/sdk/shapes:define-type search-page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input search-tables-by-lftags-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type search-page-size
                                  :member-name "MaxResults")
                                 (catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (expression :target-type expression :required
                                  common-lisp:t :member-name "Expression"))
                                (:shape-name "SearchTablesByLFTagsRequest"))

(smithy/sdk/shapes:define-output search-tables-by-lftags-response
                                 common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (table-list :target-type table-lftags-list
                                   :member-name "TableList"))
                                 (:shape-name "SearchTablesByLFTagsResponse"))

(smithy/sdk/shapes:define-type secret-access-key-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-query-planning-request common-lisp:nil
                                ((query-planning-context :target-type
                                  query-planning-context :required
                                  common-lisp:t :member-name
                                  "QueryPlanningContext")
                                 (query-string :target-type
                                  synthetic-start-query-planning-request-query-string
                                  :required common-lisp:t :member-name
                                  "QueryString"))
                                (:shape-name "StartQueryPlanningRequest"))

(smithy/sdk/shapes:define-output start-query-planning-response common-lisp:nil
                                 ((query-id :target-type query-id-string
                                   :required common-lisp:t :member-name
                                   "QueryId"))
                                 (:shape-name "StartQueryPlanningResponse"))

(smithy/sdk/shapes:define-input start-transaction-request common-lisp:nil
                                ((transaction-type :target-type
                                  transaction-type :member-name
                                  "TransactionType"))
                                (:shape-name "StartTransactionRequest"))

(smithy/sdk/shapes:define-output start-transaction-response common-lisp:nil
                                 ((transaction-id :target-type
                                   transaction-id-string :member-name
                                   "TransactionId"))
                                 (:shape-name "StartTransactionResponse"))

(smithy/sdk/shapes:define-error statistics-not-ready-yet-exception
                                common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "StatisticsNotReadyYetException")
                                (:error-code 420))

(smithy/sdk/shapes:define-structure storage-optimizer common-lisp:nil
                                    ((storage-optimizer-type :target-type
                                      optimizer-type :member-name
                                      "StorageOptimizerType")
                                     (config :target-type
                                      storage-optimizer-config :member-name
                                      "Config")
                                     (error-message :target-type message-string
                                      :member-name "ErrorMessage")
                                     (warnings :target-type message-string
                                      :member-name "Warnings")
                                     (last-run-details :target-type
                                      message-string :member-name
                                      "LastRunDetails"))
                                    (:shape-name "StorageOptimizer"))

(smithy/sdk/shapes:define-map storage-optimizer-config :key
                              storage-optimizer-config-key :value
                              storage-optimizer-config-value)

(smithy/sdk/shapes:define-type storage-optimizer-config-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map storage-optimizer-config-map :key optimizer-type
                              :value storage-optimizer-config)

(smithy/sdk/shapes:define-type storage-optimizer-config-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list storage-optimizer-list :member storage-optimizer)

(smithy/sdk/shapes:define-type string-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-value-list :member string-value)

(smithy/sdk/shapes:define-type
 synthetic-get-work-unit-results-request-work-unit-token-string
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 synthetic-start-query-planning-request-query-string
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list table-lftags-list :member tagged-table)

(smithy/sdk/shapes:define-structure table-object common-lisp:nil
                                    ((uri :target-type uri :member-name "Uri")
                                     (etag :target-type etag-string
                                      :member-name "ETag")
                                     (size :target-type object-size
                                      :member-name "Size"))
                                    (:shape-name "TableObject"))

(smithy/sdk/shapes:define-list table-object-list :member table-object)

(smithy/sdk/shapes:define-structure table-resource common-lisp:nil
                                    ((catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (database-name :target-type name-string
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (name :target-type name-string
                                      :member-name "Name")
                                     (table-wildcard :target-type
                                      table-wildcard :member-name
                                      "TableWildcard"))
                                    (:shape-name "TableResource"))

(smithy/sdk/shapes:define-structure table-wildcard common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TableWildcard"))

(smithy/sdk/shapes:define-structure table-with-columns-resource common-lisp:nil
                                    ((catalog-id :target-type catalog-id-string
                                      :member-name "CatalogId")
                                     (database-name :target-type name-string
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (name :target-type name-string :required
                                      common-lisp:t :member-name "Name")
                                     (column-names :target-type column-names
                                      :member-name "ColumnNames")
                                     (column-wildcard :target-type
                                      column-wildcard :member-name
                                      "ColumnWildcard"))
                                    (:shape-name "TableWithColumnsResource"))

(smithy/sdk/shapes:define-list tag-value-list :member lftag-value)

(smithy/sdk/shapes:define-structure tagged-database common-lisp:nil
                                    ((database :target-type database-resource
                                      :member-name "Database")
                                     (lftags :target-type lftags-list
                                      :member-name "LFTags"))
                                    (:shape-name "TaggedDatabase"))

(smithy/sdk/shapes:define-structure tagged-table common-lisp:nil
                                    ((table :target-type table-resource
                                      :member-name "Table")
                                     (lftag-on-database :target-type
                                      lftags-list :member-name
                                      "LFTagOnDatabase")
                                     (lftags-on-table :target-type lftags-list
                                      :member-name "LFTagsOnTable")
                                     (lftags-on-columns :target-type
                                      column-lftags-list :member-name
                                      "LFTagsOnColumns"))
                                    (:shape-name "TaggedTable"))

(smithy/sdk/shapes:define-error throttled-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "ThrottledException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error transaction-canceled-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "TransactionCanceledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error transaction-commit-in-progress-exception
                                common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name
                                 "TransactionCommitInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error transaction-committed-exception common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "TransactionCommittedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure transaction-description common-lisp:nil
                                    ((transaction-id :target-type
                                      transaction-id-string :member-name
                                      "TransactionId")
                                     (transaction-status :target-type
                                      transaction-status :member-name
                                      "TransactionStatus")
                                     (transaction-start-time :target-type
                                      timestamp :member-name
                                      "TransactionStartTime")
                                     (transaction-end-time :target-type
                                      timestamp :member-name
                                      "TransactionEndTime"))
                                    (:shape-name "TransactionDescription"))

(smithy/sdk/shapes:define-list transaction-description-list :member
                               transaction-description)

(smithy/sdk/shapes:define-type transaction-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum transaction-status
    common-lisp:nil
  (:active "ACTIVE")
  (:committed "COMMITTED")
  (:aborted "ABORTED")
  (:commit-in-progress "COMMIT_IN_PROGRESS"))

(smithy/sdk/shapes:define-enum transaction-status-filter
    common-lisp:nil
  (:all "ALL")
  (:completed "COMPLETED")
  (:active "ACTIVE")
  (:committed "COMMITTED")
  (:aborted "ABORTED"))

(smithy/sdk/shapes:define-enum transaction-type
    common-lisp:nil
  (:read-and-write "READ_AND_WRITE")
  (:read-only "READ_ONLY"))

(smithy/sdk/shapes:define-type true-false-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list trusted-resource-owners :member
                               catalog-id-string)

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-data-cells-filter-request
                                common-lisp:nil
                                ((table-data :target-type data-cells-filter
                                  :required common-lisp:t :member-name
                                  "TableData"))
                                (:shape-name "UpdateDataCellsFilterRequest"))

(smithy/sdk/shapes:define-output update-data-cells-filter-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateDataCellsFilterResponse"))

(smithy/sdk/shapes:define-input update-lftag-expression-request common-lisp:nil
                                ((name :target-type name-string :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (expression :target-type expression :required
                                  common-lisp:t :member-name "Expression"))
                                (:shape-name "UpdateLFTagExpressionRequest"))

(smithy/sdk/shapes:define-output update-lftag-expression-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateLFTagExpressionResponse"))

(smithy/sdk/shapes:define-input update-lftag-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (tag-key :target-type lftag-key :required
                                  common-lisp:t :member-name "TagKey")
                                 (tag-values-to-delete :target-type
                                  tag-value-list :member-name
                                  "TagValuesToDelete")
                                 (tag-values-to-add :target-type tag-value-list
                                  :member-name "TagValuesToAdd"))
                                (:shape-name "UpdateLFTagRequest"))

(smithy/sdk/shapes:define-output update-lftag-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateLFTagResponse"))

(smithy/sdk/shapes:define-input
 update-lake-formation-identity-center-configuration-request common-lisp:nil
 ((catalog-id :target-type catalog-id-string :member-name "CatalogId")
  (share-recipients :target-type data-lake-principal-list :member-name
   "ShareRecipients")
  (application-status :target-type application-status :member-name
   "ApplicationStatus")
  (external-filtering :target-type external-filtering-configuration
   :member-name "ExternalFiltering"))
 (:shape-name "UpdateLakeFormationIdentityCenterConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-lake-formation-identity-center-configuration-response common-lisp:nil
 common-lisp:nil
 (:shape-name "UpdateLakeFormationIdentityCenterConfigurationResponse"))

(smithy/sdk/shapes:define-input update-resource-request common-lisp:nil
                                ((role-arn :target-type iamrole-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (resource-arn :target-type resource-arn-string
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (with-federation :target-type nullable-boolean
                                  :member-name "WithFederation")
                                 (hybrid-access-enabled :target-type
                                  nullable-boolean :member-name
                                  "HybridAccessEnabled"))
                                (:shape-name "UpdateResourceRequest"))

(smithy/sdk/shapes:define-output update-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateResourceResponse"))

(smithy/sdk/shapes:define-input update-table-objects-request common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (database-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type name-string :required
                                  common-lisp:t :member-name "TableName")
                                 (transaction-id :target-type
                                  transaction-id-string :member-name
                                  "TransactionId")
                                 (write-operations :target-type
                                  write-operation-list :required common-lisp:t
                                  :member-name "WriteOperations"))
                                (:shape-name "UpdateTableObjectsRequest"))

(smithy/sdk/shapes:define-output update-table-objects-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateTableObjectsResponse"))

(smithy/sdk/shapes:define-input update-table-storage-optimizer-request
                                common-lisp:nil
                                ((catalog-id :target-type catalog-id-string
                                  :member-name "CatalogId")
                                 (database-name :target-type name-string
                                  :required common-lisp:t :member-name
                                  "DatabaseName")
                                 (table-name :target-type name-string :required
                                  common-lisp:t :member-name "TableName")
                                 (storage-optimizer-config :target-type
                                  storage-optimizer-config-map :required
                                  common-lisp:t :member-name
                                  "StorageOptimizerConfig"))
                                (:shape-name
                                 "UpdateTableStorageOptimizerRequest"))

(smithy/sdk/shapes:define-output update-table-storage-optimizer-response
                                 common-lisp:nil
                                 ((result :target-type result :member-name
                                   "Result"))
                                 (:shape-name
                                  "UpdateTableStorageOptimizerResponse"))

(smithy/sdk/shapes:define-type value-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list value-string-list :member value-string)

(smithy/sdk/shapes:define-type version-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure virtual-object common-lisp:nil
                                    ((uri :target-type uri :required
                                      common-lisp:t :member-name "Uri")
                                     (etag :target-type etag-string
                                      :member-name "ETag"))
                                    (:shape-name "VirtualObject"))

(smithy/sdk/shapes:define-list virtual-object-list :member virtual-object)

(smithy/sdk/shapes:define-type work-unit-id-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure work-unit-range common-lisp:nil
                                    ((work-unit-id-max :target-type
                                      work-unit-id-long :required common-lisp:t
                                      :member-name "WorkUnitIdMax")
                                     (work-unit-id-min :target-type
                                      work-unit-id-long :required common-lisp:t
                                      :member-name "WorkUnitIdMin")
                                     (work-unit-token :target-type
                                      work-unit-token-string :required
                                      common-lisp:t :member-name
                                      "WorkUnitToken"))
                                    (:shape-name "WorkUnitRange"))

(smithy/sdk/shapes:define-list work-unit-range-list :member work-unit-range)

(smithy/sdk/shapes:define-type work-unit-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error work-units-not-ready-yet-exception
                                common-lisp:nil
                                ((message :target-type message-string
                                  :member-name "Message"))
                                (:shape-name "WorkUnitsNotReadyYetException")
                                (:error-code 420))

(smithy/sdk/shapes:define-structure write-operation common-lisp:nil
                                    ((add-object :target-type add-object-input
                                      :member-name "AddObject")
                                     (delete-object :target-type
                                      delete-object-input :member-name
                                      "DeleteObject"))
                                    (:shape-name "WriteOperation"))

(smithy/sdk/shapes:define-list write-operation-list :member write-operation)

(smithy/sdk/operation:define-operation add-lftags-to-resource :shape-name
                                       "AddLFTagsToResource" :input
                                       add-lftags-to-resource-request :output
                                       add-lftags-to-resource-response :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/AddLFTagsToResource" :code 200)

(smithy/sdk/operation:define-operation assume-decorated-role-with-saml
                                       :shape-name
                                       "AssumeDecoratedRoleWithSAML" :input
                                       assume-decorated-role-with-samlrequest
                                       :output
                                       assume-decorated-role-with-samlresponse
                                       :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/AssumeDecoratedRoleWithSAML" :code 200)

(smithy/sdk/operation:define-operation batch-grant-permissions :shape-name
                                       "BatchGrantPermissions" :input
                                       batch-grant-permissions-request :output
                                       batch-grant-permissions-response :errors
                                       (invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/BatchGrantPermissions" :code 200)

(smithy/sdk/operation:define-operation batch-revoke-permissions :shape-name
                                       "BatchRevokePermissions" :input
                                       batch-revoke-permissions-request :output
                                       batch-revoke-permissions-response
                                       :errors
                                       (invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/BatchRevokePermissions" :code 200)

(smithy/sdk/operation:define-operation cancel-transaction :shape-name
                                       "CancelTransaction" :input
                                       cancel-transaction-request :output
                                       cancel-transaction-response :errors
                                       (concurrent-modification-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        transaction-commit-in-progress-exception
                                        transaction-committed-exception)
                                       :method "POST" :uri "/CancelTransaction"
                                       :code 200)

(smithy/sdk/operation:define-operation commit-transaction :shape-name
                                       "CommitTransaction" :input
                                       commit-transaction-request :output
                                       commit-transaction-response :errors
                                       (concurrent-modification-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        transaction-canceled-exception)
                                       :method "POST" :uri "/CommitTransaction"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-cells-filter :shape-name
                                       "CreateDataCellsFilter" :input
                                       create-data-cells-filter-request :output
                                       create-data-cells-filter-response
                                       :errors
                                       (access-denied-exception
                                        already-exists-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        resource-number-limit-exceeded-exception)
                                       :method "POST" :uri
                                       "/CreateDataCellsFilter" :code 200)

(smithy/sdk/operation:define-operation create-lftag :shape-name "CreateLFTag"
                                       :input create-lftag-request :output
                                       create-lftag-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        resource-number-limit-exceeded-exception)
                                       :method "POST" :uri "/CreateLFTag" :code
                                       200)

(smithy/sdk/operation:define-operation create-lftag-expression :shape-name
                                       "CreateLFTagExpression" :input
                                       create-lftag-expression-request :output
                                       create-lftag-expression-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        resource-number-limit-exceeded-exception)
                                       :method "POST" :uri
                                       "/CreateLFTagExpression" :code 200)

(smithy/sdk/operation:define-operation
 create-lake-formation-identity-center-configuration :shape-name
 "CreateLakeFormationIdentityCenterConfiguration" :input
 create-lake-formation-identity-center-configuration-request :output
 create-lake-formation-identity-center-configuration-response :errors
 (access-denied-exception already-exists-exception
  concurrent-modification-exception internal-service-exception
  invalid-input-exception operation-timeout-exception)
 :method "POST" :uri "/CreateLakeFormationIdentityCenterConfiguration" :code
 200)

(smithy/sdk/operation:define-operation create-lake-formation-opt-in :shape-name
                                       "CreateLakeFormationOptIn" :input
                                       create-lake-formation-opt-in-request
                                       :output
                                       create-lake-formation-opt-in-response
                                       :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        resource-number-limit-exceeded-exception)
                                       :method "POST" :uri
                                       "/CreateLakeFormationOptIn" :code 200)

(smithy/sdk/operation:define-operation delete-data-cells-filter :shape-name
                                       "DeleteDataCellsFilter" :input
                                       delete-data-cells-filter-request :output
                                       delete-data-cells-filter-response
                                       :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/DeleteDataCellsFilter" :code 200)

(smithy/sdk/operation:define-operation delete-lftag :shape-name "DeleteLFTag"
                                       :input delete-lftag-request :output
                                       delete-lftag-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/DeleteLFTag" :code
                                       200)

(smithy/sdk/operation:define-operation delete-lftag-expression :shape-name
                                       "DeleteLFTagExpression" :input
                                       delete-lftag-expression-request :output
                                       delete-lftag-expression-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/DeleteLFTagExpression" :code 200)

(smithy/sdk/operation:define-operation
 delete-lake-formation-identity-center-configuration :shape-name
 "DeleteLakeFormationIdentityCenterConfiguration" :input
 delete-lake-formation-identity-center-configuration-request :output
 delete-lake-formation-identity-center-configuration-response :errors
 (access-denied-exception concurrent-modification-exception
  entity-not-found-exception internal-service-exception invalid-input-exception
  operation-timeout-exception)
 :method "POST" :uri "/DeleteLakeFormationIdentityCenterConfiguration" :code
 200)

(smithy/sdk/operation:define-operation delete-lake-formation-opt-in :shape-name
                                       "DeleteLakeFormationOptIn" :input
                                       delete-lake-formation-opt-in-request
                                       :output
                                       delete-lake-formation-opt-in-response
                                       :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/DeleteLakeFormationOptIn" :code 200)

(smithy/sdk/operation:define-operation delete-objects-on-cancel :shape-name
                                       "DeleteObjectsOnCancel" :input
                                       delete-objects-on-cancel-request :output
                                       delete-objects-on-cancel-response
                                       :errors
                                       (concurrent-modification-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        resource-not-ready-exception
                                        transaction-canceled-exception
                                        transaction-committed-exception)
                                       :method "POST" :uri
                                       "/DeleteObjectsOnCancel" :code 200)

(smithy/sdk/operation:define-operation deregister-resource :shape-name
                                       "DeregisterResource" :input
                                       deregister-resource-request :output
                                       deregister-resource-response :errors
                                       (entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/DeregisterResource" :code 200)

(smithy/sdk/operation:define-operation
 describe-lake-formation-identity-center-configuration :shape-name
 "DescribeLakeFormationIdentityCenterConfiguration" :input
 describe-lake-formation-identity-center-configuration-request :output
 describe-lake-formation-identity-center-configuration-response :errors
 (access-denied-exception entity-not-found-exception internal-service-exception
  invalid-input-exception operation-timeout-exception)
 :method "POST" :uri "/DescribeLakeFormationIdentityCenterConfiguration" :code
 200)

(smithy/sdk/operation:define-operation describe-resource :shape-name
                                       "DescribeResource" :input
                                       describe-resource-request :output
                                       describe-resource-response :errors
                                       (entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/DescribeResource"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-transaction :shape-name
                                       "DescribeTransaction" :input
                                       describe-transaction-request :output
                                       describe-transaction-response :errors
                                       (entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/DescribeTransaction" :code 200)

(smithy/sdk/operation:define-operation extend-transaction :shape-name
                                       "ExtendTransaction" :input
                                       extend-transaction-request :output
                                       extend-transaction-response :errors
                                       (entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        transaction-canceled-exception
                                        transaction-commit-in-progress-exception
                                        transaction-committed-exception)
                                       :method "POST" :uri "/ExtendTransaction"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-cells-filter :shape-name
                                       "GetDataCellsFilter" :input
                                       get-data-cells-filter-request :output
                                       get-data-cells-filter-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/GetDataCellsFilter" :code 200)

(smithy/sdk/operation:define-operation get-data-lake-principal :shape-name
                                       "GetDataLakePrincipal" :input
                                       get-data-lake-principal-request :output
                                       get-data-lake-principal-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/GetDataLakePrincipal" :code 200)

(smithy/sdk/operation:define-operation get-data-lake-settings :shape-name
                                       "GetDataLakeSettings" :input
                                       get-data-lake-settings-request :output
                                       get-data-lake-settings-response :errors
                                       (entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception)
                                       :method "POST" :uri
                                       "/GetDataLakeSettings" :code 200)

(smithy/sdk/operation:define-operation get-effective-permissions-for-path
                                       :shape-name
                                       "GetEffectivePermissionsForPath" :input
                                       get-effective-permissions-for-path-request
                                       :output
                                       get-effective-permissions-for-path-response
                                       :errors
                                       (entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/GetEffectivePermissionsForPath" :code
                                       200)

(smithy/sdk/operation:define-operation get-lftag :shape-name "GetLFTag" :input
                                       get-lftag-request :output
                                       get-lftag-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/GetLFTag" :code
                                       200)

(smithy/sdk/operation:define-operation get-lftag-expression :shape-name
                                       "GetLFTagExpression" :input
                                       get-lftag-expression-request :output
                                       get-lftag-expression-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/GetLFTagExpression" :code 200)

(smithy/sdk/operation:define-operation get-query-state :shape-name
                                       "GetQueryState" :input
                                       get-query-state-request :output
                                       get-query-state-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-input-exception)
                                       :method "POST" :uri "/GetQueryState"
                                       :code 200 :endpoint-host-prefix "query-")

(smithy/sdk/operation:define-operation get-query-statistics :shape-name
                                       "GetQueryStatistics" :input
                                       get-query-statistics-request :output
                                       get-query-statistics-response :errors
                                       (access-denied-exception
                                        expired-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        statistics-not-ready-yet-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/GetQueryStatistics" :code 200
                                       :endpoint-host-prefix "query-")

(smithy/sdk/operation:define-operation get-resource-lftags :shape-name
                                       "GetResourceLFTags" :input
                                       get-resource-lftags-request :output
                                       get-resource-lftags-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        glue-encryption-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/GetResourceLFTags"
                                       :code 200)

(smithy/sdk/operation:define-operation get-table-objects :shape-name
                                       "GetTableObjects" :input
                                       get-table-objects-request :output
                                       get-table-objects-response :errors
                                       (entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        resource-not-ready-exception
                                        transaction-canceled-exception
                                        transaction-committed-exception)
                                       :method "POST" :uri "/GetTableObjects"
                                       :code 200)

(smithy/sdk/operation:define-operation get-temporary-glue-partition-credentials
                                       :shape-name
                                       "GetTemporaryGluePartitionCredentials"
                                       :input
                                       get-temporary-glue-partition-credentials-request
                                       :output
                                       get-temporary-glue-partition-credentials-response
                                       :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        permission-type-mismatch-exception)
                                       :method "POST" :uri
                                       "/GetTemporaryGluePartitionCredentials"
                                       :code 200)

(smithy/sdk/operation:define-operation get-temporary-glue-table-credentials
                                       :shape-name
                                       "GetTemporaryGlueTableCredentials"
                                       :input
                                       get-temporary-glue-table-credentials-request
                                       :output
                                       get-temporary-glue-table-credentials-response
                                       :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        permission-type-mismatch-exception)
                                       :method "POST" :uri
                                       "/GetTemporaryGlueTableCredentials"
                                       :code 200)

(smithy/sdk/operation:define-operation get-work-unit-results :shape-name
                                       "GetWorkUnitResults" :input
                                       get-work-unit-results-request :output
                                       get-work-unit-results-response :errors
                                       (access-denied-exception
                                        expired-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/GetWorkUnitResults" :code 200
                                       :endpoint-host-prefix "data-")

(smithy/sdk/operation:define-operation get-work-units :shape-name
                                       "GetWorkUnits" :input
                                       get-work-units-request :output
                                       get-work-units-response :errors
                                       (access-denied-exception
                                        expired-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        work-units-not-ready-yet-exception)
                                       :method "POST" :uri "/GetWorkUnits"
                                       :code 200 :endpoint-host-prefix "query-")

(smithy/sdk/operation:define-operation grant-permissions :shape-name
                                       "GrantPermissions" :input
                                       grant-permissions-request :output
                                       grant-permissions-response :errors
                                       (concurrent-modification-exception
                                        entity-not-found-exception
                                        invalid-input-exception)
                                       :method "POST" :uri "/GrantPermissions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-cells-filter :shape-name
                                       "ListDataCellsFilter" :input
                                       list-data-cells-filter-request :output
                                       list-data-cells-filter-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/ListDataCellsFilter" :code 200)

(smithy/sdk/operation:define-operation list-lftag-expressions :shape-name
                                       "ListLFTagExpressions" :input
                                       list-lftag-expressions-request :output
                                       list-lftag-expressions-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/ListLFTagExpressions" :code 200)

(smithy/sdk/operation:define-operation list-lftags :shape-name "ListLFTags"
                                       :input list-lftags-request :output
                                       list-lftags-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/ListLFTags" :code
                                       200)

(smithy/sdk/operation:define-operation list-lake-formation-opt-ins :shape-name
                                       "ListLakeFormationOptIns" :input
                                       list-lake-formation-opt-ins-request
                                       :output
                                       list-lake-formation-opt-ins-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/ListLakeFormationOptIns" :code 200)

(smithy/sdk/operation:define-operation list-permissions :shape-name
                                       "ListPermissions" :input
                                       list-permissions-request :output
                                       list-permissions-response :errors
                                       (internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/ListPermissions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-resources :shape-name
                                       "ListResources" :input
                                       list-resources-request :output
                                       list-resources-response :errors
                                       (internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/ListResources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-table-storage-optimizers
                                       :shape-name "ListTableStorageOptimizers"
                                       :input
                                       list-table-storage-optimizers-request
                                       :output
                                       list-table-storage-optimizers-response
                                       :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception)
                                       :method "POST" :uri
                                       "/ListTableStorageOptimizers" :code 200)

(smithy/sdk/operation:define-operation list-transactions :shape-name
                                       "ListTransactions" :input
                                       list-transactions-request :output
                                       list-transactions-response :errors
                                       (internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/ListTransactions"
                                       :code 200)

(smithy/sdk/operation:define-operation put-data-lake-settings :shape-name
                                       "PutDataLakeSettings" :input
                                       put-data-lake-settings-request :output
                                       put-data-lake-settings-response :errors
                                       (internal-service-exception
                                        invalid-input-exception)
                                       :method "POST" :uri
                                       "/PutDataLakeSettings" :code 200)

(smithy/sdk/operation:define-operation register-resource :shape-name
                                       "RegisterResource" :input
                                       register-resource-request :output
                                       register-resource-response :errors
                                       (access-denied-exception
                                        already-exists-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        resource-number-limit-exceeded-exception)
                                       :method "POST" :uri "/RegisterResource"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-lftags-from-resource :shape-name
                                       "RemoveLFTagsFromResource" :input
                                       remove-lftags-from-resource-request
                                       :output
                                       remove-lftags-from-resource-response
                                       :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        entity-not-found-exception
                                        glue-encryption-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/RemoveLFTagsFromResource" :code 200)

(smithy/sdk/operation:define-operation revoke-permissions :shape-name
                                       "RevokePermissions" :input
                                       revoke-permissions-request :output
                                       revoke-permissions-response :errors
                                       (concurrent-modification-exception
                                        entity-not-found-exception
                                        invalid-input-exception)
                                       :method "POST" :uri "/RevokePermissions"
                                       :code 200)

(smithy/sdk/operation:define-operation search-databases-by-lftags :shape-name
                                       "SearchDatabasesByLFTags" :input
                                       search-databases-by-lftags-request
                                       :output
                                       search-databases-by-lftags-response
                                       :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        glue-encryption-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/SearchDatabasesByLFTags" :code 200)

(smithy/sdk/operation:define-operation search-tables-by-lftags :shape-name
                                       "SearchTablesByLFTags" :input
                                       search-tables-by-lftags-request :output
                                       search-tables-by-lftags-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        glue-encryption-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/SearchTablesByLFTags" :code 200)

(smithy/sdk/operation:define-operation start-query-planning :shape-name
                                       "StartQueryPlanning" :input
                                       start-query-planning-request :output
                                       start-query-planning-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        throttled-exception)
                                       :method "POST" :uri
                                       "/StartQueryPlanning" :code 200
                                       :endpoint-host-prefix "query-")

(smithy/sdk/operation:define-operation start-transaction :shape-name
                                       "StartTransaction" :input
                                       start-transaction-request :output
                                       start-transaction-response :errors
                                       (internal-service-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/StartTransaction"
                                       :code 200)

(smithy/sdk/operation:define-operation update-data-cells-filter :shape-name
                                       "UpdateDataCellsFilter" :input
                                       update-data-cells-filter-request :output
                                       update-data-cells-filter-response
                                       :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri
                                       "/UpdateDataCellsFilter" :code 200)

(smithy/sdk/operation:define-operation update-lftag :shape-name "UpdateLFTag"
                                       :input update-lftag-request :output
                                       update-lftag-response :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/UpdateLFTag" :code
                                       200)

(smithy/sdk/operation:define-operation update-lftag-expression :shape-name
                                       "UpdateLFTagExpression" :input
                                       update-lftag-expression-request :output
                                       update-lftag-expression-response :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        resource-number-limit-exceeded-exception)
                                       :method "POST" :uri
                                       "/UpdateLFTagExpression" :code 200)

(smithy/sdk/operation:define-operation
 update-lake-formation-identity-center-configuration :shape-name
 "UpdateLakeFormationIdentityCenterConfiguration" :input
 update-lake-formation-identity-center-configuration-request :output
 update-lake-formation-identity-center-configuration-response :errors
 (access-denied-exception concurrent-modification-exception
  entity-not-found-exception internal-service-exception invalid-input-exception
  operation-timeout-exception)
 :method "POST" :uri "/UpdateLakeFormationIdentityCenterConfiguration" :code
 200)

(smithy/sdk/operation:define-operation update-resource :shape-name
                                       "UpdateResource" :input
                                       update-resource-request :output
                                       update-resource-response :errors
                                       (entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception)
                                       :method "POST" :uri "/UpdateResource"
                                       :code 200)

(smithy/sdk/operation:define-operation update-table-objects :shape-name
                                       "UpdateTableObjects" :input
                                       update-table-objects-request :output
                                       update-table-objects-response :errors
                                       (concurrent-modification-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception
                                        operation-timeout-exception
                                        resource-not-ready-exception
                                        transaction-canceled-exception
                                        transaction-commit-in-progress-exception
                                        transaction-committed-exception)
                                       :method "POST" :uri
                                       "/UpdateTableObjects" :code 200)

(smithy/sdk/operation:define-operation update-table-storage-optimizer
                                       :shape-name
                                       "UpdateTableStorageOptimizer" :input
                                       update-table-storage-optimizer-request
                                       :output
                                       update-table-storage-optimizer-response
                                       :errors
                                       (access-denied-exception
                                        entity-not-found-exception
                                        internal-service-exception
                                        invalid-input-exception)
                                       :method "POST" :uri
                                       "/UpdateTableStorageOptimizer" :code 200)
