(uiop/package:define-package #:pira/databrew (:use)
                             (:export #:awsglue-data-brew
                              #:access-denied-exception #:account-id
                              #:action-id #:allowed-statistic-list
                              #:allowed-statistics #:analytics-mode #:arn
                              #:assume-control #:attempt
                              #:batch-delete-recipe-version #:bucket
                              #:bucket-owner #:catalog-id #:client-session-id
                              #:column-name #:column-name-list #:column-range
                              #:column-selector #:column-selector-list
                              #:column-statistics-configuration
                              #:column-statistics-configuration-list
                              #:compression-format #:condition
                              #:condition-expression
                              #:condition-expression-list #:condition-value
                              #:conflict-exception #:create-column
                              #:create-dataset #:create-profile-job
                              #:create-project #:create-recipe
                              #:create-recipe-job #:create-ruleset
                              #:create-schedule #:created-by #:cron-expression
                              #:csv-options #:csv-output-options
                              #:data-catalog-input-definition
                              #:data-catalog-output #:data-catalog-output-list
                              #:database-input-definition #:database-name
                              #:database-output #:database-output-list
                              #:database-output-mode #:database-table-name
                              #:database-table-output-options #:dataset
                              #:dataset-list #:dataset-name #:dataset-parameter
                              #:date #:datetime-format #:datetime-options
                              #:delete-dataset #:delete-job #:delete-project
                              #:delete-recipe-version #:delete-ruleset
                              #:delete-schedule #:delimiter #:describe-dataset
                              #:describe-job #:describe-job-run
                              #:describe-project #:describe-recipe
                              #:describe-ruleset #:describe-schedule #:disabled
                              #:encryption-key-arn #:encryption-mode
                              #:entity-detector-configuration #:entity-type
                              #:entity-type-list #:error-code #:excel-options
                              #:execution-time #:expression #:files-limit
                              #:filter-expression #:format-options
                              #:glue-connection-name #:header-row
                              #:hidden-column-list #:input #:input-format
                              #:internal-server-exception #:job #:job-list
                              #:job-name #:job-name-list #:job-run
                              #:job-run-error-message #:job-run-id
                              #:job-run-list #:job-run-state #:job-sample
                              #:job-size #:job-type #:json-options #:key
                              #:last-modified-by #:list-datasets
                              #:list-job-runs #:list-jobs #:list-projects
                              #:list-recipe-versions #:list-recipes
                              #:list-rulesets #:list-schedules
                              #:list-tags-for-resource #:locale-code
                              #:log-group-name #:log-subscription
                              #:max-capacity #:max-files #:max-output-files
                              #:max-results100 #:max-retries #:message
                              #:metadata #:multi-line #:next-token #:opened-by
                              #:operation #:order #:ordered-by #:output
                              #:output-format #:output-format-options
                              #:output-list #:overwrite-output #:parameter-map
                              #:parameter-name #:parameter-type
                              #:parameter-value #:path-options
                              #:path-parameter-name #:path-parameters-map
                              #:preview #:profile-configuration #:project
                              #:project-list #:project-name #:publish-recipe
                              #:published-by #:query-string #:recipe
                              #:recipe-action #:recipe-description
                              #:recipe-error-list #:recipe-error-message
                              #:recipe-list #:recipe-name #:recipe-reference
                              #:recipe-step #:recipe-step-list #:recipe-version
                              #:recipe-version-error-detail
                              #:recipe-version-list
                              #:resource-not-found-exception #:result
                              #:row-range #:rule #:rule-count #:rule-list
                              #:rule-name #:ruleset-description #:ruleset-item
                              #:ruleset-item-list #:ruleset-name #:s3location
                              #:s3table-output-options #:sample #:sample-mode
                              #:sample-size #:sample-type #:schedule
                              #:schedule-list #:schedule-name
                              #:send-project-session-action
                              #:service-quota-exceeded-exception
                              #:session-status #:sheet-index #:sheet-index-list
                              #:sheet-name #:sheet-name-list #:source
                              #:start-column-index #:start-job-run
                              #:start-project-session #:start-row-index
                              #:started-by #:statistic #:statistic-list
                              #:statistic-override #:statistic-override-list
                              #:statistics-configuration #:step-index
                              #:stop-job-run #:table-name #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:target-column #:threshold
                              #:threshold-type #:threshold-unit
                              #:threshold-value #:timeout #:timezone-offset
                              #:untag-resource #:update-dataset
                              #:update-profile-job #:update-project
                              #:update-recipe #:update-recipe-job
                              #:update-ruleset #:update-schedule
                              #:validation-configuration
                              #:validation-configuration-list
                              #:validation-exception #:validation-mode
                              #:value-reference #:values-map #:view-frame
                              #:databrew-error))
(common-lisp:in-package #:pira/databrew)

(common-lisp:define-condition databrew-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsglue-data-brew :shape-name
                                   "AWSGlueDataBrew" :version "2017-07-25"
                                   :title "AWS Glue DataBrew" :operations
                                   '(batch-delete-recipe-version create-dataset
                                     create-profile-job create-project
                                     create-recipe create-recipe-job
                                     create-ruleset create-schedule
                                     delete-dataset delete-job delete-project
                                     delete-recipe-version delete-ruleset
                                     delete-schedule describe-dataset
                                     describe-job describe-job-run
                                     describe-project describe-recipe
                                     describe-ruleset describe-schedule
                                     list-datasets list-job-runs list-jobs
                                     list-projects list-recipes
                                     list-recipe-versions list-rulesets
                                     list-schedules list-tags-for-resource
                                     publish-recipe send-project-session-action
                                     start-job-run start-project-session
                                     stop-job-run tag-resource untag-resource
                                     update-dataset update-profile-job
                                     update-project update-recipe
                                     update-recipe-job update-ruleset
                                     update-schedule)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "DataBrew")
                                      ("arnNamespace" . "databrew")
                                      ("cloudFormationName" . "DataBrew")
                                      ("cloudTrailEventSource"
                                       . "databrew.amazonaws.com")
                                      ("endpointPrefix" . "databrew"))
                                     ("aws.auth#sigv4" ("name" . "databrew"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class databrew-error))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list allowed-statistic-list :member
                               allowed-statistics)

(smithy/sdk/shapes:define-structure allowed-statistics common-lisp:nil
                                    ((statistics :target-type statistic-list
                                      :required common-lisp:t :member-name
                                      "Statistics"))
                                    (:shape-name "AllowedStatistics"))

