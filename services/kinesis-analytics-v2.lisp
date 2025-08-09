(uiop/package:define-package #:pira/kinesis-analytics-v2 (:use)
                             (:export
                              #:add-application-cloud-watch-logging-option
                              #:add-application-input
                              #:add-application-input-processing-configuration
                              #:add-application-output
                              #:add-application-reference-data-source
                              #:add-application-vpc-configuration
                              #:application-code-configuration
                              #:application-code-configuration-description
                              #:application-code-configuration-update
                              #:application-configuration
                              #:application-configuration-description
                              #:application-configuration-update
                              #:application-description #:application-detail
                              #:application-maintenance-configuration-description
                              #:application-maintenance-configuration-update
                              #:application-maintenance-window-end-time
                              #:application-maintenance-window-start-time
                              #:application-mode #:application-name
                              #:application-operation-info
                              #:application-operation-info-details
                              #:application-operation-info-list
                              #:application-restore-configuration
                              #:application-restore-type
                              #:application-snapshot-configuration
                              #:application-snapshot-configuration-description
                              #:application-snapshot-configuration-update
                              #:application-status #:application-summaries
                              #:application-summary
                              #:application-system-rollback-configuration
                              #:application-system-rollback-configuration-description
                              #:application-system-rollback-configuration-update
                              #:application-version-change-details
                              #:application-version-id
                              #:application-version-summaries
                              #:application-version-summary #:artifact-type
                              #:authorized-url #:base-path #:boolean-object
                              #:bucket-arn #:csvmapping-parameters
                              #:catalog-configuration
                              #:catalog-configuration-description
                              #:catalog-configuration-update
                              #:checkpoint-configuration
                              #:checkpoint-configuration-description
                              #:checkpoint-configuration-update
                              #:checkpoint-interval
                              #:cloud-watch-logging-option
                              #:cloud-watch-logging-option-description
                              #:cloud-watch-logging-option-descriptions
                              #:cloud-watch-logging-option-update
                              #:cloud-watch-logging-option-updates
                              #:cloud-watch-logging-options #:code-content
                              #:code-content-description #:code-content-type
                              #:code-content-update #:code-md5 #:code-size
                              #:conditional-token #:configuration-type
                              #:create-application
                              #:create-application-presigned-url
                              #:create-application-snapshot
                              #:custom-artifact-configuration
                              #:custom-artifact-configuration-description
                              #:custom-artifacts-configuration-description-list
                              #:custom-artifacts-configuration-list
                              #:database-arn #:delete-application
                              #:delete-application-cloud-watch-logging-option
                              #:delete-application-input-processing-configuration
                              #:delete-application-output
                              #:delete-application-reference-data-source
                              #:delete-application-snapshot
                              #:delete-application-vpc-configuration
                              #:deploy-as-application-configuration
                              #:deploy-as-application-configuration-description
                              #:deploy-as-application-configuration-update
                              #:describe-application
                              #:describe-application-operation
                              #:describe-application-snapshot
                              #:describe-application-version
                              #:destination-schema #:discover-input-schema
                              #:environment-properties
                              #:environment-property-descriptions
                              #:environment-property-updates #:error-info
                              #:error-message #:error-string #:file-key
                              #:flink-application-configuration
                              #:flink-application-configuration-description
                              #:flink-application-configuration-update
                              #:flink-run-configuration
                              #:glue-data-catalog-configuration
                              #:glue-data-catalog-configuration-description
                              #:glue-data-catalog-configuration-update #:id
                              #:in-app-stream-name #:in-app-stream-names
                              #:in-app-table-name #:input #:input-description
                              #:input-descriptions #:input-lambda-processor
                              #:input-lambda-processor-description
                              #:input-lambda-processor-update
                              #:input-parallelism #:input-parallelism-count
                              #:input-parallelism-update
                              #:input-processing-configuration
                              #:input-processing-configuration-description
                              #:input-processing-configuration-update
                              #:input-schema-update #:input-starting-position
                              #:input-starting-position-configuration
                              #:input-update #:input-updates #:inputs
                              #:jsonmapping-parameters #:job-plan-description
                              #:kinesis-analytics-arn
                              #:kinesis-analytics-20180523
                              #:kinesis-firehose-input
                              #:kinesis-firehose-input-description
                              #:kinesis-firehose-input-update
                              #:kinesis-firehose-output
                              #:kinesis-firehose-output-description
                              #:kinesis-firehose-output-update
                              #:kinesis-streams-input
                              #:kinesis-streams-input-description
                              #:kinesis-streams-input-update
                              #:kinesis-streams-output
                              #:kinesis-streams-output-description
                              #:kinesis-streams-output-update #:lambda-output
                              #:lambda-output-description
                              #:lambda-output-update
                              #:list-application-operations
                              #:list-application-operations-input-limit
                              #:list-application-snapshots
                              #:list-application-versions
                              #:list-application-versions-input-limit
                              #:list-applications
                              #:list-applications-input-limit
                              #:list-snapshots-input-limit
                              #:list-tags-for-resource #:log-level
                              #:log-stream-arn #:mapping-parameters
                              #:maven-artifact-id #:maven-group-id
                              #:maven-reference #:maven-version #:metrics-level
                              #:min-pause-between-checkpoints
                              #:monitoring-configuration
                              #:monitoring-configuration-description
                              #:monitoring-configuration-update #:next-token
                              #:object-version #:operation
                              #:operation-failure-details #:operation-id
                              #:operation-status #:output #:output-description
                              #:output-descriptions #:output-update
                              #:output-updates #:outputs #:parallelism
                              #:parallelism-configuration
                              #:parallelism-configuration-description
                              #:parallelism-configuration-update
                              #:parallelism-per-kpu #:parsed-input-record
                              #:parsed-input-record-field
                              #:parsed-input-records #:processed-input-record
                              #:processed-input-records #:property-group
                              #:property-groups #:property-key #:property-map
                              #:property-value #:raw-input-record
                              #:raw-input-records #:record-column
                              #:record-column-delimiter #:record-column-mapping
                              #:record-column-name #:record-column-sql-type
                              #:record-columns #:record-encoding
                              #:record-format #:record-format-type
                              #:record-row-delimiter #:record-row-path
                              #:reference-data-source
                              #:reference-data-source-description
                              #:reference-data-source-descriptions
                              #:reference-data-source-update
                              #:reference-data-source-updates
                              #:reference-data-sources #:resource-arn
                              #:role-arn #:rollback-application
                              #:run-configuration
                              #:run-configuration-description
                              #:run-configuration-update #:runtime-environment
                              #:s3application-code-location-description
                              #:s3configuration #:s3content-base-location
                              #:s3content-base-location-description
                              #:s3content-base-location-update
                              #:s3content-location #:s3content-location-update
                              #:s3reference-data-source
                              #:s3reference-data-source-description
                              #:s3reference-data-source-update
                              #:security-group-id #:security-group-ids
                              #:session-expiration-duration-in-seconds
                              #:snapshot-details #:snapshot-name
                              #:snapshot-status #:snapshot-summaries
                              #:source-schema #:sql-application-configuration
                              #:sql-application-configuration-description
                              #:sql-application-configuration-update
                              #:sql-run-configuration #:sql-run-configurations
                              #:start-application #:stop-application
                              #:subnet-id #:subnet-ids #:tag #:tag-key
                              #:tag-keys #:tag-resource #:tag-value #:tags
                              #:text-content #:timestamp #:untag-resource
                              #:update-application
                              #:update-application-maintenance-configuration
                              #:url-type #:vpc-configuration
                              #:vpc-configuration-description
                              #:vpc-configuration-descriptions
                              #:vpc-configuration-update
                              #:vpc-configuration-updates #:vpc-configurations
                              #:vpc-id #:zeppelin-application-configuration
                              #:zeppelin-application-configuration-description
                              #:zeppelin-application-configuration-update
                              #:zeppelin-monitoring-configuration
                              #:zeppelin-monitoring-configuration-description
                              #:zeppelin-monitoring-configuration-update
                              #:zip-file-content))
(common-lisp:in-package #:pira/kinesis-analytics-v2)

(smithy/sdk/service:define-service kinesis-analytics-20180523 :shape-name
                                   "KinesisAnalytics_20180523" :version
                                   "2018-05-23" :title
                                   "Amazon Kinesis Analytics" :xml-namespace
                                   '(:uri
                                     "http://analytics.kinesis.amazonaws.com/doc/2018-05-23"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Kinesis Analytics V2")
                                      ("arnNamespace" . "kinesisanalytics")
                                      ("cloudFormationName"
                                       . "KinesisAnalyticsV2")
                                      ("cloudTrailEventSource"
                                       . "kinesisanalytics.amazonaws.com")
                                      ("docId"
                                       . "kinesisanalyticsv2-2018-05-23")
                                      ("endpointPrefix" . "kinesisanalytics"))
                                     ("aws.auth#sigv4"
                                      ("name" . "kinesisanalytics"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input
 add-application-cloud-watch-logging-option-request common-lisp:nil
 ((application-name :target-type application-name :required common-lisp:t
   :member-name "ApplicationName")
  (current-application-version-id :target-type application-version-id
   :member-name "CurrentApplicationVersionId")
  (cloud-watch-logging-option :target-type cloud-watch-logging-option :required
   common-lisp:t :member-name "CloudWatchLoggingOption")
  (conditional-token :target-type conditional-token :member-name
   "ConditionalToken"))
 (:shape-name "AddApplicationCloudWatchLoggingOptionRequest"))

(smithy/sdk/shapes:define-output
 add-application-cloud-watch-logging-option-response common-lisp:nil
 ((application-arn :target-type resource-arn :member-name "ApplicationARN")
  (application-version-id :target-type application-version-id :member-name
   "ApplicationVersionId")
  (cloud-watch-logging-option-descriptions :target-type
   cloud-watch-logging-option-descriptions :member-name
   "CloudWatchLoggingOptionDescriptions")
  (operation-id :target-type operation-id :member-name "OperationId"))
 (:shape-name "AddApplicationCloudWatchLoggingOptionResponse"))

(smithy/sdk/shapes:define-input
 add-application-input-processing-configuration-request common-lisp:nil
 ((application-name :target-type application-name :required common-lisp:t
   :member-name "ApplicationName")
  (current-application-version-id :target-type application-version-id :required
   common-lisp:t :member-name "CurrentApplicationVersionId")
  (input-id :target-type id :required common-lisp:t :member-name "InputId")
  (input-processing-configuration :target-type input-processing-configuration
   :required common-lisp:t :member-name "InputProcessingConfiguration"))
 (:shape-name "AddApplicationInputProcessingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 add-application-input-processing-configuration-response common-lisp:nil
 ((application-arn :target-type resource-arn :member-name "ApplicationARN")
  (application-version-id :target-type application-version-id :member-name
   "ApplicationVersionId")
  (input-id :target-type id :member-name "InputId")
  (input-processing-configuration-description :target-type
   input-processing-configuration-description :member-name
   "InputProcessingConfigurationDescription"))
 (:shape-name "AddApplicationInputProcessingConfigurationResponse"))

(smithy/sdk/shapes:define-input add-application-input-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (current-application-version-id :target-type
                                  application-version-id :required
                                  common-lisp:t :member-name
                                  "CurrentApplicationVersionId")
                                 (input :target-type input :required
                                  common-lisp:t :member-name "Input"))
                                (:shape-name "AddApplicationInputRequest"))

(smithy/sdk/shapes:define-output add-application-input-response common-lisp:nil
                                 ((application-arn :target-type resource-arn
                                   :member-name "ApplicationARN")
                                  (application-version-id :target-type
                                   application-version-id :member-name
                                   "ApplicationVersionId")
                                  (input-descriptions :target-type
                                   input-descriptions :member-name
                                   "InputDescriptions"))
                                 (:shape-name "AddApplicationInputResponse"))

(smithy/sdk/shapes:define-input add-application-output-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (current-application-version-id :target-type
                                  application-version-id :required
                                  common-lisp:t :member-name
                                  "CurrentApplicationVersionId")
                                 (output :target-type output :required
                                  common-lisp:t :member-name "Output"))
                                (:shape-name "AddApplicationOutputRequest"))

(smithy/sdk/shapes:define-output add-application-output-response
                                 common-lisp:nil
                                 ((application-arn :target-type resource-arn
                                   :member-name "ApplicationARN")
                                  (application-version-id :target-type
                                   application-version-id :member-name
                                   "ApplicationVersionId")
                                  (output-descriptions :target-type
                                   output-descriptions :member-name
                                   "OutputDescriptions"))
                                 (:shape-name "AddApplicationOutputResponse"))

(smithy/sdk/shapes:define-input add-application-reference-data-source-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (current-application-version-id :target-type
                                  application-version-id :required
                                  common-lisp:t :member-name
                                  "CurrentApplicationVersionId")
                                 (reference-data-source :target-type
                                  reference-data-source :required common-lisp:t
                                  :member-name "ReferenceDataSource"))
                                (:shape-name
                                 "AddApplicationReferenceDataSourceRequest"))

(smithy/sdk/shapes:define-output add-application-reference-data-source-response
                                 common-lisp:nil
                                 ((application-arn :target-type resource-arn
                                   :member-name "ApplicationARN")
                                  (application-version-id :target-type
                                   application-version-id :member-name
                                   "ApplicationVersionId")
                                  (reference-data-source-descriptions
                                   :target-type
                                   reference-data-source-descriptions
                                   :member-name
                                   "ReferenceDataSourceDescriptions"))
                                 (:shape-name
                                  "AddApplicationReferenceDataSourceResponse"))

(smithy/sdk/shapes:define-input add-application-vpc-configuration-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (current-application-version-id :target-type
                                  application-version-id :member-name
                                  "CurrentApplicationVersionId")
                                 (vpc-configuration :target-type
                                  vpc-configuration :required common-lisp:t
                                  :member-name "VpcConfiguration")
                                 (conditional-token :target-type
                                  conditional-token :member-name
                                  "ConditionalToken"))
                                (:shape-name
                                 "AddApplicationVpcConfigurationRequest"))

(smithy/sdk/shapes:define-output add-application-vpc-configuration-response
                                 common-lisp:nil
                                 ((application-arn :target-type resource-arn
                                   :member-name "ApplicationARN")
                                  (application-version-id :target-type
                                   application-version-id :member-name
                                   "ApplicationVersionId")
                                  (vpc-configuration-description :target-type
                                   vpc-configuration-description :member-name
                                   "VpcConfigurationDescription")
                                  (operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "AddApplicationVpcConfigurationResponse"))

(smithy/sdk/shapes:define-structure application-code-configuration
                                    common-lisp:nil
                                    ((code-content :target-type code-content
                                      :member-name "CodeContent")
                                     (code-content-type :target-type
                                      code-content-type :required common-lisp:t
                                      :member-name "CodeContentType"))
                                    (:shape-name
                                     "ApplicationCodeConfiguration"))

(smithy/sdk/shapes:define-structure application-code-configuration-description
                                    common-lisp:nil
                                    ((code-content-type :target-type
                                      code-content-type :required common-lisp:t
                                      :member-name "CodeContentType")
                                     (code-content-description :target-type
                                      code-content-description :member-name
                                      "CodeContentDescription"))
                                    (:shape-name
                                     "ApplicationCodeConfigurationDescription"))

(smithy/sdk/shapes:define-structure application-code-configuration-update
                                    common-lisp:nil
                                    ((code-content-type-update :target-type
                                      code-content-type :member-name
                                      "CodeContentTypeUpdate")
                                     (code-content-update :target-type
                                      code-content-update :member-name
                                      "CodeContentUpdate"))
                                    (:shape-name
                                     "ApplicationCodeConfigurationUpdate"))

(smithy/sdk/shapes:define-structure application-configuration common-lisp:nil
                                    ((sql-application-configuration
                                      :target-type
                                      sql-application-configuration
                                      :member-name
                                      "SqlApplicationConfiguration")
                                     (flink-application-configuration
                                      :target-type
                                      flink-application-configuration
                                      :member-name
                                      "FlinkApplicationConfiguration")
                                     (environment-properties :target-type
                                      environment-properties :member-name
                                      "EnvironmentProperties")
                                     (application-code-configuration
                                      :target-type
                                      application-code-configuration
                                      :member-name
                                      "ApplicationCodeConfiguration")
                                     (application-snapshot-configuration
                                      :target-type
                                      application-snapshot-configuration
                                      :member-name
                                      "ApplicationSnapshotConfiguration")
                                     (application-system-rollback-configuration
                                      :target-type
                                      application-system-rollback-configuration
                                      :member-name
                                      "ApplicationSystemRollbackConfiguration")
                                     (vpc-configurations :target-type
                                      vpc-configurations :member-name
                                      "VpcConfigurations")
                                     (zeppelin-application-configuration
                                      :target-type
                                      zeppelin-application-configuration
                                      :member-name
                                      "ZeppelinApplicationConfiguration"))
                                    (:shape-name "ApplicationConfiguration"))

(smithy/sdk/shapes:define-structure application-configuration-description
                                    common-lisp:nil
                                    ((sql-application-configuration-description
                                      :target-type
                                      sql-application-configuration-description
                                      :member-name
                                      "SqlApplicationConfigurationDescription")
                                     (application-code-configuration-description
                                      :target-type
                                      application-code-configuration-description
                                      :member-name
                                      "ApplicationCodeConfigurationDescription")
                                     (run-configuration-description
                                      :target-type
                                      run-configuration-description
                                      :member-name
                                      "RunConfigurationDescription")
                                     (flink-application-configuration-description
                                      :target-type
                                      flink-application-configuration-description
                                      :member-name
                                      "FlinkApplicationConfigurationDescription")
                                     (environment-property-descriptions
                                      :target-type
                                      environment-property-descriptions
                                      :member-name
                                      "EnvironmentPropertyDescriptions")
                                     (application-snapshot-configuration-description
                                      :target-type
                                      application-snapshot-configuration-description
                                      :member-name
                                      "ApplicationSnapshotConfigurationDescription")
                                     (application-system-rollback-configuration-description
                                      :target-type
                                      application-system-rollback-configuration-description
                                      :member-name
                                      "ApplicationSystemRollbackConfigurationDescription")
                                     (vpc-configuration-descriptions
                                      :target-type
                                      vpc-configuration-descriptions
                                      :member-name
                                      "VpcConfigurationDescriptions")
                                     (zeppelin-application-configuration-description
                                      :target-type
                                      zeppelin-application-configuration-description
                                      :member-name
                                      "ZeppelinApplicationConfigurationDescription"))
                                    (:shape-name
                                     "ApplicationConfigurationDescription"))

(smithy/sdk/shapes:define-structure application-configuration-update
                                    common-lisp:nil
                                    ((sql-application-configuration-update
                                      :target-type
                                      sql-application-configuration-update
                                      :member-name
                                      "SqlApplicationConfigurationUpdate")
                                     (application-code-configuration-update
                                      :target-type
                                      application-code-configuration-update
                                      :member-name
                                      "ApplicationCodeConfigurationUpdate")
                                     (flink-application-configuration-update
                                      :target-type
                                      flink-application-configuration-update
                                      :member-name
                                      "FlinkApplicationConfigurationUpdate")
                                     (environment-property-updates :target-type
                                      environment-property-updates :member-name
                                      "EnvironmentPropertyUpdates")
                                     (application-snapshot-configuration-update
                                      :target-type
                                      application-snapshot-configuration-update
                                      :member-name
                                      "ApplicationSnapshotConfigurationUpdate")
                                     (application-system-rollback-configuration-update
                                      :target-type
                                      application-system-rollback-configuration-update
                                      :member-name
                                      "ApplicationSystemRollbackConfigurationUpdate")
                                     (vpc-configuration-updates :target-type
                                      vpc-configuration-updates :member-name
                                      "VpcConfigurationUpdates")
                                     (zeppelin-application-configuration-update
                                      :target-type
                                      zeppelin-application-configuration-update
                                      :member-name
                                      "ZeppelinApplicationConfigurationUpdate"))
                                    (:shape-name
                                     "ApplicationConfigurationUpdate"))

(smithy/sdk/shapes:define-type application-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-detail common-lisp:nil
                                    ((application-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ApplicationARN")
                                     (application-description :target-type
                                      application-description :member-name
                                      "ApplicationDescription")
                                     (application-name :target-type
                                      application-name :required common-lisp:t
                                      :member-name "ApplicationName")
                                     (runtime-environment :target-type
                                      runtime-environment :required
                                      common-lisp:t :member-name
                                      "RuntimeEnvironment")
                                     (service-execution-role :target-type
                                      role-arn :member-name
                                      "ServiceExecutionRole")
                                     (application-status :target-type
                                      application-status :required
                                      common-lisp:t :member-name
                                      "ApplicationStatus")
                                     (application-version-id :target-type
                                      application-version-id :required
                                      common-lisp:t :member-name
                                      "ApplicationVersionId")
                                     (create-timestamp :target-type timestamp
                                      :member-name "CreateTimestamp")
                                     (last-update-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdateTimestamp")
                                     (application-configuration-description
                                      :target-type
                                      application-configuration-description
                                      :member-name
                                      "ApplicationConfigurationDescription")
                                     (cloud-watch-logging-option-descriptions
                                      :target-type
                                      cloud-watch-logging-option-descriptions
                                      :member-name
                                      "CloudWatchLoggingOptionDescriptions")
                                     (application-maintenance-configuration-description
                                      :target-type
                                      application-maintenance-configuration-description
                                      :member-name
                                      "ApplicationMaintenanceConfigurationDescription")
                                     (application-version-updated-from
                                      :target-type application-version-id
                                      :member-name
                                      "ApplicationVersionUpdatedFrom")
                                     (application-version-rolled-back-from
                                      :target-type application-version-id
                                      :member-name
                                      "ApplicationVersionRolledBackFrom")
                                     (application-version-create-timestamp
                                      :target-type timestamp :member-name
                                      "ApplicationVersionCreateTimestamp")
                                     (conditional-token :target-type
                                      conditional-token :member-name
                                      "ConditionalToken")
                                     (application-version-rolled-back-to
                                      :target-type application-version-id
                                      :member-name
                                      "ApplicationVersionRolledBackTo")
                                     (application-mode :target-type
                                      application-mode :member-name
                                      "ApplicationMode"))
                                    (:shape-name "ApplicationDetail"))

(smithy/sdk/shapes:define-structure
 application-maintenance-configuration-description common-lisp:nil
 ((application-maintenance-window-start-time :target-type
   application-maintenance-window-start-time :required common-lisp:t
   :member-name "ApplicationMaintenanceWindowStartTime")
  (application-maintenance-window-end-time :target-type
   application-maintenance-window-end-time :required common-lisp:t :member-name
   "ApplicationMaintenanceWindowEndTime"))
 (:shape-name "ApplicationMaintenanceConfigurationDescription"))

(smithy/sdk/shapes:define-structure
 application-maintenance-configuration-update common-lisp:nil
 ((application-maintenance-window-start-time-update :target-type
   application-maintenance-window-start-time :required common-lisp:t
   :member-name "ApplicationMaintenanceWindowStartTimeUpdate"))
 (:shape-name "ApplicationMaintenanceConfigurationUpdate"))

(smithy/sdk/shapes:define-type application-maintenance-window-end-time
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-maintenance-window-start-time
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum application-mode
    common-lisp:nil
  (:streaming "STREAMING")
  (:interactive "INTERACTIVE"))

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-operation-info common-lisp:nil
                                    ((operation :target-type operation
                                      :member-name "Operation")
                                     (operation-id :target-type operation-id
                                      :member-name "OperationId")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (operation-status :target-type
                                      operation-status :member-name
                                      "OperationStatus"))
                                    (:shape-name "ApplicationOperationInfo"))

(smithy/sdk/shapes:define-structure application-operation-info-details
                                    common-lisp:nil
                                    ((operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "Operation")
                                     (start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "EndTime")
                                     (operation-status :target-type
                                      operation-status :required common-lisp:t
                                      :member-name "OperationStatus")
                                     (application-version-change-details
                                      :target-type
                                      application-version-change-details
                                      :member-name
                                      "ApplicationVersionChangeDetails")
                                     (operation-failure-details :target-type
                                      operation-failure-details :member-name
                                      "OperationFailureDetails"))
                                    (:shape-name
                                     "ApplicationOperationInfoDetails"))

(smithy/sdk/shapes:define-list application-operation-info-list :member
                               application-operation-info)

(smithy/sdk/shapes:define-structure application-restore-configuration
                                    common-lisp:nil
                                    ((application-restore-type :target-type
                                      application-restore-type :required
                                      common-lisp:t :member-name
                                      "ApplicationRestoreType")
                                     (snapshot-name :target-type snapshot-name
                                      :member-name "SnapshotName"))
                                    (:shape-name
                                     "ApplicationRestoreConfiguration"))

(smithy/sdk/shapes:define-enum application-restore-type
    common-lisp:nil
  (:skip-restore-from-snapshot "SKIP_RESTORE_FROM_SNAPSHOT")
  (:restore-from-latest-snapshot "RESTORE_FROM_LATEST_SNAPSHOT")
  (:restore-from-custom-snapshot "RESTORE_FROM_CUSTOM_SNAPSHOT"))

(smithy/sdk/shapes:define-structure application-snapshot-configuration
                                    common-lisp:nil
                                    ((snapshots-enabled :target-type
                                      boolean-object :required common-lisp:t
                                      :member-name "SnapshotsEnabled"))
                                    (:shape-name
                                     "ApplicationSnapshotConfiguration"))

(smithy/sdk/shapes:define-structure
 application-snapshot-configuration-description common-lisp:nil
 ((snapshots-enabled :target-type boolean-object :required common-lisp:t
   :member-name "SnapshotsEnabled"))
 (:shape-name "ApplicationSnapshotConfigurationDescription"))

(smithy/sdk/shapes:define-structure application-snapshot-configuration-update
                                    common-lisp:nil
                                    ((snapshots-enabled-update :target-type
                                      boolean-object :required common-lisp:t
                                      :member-name "SnapshotsEnabledUpdate"))
                                    (:shape-name
                                     "ApplicationSnapshotConfigurationUpdate"))

(smithy/sdk/shapes:define-enum application-status
    common-lisp:nil
  (:deleting "DELETING")
  (:starting "STARTING")
  (:stopping "STOPPING")
  (:ready "READY")
  (:running "RUNNING")
  (:updating "UPDATING")
  (:autoscaling "AUTOSCALING")
  (:force-stopping "FORCE_STOPPING")
  (:rolling-back "ROLLING_BACK")
  (:maintenance "MAINTENANCE")
  (:rolled-back "ROLLED_BACK"))

(smithy/sdk/shapes:define-list application-summaries :member
                               application-summary)

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((application-name :target-type
                                      application-name :required common-lisp:t
                                      :member-name "ApplicationName")
                                     (application-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ApplicationARN")
                                     (application-status :target-type
                                      application-status :required
                                      common-lisp:t :member-name
                                      "ApplicationStatus")
                                     (application-version-id :target-type
                                      application-version-id :required
                                      common-lisp:t :member-name
                                      "ApplicationVersionId")
                                     (runtime-environment :target-type
                                      runtime-environment :required
                                      common-lisp:t :member-name
                                      "RuntimeEnvironment")
                                     (application-mode :target-type
                                      application-mode :member-name
                                      "ApplicationMode"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-structure application-system-rollback-configuration
                                    common-lisp:nil
                                    ((rollback-enabled :target-type
                                      boolean-object :required common-lisp:t
                                      :member-name "RollbackEnabled"))
                                    (:shape-name
                                     "ApplicationSystemRollbackConfiguration"))

(smithy/sdk/shapes:define-structure
 application-system-rollback-configuration-description common-lisp:nil
 ((rollback-enabled :target-type boolean-object :required common-lisp:t
   :member-name "RollbackEnabled"))
 (:shape-name "ApplicationSystemRollbackConfigurationDescription"))

(smithy/sdk/shapes:define-structure
 application-system-rollback-configuration-update common-lisp:nil
 ((rollback-enabled-update :target-type boolean-object :required common-lisp:t
   :member-name "RollbackEnabledUpdate"))
 (:shape-name "ApplicationSystemRollbackConfigurationUpdate"))

(smithy/sdk/shapes:define-structure application-version-change-details
                                    common-lisp:nil
                                    ((application-version-updated-from
                                      :target-type application-version-id
                                      :required common-lisp:t :member-name
                                      "ApplicationVersionUpdatedFrom")
                                     (application-version-updated-to
                                      :target-type application-version-id
                                      :required common-lisp:t :member-name
                                      "ApplicationVersionUpdatedTo"))
                                    (:shape-name
                                     "ApplicationVersionChangeDetails"))

(smithy/sdk/shapes:define-type application-version-id
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list application-version-summaries :member
                               application-version-summary)

(smithy/sdk/shapes:define-structure application-version-summary common-lisp:nil
                                    ((application-version-id :target-type
                                      application-version-id :required
                                      common-lisp:t :member-name
                                      "ApplicationVersionId")
                                     (application-status :target-type
                                      application-status :required
                                      common-lisp:t :member-name
                                      "ApplicationStatus"))
                                    (:shape-name "ApplicationVersionSummary"))

(smithy/sdk/shapes:define-enum artifact-type
    common-lisp:nil
  (:udf "UDF")
  (:dependency-jar "DEPENDENCY_JAR"))

(smithy/sdk/shapes:define-type authorized-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type base-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure csvmapping-parameters common-lisp:nil
                                    ((record-row-delimiter :target-type
                                      record-row-delimiter :required
                                      common-lisp:t :member-name
                                      "RecordRowDelimiter")
                                     (record-column-delimiter :target-type
                                      record-column-delimiter :required
                                      common-lisp:t :member-name
                                      "RecordColumnDelimiter"))
                                    (:shape-name "CSVMappingParameters"))

(smithy/sdk/shapes:define-structure catalog-configuration common-lisp:nil
                                    ((glue-data-catalog-configuration
                                      :target-type
                                      glue-data-catalog-configuration :required
                                      common-lisp:t :member-name
                                      "GlueDataCatalogConfiguration"))
                                    (:shape-name "CatalogConfiguration"))

(smithy/sdk/shapes:define-structure catalog-configuration-description
                                    common-lisp:nil
                                    ((glue-data-catalog-configuration-description
                                      :target-type
                                      glue-data-catalog-configuration-description
                                      :required common-lisp:t :member-name
                                      "GlueDataCatalogConfigurationDescription"))
                                    (:shape-name
                                     "CatalogConfigurationDescription"))

(smithy/sdk/shapes:define-structure catalog-configuration-update
                                    common-lisp:nil
                                    ((glue-data-catalog-configuration-update
                                      :target-type
                                      glue-data-catalog-configuration-update
                                      :required common-lisp:t :member-name
                                      "GlueDataCatalogConfigurationUpdate"))
                                    (:shape-name "CatalogConfigurationUpdate"))

(smithy/sdk/shapes:define-structure checkpoint-configuration common-lisp:nil
                                    ((configuration-type :target-type
                                      configuration-type :required
                                      common-lisp:t :member-name
                                      "ConfigurationType")
                                     (checkpointing-enabled :target-type
                                      boolean-object :member-name
                                      "CheckpointingEnabled")
                                     (checkpoint-interval :target-type
                                      checkpoint-interval :member-name
                                      "CheckpointInterval")
                                     (min-pause-between-checkpoints
                                      :target-type
                                      min-pause-between-checkpoints
                                      :member-name
                                      "MinPauseBetweenCheckpoints"))
                                    (:shape-name "CheckpointConfiguration"))

(smithy/sdk/shapes:define-structure checkpoint-configuration-description
                                    common-lisp:nil
                                    ((configuration-type :target-type
                                      configuration-type :member-name
                                      "ConfigurationType")
                                     (checkpointing-enabled :target-type
                                      boolean-object :member-name
                                      "CheckpointingEnabled")
                                     (checkpoint-interval :target-type
                                      checkpoint-interval :member-name
                                      "CheckpointInterval")
                                     (min-pause-between-checkpoints
                                      :target-type
                                      min-pause-between-checkpoints
                                      :member-name
                                      "MinPauseBetweenCheckpoints"))
                                    (:shape-name
                                     "CheckpointConfigurationDescription"))

(smithy/sdk/shapes:define-structure checkpoint-configuration-update
                                    common-lisp:nil
                                    ((configuration-type-update :target-type
                                      configuration-type :member-name
                                      "ConfigurationTypeUpdate")
                                     (checkpointing-enabled-update :target-type
                                      boolean-object :member-name
                                      "CheckpointingEnabledUpdate")
                                     (checkpoint-interval-update :target-type
                                      checkpoint-interval :member-name
                                      "CheckpointIntervalUpdate")
                                     (min-pause-between-checkpoints-update
                                      :target-type
                                      min-pause-between-checkpoints
                                      :member-name
                                      "MinPauseBetweenCheckpointsUpdate"))
                                    (:shape-name
                                     "CheckpointConfigurationUpdate"))

(smithy/sdk/shapes:define-type checkpoint-interval smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure cloud-watch-logging-option common-lisp:nil
                                    ((log-stream-arn :target-type
                                      log-stream-arn :required common-lisp:t
                                      :member-name "LogStreamARN"))
                                    (:shape-name "CloudWatchLoggingOption"))

(smithy/sdk/shapes:define-structure cloud-watch-logging-option-description
                                    common-lisp:nil
                                    ((cloud-watch-logging-option-id
                                      :target-type id :member-name
                                      "CloudWatchLoggingOptionId")
                                     (log-stream-arn :target-type
                                      log-stream-arn :required common-lisp:t
                                      :member-name "LogStreamARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "CloudWatchLoggingOptionDescription"))

(smithy/sdk/shapes:define-list cloud-watch-logging-option-descriptions :member
                               cloud-watch-logging-option-description)

(smithy/sdk/shapes:define-structure cloud-watch-logging-option-update
                                    common-lisp:nil
                                    ((cloud-watch-logging-option-id
                                      :target-type id :required common-lisp:t
                                      :member-name "CloudWatchLoggingOptionId")
                                     (log-stream-arnupdate :target-type
                                      log-stream-arn :member-name
                                      "LogStreamARNUpdate"))
                                    (:shape-name
                                     "CloudWatchLoggingOptionUpdate"))

(smithy/sdk/shapes:define-list cloud-watch-logging-option-updates :member
                               cloud-watch-logging-option-update)

(smithy/sdk/shapes:define-list cloud-watch-logging-options :member
                               cloud-watch-logging-option)

(smithy/sdk/shapes:define-structure code-content common-lisp:nil
                                    ((text-content :target-type text-content
                                      :member-name "TextContent")
                                     (zip-file-content :target-type
                                      zip-file-content :member-name
                                      "ZipFileContent")
                                     (s3content-location :target-type
                                      s3content-location :member-name
                                      "S3ContentLocation"))
                                    (:shape-name "CodeContent"))

(smithy/sdk/shapes:define-structure code-content-description common-lisp:nil
                                    ((text-content :target-type text-content
                                      :member-name "TextContent")
                                     (code-md5 :target-type code-md5
                                      :member-name "CodeMD5")
                                     (code-size :target-type code-size
                                      :member-name "CodeSize")
                                     (s3application-code-location-description
                                      :target-type
                                      s3application-code-location-description
                                      :member-name
                                      "S3ApplicationCodeLocationDescription"))
                                    (:shape-name "CodeContentDescription"))

(smithy/sdk/shapes:define-enum code-content-type
    common-lisp:nil
  (:plaintext "PLAINTEXT")
  (:zipfile "ZIPFILE"))

(smithy/sdk/shapes:define-structure code-content-update common-lisp:nil
                                    ((text-content-update :target-type
                                      text-content :member-name
                                      "TextContentUpdate")
                                     (zip-file-content-update :target-type
                                      zip-file-content :member-name
                                      "ZipFileContentUpdate")
                                     (s3content-location-update :target-type
                                      s3content-location-update :member-name
                                      "S3ContentLocationUpdate"))
                                    (:shape-name "CodeContentUpdate"))

(smithy/sdk/shapes:define-type code-md5 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error code-validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CodeValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type conditional-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum configuration-type
    common-lisp:nil
  (:default "DEFAULT")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-input create-application-presigned-url-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (url-type :target-type url-type :required
                                  common-lisp:t :member-name "UrlType")
                                 (session-expiration-duration-in-seconds
                                  :target-type
                                  session-expiration-duration-in-seconds
                                  :member-name
                                  "SessionExpirationDurationInSeconds"))
                                (:shape-name
                                 "CreateApplicationPresignedUrlRequest"))

(smithy/sdk/shapes:define-output create-application-presigned-url-response
                                 common-lisp:nil
                                 ((authorized-url :target-type authorized-url
                                   :member-name "AuthorizedUrl"))
                                 (:shape-name
                                  "CreateApplicationPresignedUrlResponse"))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (application-description :target-type
                                  application-description :member-name
                                  "ApplicationDescription")
                                 (runtime-environment :target-type
                                  runtime-environment :required common-lisp:t
                                  :member-name "RuntimeEnvironment")
                                 (service-execution-role :target-type role-arn
                                  :required common-lisp:t :member-name
                                  "ServiceExecutionRole")
                                 (application-configuration :target-type
                                  application-configuration :member-name
                                  "ApplicationConfiguration")
                                 (cloud-watch-logging-options :target-type
                                  cloud-watch-logging-options :member-name
                                  "CloudWatchLoggingOptions")
                                 (tags :target-type tags :member-name "Tags")
                                 (application-mode :target-type
                                  application-mode :member-name
                                  "ApplicationMode"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((application-detail :target-type
                                   application-detail :required common-lisp:t
                                   :member-name "ApplicationDetail"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input create-application-snapshot-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (snapshot-name :target-type snapshot-name
                                  :required common-lisp:t :member-name
                                  "SnapshotName"))
                                (:shape-name
                                 "CreateApplicationSnapshotRequest"))

(smithy/sdk/shapes:define-output create-application-snapshot-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateApplicationSnapshotResponse"))

(smithy/sdk/shapes:define-structure custom-artifact-configuration
                                    common-lisp:nil
                                    ((artifact-type :target-type artifact-type
                                      :required common-lisp:t :member-name
                                      "ArtifactType")
                                     (s3content-location :target-type
                                      s3content-location :member-name
                                      "S3ContentLocation")
                                     (maven-reference :target-type
                                      maven-reference :member-name
                                      "MavenReference"))
                                    (:shape-name "CustomArtifactConfiguration"))

(smithy/sdk/shapes:define-structure custom-artifact-configuration-description
                                    common-lisp:nil
                                    ((artifact-type :target-type artifact-type
                                      :member-name "ArtifactType")
                                     (s3content-location-description
                                      :target-type s3content-location
                                      :member-name
                                      "S3ContentLocationDescription")
                                     (maven-reference-description :target-type
                                      maven-reference :member-name
                                      "MavenReferenceDescription"))
                                    (:shape-name
                                     "CustomArtifactConfigurationDescription"))

(smithy/sdk/shapes:define-list custom-artifacts-configuration-description-list
                               :member
                               custom-artifact-configuration-description)

(smithy/sdk/shapes:define-list custom-artifacts-configuration-list :member
                               custom-artifact-configuration)

(smithy/sdk/shapes:define-type database-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 delete-application-cloud-watch-logging-option-request common-lisp:nil
 ((application-name :target-type application-name :required common-lisp:t
   :member-name "ApplicationName")
  (current-application-version-id :target-type application-version-id
   :member-name "CurrentApplicationVersionId")
  (cloud-watch-logging-option-id :target-type id :required common-lisp:t
   :member-name "CloudWatchLoggingOptionId")
  (conditional-token :target-type conditional-token :member-name
   "ConditionalToken"))
 (:shape-name "DeleteApplicationCloudWatchLoggingOptionRequest"))

(smithy/sdk/shapes:define-output
 delete-application-cloud-watch-logging-option-response common-lisp:nil
 ((application-arn :target-type resource-arn :member-name "ApplicationARN")
  (application-version-id :target-type application-version-id :member-name
   "ApplicationVersionId")
  (cloud-watch-logging-option-descriptions :target-type
   cloud-watch-logging-option-descriptions :member-name
   "CloudWatchLoggingOptionDescriptions")
  (operation-id :target-type operation-id :member-name "OperationId"))
 (:shape-name "DeleteApplicationCloudWatchLoggingOptionResponse"))

(smithy/sdk/shapes:define-input
 delete-application-input-processing-configuration-request common-lisp:nil
 ((application-name :target-type application-name :required common-lisp:t
   :member-name "ApplicationName")
  (current-application-version-id :target-type application-version-id :required
   common-lisp:t :member-name "CurrentApplicationVersionId")
  (input-id :target-type id :required common-lisp:t :member-name "InputId"))
 (:shape-name "DeleteApplicationInputProcessingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 delete-application-input-processing-configuration-response common-lisp:nil
 ((application-arn :target-type resource-arn :member-name "ApplicationARN")
  (application-version-id :target-type application-version-id :member-name
   "ApplicationVersionId"))
 (:shape-name "DeleteApplicationInputProcessingConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-application-output-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (current-application-version-id :target-type
                                  application-version-id :required
                                  common-lisp:t :member-name
                                  "CurrentApplicationVersionId")
                                 (output-id :target-type id :required
                                  common-lisp:t :member-name "OutputId"))
                                (:shape-name "DeleteApplicationOutputRequest"))

(smithy/sdk/shapes:define-output delete-application-output-response
                                 common-lisp:nil
                                 ((application-arn :target-type resource-arn
                                   :member-name "ApplicationARN")
                                  (application-version-id :target-type
                                   application-version-id :member-name
                                   "ApplicationVersionId"))
                                 (:shape-name
                                  "DeleteApplicationOutputResponse"))

(smithy/sdk/shapes:define-input
 delete-application-reference-data-source-request common-lisp:nil
 ((application-name :target-type application-name :required common-lisp:t
   :member-name "ApplicationName")
  (current-application-version-id :target-type application-version-id :required
   common-lisp:t :member-name "CurrentApplicationVersionId")
  (reference-id :target-type id :required common-lisp:t :member-name
   "ReferenceId"))
 (:shape-name "DeleteApplicationReferenceDataSourceRequest"))

(smithy/sdk/shapes:define-output
 delete-application-reference-data-source-response common-lisp:nil
 ((application-arn :target-type resource-arn :member-name "ApplicationARN")
  (application-version-id :target-type application-version-id :member-name
   "ApplicationVersionId"))
 (:shape-name "DeleteApplicationReferenceDataSourceResponse"))

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (create-timestamp :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "CreateTimestamp"))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-output delete-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input delete-application-snapshot-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (snapshot-name :target-type snapshot-name
                                  :required common-lisp:t :member-name
                                  "SnapshotName")
                                 (snapshot-creation-timestamp :target-type
                                  timestamp :required common-lisp:t
                                  :member-name "SnapshotCreationTimestamp"))
                                (:shape-name
                                 "DeleteApplicationSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-application-snapshot-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteApplicationSnapshotResponse"))

(smithy/sdk/shapes:define-input delete-application-vpc-configuration-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (current-application-version-id :target-type
                                  application-version-id :member-name
                                  "CurrentApplicationVersionId")
                                 (vpc-configuration-id :target-type id
                                  :required common-lisp:t :member-name
                                  "VpcConfigurationId")
                                 (conditional-token :target-type
                                  conditional-token :member-name
                                  "ConditionalToken"))
                                (:shape-name
                                 "DeleteApplicationVpcConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-application-vpc-configuration-response
                                 common-lisp:nil
                                 ((application-arn :target-type resource-arn
                                   :member-name "ApplicationARN")
                                  (application-version-id :target-type
                                   application-version-id :member-name
                                   "ApplicationVersionId")
                                  (operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "DeleteApplicationVpcConfigurationResponse"))

(smithy/sdk/shapes:define-structure deploy-as-application-configuration
                                    common-lisp:nil
                                    ((s3content-location :target-type
                                      s3content-base-location :required
                                      common-lisp:t :member-name
                                      "S3ContentLocation"))
                                    (:shape-name
                                     "DeployAsApplicationConfiguration"))

(smithy/sdk/shapes:define-structure
 deploy-as-application-configuration-description common-lisp:nil
 ((s3content-location-description :target-type
   s3content-base-location-description :required common-lisp:t :member-name
   "S3ContentLocationDescription"))
 (:shape-name "DeployAsApplicationConfigurationDescription"))

(smithy/sdk/shapes:define-structure deploy-as-application-configuration-update
                                    common-lisp:nil
                                    ((s3content-location-update :target-type
                                      s3content-base-location-update
                                      :member-name "S3ContentLocationUpdate"))
                                    (:shape-name
                                     "DeployAsApplicationConfigurationUpdate"))

(smithy/sdk/shapes:define-input describe-application-operation-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (operation-id :target-type operation-id
                                  :required common-lisp:t :member-name
                                  "OperationId"))
                                (:shape-name
                                 "DescribeApplicationOperationRequest"))

(smithy/sdk/shapes:define-output describe-application-operation-response
                                 common-lisp:nil
                                 ((application-operation-info-details
                                   :target-type
                                   application-operation-info-details
                                   :member-name
                                   "ApplicationOperationInfoDetails"))
                                 (:shape-name
                                  "DescribeApplicationOperationResponse"))

(smithy/sdk/shapes:define-input describe-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (include-additional-details :target-type
                                  boolean-object :member-name
                                  "IncludeAdditionalDetails"))
                                (:shape-name "DescribeApplicationRequest"))

(smithy/sdk/shapes:define-output describe-application-response common-lisp:nil
                                 ((application-detail :target-type
                                   application-detail :required common-lisp:t
                                   :member-name "ApplicationDetail"))
                                 (:shape-name "DescribeApplicationResponse"))

(smithy/sdk/shapes:define-input describe-application-snapshot-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (snapshot-name :target-type snapshot-name
                                  :required common-lisp:t :member-name
                                  "SnapshotName"))
                                (:shape-name
                                 "DescribeApplicationSnapshotRequest"))

(smithy/sdk/shapes:define-output describe-application-snapshot-response
                                 common-lisp:nil
                                 ((snapshot-details :target-type
                                   snapshot-details :required common-lisp:t
                                   :member-name "SnapshotDetails"))
                                 (:shape-name
                                  "DescribeApplicationSnapshotResponse"))

(smithy/sdk/shapes:define-input describe-application-version-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (application-version-id :target-type
                                  application-version-id :required
                                  common-lisp:t :member-name
                                  "ApplicationVersionId"))
                                (:shape-name
                                 "DescribeApplicationVersionRequest"))

(smithy/sdk/shapes:define-output describe-application-version-response
                                 common-lisp:nil
                                 ((application-version-detail :target-type
                                   application-detail :member-name
                                   "ApplicationVersionDetail"))
                                 (:shape-name
                                  "DescribeApplicationVersionResponse"))

(smithy/sdk/shapes:define-structure destination-schema common-lisp:nil
                                    ((record-format-type :target-type
                                      record-format-type :required
                                      common-lisp:t :member-name
                                      "RecordFormatType"))
                                    (:shape-name "DestinationSchema"))

(smithy/sdk/shapes:define-input discover-input-schema-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :member-name "ResourceARN")
                                 (service-execution-role :target-type role-arn
                                  :required common-lisp:t :member-name
                                  "ServiceExecutionRole")
                                 (input-starting-position-configuration
                                  :target-type
                                  input-starting-position-configuration
                                  :member-name
                                  "InputStartingPositionConfiguration")
                                 (s3configuration :target-type s3configuration
                                  :member-name "S3Configuration")
                                 (input-processing-configuration :target-type
                                  input-processing-configuration :member-name
                                  "InputProcessingConfiguration"))
                                (:shape-name "DiscoverInputSchemaRequest"))

(smithy/sdk/shapes:define-output discover-input-schema-response common-lisp:nil
                                 ((input-schema :target-type source-schema
                                   :member-name "InputSchema")
                                  (parsed-input-records :target-type
                                   parsed-input-records :member-name
                                   "ParsedInputRecords")
                                  (processed-input-records :target-type
                                   processed-input-records :member-name
                                   "ProcessedInputRecords")
                                  (raw-input-records :target-type
                                   raw-input-records :member-name
                                   "RawInputRecords"))
                                 (:shape-name "DiscoverInputSchemaResponse"))

(smithy/sdk/shapes:define-structure environment-properties common-lisp:nil
                                    ((property-groups :target-type
                                      property-groups :required common-lisp:t
                                      :member-name "PropertyGroups"))
                                    (:shape-name "EnvironmentProperties"))

(smithy/sdk/shapes:define-structure environment-property-descriptions
                                    common-lisp:nil
                                    ((property-group-descriptions :target-type
                                      property-groups :member-name
                                      "PropertyGroupDescriptions"))
                                    (:shape-name
                                     "EnvironmentPropertyDescriptions"))

(smithy/sdk/shapes:define-structure environment-property-updates
                                    common-lisp:nil
                                    ((property-groups :target-type
                                      property-groups :required common-lisp:t
                                      :member-name "PropertyGroups"))
                                    (:shape-name "EnvironmentPropertyUpdates"))

(smithy/sdk/shapes:define-structure error-info common-lisp:nil
                                    ((error-string :target-type error-string
                                      :member-name "ErrorString"))
                                    (:shape-name "ErrorInfo"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flink-application-configuration
                                    common-lisp:nil
                                    ((checkpoint-configuration :target-type
                                      checkpoint-configuration :member-name
                                      "CheckpointConfiguration")
                                     (monitoring-configuration :target-type
                                      monitoring-configuration :member-name
                                      "MonitoringConfiguration")
                                     (parallelism-configuration :target-type
                                      parallelism-configuration :member-name
                                      "ParallelismConfiguration"))
                                    (:shape-name
                                     "FlinkApplicationConfiguration"))

(smithy/sdk/shapes:define-structure flink-application-configuration-description
                                    common-lisp:nil
                                    ((checkpoint-configuration-description
                                      :target-type
                                      checkpoint-configuration-description
                                      :member-name
                                      "CheckpointConfigurationDescription")
                                     (monitoring-configuration-description
                                      :target-type
                                      monitoring-configuration-description
                                      :member-name
                                      "MonitoringConfigurationDescription")
                                     (parallelism-configuration-description
                                      :target-type
                                      parallelism-configuration-description
                                      :member-name
                                      "ParallelismConfigurationDescription")
                                     (job-plan-description :target-type
                                      job-plan-description :member-name
                                      "JobPlanDescription"))
                                    (:shape-name
                                     "FlinkApplicationConfigurationDescription"))

(smithy/sdk/shapes:define-structure flink-application-configuration-update
                                    common-lisp:nil
                                    ((checkpoint-configuration-update
                                      :target-type
                                      checkpoint-configuration-update
                                      :member-name
                                      "CheckpointConfigurationUpdate")
                                     (monitoring-configuration-update
                                      :target-type
                                      monitoring-configuration-update
                                      :member-name
                                      "MonitoringConfigurationUpdate")
                                     (parallelism-configuration-update
                                      :target-type
                                      parallelism-configuration-update
                                      :member-name
                                      "ParallelismConfigurationUpdate"))
                                    (:shape-name
                                     "FlinkApplicationConfigurationUpdate"))

(smithy/sdk/shapes:define-structure flink-run-configuration common-lisp:nil
                                    ((allow-non-restored-state :target-type
                                      boolean-object :member-name
                                      "AllowNonRestoredState"))
                                    (:shape-name "FlinkRunConfiguration"))

(smithy/sdk/shapes:define-structure glue-data-catalog-configuration
                                    common-lisp:nil
                                    ((database-arn :target-type database-arn
                                      :required common-lisp:t :member-name
                                      "DatabaseARN"))
                                    (:shape-name
                                     "GlueDataCatalogConfiguration"))

(smithy/sdk/shapes:define-structure glue-data-catalog-configuration-description
                                    common-lisp:nil
                                    ((database-arn :target-type database-arn
                                      :required common-lisp:t :member-name
                                      "DatabaseARN"))
                                    (:shape-name
                                     "GlueDataCatalogConfigurationDescription"))

(smithy/sdk/shapes:define-structure glue-data-catalog-configuration-update
                                    common-lisp:nil
                                    ((database-arnupdate :target-type
                                      database-arn :required common-lisp:t
                                      :member-name "DatabaseARNUpdate"))
                                    (:shape-name
                                     "GlueDataCatalogConfigurationUpdate"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type in-app-stream-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list in-app-stream-names :member in-app-stream-name)

(smithy/sdk/shapes:define-type in-app-table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure input common-lisp:nil
                                    ((name-prefix :target-type
                                      in-app-stream-name :required
                                      common-lisp:t :member-name "NamePrefix")
                                     (input-processing-configuration
                                      :target-type
                                      input-processing-configuration
                                      :member-name
                                      "InputProcessingConfiguration")
                                     (kinesis-streams-input :target-type
                                      kinesis-streams-input :member-name
                                      "KinesisStreamsInput")
                                     (kinesis-firehose-input :target-type
                                      kinesis-firehose-input :member-name
                                      "KinesisFirehoseInput")
                                     (input-parallelism :target-type
                                      input-parallelism :member-name
                                      "InputParallelism")
                                     (input-schema :target-type source-schema
                                      :required common-lisp:t :member-name
                                      "InputSchema"))
                                    (:shape-name "Input"))

(smithy/sdk/shapes:define-structure input-description common-lisp:nil
                                    ((input-id :target-type id :member-name
                                      "InputId")
                                     (name-prefix :target-type
                                      in-app-stream-name :member-name
                                      "NamePrefix")
                                     (in-app-stream-names :target-type
                                      in-app-stream-names :member-name
                                      "InAppStreamNames")
                                     (input-processing-configuration-description
                                      :target-type
                                      input-processing-configuration-description
                                      :member-name
                                      "InputProcessingConfigurationDescription")
                                     (kinesis-streams-input-description
                                      :target-type
                                      kinesis-streams-input-description
                                      :member-name
                                      "KinesisStreamsInputDescription")
                                     (kinesis-firehose-input-description
                                      :target-type
                                      kinesis-firehose-input-description
                                      :member-name
                                      "KinesisFirehoseInputDescription")
                                     (input-schema :target-type source-schema
                                      :member-name "InputSchema")
                                     (input-parallelism :target-type
                                      input-parallelism :member-name
                                      "InputParallelism")
                                     (input-starting-position-configuration
                                      :target-type
                                      input-starting-position-configuration
                                      :member-name
                                      "InputStartingPositionConfiguration"))
                                    (:shape-name "InputDescription"))

(smithy/sdk/shapes:define-list input-descriptions :member input-description)

(smithy/sdk/shapes:define-structure input-lambda-processor common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN"))
                                    (:shape-name "InputLambdaProcessor"))

(smithy/sdk/shapes:define-structure input-lambda-processor-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "InputLambdaProcessorDescription"))

(smithy/sdk/shapes:define-structure input-lambda-processor-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :required common-lisp:t
                                      :member-name "ResourceARNUpdate"))
                                    (:shape-name "InputLambdaProcessorUpdate"))

