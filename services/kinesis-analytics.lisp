(uiop/package:define-package #:pira/kinesis-analytics (:use)
                             (:export
                              #:add-application-cloud-watch-logging-option
                              #:add-application-input
                              #:add-application-input-processing-configuration
                              #:add-application-output
                              #:add-application-reference-data-source
                              #:application-code #:application-description
                              #:application-detail #:application-name
                              #:application-status #:application-summaries
                              #:application-summary #:application-update
                              #:application-version-id #:boolean-object
                              #:bucket-arn #:csvmapping-parameters
                              #:cloud-watch-logging-option
                              #:cloud-watch-logging-option-description
                              #:cloud-watch-logging-option-descriptions
                              #:cloud-watch-logging-option-update
                              #:cloud-watch-logging-option-updates
                              #:cloud-watch-logging-options
                              #:code-validation-exception
                              #:concurrent-modification-exception
                              #:create-application #:delete-application
                              #:delete-application-cloud-watch-logging-option
                              #:delete-application-input-processing-configuration
                              #:delete-application-output
                              #:delete-application-reference-data-source
                              #:describe-application #:destination-schema
                              #:discover-input-schema #:error-message
                              #:file-key #:id #:in-app-stream-name
                              #:in-app-stream-names #:in-app-table-name #:input
                              #:input-configuration #:input-configurations
                              #:input-description #:input-descriptions
                              #:input-lambda-processor
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
                              #:invalid-application-configuration-exception
                              #:invalid-argument-exception
                              #:jsonmapping-parameters #:kinesis-analytics-arn
                              #:kinesis-analytics-20150814
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
                              #:lambda-output-update #:limit-exceeded-exception
                              #:list-applications
                              #:list-applications-input-limit
                              #:list-tags-for-resource #:log-stream-arn
                              #:mapping-parameters #:output
                              #:output-description #:output-descriptions
                              #:output-update #:output-updates #:outputs
                              #:parsed-input-record #:parsed-input-record-field
                              #:parsed-input-records #:processed-input-record
                              #:processed-input-records #:raw-input-record
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
                              #:reference-data-source-updates #:resource-arn
                              #:resource-in-use-exception
                              #:resource-not-found-exception
                              #:resource-provisioned-throughput-exceeded-exception
                              #:role-arn #:s3configuration
                              #:s3reference-data-source
                              #:s3reference-data-source-description
                              #:s3reference-data-source-update
                              #:service-unavailable-exception #:source-schema
                              #:start-application #:stop-application #:tag
                              #:tag-key #:tag-keys #:tag-resource #:tag-value
                              #:tags #:timestamp #:too-many-tags-exception
                              #:unable-to-detect-schema-exception
                              #:unsupported-operation-exception
                              #:untag-resource #:update-application
                              #:kinesis-analytics-error))
(common-lisp:in-package #:pira/kinesis-analytics)

(common-lisp:define-condition kinesis-analytics-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service kinesis-analytics-20150814 :shape-name
                                   "KinesisAnalytics_20150814" :version
                                   "2015-08-14" :title
                                   "Amazon Kinesis Analytics" :operations
                                   '(add-application-cloud-watch-logging-option
                                     add-application-input
                                     add-application-input-processing-configuration
                                     add-application-output
                                     add-application-reference-data-source
                                     create-application delete-application
                                     delete-application-cloud-watch-logging-option
                                     delete-application-input-processing-configuration
                                     delete-application-output
                                     delete-application-reference-data-source
                                     describe-application discover-input-schema
                                     list-applications list-tags-for-resource
                                     start-application stop-application
                                     tag-resource untag-resource
                                     update-application)
                                   :xml-namespace
                                   '(:uri
                                     "http://analytics.kinesis.amazonaws.com/doc/2015-08-14"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Kinesis Analytics")
                                      ("arnNamespace" . "kinesisanalytics")
                                      ("cloudFormationName"
                                       . "KinesisAnalytics")
                                      ("cloudTrailEventSource"
                                       . "kinesisanalytics.amazonaws.com")
                                      ("docId" . "kinesisanalytics-2015-08-14")
                                      ("endpointPrefix" . "kinesisanalytics"))
                                     ("aws.auth#sigv4"
                                      ("name" . "kinesisanalytics"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input
 add-application-cloud-watch-logging-option-request common-lisp:nil
 ((application-name :target-type application-name :required common-lisp:t
   :member-name "ApplicationName")
  (current-application-version-id :target-type application-version-id :required
   common-lisp:t :member-name "CurrentApplicationVersionId")
  (cloud-watch-logging-option :target-type cloud-watch-logging-option :required
   common-lisp:t :member-name "CloudWatchLoggingOption"))
 (:shape-name "AddApplicationCloudWatchLoggingOptionRequest"))

(smithy/sdk/shapes:define-output
 add-application-cloud-watch-logging-option-response common-lisp:nil
 common-lisp:nil (:shape-name "AddApplicationCloudWatchLoggingOptionResponse"))

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
 common-lisp:nil
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
                                 common-lisp:nil
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
                                 common-lisp:nil common-lisp:nil
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
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AddApplicationReferenceDataSourceResponse"))

(smithy/sdk/shapes:define-type application-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-detail common-lisp:nil
                                    ((application-name :target-type
                                      application-name :required common-lisp:t
                                      :member-name "ApplicationName")
                                     (application-description :target-type
                                      application-description :member-name
                                      "ApplicationDescription")
                                     (application-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ApplicationARN")
                                     (application-status :target-type
                                      application-status :required
                                      common-lisp:t :member-name
                                      "ApplicationStatus")
                                     (create-timestamp :target-type timestamp
                                      :member-name "CreateTimestamp")
                                     (last-update-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdateTimestamp")
                                     (input-descriptions :target-type
                                      input-descriptions :member-name
                                      "InputDescriptions")
                                     (output-descriptions :target-type
                                      output-descriptions :member-name
                                      "OutputDescriptions")
                                     (reference-data-source-descriptions
                                      :target-type
                                      reference-data-source-descriptions
                                      :member-name
                                      "ReferenceDataSourceDescriptions")
                                     (cloud-watch-logging-option-descriptions
                                      :target-type
                                      cloud-watch-logging-option-descriptions
                                      :member-name
                                      "CloudWatchLoggingOptionDescriptions")
                                     (application-code :target-type
                                      application-code :member-name
                                      "ApplicationCode")
                                     (application-version-id :target-type
                                      application-version-id :required
                                      common-lisp:t :member-name
                                      "ApplicationVersionId"))
                                    (:shape-name "ApplicationDetail"))

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum application-status
    common-lisp:nil
  (:deleting "DELETING")
  (:starting "STARTING")
  (:stopping "STOPPING")
  (:ready "READY")
  (:running "RUNNING")
  (:updating "UPDATING"))

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
                                      "ApplicationStatus"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-structure application-update common-lisp:nil
                                    ((input-updates :target-type input-updates
                                      :member-name "InputUpdates")
                                     (application-code-update :target-type
                                      application-code :member-name
                                      "ApplicationCodeUpdate")
                                     (output-updates :target-type
                                      output-updates :member-name
                                      "OutputUpdates")
                                     (reference-data-source-updates
                                      :target-type
                                      reference-data-source-updates
                                      :member-name
                                      "ReferenceDataSourceUpdates")
                                     (cloud-watch-logging-option-updates
                                      :target-type
                                      cloud-watch-logging-option-updates
                                      :member-name
                                      "CloudWatchLoggingOptionUpdates"))
                                    (:shape-name "ApplicationUpdate"))

(smithy/sdk/shapes:define-type application-version-id
                               smithy/sdk/smithy-types:long)

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

(smithy/sdk/shapes:define-structure cloud-watch-logging-option common-lisp:nil
                                    ((log-stream-arn :target-type
                                      log-stream-arn :required common-lisp:t
                                      :member-name "LogStreamARN")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN"))
                                    (:shape-name "CloudWatchLoggingOption"))

(smithy/sdk/shapes:define-structure cloud-watch-logging-option-description
                                    common-lisp:nil
                                    ((cloud-watch-logging-option-id
                                      :target-type id :member-name
                                      "CloudWatchLoggingOptionId")
                                     (log-stream-arn :target-type
                                      log-stream-arn :required common-lisp:t
                                      :member-name "LogStreamARN")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN"))
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
                                      "LogStreamARNUpdate")
                                     (role-arnupdate :target-type role-arn
                                      :member-name "RoleARNUpdate"))
                                    (:shape-name
                                     "CloudWatchLoggingOptionUpdate"))

(smithy/sdk/shapes:define-list cloud-watch-logging-option-updates :member
                               cloud-watch-logging-option-update)

(smithy/sdk/shapes:define-list cloud-watch-logging-options :member
                               cloud-watch-logging-option)

(smithy/sdk/shapes:define-error code-validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "CodeValidationException")
                                (:error-code 400)
                                (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 409)
                                (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (application-description :target-type
                                  application-description :member-name
                                  "ApplicationDescription")
                                 (inputs :target-type inputs :member-name
                                  "Inputs")
                                 (outputs :target-type outputs :member-name
                                  "Outputs")
                                 (cloud-watch-logging-options :target-type
                                  cloud-watch-logging-options :member-name
                                  "CloudWatchLoggingOptions")
                                 (application-code :target-type
                                  application-code :member-name
                                  "ApplicationCode")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((application-summary :target-type
                                   application-summary :required common-lisp:t
                                   :member-name "ApplicationSummary"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input
 delete-application-cloud-watch-logging-option-request common-lisp:nil
 ((application-name :target-type application-name :required common-lisp:t
   :member-name "ApplicationName")
  (current-application-version-id :target-type application-version-id :required
   common-lisp:t :member-name "CurrentApplicationVersionId")
  (cloud-watch-logging-option-id :target-type id :required common-lisp:t
   :member-name "CloudWatchLoggingOptionId"))
 (:shape-name "DeleteApplicationCloudWatchLoggingOptionRequest"))

(smithy/sdk/shapes:define-output
 delete-application-cloud-watch-logging-option-response common-lisp:nil
 common-lisp:nil
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
 common-lisp:nil
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
                                 common-lisp:nil common-lisp:nil
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
 common-lisp:nil (:shape-name "DeleteApplicationReferenceDataSourceResponse"))

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

(smithy/sdk/shapes:define-input describe-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName"))
                                (:shape-name "DescribeApplicationRequest"))

(smithy/sdk/shapes:define-output describe-application-response common-lisp:nil
                                 ((application-detail :target-type
                                   application-detail :required common-lisp:t
                                   :member-name "ApplicationDetail"))
                                 (:shape-name "DescribeApplicationResponse"))

(smithy/sdk/shapes:define-structure destination-schema common-lisp:nil
                                    ((record-format-type :target-type
                                      record-format-type :required
                                      common-lisp:t :member-name
                                      "RecordFormatType"))
                                    (:shape-name "DestinationSchema"))

(smithy/sdk/shapes:define-input discover-input-schema-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :member-name "ResourceARN")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
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

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-key smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure input-configuration common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (input-starting-position-configuration
                                      :target-type
                                      input-starting-position-configuration
                                      :required common-lisp:t :member-name
                                      "InputStartingPositionConfiguration"))
                                    (:shape-name "InputConfiguration"))

(smithy/sdk/shapes:define-list input-configurations :member input-configuration)

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
                                      "ResourceARN")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN"))
                                    (:shape-name "InputLambdaProcessor"))

(smithy/sdk/shapes:define-structure input-lambda-processor-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "InputLambdaProcessorDescription"))