(smithy/sdk/shapes:define-enum analytics-mode
    common-lisp:nil
  (:enable "ENABLE")
  (:disable "DISABLE"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assume-control smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type attempt smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input batch-delete-recipe-version-request
                                common-lisp:nil
                                ((name :target-type recipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (recipe-versions :target-type
                                  recipe-version-list :required common-lisp:t
                                  :member-name "RecipeVersions"))
                                (:shape-name "BatchDeleteRecipeVersionRequest"))

(smithy/sdk/shapes:define-output batch-delete-recipe-version-response
                                 common-lisp:nil
                                 ((name :target-type recipe-name :required
                                   common-lisp:t :member-name "Name")
                                  (errors :target-type recipe-error-list
                                   :member-name "Errors"))
                                 (:shape-name
                                  "BatchDeleteRecipeVersionResponse"))

(smithy/sdk/shapes:define-type bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type catalog-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list column-name-list :member column-name)

(smithy/sdk/shapes:define-type column-range smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure column-selector common-lisp:nil
                                    ((regex :target-type column-name
                                      :member-name "Regex")
                                     (name :target-type column-name
                                      :member-name "Name"))
                                    (:shape-name "ColumnSelector"))

(smithy/sdk/shapes:define-list column-selector-list :member column-selector)

(smithy/sdk/shapes:define-structure column-statistics-configuration
                                    common-lisp:nil
                                    ((selectors :target-type
                                      column-selector-list :member-name
                                      "Selectors")
                                     (statistics :target-type
                                      statistics-configuration :required
                                      common-lisp:t :member-name "Statistics"))
                                    (:shape-name
                                     "ColumnStatisticsConfiguration"))

(smithy/sdk/shapes:define-list column-statistics-configuration-list :member
                               column-statistics-configuration)

(smithy/sdk/shapes:define-enum compression-format
    common-lisp:nil
  (:gzip "GZIP")
  (:lz4 "LZ4")
  (:snappy "SNAPPY")
  (:bzip2 "BZIP2")
  (:deflate "DEFLATE")
  (:lzo "LZO")
  (:brotli "BROTLI")
  (:zstd "ZSTD")
  (:zlib "ZLIB"))

(smithy/sdk/shapes:define-type condition smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure condition-expression common-lisp:nil
                                    ((condition :target-type condition
                                      :required common-lisp:t :member-name
                                      "Condition")
                                     (value :target-type condition-value
                                      :member-name "Value")
                                     (target-column :target-type target-column
                                      :required common-lisp:t :member-name
                                      "TargetColumn"))
                                    (:shape-name "ConditionExpression"))

(smithy/sdk/shapes:define-list condition-expression-list :member
                               condition-expression)

(smithy/sdk/shapes:define-type condition-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class databrew-error))

(smithy/sdk/shapes:define-type create-column smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((name :target-type dataset-name :required
                                  common-lisp:t :member-name "Name")
                                 (format :target-type input-format :member-name
                                  "Format")
                                 (format-options :target-type format-options
                                  :member-name "FormatOptions")
                                 (input :target-type input :required
                                  common-lisp:t :member-name "Input")
                                 (path-options :target-type path-options
                                  :member-name "PathOptions")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((name :target-type dataset-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-profile-job-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName")
                                 (encryption-key-arn :target-type
                                  encryption-key-arn :member-name
                                  "EncryptionKeyArn")
                                 (encryption-mode :target-type encryption-mode
                                  :member-name "EncryptionMode")
                                 (name :target-type job-name :required
                                  common-lisp:t :member-name "Name")
                                 (log-subscription :target-type
                                  log-subscription :member-name
                                  "LogSubscription")
                                 (max-capacity :target-type max-capacity
                                  :member-name "MaxCapacity")
                                 (max-retries :target-type max-retries
                                  :member-name "MaxRetries")
                                 (output-location :target-type s3location
                                  :required common-lisp:t :member-name
                                  "OutputLocation")
                                 (configuration :target-type
                                  profile-configuration :member-name
                                  "Configuration")
                                 (validation-configurations :target-type
                                  validation-configuration-list :member-name
                                  "ValidationConfigurations")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (timeout :target-type timeout :member-name
                                  "Timeout")
                                 (job-sample :target-type job-sample
                                  :member-name "JobSample"))
                                (:shape-name "CreateProfileJobRequest"))

(smithy/sdk/shapes:define-output create-profile-job-response common-lisp:nil
                                 ((name :target-type job-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "CreateProfileJobResponse"))

(smithy/sdk/shapes:define-input create-project-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "DatasetName")
                                 (name :target-type project-name :required
                                  common-lisp:t :member-name "Name")
                                 (recipe-name :target-type recipe-name
                                  :required common-lisp:t :member-name
                                  "RecipeName")
                                 (sample :target-type sample :member-name
                                  "Sample")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateProjectRequest"))

(smithy/sdk/shapes:define-output create-project-response common-lisp:nil
                                 ((name :target-type project-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "CreateProjectResponse"))

(smithy/sdk/shapes:define-input create-recipe-job-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :member-name "DatasetName")
                                 (encryption-key-arn :target-type
                                  encryption-key-arn :member-name
                                  "EncryptionKeyArn")
                                 (encryption-mode :target-type encryption-mode
                                  :member-name "EncryptionMode")
                                 (name :target-type job-name :required
                                  common-lisp:t :member-name "Name")
                                 (log-subscription :target-type
                                  log-subscription :member-name
                                  "LogSubscription")
                                 (max-capacity :target-type max-capacity
                                  :member-name "MaxCapacity")
                                 (max-retries :target-type max-retries
                                  :member-name "MaxRetries")
                                 (outputs :target-type output-list :member-name
                                  "Outputs")
                                 (data-catalog-outputs :target-type
                                  data-catalog-output-list :member-name
                                  "DataCatalogOutputs")
                                 (database-outputs :target-type
                                  database-output-list :member-name
                                  "DatabaseOutputs")
                                 (project-name :target-type project-name
                                  :member-name "ProjectName")
                                 (recipe-reference :target-type
                                  recipe-reference :member-name
                                  "RecipeReference")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (timeout :target-type timeout :member-name
                                  "Timeout"))
                                (:shape-name "CreateRecipeJobRequest"))

(smithy/sdk/shapes:define-output create-recipe-job-response common-lisp:nil
                                 ((name :target-type job-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "CreateRecipeJobResponse"))

(smithy/sdk/shapes:define-input create-recipe-request common-lisp:nil
                                ((description :target-type recipe-description
                                  :member-name "Description")
                                 (name :target-type recipe-name :required
                                  common-lisp:t :member-name "Name")
                                 (steps :target-type recipe-step-list :required
                                  common-lisp:t :member-name "Steps")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateRecipeRequest"))

(smithy/sdk/shapes:define-output create-recipe-response common-lisp:nil
                                 ((name :target-type recipe-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "CreateRecipeResponse"))

(smithy/sdk/shapes:define-input create-ruleset-request common-lisp:nil
                                ((name :target-type ruleset-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type ruleset-description
                                  :member-name "Description")
                                 (target-arn :target-type arn :required
                                  common-lisp:t :member-name "TargetArn")
                                 (rules :target-type rule-list :required
                                  common-lisp:t :member-name "Rules")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateRulesetRequest"))

(smithy/sdk/shapes:define-output create-ruleset-response common-lisp:nil
                                 ((name :target-type ruleset-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "CreateRulesetResponse"))

(smithy/sdk/shapes:define-input create-schedule-request common-lisp:nil
                                ((job-names :target-type job-name-list
                                  :member-name "JobNames")
                                 (cron-expression :target-type cron-expression
                                  :required common-lisp:t :member-name
                                  "CronExpression")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (name :target-type schedule-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "CreateScheduleRequest"))

(smithy/sdk/shapes:define-output create-schedule-response common-lisp:nil
                                 ((name :target-type schedule-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "CreateScheduleResponse"))

(smithy/sdk/shapes:define-type created-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cron-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure csv-options common-lisp:nil
                                    ((delimiter :target-type delimiter
                                      :member-name "Delimiter")
                                     (header-row :target-type header-row
                                      :member-name "HeaderRow"))
                                    (:shape-name "CsvOptions"))

(smithy/sdk/shapes:define-structure csv-output-options common-lisp:nil
                                    ((delimiter :target-type delimiter
                                      :member-name "Delimiter"))
                                    (:shape-name "CsvOutputOptions"))

(smithy/sdk/shapes:define-structure data-catalog-input-definition
                                    common-lisp:nil
                                    ((catalog-id :target-type catalog-id
                                      :member-name "CatalogId")
                                     (database-name :target-type database-name
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (temp-directory :target-type s3location
                                      :member-name "TempDirectory"))
                                    (:shape-name "DataCatalogInputDefinition"))

(smithy/sdk/shapes:define-structure data-catalog-output common-lisp:nil
                                    ((catalog-id :target-type catalog-id
                                      :member-name "CatalogId")
                                     (database-name :target-type database-name
                                      :required common-lisp:t :member-name
                                      "DatabaseName")
                                     (table-name :target-type table-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (s3options :target-type
                                      s3table-output-options :member-name
                                      "S3Options")
                                     (database-options :target-type
                                      database-table-output-options
                                      :member-name "DatabaseOptions")
                                     (overwrite :target-type overwrite-output
                                      :member-name "Overwrite"))
                                    (:shape-name "DataCatalogOutput"))

(smithy/sdk/shapes:define-list data-catalog-output-list :member
                               data-catalog-output)

(smithy/sdk/shapes:define-structure database-input-definition common-lisp:nil
                                    ((glue-connection-name :target-type
                                      glue-connection-name :required
                                      common-lisp:t :member-name
                                      "GlueConnectionName")
                                     (database-table-name :target-type
                                      database-table-name :member-name
                                      "DatabaseTableName")
                                     (temp-directory :target-type s3location
                                      :member-name "TempDirectory")
                                     (query-string :target-type query-string
                                      :member-name "QueryString"))
                                    (:shape-name "DatabaseInputDefinition"))

(smithy/sdk/shapes:define-type database-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure database-output common-lisp:nil
                                    ((glue-connection-name :target-type
                                      glue-connection-name :required
                                      common-lisp:t :member-name
                                      "GlueConnectionName")
                                     (database-options :target-type
                                      database-table-output-options :required
                                      common-lisp:t :member-name
                                      "DatabaseOptions")
                                     (database-output-mode :target-type
                                      database-output-mode :member-name
                                      "DatabaseOutputMode"))
                                    (:shape-name "DatabaseOutput"))

(smithy/sdk/shapes:define-list database-output-list :member database-output)

(smithy/sdk/shapes:define-enum database-output-mode
    common-lisp:nil
  (:new-table "NEW_TABLE"))

(smithy/sdk/shapes:define-type database-table-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure database-table-output-options
                                    common-lisp:nil
                                    ((temp-directory :target-type s3location
                                      :member-name "TempDirectory")
                                     (table-name :target-type
                                      database-table-name :required
                                      common-lisp:t :member-name "TableName"))
                                    (:shape-name "DatabaseTableOutputOptions"))

(smithy/sdk/shapes:define-structure dataset common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (created-by :target-type created-by
                                      :member-name "CreatedBy")
                                     (create-date :target-type date
                                      :member-name "CreateDate")
                                     (name :target-type dataset-name :required
                                      common-lisp:t :member-name "Name")
                                     (format :target-type input-format
                                      :member-name "Format")
                                     (format-options :target-type
                                      format-options :member-name
                                      "FormatOptions")
                                     (input :target-type input :required
                                      common-lisp:t :member-name "Input")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate")
                                     (last-modified-by :target-type
                                      last-modified-by :member-name
                                      "LastModifiedBy")
                                     (source :target-type source :member-name
                                      "Source")
                                     (path-options :target-type path-options
                                      :member-name "PathOptions")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn"))
                                    (:shape-name "Dataset"))

(smithy/sdk/shapes:define-list dataset-list :member dataset)

(smithy/sdk/shapes:define-type dataset-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dataset-parameter common-lisp:nil
                                    ((name :target-type path-parameter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (type :target-type parameter-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (datetime-options :target-type
                                      datetime-options :member-name
                                      "DatetimeOptions")
                                     (create-column :target-type create-column
                                      :member-name "CreateColumn")
                                     (filter :target-type filter-expression
                                      :member-name "Filter"))
                                    (:shape-name "DatasetParameter"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type datetime-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure datetime-options common-lisp:nil
                                    ((format :target-type datetime-format
                                      :required common-lisp:t :member-name
                                      "Format")
                                     (timezone-offset :target-type
                                      timezone-offset :member-name
                                      "TimezoneOffset")
                                     (locale-code :target-type locale-code
                                      :member-name "LocaleCode"))
                                    (:shape-name "DatetimeOptions"))

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((name :target-type dataset-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-output delete-dataset-response common-lisp:nil
                                 ((name :target-type dataset-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "DeleteDatasetResponse"))

(smithy/sdk/shapes:define-input delete-job-request common-lisp:nil
                                ((name :target-type job-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteJobRequest"))

(smithy/sdk/shapes:define-output delete-job-response common-lisp:nil
                                 ((name :target-type job-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "DeleteJobResponse"))

(smithy/sdk/shapes:define-input delete-project-request common-lisp:nil
                                ((name :target-type project-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteProjectRequest"))

(smithy/sdk/shapes:define-output delete-project-response common-lisp:nil
                                 ((name :target-type project-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "DeleteProjectResponse"))

(smithy/sdk/shapes:define-input delete-recipe-version-request common-lisp:nil
                                ((name :target-type recipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (recipe-version :target-type recipe-version
                                  :required common-lisp:t :member-name
                                  "RecipeVersion" :http-label common-lisp:t))
                                (:shape-name "DeleteRecipeVersionRequest"))

(smithy/sdk/shapes:define-output delete-recipe-version-response common-lisp:nil
                                 ((name :target-type recipe-name :required
                                   common-lisp:t :member-name "Name")
                                  (recipe-version :target-type recipe-version
                                   :required common-lisp:t :member-name
                                   "RecipeVersion"))
                                 (:shape-name "DeleteRecipeVersionResponse"))

(smithy/sdk/shapes:define-input delete-ruleset-request common-lisp:nil
                                ((name :target-type ruleset-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteRulesetRequest"))

(smithy/sdk/shapes:define-output delete-ruleset-response common-lisp:nil
                                 ((name :target-type ruleset-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "DeleteRulesetResponse"))

(smithy/sdk/shapes:define-input delete-schedule-request common-lisp:nil
                                ((name :target-type schedule-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteScheduleRequest"))

(smithy/sdk/shapes:define-output delete-schedule-response common-lisp:nil
                                 ((name :target-type schedule-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "DeleteScheduleResponse"))

(smithy/sdk/shapes:define-type delimiter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((name :target-type dataset-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((created-by :target-type created-by
                                   :member-name "CreatedBy")
                                  (create-date :target-type date :member-name
                                   "CreateDate")
                                  (name :target-type dataset-name :required
                                   common-lisp:t :member-name "Name")
                                  (format :target-type input-format
                                   :member-name "Format")
                                  (format-options :target-type format-options
                                   :member-name "FormatOptions")
                                  (input :target-type input :required
                                   common-lisp:t :member-name "Input")
                                  (last-modified-date :target-type date
                                   :member-name "LastModifiedDate")
                                  (last-modified-by :target-type
                                   last-modified-by :member-name
                                   "LastModifiedBy")
                                  (source :target-type source :member-name
                                   "Source")
                                  (path-options :target-type path-options
                                   :member-name "PathOptions")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input describe-job-request common-lisp:nil
                                ((name :target-type job-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeJobRequest"))

(smithy/sdk/shapes:define-output describe-job-response common-lisp:nil
                                 ((create-date :target-type date :member-name
                                   "CreateDate")
                                  (created-by :target-type created-by
                                   :member-name "CreatedBy")
                                  (dataset-name :target-type dataset-name
                                   :member-name "DatasetName")
                                  (encryption-key-arn :target-type
                                   encryption-key-arn :member-name
                                   "EncryptionKeyArn")
                                  (encryption-mode :target-type encryption-mode
                                   :member-name "EncryptionMode")
                                  (name :target-type job-name :required
                                   common-lisp:t :member-name "Name")
                                  (type :target-type job-type :member-name
                                   "Type")
                                  (last-modified-by :target-type
                                   last-modified-by :member-name
                                   "LastModifiedBy")
                                  (last-modified-date :target-type date
                                   :member-name "LastModifiedDate")
                                  (log-subscription :target-type
                                   log-subscription :member-name
                                   "LogSubscription")
                                  (max-capacity :target-type max-capacity
                                   :member-name "MaxCapacity")
                                  (max-retries :target-type max-retries
                                   :member-name "MaxRetries")
                                  (outputs :target-type output-list
                                   :member-name "Outputs")
                                  (data-catalog-outputs :target-type
                                   data-catalog-output-list :member-name
                                   "DataCatalogOutputs")
                                  (database-outputs :target-type
                                   database-output-list :member-name
                                   "DatabaseOutputs")
                                  (project-name :target-type project-name
                                   :member-name "ProjectName")
                                  (profile-configuration :target-type
                                   profile-configuration :member-name
                                   "ProfileConfiguration")
                                  (validation-configurations :target-type
                                   validation-configuration-list :member-name
                                   "ValidationConfigurations")
                                  (recipe-reference :target-type
                                   recipe-reference :member-name
                                   "RecipeReference")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (role-arn :target-type arn :member-name
                                   "RoleArn")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (timeout :target-type timeout :member-name
                                   "Timeout")
                                  (job-sample :target-type job-sample
                                   :member-name "JobSample"))
                                 (:shape-name "DescribeJobResponse"))

(smithy/sdk/shapes:define-input describe-job-run-request common-lisp:nil
                                ((name :target-type job-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (run-id :target-type job-run-id :required
                                  common-lisp:t :member-name "RunId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeJobRunRequest"))

(smithy/sdk/shapes:define-output describe-job-run-response common-lisp:nil
                                 ((attempt :target-type attempt :member-name
                                   "Attempt")
                                  (completed-on :target-type date :member-name
                                   "CompletedOn")
                                  (dataset-name :target-type dataset-name
                                   :member-name "DatasetName")
                                  (error-message :target-type
                                   job-run-error-message :member-name
                                   "ErrorMessage")
                                  (execution-time :target-type execution-time
                                   :member-name "ExecutionTime")
                                  (job-name :target-type job-name :required
                                   common-lisp:t :member-name "JobName")
                                  (profile-configuration :target-type
                                   profile-configuration :member-name
                                   "ProfileConfiguration")
                                  (validation-configurations :target-type
                                   validation-configuration-list :member-name
                                   "ValidationConfigurations")
                                  (run-id :target-type job-run-id :member-name
                                   "RunId")
                                  (state :target-type job-run-state
                                   :member-name "State")
                                  (log-subscription :target-type
                                   log-subscription :member-name
                                   "LogSubscription")
                                  (log-group-name :target-type log-group-name
                                   :member-name "LogGroupName")
                                  (outputs :target-type output-list
                                   :member-name "Outputs")
                                  (data-catalog-outputs :target-type
                                   data-catalog-output-list :member-name
                                   "DataCatalogOutputs")
                                  (database-outputs :target-type
                                   database-output-list :member-name
                                   "DatabaseOutputs")
                                  (recipe-reference :target-type
                                   recipe-reference :member-name
                                   "RecipeReference")
                                  (started-by :target-type started-by
                                   :member-name "StartedBy")
                                  (started-on :target-type date :member-name
                                   "StartedOn")
                                  (job-sample :target-type job-sample
                                   :member-name "JobSample"))
                                 (:shape-name "DescribeJobRunResponse"))

(smithy/sdk/shapes:define-input describe-project-request common-lisp:nil
                                ((name :target-type project-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeProjectRequest"))

(smithy/sdk/shapes:define-output describe-project-response common-lisp:nil
                                 ((create-date :target-type date :member-name
                                   "CreateDate")
                                  (created-by :target-type created-by
                                   :member-name "CreatedBy")
                                  (dataset-name :target-type dataset-name
                                   :member-name "DatasetName")
                                  (last-modified-date :target-type date
                                   :member-name "LastModifiedDate")
                                  (last-modified-by :target-type
                                   last-modified-by :member-name
                                   "LastModifiedBy")
                                  (name :target-type project-name :required
                                   common-lisp:t :member-name "Name")
                                  (recipe-name :target-type recipe-name
                                   :member-name "RecipeName")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (sample :target-type sample :member-name
                                   "Sample")
                                  (role-arn :target-type arn :member-name
                                   "RoleArn")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (session-status :target-type session-status
                                   :member-name "SessionStatus")
                                  (opened-by :target-type opened-by
                                   :member-name "OpenedBy")
                                  (open-date :target-type date :member-name
                                   "OpenDate"))
                                 (:shape-name "DescribeProjectResponse"))

(smithy/sdk/shapes:define-input describe-recipe-request common-lisp:nil
                                ((name :target-type recipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (recipe-version :target-type recipe-version
                                  :member-name "RecipeVersion" :http-query
                                  "recipeVersion"))
                                (:shape-name "DescribeRecipeRequest"))

(smithy/sdk/shapes:define-output describe-recipe-response common-lisp:nil
                                 ((created-by :target-type created-by
                                   :member-name "CreatedBy")
                                  (create-date :target-type date :member-name
                                   "CreateDate")
                                  (last-modified-by :target-type
                                   last-modified-by :member-name
                                   "LastModifiedBy")
                                  (last-modified-date :target-type date
                                   :member-name "LastModifiedDate")
                                  (project-name :target-type project-name
                                   :member-name "ProjectName")
                                  (published-by :target-type published-by
                                   :member-name "PublishedBy")
                                  (published-date :target-type date
                                   :member-name "PublishedDate")
                                  (description :target-type recipe-description
                                   :member-name "Description")
                                  (name :target-type recipe-name :required
                                   common-lisp:t :member-name "Name")
                                  (steps :target-type recipe-step-list
                                   :member-name "Steps")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (recipe-version :target-type recipe-version
                                   :member-name "RecipeVersion"))
                                 (:shape-name "DescribeRecipeResponse"))

(smithy/sdk/shapes:define-input describe-ruleset-request common-lisp:nil
                                ((name :target-type ruleset-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeRulesetRequest"))

(smithy/sdk/shapes:define-output describe-ruleset-response common-lisp:nil
                                 ((name :target-type ruleset-name :required
                                   common-lisp:t :member-name "Name")
                                  (description :target-type ruleset-description
                                   :member-name "Description")
                                  (target-arn :target-type arn :member-name
                                   "TargetArn")
                                  (rules :target-type rule-list :member-name
                                   "Rules")
                                  (create-date :target-type date :member-name
                                   "CreateDate")
                                  (created-by :target-type created-by
                                   :member-name "CreatedBy")
                                  (last-modified-by :target-type
                                   last-modified-by :member-name
                                   "LastModifiedBy")
                                  (last-modified-date :target-type date
                                   :member-name "LastModifiedDate")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "DescribeRulesetResponse"))

(smithy/sdk/shapes:define-input describe-schedule-request common-lisp:nil
                                ((name :target-type schedule-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeScheduleRequest"))

(smithy/sdk/shapes:define-output describe-schedule-response common-lisp:nil
                                 ((create-date :target-type date :member-name
                                   "CreateDate")
                                  (created-by :target-type created-by
                                   :member-name "CreatedBy")
                                  (job-names :target-type job-name-list
                                   :member-name "JobNames")
                                  (last-modified-by :target-type
                                   last-modified-by :member-name
                                   "LastModifiedBy")
                                  (last-modified-date :target-type date
                                   :member-name "LastModifiedDate")
                                  (resource-arn :target-type arn :member-name
                                   "ResourceArn")
                                  (cron-expression :target-type cron-expression
                                   :member-name "CronExpression")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (name :target-type schedule-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "DescribeScheduleResponse"))

(smithy/sdk/shapes:define-type disabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type encryption-key-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encryption-mode
    common-lisp:nil
  (:ssekms "SSE-KMS")
  (:sses3 "SSE-S3"))

(smithy/sdk/shapes:define-structure entity-detector-configuration
                                    common-lisp:nil
                                    ((entity-types :target-type
                                      entity-type-list :required common-lisp:t
                                      :member-name "EntityTypes")
                                     (allowed-statistics :target-type
                                      allowed-statistic-list :member-name
                                      "AllowedStatistics"))
                                    (:shape-name "EntityDetectorConfiguration"))

(smithy/sdk/shapes:define-type entity-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-type-list :member entity-type)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure excel-options common-lisp:nil
                                    ((sheet-names :target-type sheet-name-list
                                      :member-name "SheetNames")
                                     (sheet-indexes :target-type
                                      sheet-index-list :member-name
                                      "SheetIndexes")
                                     (header-row :target-type header-row
                                      :member-name "HeaderRow"))
                                    (:shape-name "ExcelOptions"))

(smithy/sdk/shapes:define-type execution-time smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure files-limit common-lisp:nil
                                    ((max-files :target-type max-files
                                      :required common-lisp:t :member-name
                                      "MaxFiles")
                                     (ordered-by :target-type ordered-by
                                      :member-name "OrderedBy")
                                     (order :target-type order :member-name
                                      "Order"))
                                    (:shape-name "FilesLimit"))

(smithy/sdk/shapes:define-structure filter-expression common-lisp:nil
                                    ((expression :target-type expression
                                      :required common-lisp:t :member-name
                                      "Expression")
                                     (values-map :target-type values-map
                                      :required common-lisp:t :member-name
                                      "ValuesMap"))
                                    (:shape-name "FilterExpression"))

(smithy/sdk/shapes:define-structure format-options common-lisp:nil
                                    ((json :target-type json-options
                                      :member-name "Json")
                                     (excel :target-type excel-options
                                      :member-name "Excel")
                                     (csv :target-type csv-options :member-name
                                      "Csv"))
                                    (:shape-name "FormatOptions"))

(smithy/sdk/shapes:define-type glue-connection-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-row smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list hidden-column-list :member column-name)

(smithy/sdk/shapes:define-structure input common-lisp:nil
                                    ((s3input-definition :target-type
                                      s3location :member-name
                                      "S3InputDefinition")
                                     (data-catalog-input-definition
                                      :target-type
                                      data-catalog-input-definition
                                      :member-name
                                      "DataCatalogInputDefinition")
                                     (database-input-definition :target-type
                                      database-input-definition :member-name
                                      "DatabaseInputDefinition")
                                     (metadata :target-type metadata
                                      :member-name "Metadata"))
                                    (:shape-name "Input"))

(smithy/sdk/shapes:define-enum input-format
    common-lisp:nil
  (:csv "CSV")
  (:json "JSON")
  (:parquet "PARQUET")
  (:excel "EXCEL")
  (:orc "ORC"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500) (:base-class databrew-error))

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (created-by :target-type created-by
                                      :member-name "CreatedBy")
                                     (create-date :target-type date
                                      :member-name "CreateDate")
                                     (dataset-name :target-type dataset-name
                                      :member-name "DatasetName")
                                     (encryption-key-arn :target-type
                                      encryption-key-arn :member-name
                                      "EncryptionKeyArn")
                                     (encryption-mode :target-type
                                      encryption-mode :member-name
                                      "EncryptionMode")
                                     (name :target-type job-name :required
                                      common-lisp:t :member-name "Name")
                                     (type :target-type job-type :member-name
                                      "Type")
                                     (last-modified-by :target-type
                                      last-modified-by :member-name
                                      "LastModifiedBy")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate")
                                     (log-subscription :target-type
                                      log-subscription :member-name
                                      "LogSubscription")
                                     (max-capacity :target-type max-capacity
                                      :member-name "MaxCapacity")
                                     (max-retries :target-type max-retries
                                      :member-name "MaxRetries")
                                     (outputs :target-type output-list
                                      :member-name "Outputs")
                                     (data-catalog-outputs :target-type
                                      data-catalog-output-list :member-name
                                      "DataCatalogOutputs")
                                     (database-outputs :target-type
                                      database-output-list :member-name
                                      "DatabaseOutputs")
                                     (project-name :target-type project-name
                                      :member-name "ProjectName")
                                     (recipe-reference :target-type
                                      recipe-reference :member-name
                                      "RecipeReference")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (role-arn :target-type arn :member-name
                                      "RoleArn")
                                     (timeout :target-type timeout :member-name
                                      "Timeout")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (job-sample :target-type job-sample
                                      :member-name "JobSample")
                                     (validation-configurations :target-type
                                      validation-configuration-list
                                      :member-name "ValidationConfigurations"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-list job-list :member job)

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-name-list :member job-name)

(smithy/sdk/shapes:define-structure job-run common-lisp:nil
                                    ((attempt :target-type attempt :member-name
                                      "Attempt")
                                     (completed-on :target-type date
                                      :member-name "CompletedOn")
                                     (dataset-name :target-type dataset-name
                                      :member-name "DatasetName")
                                     (error-message :target-type
                                      job-run-error-message :member-name
                                      "ErrorMessage")
                                     (execution-time :target-type
                                      execution-time :member-name
                                      "ExecutionTime")
                                     (job-name :target-type job-name
                                      :member-name "JobName")
                                     (run-id :target-type job-run-id
                                      :member-name "RunId")
                                     (state :target-type job-run-state
                                      :member-name "State")
                                     (log-subscription :target-type
                                      log-subscription :member-name
                                      "LogSubscription")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "LogGroupName")
                                     (outputs :target-type output-list
                                      :member-name "Outputs")
                                     (data-catalog-outputs :target-type
                                      data-catalog-output-list :member-name
                                      "DataCatalogOutputs")
                                     (database-outputs :target-type
                                      database-output-list :member-name
                                      "DatabaseOutputs")
                                     (recipe-reference :target-type
                                      recipe-reference :member-name
                                      "RecipeReference")
                                     (started-by :target-type started-by
                                      :member-name "StartedBy")
                                     (started-on :target-type date :member-name
                                      "StartedOn")
                                     (job-sample :target-type job-sample
                                      :member-name "JobSample")
                                     (validation-configurations :target-type
                                      validation-configuration-list
                                      :member-name "ValidationConfigurations"))
                                    (:shape-name "JobRun"))

(smithy/sdk/shapes:define-type job-run-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-run-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-run-list :member job-run)

(smithy/sdk/shapes:define-enum job-run-state
    common-lisp:nil
  (:starting "STARTING")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:timeout "TIMEOUT"))

(smithy/sdk/shapes:define-structure job-sample common-lisp:nil
                                    ((mode :target-type sample-mode
                                      :member-name "Mode")
                                     (size :target-type job-size :member-name
                                      "Size"))
                                    (:shape-name "JobSample"))

(smithy/sdk/shapes:define-type job-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum job-type
    common-lisp:nil
  (:profile "PROFILE")
  (:recipe "RECIPE"))

(smithy/sdk/shapes:define-structure json-options common-lisp:nil
                                    ((multi-line :target-type multi-line
                                      :member-name "MultiLine"))
                                    (:shape-name "JsonOptions"))

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-modified-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-datasets-request common-lisp:nil
                                ((max-results :target-type max-results100
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDatasetsRequest"))

(smithy/sdk/shapes:define-output list-datasets-response common-lisp:nil
                                 ((datasets :target-type dataset-list :required
                                   common-lisp:t :member-name "Datasets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDatasetsResponse"))

(smithy/sdk/shapes:define-input list-job-runs-request common-lisp:nil
                                ((name :target-type job-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results100
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListJobRunsRequest"))

(smithy/sdk/shapes:define-output list-job-runs-response common-lisp:nil
                                 ((job-runs :target-type job-run-list :required
                                   common-lisp:t :member-name "JobRuns")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListJobRunsResponse"))

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :member-name "DatasetName" :http-query
                                  "datasetName")
                                 (max-results :target-type max-results100
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (project-name :target-type project-name
                                  :member-name "ProjectName" :http-query
                                  "projectName"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-output list-jobs-response common-lisp:nil
                                 ((jobs :target-type job-list :required
                                   common-lisp:t :member-name "Jobs")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListJobsResponse"))

(smithy/sdk/shapes:define-input list-projects-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results100
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProjectsRequest"))

(smithy/sdk/shapes:define-output list-projects-response common-lisp:nil
                                 ((projects :target-type project-list :required
                                   common-lisp:t :member-name "Projects")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListProjectsResponse"))

(smithy/sdk/shapes:define-input list-recipe-versions-request common-lisp:nil
                                ((max-results :target-type max-results100
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (name :target-type recipe-name :required
                                  common-lisp:t :member-name "Name" :http-query
                                  "name"))
                                (:shape-name "ListRecipeVersionsRequest"))

(smithy/sdk/shapes:define-output list-recipe-versions-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (recipes :target-type recipe-list :required
                                   common-lisp:t :member-name "Recipes"))
                                 (:shape-name "ListRecipeVersionsResponse"))

(smithy/sdk/shapes:define-input list-recipes-request common-lisp:nil
                                ((max-results :target-type max-results100
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (recipe-version :target-type recipe-version
                                  :member-name "RecipeVersion" :http-query
                                  "recipeVersion"))
                                (:shape-name "ListRecipesRequest"))

(smithy/sdk/shapes:define-output list-recipes-response common-lisp:nil
                                 ((recipes :target-type recipe-list :required
                                   common-lisp:t :member-name "Recipes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRecipesResponse"))

(smithy/sdk/shapes:define-input list-rulesets-request common-lisp:nil
                                ((target-arn :target-type arn :member-name
                                  "TargetArn" :http-query "targetArn")
                                 (max-results :target-type max-results100
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListRulesetsRequest"))

(smithy/sdk/shapes:define-output list-rulesets-response common-lisp:nil
                                 ((rulesets :target-type ruleset-item-list
                                   :required common-lisp:t :member-name
                                   "Rulesets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRulesetsResponse"))

(smithy/sdk/shapes:define-input list-schedules-request common-lisp:nil
                                ((job-name :target-type job-name :member-name
                                  "JobName" :http-query "jobName")
                                 (max-results :target-type max-results100
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListSchedulesRequest"))

(smithy/sdk/shapes:define-output list-schedules-response common-lisp:nil
                                 ((schedules :target-type schedule-list
                                   :required common-lisp:t :member-name
                                   "Schedules")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSchedulesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type locale-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum log-subscription
    common-lisp:nil
  (:enable "ENABLE")
  (:disable "DISABLE"))

(smithy/sdk/shapes:define-type max-capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-files smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-output-files smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results100 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-retries smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metadata common-lisp:nil
                                    ((source-arn :target-type arn :member-name
                                      "SourceArn"))
                                    (:shape-name "Metadata"))

(smithy/sdk/shapes:define-type multi-line smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type opened-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type operation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum order
    common-lisp:nil
  (:descending "DESCENDING")
  (:ascending "ASCENDING"))

(smithy/sdk/shapes:define-enum ordered-by
    common-lisp:nil
  (:last-modified-date "LAST_MODIFIED_DATE"))

(smithy/sdk/shapes:define-structure output common-lisp:nil
                                    ((compression-format :target-type
                                      compression-format :member-name
                                      "CompressionFormat")
                                     (format :target-type output-format
                                      :member-name "Format")
                                     (partition-columns :target-type
                                      column-name-list :member-name
                                      "PartitionColumns")
                                     (location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "Location")
                                     (overwrite :target-type overwrite-output
                                      :member-name "Overwrite")
                                     (format-options :target-type
                                      output-format-options :member-name
                                      "FormatOptions")
                                     (max-output-files :target-type
                                      max-output-files :member-name
                                      "MaxOutputFiles"))
                                    (:shape-name "Output"))

(smithy/sdk/shapes:define-enum output-format
    common-lisp:nil
  (:csv "CSV")
  (:json "JSON")
  (:parquet "PARQUET")
  (:glueparquet "GLUEPARQUET")
  (:avro "AVRO")
  (:orc "ORC")
  (:xml "XML")
  (:tableauhyper "TABLEAUHYPER"))

(smithy/sdk/shapes:define-structure output-format-options common-lisp:nil
                                    ((csv :target-type csv-output-options
                                      :member-name "Csv"))
                                    (:shape-name "OutputFormatOptions"))

(smithy/sdk/shapes:define-list output-list :member output)

(smithy/sdk/shapes:define-type overwrite-output smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-map parameter-map :key parameter-name :value
                              parameter-value)

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum parameter-type
    common-lisp:nil
  (:datetime "Datetime")
  (:number "Number")
  (:string "String"))

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure path-options common-lisp:nil
                                    ((last-modified-date-condition :target-type
                                      filter-expression :member-name
                                      "LastModifiedDateCondition")
                                     (files-limit :target-type files-limit
                                      :member-name "FilesLimit")
                                     (parameters :target-type
                                      path-parameters-map :member-name
                                      "Parameters"))
                                    (:shape-name "PathOptions"))

(smithy/sdk/shapes:define-type path-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map path-parameters-map :key path-parameter-name
                              :value dataset-parameter)

(smithy/sdk/shapes:define-type preview smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure profile-configuration common-lisp:nil
                                    ((dataset-statistics-configuration
                                      :target-type statistics-configuration
                                      :member-name
                                      "DatasetStatisticsConfiguration")
                                     (profile-columns :target-type
                                      column-selector-list :member-name
                                      "ProfileColumns")
                                     (column-statistics-configurations
                                      :target-type
                                      column-statistics-configuration-list
                                      :member-name
                                      "ColumnStatisticsConfigurations")
                                     (entity-detector-configuration
                                      :target-type
                                      entity-detector-configuration
                                      :member-name
                                      "EntityDetectorConfiguration"))
                                    (:shape-name "ProfileConfiguration"))

(smithy/sdk/shapes:define-structure project common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (create-date :target-type date
                                      :member-name "CreateDate")
                                     (created-by :target-type created-by
                                      :member-name "CreatedBy")
                                     (dataset-name :target-type dataset-name
                                      :member-name "DatasetName")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate")
                                     (last-modified-by :target-type
                                      last-modified-by :member-name
                                      "LastModifiedBy")
                                     (name :target-type project-name :required
                                      common-lisp:t :member-name "Name")
                                     (recipe-name :target-type recipe-name
                                      :required common-lisp:t :member-name
                                      "RecipeName")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (sample :target-type sample :member-name
                                      "Sample")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (role-arn :target-type arn :member-name
                                      "RoleArn")
                                     (opened-by :target-type opened-by
                                      :member-name "OpenedBy")
                                     (open-date :target-type date :member-name
                                      "OpenDate"))
                                    (:shape-name "Project"))

(smithy/sdk/shapes:define-list project-list :member project)

(smithy/sdk/shapes:define-type project-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input publish-recipe-request common-lisp:nil
                                ((description :target-type recipe-description
                                  :member-name "Description")
                                 (name :target-type recipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "PublishRecipeRequest"))

(smithy/sdk/shapes:define-output publish-recipe-response common-lisp:nil
                                 ((name :target-type recipe-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "PublishRecipeResponse"))

(smithy/sdk/shapes:define-type published-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recipe common-lisp:nil
                                    ((created-by :target-type created-by
                                      :member-name "CreatedBy")
                                     (create-date :target-type date
                                      :member-name "CreateDate")
                                     (last-modified-by :target-type
                                      last-modified-by :member-name
                                      "LastModifiedBy")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate")
                                     (project-name :target-type project-name
                                      :member-name "ProjectName")
                                     (published-by :target-type published-by
                                      :member-name "PublishedBy")
                                     (published-date :target-type date
                                      :member-name "PublishedDate")
                                     (description :target-type
                                      recipe-description :member-name
                                      "Description")
                                     (name :target-type recipe-name :required
                                      common-lisp:t :member-name "Name")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (steps :target-type recipe-step-list
                                      :member-name "Steps")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (recipe-version :target-type
                                      recipe-version :member-name
                                      "RecipeVersion"))
                                    (:shape-name "Recipe"))

(smithy/sdk/shapes:define-structure recipe-action common-lisp:nil
                                    ((operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "Operation")
                                     (parameters :target-type parameter-map
                                      :member-name "Parameters"))
                                    (:shape-name "RecipeAction"))

(smithy/sdk/shapes:define-type recipe-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recipe-error-list :member
                               recipe-version-error-detail)

(smithy/sdk/shapes:define-type recipe-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recipe-list :member recipe)

(smithy/sdk/shapes:define-type recipe-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recipe-reference common-lisp:nil
                                    ((name :target-type recipe-name :required
                                      common-lisp:t :member-name "Name")
                                     (recipe-version :target-type
                                      recipe-version :member-name
                                      "RecipeVersion"))
                                    (:shape-name "RecipeReference"))

(smithy/sdk/shapes:define-structure recipe-step common-lisp:nil
                                    ((action :target-type recipe-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (condition-expressions :target-type
                                      condition-expression-list :member-name
                                      "ConditionExpressions"))
                                    (:shape-name "RecipeStep"))

(smithy/sdk/shapes:define-list recipe-step-list :member recipe-step)

(smithy/sdk/shapes:define-type recipe-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recipe-version-error-detail common-lisp:nil
                                    ((error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type
                                      recipe-error-message :member-name
                                      "ErrorMessage")
                                     (recipe-version :target-type
                                      recipe-version :member-name
                                      "RecipeVersion"))
                                    (:shape-name "RecipeVersionErrorDetail"))

(smithy/sdk/shapes:define-list recipe-version-list :member recipe-version)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class databrew-error))

(smithy/sdk/shapes:define-type result smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type row-range smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((name :target-type rule-name :required
                                      common-lisp:t :member-name "Name")
                                     (disabled :target-type disabled
                                      :member-name "Disabled")
                                     (check-expression :target-type expression
                                      :required common-lisp:t :member-name
                                      "CheckExpression")
                                     (substitution-map :target-type values-map
                                      :member-name "SubstitutionMap")
                                     (threshold :target-type threshold
                                      :member-name "Threshold")
                                     (column-selectors :target-type
                                      column-selector-list :member-name
                                      "ColumnSelectors"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-type rule-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list rule-list :member rule)

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ruleset-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ruleset-item common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (created-by :target-type created-by
                                      :member-name "CreatedBy")
                                     (create-date :target-type date
                                      :member-name "CreateDate")
                                     (description :target-type
                                      ruleset-description :member-name
                                      "Description")
                                     (last-modified-by :target-type
                                      last-modified-by :member-name
                                      "LastModifiedBy")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate")
                                     (name :target-type ruleset-name :required
                                      common-lisp:t :member-name "Name")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (rule-count :target-type rule-count
                                      :member-name "RuleCount")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (target-arn :target-type arn :required
                                      common-lisp:t :member-name "TargetArn"))
                                    (:shape-name "RulesetItem"))

(smithy/sdk/shapes:define-list ruleset-item-list :member ruleset-item)

(smithy/sdk/shapes:define-type ruleset-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type bucket :required
                                      common-lisp:t :member-name "Bucket")
                                     (key :target-type key :member-name "Key")
                                     (bucket-owner :target-type bucket-owner
                                      :member-name "BucketOwner"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-structure s3table-output-options common-lisp:nil
                                    ((location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "Location"))
                                    (:shape-name "S3TableOutputOptions"))

(smithy/sdk/shapes:define-structure sample common-lisp:nil
                                    ((size :target-type sample-size
                                      :member-name "Size")
                                     (type :target-type sample-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "Sample"))

(smithy/sdk/shapes:define-enum sample-mode
    common-lisp:nil
  (:full-dataset "FULL_DATASET")
  (:custom-rows "CUSTOM_ROWS"))

(smithy/sdk/shapes:define-type sample-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum sample-type
    common-lisp:nil
  (:first-n "FIRST_N")
  (:last-n "LAST_N")
  (:random "RANDOM"))

(smithy/sdk/shapes:define-structure schedule common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (created-by :target-type created-by
                                      :member-name "CreatedBy")
                                     (create-date :target-type date
                                      :member-name "CreateDate")
                                     (job-names :target-type job-name-list
                                      :member-name "JobNames")
                                     (last-modified-by :target-type
                                      last-modified-by :member-name
                                      "LastModifiedBy")
                                     (last-modified-date :target-type date
                                      :member-name "LastModifiedDate")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (cron-expression :target-type
                                      cron-expression :member-name
                                      "CronExpression")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (name :target-type schedule-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "Schedule"))

(smithy/sdk/shapes:define-list schedule-list :member schedule)

(smithy/sdk/shapes:define-type schedule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input send-project-session-action-request
                                common-lisp:nil
                                ((preview :target-type preview :member-name
                                  "Preview")
                                 (name :target-type project-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (recipe-step :target-type recipe-step
                                  :member-name "RecipeStep")
                                 (step-index :target-type step-index
                                  :member-name "StepIndex")
                                 (client-session-id :target-type
                                  client-session-id :member-name
                                  "ClientSessionId")
                                 (view-frame :target-type view-frame
                                  :member-name "ViewFrame"))
                                (:shape-name "SendProjectSessionActionRequest"))

(smithy/sdk/shapes:define-output send-project-session-action-response
                                 common-lisp:nil
                                 ((result :target-type result :member-name
                                   "Result")
                                  (name :target-type project-name :required
                                   common-lisp:t :member-name "Name")
                                  (action-id :target-type action-id
                                   :member-name "ActionId"))
                                 (:shape-name
                                  "SendProjectSessionActionResponse"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402) (:base-class databrew-error))

(smithy/sdk/shapes:define-enum session-status
    common-lisp:nil
  (:assigned "ASSIGNED")
  (:failed "FAILED")
  (:initializing "INITIALIZING")
  (:provisioning "PROVISIONING")
  (:ready "READY")
  (:recycling "RECYCLING")
  (:rotating "ROTATING")
  (:terminated "TERMINATED")
  (:terminating "TERMINATING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-type sheet-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list sheet-index-list :member sheet-index)

(smithy/sdk/shapes:define-type sheet-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sheet-name-list :member sheet-name)

(smithy/sdk/shapes:define-enum source
    common-lisp:nil
  (:s3 "S3")
  (:datacatalog "DATA-CATALOG")
  (:database "DATABASE"))

(smithy/sdk/shapes:define-type start-column-index
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input start-job-run-request common-lisp:nil
                                ((name :target-type job-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "StartJobRunRequest"))

(smithy/sdk/shapes:define-output start-job-run-response common-lisp:nil
                                 ((run-id :target-type job-run-id :required
                                   common-lisp:t :member-name "RunId"))
                                 (:shape-name "StartJobRunResponse"))

(smithy/sdk/shapes:define-input start-project-session-request common-lisp:nil
                                ((name :target-type project-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (assume-control :target-type assume-control
                                  :member-name "AssumeControl"))
                                (:shape-name "StartProjectSessionRequest"))

(smithy/sdk/shapes:define-output start-project-session-response common-lisp:nil
                                 ((name :target-type project-name :required
                                   common-lisp:t :member-name "Name")
                                  (client-session-id :target-type
                                   client-session-id :member-name
                                   "ClientSessionId"))
                                 (:shape-name "StartProjectSessionResponse"))

(smithy/sdk/shapes:define-type start-row-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type started-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type statistic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list statistic-list :member statistic)

(smithy/sdk/shapes:define-structure statistic-override common-lisp:nil
                                    ((statistic :target-type statistic
                                      :required common-lisp:t :member-name
                                      "Statistic")
                                     (parameters :target-type parameter-map
                                      :required common-lisp:t :member-name
                                      "Parameters"))
                                    (:shape-name "StatisticOverride"))

(smithy/sdk/shapes:define-list statistic-override-list :member
                               statistic-override)

(smithy/sdk/shapes:define-structure statistics-configuration common-lisp:nil
                                    ((included-statistics :target-type
                                      statistic-list :member-name
                                      "IncludedStatistics")
                                     (overrides :target-type
                                      statistic-override-list :member-name
                                      "Overrides"))
                                    (:shape-name "StatisticsConfiguration"))

(smithy/sdk/shapes:define-type step-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input stop-job-run-request common-lisp:nil
                                ((name :target-type job-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (run-id :target-type job-run-id :required
                                  common-lisp:t :member-name "RunId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopJobRunRequest"))

(smithy/sdk/shapes:define-output stop-job-run-response common-lisp:nil
                                 ((run-id :target-type job-run-id :required
                                   common-lisp:t :member-name "RunId"))
                                 (:shape-name "StopJobRunResponse"))

(smithy/sdk/shapes:define-type table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-column smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure threshold common-lisp:nil
                                    ((value :target-type threshold-value
                                      :required common-lisp:t :member-name
                                      "Value")
                                     (type :target-type threshold-type
                                      :member-name "Type")
                                     (unit :target-type threshold-unit
                                      :member-name "Unit"))
                                    (:shape-name "Threshold"))

(smithy/sdk/shapes:define-enum threshold-type
    common-lisp:nil
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL")
  (:less-than-or-equal "LESS_THAN_OR_EQUAL")
  (:greater-than "GREATER_THAN")
  (:less-than "LESS_THAN"))

(smithy/sdk/shapes:define-enum threshold-unit
    common-lisp:nil
  (:count "COUNT")
  (:percentage "PERCENTAGE"))

(smithy/sdk/shapes:define-type threshold-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type timezone-offset smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-dataset-request common-lisp:nil
                                ((name :target-type dataset-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (format :target-type input-format :member-name
                                  "Format")
                                 (format-options :target-type format-options
                                  :member-name "FormatOptions")
                                 (input :target-type input :required
                                  common-lisp:t :member-name "Input")
                                 (path-options :target-type path-options
                                  :member-name "PathOptions"))
                                (:shape-name "UpdateDatasetRequest"))

(smithy/sdk/shapes:define-output update-dataset-response common-lisp:nil
                                 ((name :target-type dataset-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "UpdateDatasetResponse"))

(smithy/sdk/shapes:define-input update-profile-job-request common-lisp:nil
                                ((configuration :target-type
                                  profile-configuration :member-name
                                  "Configuration")
                                 (encryption-key-arn :target-type
                                  encryption-key-arn :member-name
                                  "EncryptionKeyArn")
                                 (encryption-mode :target-type encryption-mode
                                  :member-name "EncryptionMode")
                                 (name :target-type job-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (log-subscription :target-type
                                  log-subscription :member-name
                                  "LogSubscription")
                                 (max-capacity :target-type max-capacity
                                  :member-name "MaxCapacity")
                                 (max-retries :target-type max-retries
                                  :member-name "MaxRetries")
                                 (output-location :target-type s3location
                                  :required common-lisp:t :member-name
                                  "OutputLocation")
                                 (validation-configurations :target-type
                                  validation-configuration-list :member-name
                                  "ValidationConfigurations")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (timeout :target-type timeout :member-name
                                  "Timeout")
                                 (job-sample :target-type job-sample
                                  :member-name "JobSample"))
                                (:shape-name "UpdateProfileJobRequest"))

(smithy/sdk/shapes:define-output update-profile-job-response common-lisp:nil
                                 ((name :target-type job-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "UpdateProfileJobResponse"))

(smithy/sdk/shapes:define-input update-project-request common-lisp:nil
                                ((sample :target-type sample :member-name
                                  "Sample")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (name :target-type project-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateProjectRequest"))

(smithy/sdk/shapes:define-output update-project-response common-lisp:nil
                                 ((last-modified-date :target-type date
                                   :member-name "LastModifiedDate")
                                  (name :target-type project-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "UpdateProjectResponse"))

(smithy/sdk/shapes:define-input update-recipe-job-request common-lisp:nil
                                ((encryption-key-arn :target-type
                                  encryption-key-arn :member-name
                                  "EncryptionKeyArn")
                                 (encryption-mode :target-type encryption-mode
                                  :member-name "EncryptionMode")
                                 (name :target-type job-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (log-subscription :target-type
                                  log-subscription :member-name
                                  "LogSubscription")
                                 (max-capacity :target-type max-capacity
                                  :member-name "MaxCapacity")
                                 (max-retries :target-type max-retries
                                  :member-name "MaxRetries")
                                 (outputs :target-type output-list :member-name
                                  "Outputs")
                                 (data-catalog-outputs :target-type
                                  data-catalog-output-list :member-name
                                  "DataCatalogOutputs")
                                 (database-outputs :target-type
                                  database-output-list :member-name
                                  "DatabaseOutputs")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (timeout :target-type timeout :member-name
                                  "Timeout"))
                                (:shape-name "UpdateRecipeJobRequest"))

(smithy/sdk/shapes:define-output update-recipe-job-response common-lisp:nil
                                 ((name :target-type job-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "UpdateRecipeJobResponse"))

(smithy/sdk/shapes:define-input update-recipe-request common-lisp:nil
                                ((description :target-type recipe-description
                                  :member-name "Description")
                                 (name :target-type recipe-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (steps :target-type recipe-step-list
                                  :member-name "Steps"))
                                (:shape-name "UpdateRecipeRequest"))

(smithy/sdk/shapes:define-output update-recipe-response common-lisp:nil
                                 ((name :target-type recipe-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "UpdateRecipeResponse"))

(smithy/sdk/shapes:define-input update-ruleset-request common-lisp:nil
                                ((name :target-type ruleset-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (description :target-type ruleset-description
                                  :member-name "Description")
                                 (rules :target-type rule-list :required
                                  common-lisp:t :member-name "Rules"))
                                (:shape-name "UpdateRulesetRequest"))

(smithy/sdk/shapes:define-output update-ruleset-response common-lisp:nil
                                 ((name :target-type ruleset-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "UpdateRulesetResponse"))

(smithy/sdk/shapes:define-input update-schedule-request common-lisp:nil
                                ((job-names :target-type job-name-list
                                  :member-name "JobNames")
                                 (cron-expression :target-type cron-expression
                                  :required common-lisp:t :member-name
                                  "CronExpression")
                                 (name :target-type schedule-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateScheduleRequest"))

(smithy/sdk/shapes:define-output update-schedule-response common-lisp:nil
                                 ((name :target-type schedule-name :required
                                   common-lisp:t :member-name "Name"))
                                 (:shape-name "UpdateScheduleResponse"))

(smithy/sdk/shapes:define-structure validation-configuration common-lisp:nil
                                    ((ruleset-arn :target-type arn :required
                                      common-lisp:t :member-name "RulesetArn")
                                     (validation-mode :target-type
                                      validation-mode :member-name
                                      "ValidationMode"))
                                    (:shape-name "ValidationConfiguration"))

(smithy/sdk/shapes:define-list validation-configuration-list :member
                               validation-configuration)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400) (:base-class databrew-error))

(smithy/sdk/shapes:define-enum validation-mode
    common-lisp:nil
  (:check-all "CHECK_ALL"))

(smithy/sdk/shapes:define-type value-reference smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map values-map :key value-reference :value
                              condition-value)

(smithy/sdk/shapes:define-structure view-frame common-lisp:nil
                                    ((start-column-index :target-type
                                      start-column-index :required
                                      common-lisp:t :member-name
                                      "StartColumnIndex")
                                     (column-range :target-type column-range
                                      :member-name "ColumnRange")
                                     (hidden-columns :target-type
                                      hidden-column-list :member-name
                                      "HiddenColumns")
                                     (start-row-index :target-type
                                      start-row-index :member-name
                                      "StartRowIndex")
                                     (row-range :target-type row-range
                                      :member-name "RowRange")
                                     (analytics :target-type analytics-mode
                                      :member-name "Analytics"))
                                    (:shape-name "ViewFrame"))

(smithy/sdk/operation:define-operation batch-delete-recipe-version :shape-name
                                       "BatchDeleteRecipeVersion" :input
                                       batch-delete-recipe-version-request
                                       :output
                                       batch-delete-recipe-version-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/recipes/{Name}/batchDeleteRecipeVersion"
                                       :code 200)

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/datasets" :code
                                       200)

(smithy/sdk/operation:define-operation create-profile-job :shape-name
                                       "CreateProfileJob" :input
                                       create-profile-job-request :output
                                       create-profile-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/profileJobs" :code
                                       200)

(smithy/sdk/operation:define-operation create-project :shape-name
                                       "CreateProject" :input
                                       create-project-request :output
                                       create-project-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/projects" :code
                                       200)

(smithy/sdk/operation:define-operation create-recipe :shape-name "CreateRecipe"
                                       :input create-recipe-request :output
                                       create-recipe-response :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/recipes" :code 200)

(smithy/sdk/operation:define-operation create-recipe-job :shape-name
                                       "CreateRecipeJob" :input
                                       create-recipe-job-request :output
                                       create-recipe-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/recipeJobs" :code
                                       200)

(smithy/sdk/operation:define-operation create-ruleset :shape-name
                                       "CreateRuleset" :input
                                       create-ruleset-request :output
                                       create-ruleset-response :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/rulesets" :code
                                       200)

(smithy/sdk/operation:define-operation create-schedule :shape-name
                                       "CreateSchedule" :input
                                       create-schedule-request :output
                                       create-schedule-response :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/schedules" :code
                                       200)

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       delete-dataset-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/datasets/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-job :shape-name "DeleteJob"
                                       :input delete-job-request :output
                                       delete-job-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/jobs/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-project :shape-name
                                       "DeleteProject" :input
                                       delete-project-request :output
                                       delete-project-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/projects/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-recipe-version :shape-name
                                       "DeleteRecipeVersion" :input
                                       delete-recipe-version-request :output
                                       delete-recipe-version-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/recipes/{Name}/recipeVersion/{RecipeVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-ruleset :shape-name
                                       "DeleteRuleset" :input
                                       delete-ruleset-request :output
                                       delete-ruleset-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/rulesets/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-schedule :shape-name
                                       "DeleteSchedule" :input
                                       delete-schedule-request :output
                                       delete-schedule-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/schedules/{Name}" :code 200)

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/datasets/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-job :shape-name "DescribeJob"
                                       :input describe-job-request :output
                                       describe-job-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/jobs/{Name}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-job-run :shape-name
                                       "DescribeJobRun" :input
                                       describe-job-run-request :output
                                       describe-job-run-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/jobs/{Name}/jobRun/{RunId}" :code 200)

(smithy/sdk/operation:define-operation describe-project :shape-name
                                       "DescribeProject" :input
                                       describe-project-request :output
                                       describe-project-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/projects/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-recipe :shape-name
                                       "DescribeRecipe" :input
                                       describe-recipe-request :output
                                       describe-recipe-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/recipes/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-ruleset :shape-name
                                       "DescribeRuleset" :input
                                       describe-ruleset-request :output
                                       describe-ruleset-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/rulesets/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-schedule :shape-name
                                       "DescribeSchedule" :input
                                       describe-schedule-request :output
                                       describe-schedule-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/schedules/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-datasets :shape-name "ListDatasets"
                                       :input list-datasets-request :output
                                       list-datasets-response :errors
                                       (validation-exception) :method "GET"
                                       :uri "/datasets" :code 200)

(smithy/sdk/operation:define-operation list-job-runs :shape-name "ListJobRuns"
                                       :input list-job-runs-request :output
                                       list-job-runs-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/jobs/{Name}/jobRuns" :code 200)

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-response :errors
                                       (validation-exception) :method "GET"
                                       :uri "/jobs" :code 200)

(smithy/sdk/operation:define-operation list-projects :shape-name "ListProjects"
                                       :input list-projects-request :output
                                       list-projects-response :errors
                                       (validation-exception) :method "GET"
                                       :uri "/projects" :code 200)

(smithy/sdk/operation:define-operation list-recipe-versions :shape-name
                                       "ListRecipeVersions" :input
                                       list-recipe-versions-request :output
                                       list-recipe-versions-response :errors
                                       (validation-exception) :method "GET"
                                       :uri "/recipeVersions" :code 200)

(smithy/sdk/operation:define-operation list-recipes :shape-name "ListRecipes"
                                       :input list-recipes-request :output
                                       list-recipes-response :errors
                                       (validation-exception) :method "GET"
                                       :uri "/recipes" :code 200)

(smithy/sdk/operation:define-operation list-rulesets :shape-name "ListRulesets"
                                       :input list-rulesets-request :output
                                       list-rulesets-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/rulesets" :code 200)

(smithy/sdk/operation:define-operation list-schedules :shape-name
                                       "ListSchedules" :input
                                       list-schedules-request :output
                                       list-schedules-response :errors
                                       (validation-exception) :method "GET"
                                       :uri "/schedules" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation publish-recipe :shape-name
                                       "PublishRecipe" :input
                                       publish-recipe-request :output
                                       publish-recipe-response :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/recipes/{Name}/publishRecipe" :code
                                       200)

(smithy/sdk/operation:define-operation send-project-session-action :shape-name
                                       "SendProjectSessionAction" :input
                                       send-project-session-action-request
                                       :output
                                       send-project-session-action-response
                                       :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/projects/{Name}/sendProjectSessionAction"
                                       :code 200)

(smithy/sdk/operation:define-operation start-job-run :shape-name "StartJobRun"
                                       :input start-job-run-request :output
                                       start-job-run-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/jobs/{Name}/startJobRun" :code 200)

(smithy/sdk/operation:define-operation start-project-session :shape-name
                                       "StartProjectSession" :input
                                       start-project-session-request :output
                                       start-project-session-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/projects/{Name}/startProjectSession"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-job-run :shape-name "StopJobRun"
                                       :input stop-job-run-request :output
                                       stop-job-run-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/jobs/{Name}/jobRun/{RunId}/stopJobRun"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-dataset :shape-name
                                       "UpdateDataset" :input
                                       update-dataset-request :output
                                       update-dataset-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/datasets/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-profile-job :shape-name
                                       "UpdateProfileJob" :input
                                       update-profile-job-request :output
                                       update-profile-job-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/profileJobs/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-project :shape-name
                                       "UpdateProject" :input
                                       update-project-request :output
                                       update-project-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/projects/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-recipe :shape-name "UpdateRecipe"
                                       :input update-recipe-request :output
                                       update-recipe-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/recipes/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-recipe-job :shape-name
                                       "UpdateRecipeJob" :input
                                       update-recipe-job-request :output
                                       update-recipe-job-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/recipeJobs/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-ruleset :shape-name
                                       "UpdateRuleset" :input
                                       update-ruleset-request :output
                                       update-ruleset-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/rulesets/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-schedule :shape-name
                                       "UpdateSchedule" :input
                                       update-schedule-request :output
                                       update-schedule-response :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PUT" :uri "/schedules/{Name}"
                                       :code 200)