(smithy/sdk/shapes:define-structure input-parallelism common-lisp:nil
                                    ((count :target-type
                                      input-parallelism-count :member-name
                                      "Count"))
                                    (:shape-name "InputParallelism"))

(smithy/sdk/shapes:define-type input-parallelism-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure input-parallelism-update common-lisp:nil
                                    ((count-update :target-type
                                      input-parallelism-count :required
                                      common-lisp:t :member-name
                                      "CountUpdate"))
                                    (:shape-name "InputParallelismUpdate"))

(smithy/sdk/shapes:define-structure input-processing-configuration
                                    common-lisp:nil
                                    ((input-lambda-processor :target-type
                                      input-lambda-processor :required
                                      common-lisp:t :member-name
                                      "InputLambdaProcessor"))
                                    (:shape-name
                                     "InputProcessingConfiguration"))

(smithy/sdk/shapes:define-structure input-processing-configuration-description
                                    common-lisp:nil
                                    ((input-lambda-processor-description
                                      :target-type
                                      input-lambda-processor-description
                                      :member-name
                                      "InputLambdaProcessorDescription"))
                                    (:shape-name
                                     "InputProcessingConfigurationDescription"))

(smithy/sdk/shapes:define-structure input-processing-configuration-update
                                    common-lisp:nil
                                    ((input-lambda-processor-update
                                      :target-type
                                      input-lambda-processor-update :required
                                      common-lisp:t :member-name
                                      "InputLambdaProcessorUpdate"))
                                    (:shape-name
                                     "InputProcessingConfigurationUpdate"))