(smithy/sdk/shapes:define-structure input-lambda-processor-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :member-name
                                      "ResourceARNUpdate")
                                     (role-arnupdate :target-type role-arn
                                      :member-name "RoleARNUpdate"))
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
                                      input-parallelism-count :member-name
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
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidApplicationConfigurationException")
                                (:error-code 400)
                                (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400)
                                (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-structure jsonmapping-parameters common-lisp:nil
                                    ((record-row-path :target-type
                                      record-row-path :required common-lisp:t
                                      :member-name "RecordRowPath"))
                                    (:shape-name "JSONMappingParameters"))

(smithy/sdk/shapes:define-type kinesis-analytics-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kinesis-firehose-input common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN"))
                                    (:shape-name "KinesisFirehoseInput"))

(smithy/sdk/shapes:define-structure kinesis-firehose-input-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "KinesisFirehoseInputDescription"))

(smithy/sdk/shapes:define-structure kinesis-firehose-input-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :member-name
                                      "ResourceARNUpdate")
                                     (role-arnupdate :target-type role-arn
                                      :member-name "RoleARNUpdate"))
                                    (:shape-name "KinesisFirehoseInputUpdate"))

(smithy/sdk/shapes:define-structure kinesis-firehose-output common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN"))
                                    (:shape-name "KinesisFirehoseOutput"))