(smithy/sdk/shapes:define-structure input-schema-update common-lisp:nil
                                    ((record-format-update :target-type
                                      record-format :member-name
                                      "RecordFormatUpdate")
                                     (record-encoding-update :target-type
                                      record-encoding :member-name
                                      "RecordEncodingUpdate")
                                     (record-column-updates :target-type
                                      record-columns :member-name
                                      "RecordColumnUpdates"))
                                    (:shape-name "InputSchemaUpdate"))

(smithy/sdk/shapes:define-enum input-starting-position
    common-lisp:nil
  (:now "NOW")
  (:trim-horizon "TRIM_HORIZON")
  (:last-stopped-point "LAST_STOPPED_POINT"))

(smithy/sdk/shapes:define-structure input-starting-position-configuration
                                    common-lisp:nil
                                    ((input-starting-position :target-type
                                      input-starting-position :member-name
                                      "InputStartingPosition"))
                                    (:shape-name
                                     "InputStartingPositionConfiguration"))

(smithy/sdk/shapes:define-structure input-update common-lisp:nil
                                    ((input-id :target-type id :required
                                      common-lisp:t :member-name "InputId")
                                     (name-prefix-update :target-type
                                      in-app-stream-name :member-name
                                      "NamePrefixUpdate")
                                     (input-processing-configuration-update
                                      :target-type
                                      input-processing-configuration-update
                                      :member-name
                                      "InputProcessingConfigurationUpdate")
                                     (kinesis-streams-input-update :target-type
                                      kinesis-streams-input-update :member-name
                                      "KinesisStreamsInputUpdate")
                                     (kinesis-firehose-input-update
                                      :target-type
                                      kinesis-firehose-input-update
                                      :member-name
                                      "KinesisFirehoseInputUpdate")
                                     (input-schema-update :target-type
                                      input-schema-update :member-name
                                      "InputSchemaUpdate")
                                     (input-parallelism-update :target-type
                                      input-parallelism-update :member-name
                                      "InputParallelismUpdate"))
                                    (:shape-name "InputUpdate"))

(smithy/sdk/shapes:define-list input-updates :member input-update)

(smithy/sdk/shapes:define-list inputs :member input)

(smithy/sdk/shapes:define-error invalid-application-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidApplicationConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure jsonmapping-parameters common-lisp:nil
                                    ((record-row-path :target-type
                                      record-row-path :required common-lisp:t
                                      :member-name "RecordRowPath"))
                                    (:shape-name "JSONMappingParameters"))

(smithy/sdk/shapes:define-type job-plan-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kinesis-analytics-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kinesis-firehose-input common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN"))
                                    (:shape-name "KinesisFirehoseInput"))

(smithy/sdk/shapes:define-structure kinesis-firehose-input-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "KinesisFirehoseInputDescription"))

(smithy/sdk/shapes:define-structure kinesis-firehose-input-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :required common-lisp:t
                                      :member-name "ResourceARNUpdate"))
                                    (:shape-name "KinesisFirehoseInputUpdate"))

(smithy/sdk/shapes:define-structure kinesis-firehose-output common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN"))
                                    (:shape-name "KinesisFirehoseOutput"))

(smithy/sdk/shapes:define-structure kinesis-firehose-output-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "KinesisFirehoseOutputDescription"))

(smithy/sdk/shapes:define-structure kinesis-firehose-output-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :required common-lisp:t
                                      :member-name "ResourceARNUpdate"))
                                    (:shape-name "KinesisFirehoseOutputUpdate"))