(smithy/sdk/shapes:define-structure kinesis-firehose-output-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "KinesisFirehoseOutputDescription"))

(smithy/sdk/shapes:define-structure kinesis-firehose-output-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :member-name
                                      "ResourceARNUpdate")
                                     (role-arnupdate :target-type role-arn
                                      :member-name "RoleARNUpdate"))
                                    (:shape-name "KinesisFirehoseOutputUpdate"))

(smithy/sdk/shapes:define-structure kinesis-streams-input common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN"))
                                    (:shape-name "KinesisStreamsInput"))

(smithy/sdk/shapes:define-structure kinesis-streams-input-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "KinesisStreamsInputDescription"))

(smithy/sdk/shapes:define-structure kinesis-streams-input-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :member-name
                                      "ResourceARNUpdate")
                                     (role-arnupdate :target-type role-arn
                                      :member-name "RoleARNUpdate"))
                                    (:shape-name "KinesisStreamsInputUpdate"))

(smithy/sdk/shapes:define-structure kinesis-streams-output common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN"))
                                    (:shape-name "KinesisStreamsOutput"))

(smithy/sdk/shapes:define-structure kinesis-streams-output-description
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name
                                     "KinesisStreamsOutputDescription"))

(smithy/sdk/shapes:define-structure kinesis-streams-output-update
                                    common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :member-name
                                      "ResourceARNUpdate")
                                     (role-arnupdate :target-type role-arn
                                      :member-name "RoleARNUpdate"))
                                    (:shape-name "KinesisStreamsOutputUpdate"))

(smithy/sdk/shapes:define-structure lambda-output common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceARN")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN"))
                                    (:shape-name "LambdaOutput"))

(smithy/sdk/shapes:define-structure lambda-output-description common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN"))
                                    (:shape-name "LambdaOutputDescription"))

(smithy/sdk/shapes:define-structure lambda-output-update common-lisp:nil
                                    ((resource-arnupdate :target-type
                                      resource-arn :member-name
                                      "ResourceARNUpdate")
                                     (role-arnupdate :target-type role-arn
                                      :member-name "RoleARNUpdate"))
                                    (:shape-name "LambdaOutputUpdate"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400)
                                (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-type list-applications-input-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((limit :target-type
                                  list-applications-input-limit :member-name
                                  "Limit")
                                 (exclusive-start-application-name :target-type
                                  application-name :member-name
                                  "ExclusiveStartApplicationName"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((application-summaries :target-type
                                   application-summaries :required
                                   common-lisp:t :member-name
                                   "ApplicationSummaries")
                                  (has-more-applications :target-type
                                   boolean-object :required common-lisp:t
                                   :member-name "HasMoreApplications"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  kinesis-analytics-arn :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type log-stream-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mapping-parameters common-lisp:nil
                                    ((jsonmapping-parameters :target-type
                                      jsonmapping-parameters :member-name
                                      "JSONMappingParameters")
                                     (csvmapping-parameters :target-type
                                      csvmapping-parameters :member-name
                                      "CSVMappingParameters"))
                                    (:shape-name "MappingParameters"))

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

(smithy/sdk/shapes:define-list parsed-input-record :member
                               parsed-input-record-field)

(smithy/sdk/shapes:define-type parsed-input-record-field
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parsed-input-records :member parsed-input-record)

(smithy/sdk/shapes:define-type processed-input-record
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list processed-input-records :member
                               processed-input-record)

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

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400)
                                (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-error
 resource-provisioned-throughput-exceeded-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "ResourceProvisionedThroughputExceededException")
 (:error-code 400) (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3configuration common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleARN")
                                     (bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (file-key :target-type file-key :required
                                      common-lisp:t :member-name "FileKey"))
                                    (:shape-name "S3Configuration"))

(smithy/sdk/shapes:define-structure s3reference-data-source common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (file-key :target-type file-key :required
                                      common-lisp:t :member-name "FileKey")
                                     (reference-role-arn :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "ReferenceRoleARN"))
                                    (:shape-name "S3ReferenceDataSource"))

(smithy/sdk/shapes:define-structure s3reference-data-source-description
                                    common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "BucketARN")
                                     (file-key :target-type file-key :required
                                      common-lisp:t :member-name "FileKey")
                                     (reference-role-arn :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "ReferenceRoleARN"))
                                    (:shape-name
                                     "S3ReferenceDataSourceDescription"))

(smithy/sdk/shapes:define-structure s3reference-data-source-update
                                    common-lisp:nil
                                    ((bucket-arnupdate :target-type bucket-arn
                                      :member-name "BucketARNUpdate")
                                     (file-key-update :target-type file-key
                                      :member-name "FileKeyUpdate")
                                     (reference-role-arnupdate :target-type
                                      role-arn :member-name
                                      "ReferenceRoleARNUpdate"))
                                    (:shape-name "S3ReferenceDataSourceUpdate"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503)
                                (:base-class kinesis-analytics-error))

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

(smithy/sdk/shapes:define-input start-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (input-configurations :target-type
                                  input-configurations :required common-lisp:t
                                  :member-name "InputConfigurations"))
                                (:shape-name "StartApplicationRequest"))