(smithy/sdk/shapes:define-structure kinesis-streams-input common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN"))
                                    (:shape-name "KinesisStreamsInput"))

(smithy/sdk/shapes:define-structure kinesis-streams-input-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "KinesisStreamsInputDescription"))

(smithy/sdk/shapes:define-structure kinesis-streams-input-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :required common-lisp:t
                                      :member-name "ResourceARNUpdate"))
                                    (:shape-name "KinesisStreamsInputUpdate"))

(smithy/sdk/shapes:define-structure kinesis-streams-output common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN"))
                                    (:shape-name "KinesisStreamsOutput"))

(smithy/sdk/shapes:define-structure kinesis-streams-output-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "KinesisStreamsOutputDescription"))

(smithy/sdk/shapes:define-structure kinesis-streams-output-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :required common-lisp:t
                                      :member-name "ResourceARNUpdate"))
                                    (:shape-name "KinesisStreamsOutputUpdate"))

(smithy/sdk/shapes:define-structure lambda-output common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN"))
                                    (:shape-name "LambdaOutput"))

(smithy/sdk/shapes:define-structure lambda-output-description common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name "LambdaOutputDescription"))

(smithy/sdk/shapes:define-structure lambda-output-update common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :required common-lisp:t
                                      :member-name "ResourceARNUpdate"))
                                    (:shape-name "LambdaOutputUpdate"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type list-application-operations-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-application-operations-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (limit :target-type
                                  list-application-operations-input-limit
                                  :member-name "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (operation :target-type operation :member-name
                                  "Operation")
                                 (operation-status :target-type
                                  operation-status :member-name
                                  "OperationStatus"))
                                (:shape-name
                                 "ListApplicationOperationsRequest"))