(smithy/sdk/shapes:define-output start-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartApplicationResponse"))

(smithy/sdk/shapes:define-input stop-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName"))
                                (:shape-name "StopApplicationRequest"))

(smithy/sdk/shapes:define-output stop-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopApplicationResponse"))

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

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400)
                                (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-error unable-to-detect-schema-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (raw-input-records :target-type
                                  raw-input-records :member-name
                                  "RawInputRecords")
                                 (processed-input-records :target-type
                                  processed-input-records :member-name
                                  "ProcessedInputRecords"))
                                (:shape-name "UnableToDetectSchemaException")
                                (:error-code 400)
                                (:base-class kinesis-analytics-error))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400)
                                (:base-class kinesis-analytics-error))

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

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (current-application-version-id :target-type
                                  application-version-id :required
                                  common-lisp:t :member-name
                                  "CurrentApplicationVersionId")
                                 (application-update :target-type
                                  application-update :required common-lisp:t
                                  :member-name "ApplicationUpdate"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/operation:define-operation
 add-application-cloud-watch-logging-option :shape-name
 "AddApplicationCloudWatchLoggingOption" :input
 add-application-cloud-watch-logging-option-request :output
 add-application-cloud-watch-logging-option-response :errors
 (concurrent-modification-exception invalid-argument-exception
  resource-in-use-exception resource-not-found-exception
  unsupported-operation-exception))

(smithy/sdk/operation:define-operation add-application-input :shape-name
                                       "AddApplicationInput" :input
                                       add-application-input-request :output
                                       add-application-input-response :errors
                                       (code-validation-exception
                                        concurrent-modification-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation
 add-application-input-processing-configuration :shape-name
 "AddApplicationInputProcessingConfiguration" :input
 add-application-input-processing-configuration-request :output
 add-application-input-processing-configuration-response :errors
 (concurrent-modification-exception invalid-argument-exception
  resource-in-use-exception resource-not-found-exception
  unsupported-operation-exception))

(smithy/sdk/operation:define-operation add-application-output :shape-name
                                       "AddApplicationOutput" :input
                                       add-application-output-request :output
                                       add-application-output-response :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

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
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (code-validation-exception
                                        concurrent-modification-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        resource-in-use-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (concurrent-modification-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation
 delete-application-cloud-watch-logging-option :shape-name
 "DeleteApplicationCloudWatchLoggingOption" :input
 delete-application-cloud-watch-logging-option-request :output
 delete-application-cloud-watch-logging-option-response :errors
 (concurrent-modification-exception invalid-argument-exception
  resource-in-use-exception resource-not-found-exception
  unsupported-operation-exception))

(smithy/sdk/operation:define-operation
 delete-application-input-processing-configuration :shape-name
 "DeleteApplicationInputProcessingConfiguration" :input
 delete-application-input-processing-configuration-request :output
 delete-application-input-processing-configuration-response :errors
 (concurrent-modification-exception invalid-argument-exception
  resource-in-use-exception resource-not-found-exception
  unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-application-output :shape-name
                                       "DeleteApplicationOutput" :input
                                       delete-application-output-request
                                       :output
                                       delete-application-output-response
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

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
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-application :shape-name
                                       "DescribeApplication" :input
                                       describe-application-request :output
                                       describe-application-response :errors
                                       (resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation discover-input-schema :shape-name
                                       "DiscoverInputSchema" :input
                                       discover-input-schema-request :output
                                       discover-input-schema-response :errors
                                       (invalid-argument-exception
                                        resource-provisioned-throughput-exceeded-exception
                                        service-unavailable-exception
                                        unable-to-detect-schema-exception))

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (concurrent-modification-exception
                                        invalid-argument-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-application :shape-name
                                       "StartApplication" :input
                                       start-application-request :output
                                       start-application-response :errors
                                       (invalid-application-configuration-exception
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation stop-application :shape-name
                                       "StopApplication" :input
                                       stop-application-request :output
                                       stop-application-response :errors
                                       (resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

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
                                        invalid-argument-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))