(smithy/sdk/shapes:define-output list-application-operations-response
                                 common-lisp:nil
                                 ((application-operation-info-list :target-type
                                   application-operation-info-list :member-name
                                   "ApplicationOperationInfoList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListApplicationOperationsResponse"))

(smithy/sdk/shapes:define-input list-application-snapshots-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (limit :target-type list-snapshots-input-limit
                                  :member-name "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListApplicationSnapshotsRequest"))

(smithy/sdk/shapes:define-output list-application-snapshots-response
                                 common-lisp:nil
                                 ((snapshot-summaries :target-type
                                   snapshot-summaries :member-name
                                   "SnapshotSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListApplicationSnapshotsResponse"))

(smithy/sdk/shapes:define-type list-application-versions-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-application-versions-request
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (limit :target-type
                                  list-application-versions-input-limit
                                  :member-name "Limit")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListApplicationVersionsRequest"))

(smithy/sdk/shapes:define-output list-application-versions-response
                                 common-lisp:nil
                                 ((application-version-summaries :target-type
                                   application-version-summaries :member-name
                                   "ApplicationVersionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListApplicationVersionsResponse"))

(smithy/sdk/shapes:define-type list-applications-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((limit :target-type
                                  list-applications-input-limit :member-name
                                  "Limit")
                                 (next-token :target-type application-name
                                  :member-name "NextToken"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((application-summaries :target-type
                                   application-summaries :required
                                   common-lisp:t :member-name
                                   "ApplicationSummaries")
                                  (next-token :target-type application-name
                                   :member-name "NextToken"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-type list-snapshots-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  kinesis-analytics-arn :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum log-level
    common-lisp:nil
  (:info "INFO")
  (:warn "WARN")
  (:error "ERROR")
  (:debug "DEBUG"))

(smithy/sdk/shapes:define-type log-stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mapping-parameters common-lisp:nil
                                    ((jsonmapping-parameters :target-type
                                      jsonmapping-parameters :member-name
                                      "JSONMappingParameters")
                                     (csvmapping-parameters :target-type
                                      csvmapping-parameters :member-name
                                      "CSVMappingParameters"))
                                    (:shape-name "MappingParameters"))

(smithy/sdk/shapes:define-type maven-artifact-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type maven-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure maven-reference common-lisp:nil
                                    ((group-id :target-type maven-group-id
                                      :required common-lisp:t :member-name
                                      "GroupId")
                                     (artifact-id :target-type
                                      maven-artifact-id :required common-lisp:t
                                      :member-name "ArtifactId")
                                     (version :target-type maven-version
                                      :required common-lisp:t :member-name
                                      "Version"))
                                    (:shape-name "MavenReference"))

(smithy/sdk/shapes:define-type maven-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum metrics-level
    common-lisp:nil
  (:application "APPLICATION")
  (:task "TASK")
  (:operator "OPERATOR")
  (:parallelism "PARALLELISM"))

(smithy/sdk/shapes:define-type min-pause-between-checkpoints
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure monitoring-configuration common-lisp:nil
                                    ((configuration-type :target-type
                                      configuration-type :required
                                      common-lisp:t :member-name
                                      "ConfigurationType")
                                     (metrics-level :target-type metrics-level
                                      :member-name "MetricsLevel")
                                     (log-level :target-type log-level
                                      :member-name "LogLevel"))
                                    (:shape-name "MonitoringConfiguration"))

(smithy/sdk/shapes:define-structure monitoring-configuration-description
                                    common-lisp:nil
                                    ((configuration-type :target-type
                                      configuration-type :member-name
                                      "ConfigurationType")
                                     (metrics-level :target-type metrics-level
                                      :member-name "MetricsLevel")
                                     (log-level :target-type log-level
                                      :member-name "LogLevel"))
                                    (:shape-name
                                     "MonitoringConfigurationDescription"))

(smithy/sdk/shapes:define-structure monitoring-configuration-update
                                    common-lisp:nil
                                    ((configuration-type-update :target-type
                                      configuration-type :member-name
                                      "ConfigurationTypeUpdate")
                                     (metrics-level-update :target-type
                                      metrics-level :member-name
                                      "MetricsLevelUpdate")
                                     (log-level-update :target-type log-level
                                      :member-name "LogLevelUpdate"))
                                    (:shape-name
                                     "MonitoringConfigurationUpdate"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type operation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure operation-failure-details common-lisp:nil
                                    ((rollback-operation-id :target-type
                                      operation-id :member-name
                                      "RollbackOperationId")
                                     (error-info :target-type error-info
                                      :member-name "ErrorInfo"))
                                    (:shape-name "OperationFailureDetails"))

(smithy/sdk/shapes:define-type operation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum operation-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:cancelled "CANCELLED")
  (:successful "SUCCESSFUL")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure output common-lisp:nil
                                    ((name :target-type in-app-stream-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (kinesis-streams-output :target-type
                                      kinesis-streams-output :member-name
                                      "KinesisStreamsOutput")
                                     (kinesis-firehose-output :target-type
                                      kinesis-firehose-output :member-name
                                      "KinesisFirehoseOutput")
                                     (lambda-output :target-type lambda-output
                                      :member-name "LambdaOutput")
                                     (destination-schema :target-type
                                      destination-schema :required
                                      common-lisp:t :member-name
                                      "DestinationSchema"))
                                    (:shape-name "Output"))

(smithy/sdk/shapes:define-structure output-description common-lisp:nil
                                    ((output-id :target-type id :member-name
                                      "OutputId")
                                     (name :target-type in-app-stream-name
                                      :member-name "Name")
                                     (kinesis-streams-output-description
                                      :target-type
                                      kinesis-streams-output-description
                                      :member-name
                                      "KinesisStreamsOutputDescription")
                                     (kinesis-firehose-output-description
                                      :target-type
                                      kinesis-firehose-output-description
                                      :member-name
                                      "KinesisFirehoseOutputDescription")
                                     (lambda-output-description :target-type
                                      lambda-output-description :member-name
                                      "LambdaOutputDescription")
                                     (destination-schema :target-type
                                      destination-schema :member-name
                                      "DestinationSchema"))
                                    (:shape-name "OutputDescription"))

(smithy/sdk/shapes:define-list output-descriptions :member output-description)

(smithy/sdk/shapes:define-structure output-update common-lisp:nil
                                    ((output-id :target-type id :required
                                      common-lisp:t :member-name "OutputId")
                                     (name-update :target-type
                                      in-app-stream-name :member-name
                                      "NameUpdate")
                                     (kinesis-streams-output-update
                                      :target-type
                                      kinesis-streams-output-update
                                      :member-name
                                      "KinesisStreamsOutputUpdate")
                                     (kinesis-firehose-output-update
                                      :target-type
                                      kinesis-firehose-output-update
                                      :member-name
                                      "KinesisFirehoseOutputUpdate")
                                     (lambda-output-update :target-type
                                      lambda-output-update :member-name
                                      "LambdaOutputUpdate")
                                     (destination-schema-update :target-type
                                      destination-schema :member-name
                                      "DestinationSchemaUpdate"))
                                    (:shape-name "OutputUpdate"))

(smithy/sdk/shapes:define-list output-updates :member output-update)

(smithy/sdk/shapes:define-list outputs :member output)

(smithy/sdk/shapes:define-type parallelism smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure parallelism-configuration common-lisp:nil
                                    ((configuration-type :target-type
                                      configuration-type :required
                                      common-lisp:t :member-name
                                      "ConfigurationType")
                                     (parallelism :target-type parallelism
                                      :member-name "Parallelism")
                                     (parallelism-per-kpu :target-type
                                      parallelism-per-kpu :member-name
                                      "ParallelismPerKPU")
                                     (auto-scaling-enabled :target-type
                                      boolean-object :member-name
                                      "AutoScalingEnabled"))
                                    (:shape-name "ParallelismConfiguration"))

(smithy/sdk/shapes:define-structure parallelism-configuration-description
                                    common-lisp:nil
                                    ((configuration-type :target-type
                                      configuration-type :member-name
                                      "ConfigurationType")
                                     (parallelism :target-type parallelism
                                      :member-name "Parallelism")
                                     (parallelism-per-kpu :target-type
                                      parallelism-per-kpu :member-name
                                      "ParallelismPerKPU")
                                     (current-parallelism :target-type
                                      parallelism :member-name
                                      "CurrentParallelism")
                                     (auto-scaling-enabled :target-type
                                      boolean-object :member-name
                                      "AutoScalingEnabled"))
                                    (:shape-name
                                     "ParallelismConfigurationDescription"))

(smithy/sdk/shapes:define-structure parallelism-configuration-update
                                    common-lisp:nil
                                    ((configuration-type-update :target-type
                                      configuration-type :member-name
                                      "ConfigurationTypeUpdate")
                                     (parallelism-update :target-type
                                      parallelism :member-name
                                      "ParallelismUpdate")
                                     (parallelism-per-kpuupdate :target-type
                                      parallelism-per-kpu :member-name
                                      "ParallelismPerKPUUpdate")
                                     (auto-scaling-enabled-update :target-type
                                      boolean-object :member-name
                                      "AutoScalingEnabledUpdate"))
                                    (:shape-name
                                     "ParallelismConfigurationUpdate"))

(smithy/sdk/shapes:define-type parallelism-per-kpu
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list parsed-input-record :member
                               parsed-input-record-field)

(smithy/sdk/shapes:define-type parsed-input-record-field
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parsed-input-records :member parsed-input-record)

(smithy/sdk/shapes:define-type processed-input-record
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list processed-input-records :member
                               processed-input-record)

(smithy/sdk/shapes:define-structure property-group common-lisp:nil
                                    ((property-group-id :target-type id
                                      :required common-lisp:t :member-name
                                      "PropertyGroupId")
                                     (property-map :target-type property-map
                                      :required common-lisp:t :member-name
                                      "PropertyMap"))
                                    (:shape-name "PropertyGroup"))

(smithy/sdk/shapes:define-list property-groups :member property-group)

(smithy/sdk/shapes:define-type property-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map property-map :key property-key :value
                              property-value)

(smithy/sdk/shapes:define-type property-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type raw-input-record smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list raw-input-records :member raw-input-record)

(smithy/sdk/shapes:define-structure record-column common-lisp:nil
                                    ((name :target-type record-column-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (mapping :target-type
                                      record-column-mapping :member-name
                                      "Mapping")
                                     (sql-type :target-type
                                      record-column-sql-type :required
                                      common-lisp:t :member-name "SqlType"))
                                    (:shape-name "RecordColumn"))

(smithy/sdk/shapes:define-type record-column-delimiter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type record-column-mapping
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type record-column-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type record-column-sql-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list record-columns :member record-column)

(smithy/sdk/shapes:define-type record-encoding smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure record-format common-lisp:nil
                                    ((record-format-type :target-type
                                      record-format-type :required
                                      common-lisp:t :member-name
                                      "RecordFormatType")
                                     (mapping-parameters :target-type
                                      mapping-parameters :member-name
                                      "MappingParameters"))
                                    (:shape-name "RecordFormat"))

(smithy/sdk/shapes:define-enum record-format-type
    common-lisp:nil
  (:json "JSON")
  (:csv "CSV"))

(smithy/sdk/shapes:define-type record-row-delimiter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type record-row-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reference-data-source common-lisp:nil
                                    ((table-name :target-type in-app-table-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (s3reference-data-source :target-type
                                      s3reference-data-source :member-name
                                      "S3ReferenceDataSource")
                                     (reference-schema :target-type
                                      source-schema :required common-lisp:t
                                      :member-name "ReferenceSchema"))
                                    (:shape-name "ReferenceDataSource"))

(smithy/sdk/shapes:define-structure reference-data-source-description
                                    common-lisp:nil
                                    ((reference-id :target-type id :required
                                      common-lisp:t :member-name "ReferenceId")
                                     (table-name :target-type in-app-table-name
                                      :required common-lisp:t :member-name
                                      "TableName")
                                     (s3reference-data-source-description
                                      :target-type
                                      s3reference-data-source-description
                                      :required common-lisp:t :member-name
                                      "S3ReferenceDataSourceDescription")
                                     (reference-schema :target-type
                                      source-schema :member-name
                                      "ReferenceSchema"))
                                    (:shape-name
                                     "ReferenceDataSourceDescription"))

(smithy/sdk/shapes:define-list reference-data-source-descriptions :member
                               reference-data-source-description)

(smithy/sdk/shapes:define-structure reference-data-source-update
                                    common-lisp:nil
                                    ((reference-id :target-type id :required
                                      common-lisp:t :member-name "ReferenceId")
                                     (table-name-update :target-type
                                      in-app-table-name :member-name
                                      "TableNameUpdate")
                                     (s3reference-data-source-update
                                      :target-type
                                      s3reference-data-source-update
                                      :member-name
                                      "S3ReferenceDataSourceUpdate")
                                     (reference-schema-update :target-type
                                      source-schema :member-name
                                      "ReferenceSchemaUpdate"))
                                    (:shape-name "ReferenceDataSourceUpdate"))

(smithy/sdk/shapes:define-list reference-data-source-updates :member
                               reference-data-source-update)

(smithy/sdk/shapes:define-list reference-data-sources :member
                               reference-data-source)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 resource-provisioned-throughput-exceeded-exception common-lisp:nil
 ((message :target-type error-message :member-name "Message"))
 (:shape-name "ResourceProvisionedThroughputExceededException")
 (:error-code 400))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input rollback-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (current-application-version-id :target-type
                                  application-version-id :required
                                  common-lisp:t :member-name
                                  "CurrentApplicationVersionId"))
                                (:shape-name "RollbackApplicationRequest"))

(smithy/sdk/shapes:define-output rollback-application-response common-lisp:nil
                                 ((application-detail :target-type
                                   application-detail :required common-lisp:t
                                   :member-name "ApplicationDetail")
                                  (operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "RollbackApplicationResponse"))

(smithy/sdk/shapes:define-structure run-configuration common-lisp:nil
                                    ((flink-run-configuration :target-type
                                      flink-run-configuration :member-name
                                      "FlinkRunConfiguration")
                                     (sql-run-configurations :target-type
                                      sql-run-configurations :member-name
                                      "SqlRunConfigurations")
                                     (application-restore-configuration
                                      :target-type
                                      application-restore-configuration
                                      :member-name
                                      "ApplicationRestoreConfiguration"))
                                    (:shape-name "RunConfiguration"))

(smithy/sdk/shapes:define-structure run-configuration-description
                                    common-lisp:nil
                                    ((application-restore-configuration-description
                                      :target-type
                                      application-restore-configuration
                                      :member-name
                                      "ApplicationRestoreConfigurationDescription")
                                     (flink-run-configuration-description
                                      :target-type flink-run-configuration
                                      :member-name
                                      "FlinkRunConfigurationDescription"))
                                    (:shape-name "RunConfigurationDescription"))

(smithy/sdk/shapes:define-structure run-configuration-update common-lisp:nil
                                    ((flink-run-configuration :target-type
                                      flink-run-configuration :member-name
                                      "FlinkRunConfiguration")
                                     (application-restore-configuration
                                      :target-type
                                      application-restore-configuration
                                      :member-name
                                      "ApplicationRestoreConfiguration"))
                                    (:shape-name "RunConfigurationUpdate"))

(smithy/sdk/shapes:define-enum runtime-environment
    common-lisp:nil
  (:sql-1-0 "SQL-1_0")
  (:flink-1-6 "FLINK-1_6")
  (:flink-1-8 "FLINK-1_8")
  (:zeppelin-flink-1-0 "ZEPPELIN-FLINK-1_0")
  (:flink-1-11 "FLINK-1_11")
  (:flink-1-13 "FLINK-1_13")
  (:zeppelin-flink-2-0 "ZEPPELIN-FLINK-2_0")
  (:flink-1-15 "FLINK-1_15")
  (:zeppelin-flink-3-0 "ZEPPELIN-FLINK-3_0")
  (:flink-1-18 "FLINK-1_18")
  (:flink-1-19 "FLINK-1_19")
  (:flink-1-20 "FLINK-1_20"))

(smithy/sdk/shapes:define-structure s3application-code-location-description
                                    common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (file-key :target-type file-key :required
                                      common-lisp:t :member-name "FileKey")
                                     (object-version :target-type
                                      object-version :member-name
                                      "ObjectVersion"))
                                    (:shape-name
                                     "S3ApplicationCodeLocationDescription"))

(smithy/sdk/shapes:define-structure s3configuration common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (file-key :target-type file-key :required
                                      common-lisp:t :member-name "FileKey"))
                                    (:shape-name "S3Configuration"))

(smithy/sdk/shapes:define-structure s3content-base-location common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (base-path :target-type base-path
                                      :member-name "BasePath"))
                                    (:shape-name "S3ContentBaseLocation"))

(smithy/sdk/shapes:define-structure s3content-base-location-description
                                    common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (base-path :target-type base-path
                                      :member-name "BasePath"))
                                    (:shape-name
                                     "S3ContentBaseLocationDescription"))

(smithy/sdk/shapes:define-structure s3content-base-location-update
                                    common-lisp:nil
                                    ((bucket-arnupdate :target-type bucket-arn
                                      :member-name "BucketARNUpdate")
                                     (base-path-update :target-type base-path
                                      :member-name "BasePathUpdate"))
                                    (:shape-name "S3ContentBaseLocationUpdate"))

(smithy/sdk/shapes:define-structure s3content-location common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (file-key :target-type file-key :required
                                      common-lisp:t :member-name "FileKey")
                                     (object-version :target-type
                                      object-version :member-name
                                      "ObjectVersion"))
                                    (:shape-name "S3ContentLocation"))

(smithy/sdk/shapes:define-structure s3content-location-update common-lisp:nil
                                    ((bucket-arnupdate :target-type bucket-arn
                                      :member-name "BucketARNUpdate")
                                     (file-key-update :target-type file-key
                                      :member-name "FileKeyUpdate")
                                     (object-version-update :target-type
                                      object-version :member-name
                                      "ObjectVersionUpdate"))
                                    (:shape-name "S3ContentLocationUpdate"))

(smithy/sdk/shapes:define-structure s3reference-data-source common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :member-name "BucketARN")
                                     (file-key :target-type file-key
                                      :member-name "FileKey"))
                                    (:shape-name "S3ReferenceDataSource"))

(smithy/sdk/shapes:define-structure s3reference-data-source-description
                                    common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (file-key :target-type file-key :required
                                      common-lisp:t :member-name "FileKey")
                                     (reference-role-arn :target-type role-arn
                                      :member-name "ReferenceRoleARN"))
                                    (:shape-name
                                     "S3ReferenceDataSourceDescription"))

(smithy/sdk/shapes:define-structure s3reference-data-source-update
                                    common-lisp:nil
                                    ((bucket-arnupdate :target-type bucket-arn
                                      :member-name "BucketARNUpdate")
                                     (file-key-update :target-type file-key
                                      :member-name "FileKeyUpdate"))
                                    (:shape-name "S3ReferenceDataSourceUpdate"))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type session-expiration-duration-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure snapshot-details common-lisp:nil
                                    ((snapshot-name :target-type snapshot-name
                                      :required common-lisp:t :member-name
                                      "SnapshotName")
                                     (snapshot-status :target-type
                                      snapshot-status :required common-lisp:t
                                      :member-name "SnapshotStatus")
                                     (application-version-id :target-type
                                      application-version-id :required
                                      common-lisp:t :member-name
                                      "ApplicationVersionId")
                                     (snapshot-creation-timestamp :target-type
                                      timestamp :member-name
                                      "SnapshotCreationTimestamp")
                                     (runtime-environment :target-type
                                      runtime-environment :member-name
                                      "RuntimeEnvironment"))
                                    (:shape-name "SnapshotDetails"))

(smithy/sdk/shapes:define-type snapshot-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum snapshot-status
    common-lisp:nil
  (:creating "CREATING")
  (:ready "READY")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list snapshot-summaries :member snapshot-details)

(smithy/sdk/shapes:define-structure source-schema common-lisp:nil
                                    ((record-format :target-type record-format
                                      :required common-lisp:t :member-name
                                      "RecordFormat")
                                     (record-encoding :target-type
                                      record-encoding :member-name
                                      "RecordEncoding")
                                     (record-columns :target-type
                                      record-columns :required common-lisp:t
                                      :member-name "RecordColumns"))
                                    (:shape-name "SourceSchema"))

(smithy/sdk/shapes:define-structure sql-application-configuration
                                    common-lisp:nil
                                    ((inputs :target-type inputs :member-name
                                      "Inputs")
                                     (outputs :target-type outputs :member-name
                                      "Outputs")
                                     (reference-data-sources :target-type
                                      reference-data-sources :member-name
                                      "ReferenceDataSources"))
                                    (:shape-name "SqlApplicationConfiguration"))

(smithy/sdk/shapes:define-structure sql-application-configuration-description
                                    common-lisp:nil
                                    ((input-descriptions :target-type
                                      input-descriptions :member-name
                                      "InputDescriptions")
                                     (output-descriptions :target-type
                                      output-descriptions :member-name
                                      "OutputDescriptions")
                                     (reference-data-source-descriptions
                                      :target-type
                                      reference-data-source-descriptions
                                      :member-name
                                      "ReferenceDataSourceDescriptions"))
                                    (:shape-name
                                     "SqlApplicationConfigurationDescription"))

(smithy/sdk/shapes:define-structure sql-application-configuration-update
                                    common-lisp:nil
                                    ((input-updates :target-type input-updates
                                      :member-name "InputUpdates")
                                     (output-updates :target-type
                                      output-updates :member-name
                                      "OutputUpdates")
                                     (reference-data-source-updates
                                      :target-type
                                      reference-data-source-updates
                                      :member-name
                                      "ReferenceDataSourceUpdates"))
                                    (:shape-name
                                     "SqlApplicationConfigurationUpdate"))

(smithy/sdk/shapes:define-structure sql-run-configuration common-lisp:nil
                                    ((input-id :target-type id :required
                                      common-lisp:t :member-name "InputId")
                                     (input-starting-position-configuration
                                      :target-type
                                      input-starting-position-configuration
                                      :required common-lisp:t :member-name
                                      "InputStartingPositionConfiguration"))
                                    (:shape-name "SqlRunConfiguration"))

(smithy/sdk/shapes:define-list sql-run-configurations :member
                               sql-run-configuration)

(smithy/sdk/shapes:define-input start-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (run-configuration :target-type
                                  run-configuration :member-name
                                  "RunConfiguration"))
                                (:shape-name "StartApplicationRequest"))

(smithy/sdk/shapes:define-output start-application-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "StartApplicationResponse"))

(smithy/sdk/shapes:define-input stop-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (force :target-type boolean-object
                                  :member-name "Force"))
                                (:shape-name "StopApplicationRequest"))

(smithy/sdk/shapes:define-output stop-application-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "StopApplicationResponse"))

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  kinesis-analytics-arn :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type text-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unable-to-detect-schema-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (raw-input-records :target-type
                                  raw-input-records :member-name
                                  "RawInputRecords")
                                 (processed-input-records :target-type
                                  processed-input-records :member-name
                                  "ProcessedInputRecords"))
                                (:shape-name "UnableToDetectSchemaException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  kinesis-analytics-arn :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input
 update-application-maintenance-configuration-request common-lisp:nil
 ((application-name :target-type application-name :required common-lisp:t
   :member-name "ApplicationName")
  (application-maintenance-configuration-update :target-type
   application-maintenance-configuration-update :required common-lisp:t
   :member-name "ApplicationMaintenanceConfigurationUpdate"))
 (:shape-name "UpdateApplicationMaintenanceConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-application-maintenance-configuration-response common-lisp:nil
 ((application-arn :target-type resource-arn :member-name "ApplicationARN")
  (application-maintenance-configuration-description :target-type
   application-maintenance-configuration-description :member-name
   "ApplicationMaintenanceConfigurationDescription"))
 (:shape-name "UpdateApplicationMaintenanceConfigurationResponse"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (current-application-version-id :target-type
                                  application-version-id :member-name
                                  "CurrentApplicationVersionId")
                                 (application-configuration-update :target-type
                                  application-configuration-update :member-name
                                  "ApplicationConfigurationUpdate")
                                 (service-execution-role-update :target-type
                                  role-arn :member-name
                                  "ServiceExecutionRoleUpdate")
                                 (run-configuration-update :target-type
                                  run-configuration-update :member-name
                                  "RunConfigurationUpdate")
                                 (cloud-watch-logging-option-updates
                                  :target-type
                                  cloud-watch-logging-option-updates
                                  :member-name
                                  "CloudWatchLoggingOptionUpdates")
                                 (conditional-token :target-type
                                  conditional-token :member-name
                                  "ConditionalToken")
                                 (runtime-environment-update :target-type
                                  runtime-environment :member-name
                                  "RuntimeEnvironmentUpdate"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 ((application-detail :target-type
                                   application-detail :required common-lisp:t
                                   :member-name "ApplicationDetail")
                                  (operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-enum url-type
    common-lisp:nil
  (:flink-dashboard-url "FLINK_DASHBOARD_URL")
  (:zeppelin-ui-url "ZEPPELIN_UI_URL"))

(smithy/sdk/shapes:define-structure vpc-configuration common-lisp:nil
                                    ((subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "VpcConfiguration"))

(smithy/sdk/shapes:define-structure vpc-configuration-description
                                    common-lisp:nil
                                    ((vpc-configuration-id :target-type id
                                      :required common-lisp:t :member-name
                                      "VpcConfigurationId")
                                     (vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "VpcConfigurationDescription"))

(smithy/sdk/shapes:define-list vpc-configuration-descriptions :member
                               vpc-configuration-description)

(smithy/sdk/shapes:define-structure vpc-configuration-update common-lisp:nil
                                    ((vpc-configuration-id :target-type id
                                      :required common-lisp:t :member-name
                                      "VpcConfigurationId")
                                     (subnet-id-updates :target-type subnet-ids
                                      :member-name "SubnetIdUpdates")
                                     (security-group-id-updates :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIdUpdates"))
                                    (:shape-name "VpcConfigurationUpdate"))

(smithy/sdk/shapes:define-list vpc-configuration-updates :member
                               vpc-configuration-update)

(smithy/sdk/shapes:define-list vpc-configurations :member vpc-configuration)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure zeppelin-application-configuration
                                    common-lisp:nil
                                    ((monitoring-configuration :target-type
                                      zeppelin-monitoring-configuration
                                      :member-name "MonitoringConfiguration")
                                     (catalog-configuration :target-type
                                      catalog-configuration :member-name
                                      "CatalogConfiguration")
                                     (deploy-as-application-configuration
                                      :target-type
                                      deploy-as-application-configuration
                                      :member-name
                                      "DeployAsApplicationConfiguration")
                                     (custom-artifacts-configuration
                                      :target-type
                                      custom-artifacts-configuration-list
                                      :member-name
                                      "CustomArtifactsConfiguration"))
                                    (:shape-name
                                     "ZeppelinApplicationConfiguration"))

(smithy/sdk/shapes:define-structure
 zeppelin-application-configuration-description common-lisp:nil
 ((monitoring-configuration-description :target-type
   zeppelin-monitoring-configuration-description :required common-lisp:t
   :member-name "MonitoringConfigurationDescription")
  (catalog-configuration-description :target-type
   catalog-configuration-description :member-name
   "CatalogConfigurationDescription")
  (deploy-as-application-configuration-description :target-type
   deploy-as-application-configuration-description :member-name
   "DeployAsApplicationConfigurationDescription")
  (custom-artifacts-configuration-description :target-type
   custom-artifacts-configuration-description-list :member-name
   "CustomArtifactsConfigurationDescription"))
 (:shape-name "ZeppelinApplicationConfigurationDescription"))

(smithy/sdk/shapes:define-structure zeppelin-application-configuration-update
                                    common-lisp:nil
                                    ((monitoring-configuration-update
                                      :target-type
                                      zeppelin-monitoring-configuration-update
                                      :member-name
                                      "MonitoringConfigurationUpdate")
                                     (catalog-configuration-update :target-type
                                      catalog-configuration-update :member-name
                                      "CatalogConfigurationUpdate")
                                     (deploy-as-application-configuration-update
                                      :target-type
                                      deploy-as-application-configuration-update
                                      :member-name
                                      "DeployAsApplicationConfigurationUpdate")
                                     (custom-artifacts-configuration-update
                                      :target-type
                                      custom-artifacts-configuration-list
                                      :member-name
                                      "CustomArtifactsConfigurationUpdate"))
                                    (:shape-name
                                     "ZeppelinApplicationConfigurationUpdate"))

(smithy/sdk/shapes:define-structure zeppelin-monitoring-configuration
                                    common-lisp:nil
                                    ((log-level :target-type log-level
                                      :required common-lisp:t :member-name
                                      "LogLevel"))
                                    (:shape-name
                                     "ZeppelinMonitoringConfiguration"))

(smithy/sdk/shapes:define-structure
 zeppelin-monitoring-configuration-description common-lisp:nil
 ((log-level :target-type log-level :member-name "LogLevel"))
 (:shape-name "ZeppelinMonitoringConfigurationDescription"))

(smithy/sdk/shapes:define-structure zeppelin-monitoring-configuration-update
                                    common-lisp:nil
                                    ((log-level-update :target-type log-level
                                      :required common-lisp:t :member-name
                                      "LogLevelUpdate"))
                                    (:shape-name
                                     "ZeppelinMonitoringConfigurationUpdate"))

(smithy/sdk/shapes:define-type zip-file-content smithy/sdk/smithy-types:blob)

(smithy/sdk/operation:define-operation
 add-application-cloud-watch-logging-option :shape-name
 "AddApplicationCloudWatchLoggingOption" :input
 add-application-cloud-watch-logging-option-request :output
 add-application-cloud-watch-logging-option-response :errors
 (concurrent-modification-exception invalid-application-configuration-exception
  invalid-argument-exception invalid-request-exception
  resource-in-use-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation add-application-input :shape-name
                                       "AddApplicationInput" :input
                                       add-application-input-request :output
                                       add-application-input-response :errors
                                       (code-validation-exception
                                        concurrent-modification-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 add-application-input-processing-configuration :shape-name
 "AddApplicationInputProcessingConfiguration" :input
 add-application-input-processing-configuration-request :output
 add-application-input-processing-configuration-response :errors
 (concurrent-modification-exception invalid-argument-exception
  invalid-request-exception resource-in-use-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation add-application-output :shape-name
                                       "AddApplicationOutput" :input
                                       add-application-output-request :output
                                       add-application-output-response :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation add-application-reference-data-source
                                       :shape-name
                                       "AddApplicationReferenceDataSource"
                                       :input
                                       add-application-reference-data-source-request
                                       :output
                                       add-application-reference-data-source-response
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation add-application-vpc-configuration
                                       :shape-name
                                       "AddApplicationVpcConfiguration" :input
                                       add-application-vpc-configuration-request
                                       :output
                                       add-application-vpc-configuration-response
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-application-configuration-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (code-validation-exception
                                        concurrent-modification-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        too-many-tags-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-application-presigned-url
                                       :shape-name
                                       "CreateApplicationPresignedUrl" :input
                                       create-application-presigned-url-request
                                       :output
                                       create-application-presigned-url-response
                                       :errors
                                       (invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-application-snapshot :shape-name
                                       "CreateApplicationSnapshot" :input
                                       create-application-snapshot-request
                                       :output
                                       create-application-snapshot-response
                                       :errors
                                       (invalid-application-configuration-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (concurrent-modification-exception
                                        invalid-application-configuration-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 delete-application-cloud-watch-logging-option :shape-name
 "DeleteApplicationCloudWatchLoggingOption" :input
 delete-application-cloud-watch-logging-option-request :output
 delete-application-cloud-watch-logging-option-response :errors
 (concurrent-modification-exception invalid-application-configuration-exception
  invalid-argument-exception invalid-request-exception
  resource-in-use-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation
 delete-application-input-processing-configuration :shape-name
 "DeleteApplicationInputProcessingConfiguration" :input
 delete-application-input-processing-configuration-request :output
 delete-application-input-processing-configuration-response :errors
 (concurrent-modification-exception invalid-argument-exception
  invalid-request-exception resource-in-use-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-application-output :shape-name
                                       "DeleteApplicationOutput" :input
                                       delete-application-output-request
                                       :output
                                       delete-application-output-response
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-application-reference-data-source
                                       :shape-name
                                       "DeleteApplicationReferenceDataSource"
                                       :input
                                       delete-application-reference-data-source-request
                                       :output
                                       delete-application-reference-data-source-response
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-application-snapshot :shape-name
                                       "DeleteApplicationSnapshot" :input
                                       delete-application-snapshot-request
                                       :output
                                       delete-application-snapshot-response
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-application-vpc-configuration
                                       :shape-name
                                       "DeleteApplicationVpcConfiguration"
                                       :input
                                       delete-application-vpc-configuration-request
                                       :output
                                       delete-application-vpc-configuration-response
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-application-configuration-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-application :shape-name
                                       "DescribeApplication" :input
                                       describe-application-request :output
                                       describe-application-response :errors
                                       (invalid-argument-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-application-operation
                                       :shape-name
                                       "DescribeApplicationOperation" :input
                                       describe-application-operation-request
                                       :output
                                       describe-application-operation-response
                                       :errors
                                       (invalid-argument-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-application-snapshot
                                       :shape-name
                                       "DescribeApplicationSnapshot" :input
                                       describe-application-snapshot-request
                                       :output
                                       describe-application-snapshot-response
                                       :errors
                                       (invalid-argument-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-application-version :shape-name
                                       "DescribeApplicationVersion" :input
                                       describe-application-version-request
                                       :output
                                       describe-application-version-response
                                       :errors
                                       (invalid-argument-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation discover-input-schema :shape-name
                                       "DiscoverInputSchema" :input
                                       discover-input-schema-request :output
                                       discover-input-schema-response :errors
                                       (invalid-argument-exception
                                        invalid-request-exception
                                        resource-provisioned-throughput-exceeded-exception
                                        service-unavailable-exception
                                        unable-to-detect-schema-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-application-operations :shape-name
                                       "ListApplicationOperations" :input
                                       list-application-operations-request
                                       :output
                                       list-application-operations-response
                                       :errors
                                       (invalid-argument-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-application-snapshots :shape-name
                                       "ListApplicationSnapshots" :input
                                       list-application-snapshots-request
                                       :output
                                       list-application-snapshots-response
                                       :errors
                                       (invalid-argument-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-application-versions :shape-name
                                       "ListApplicationVersions" :input
                                       list-application-versions-request
                                       :output
                                       list-application-versions-response
                                       :errors
                                       (invalid-argument-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (invalid-request-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation rollback-application :shape-name
                                       "RollbackApplication" :input
                                       rollback-application-request :output
                                       rollback-application-response :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation start-application :shape-name
                                       "StartApplication" :input
                                       start-application-request :output
                                       start-application-response :errors
                                       (invalid-application-configuration-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-application :shape-name
                                       "StopApplication" :input
                                       stop-application-request :output
                                       stop-application-response :errors
                                       (concurrent-modification-exception
                                        invalid-application-configuration-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (code-validation-exception
                                        concurrent-modification-exception
                                        invalid-application-configuration-exception
                                        invalid-argument-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 update-application-maintenance-configuration :shape-name
 "UpdateApplicationMaintenanceConfiguration" :input
 update-application-maintenance-configuration-request :output
 update-application-maintenance-configuration-response :errors
 (concurrent-modification-exception invalid-argument-exception
  resource-in-use-exception resource-not-found-exception
  unsupported-operation-exception))
