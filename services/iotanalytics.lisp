(uiop/package:define-package #:pira/iotanalytics (:use)
                             (:export #:awsio-tanalytics #:activity-batch-size
                              #:activity-name #:add-attributes-activity
                              #:attribute-name #:attribute-name-mapping
                              #:attribute-names #:batch-put-message
                              #:batch-put-message-error-entries
                              #:batch-put-message-error-entry
                              #:batch-put-message-request
                              #:batch-put-message-response
                              #:bucket-key-expression #:bucket-name
                              #:cancel-pipeline-reprocessing
                              #:cancel-pipeline-reprocessing-request
                              #:cancel-pipeline-reprocessing-response #:channel
                              #:channel-activity #:channel-arn
                              #:channel-messages #:channel-name
                              #:channel-statistics #:channel-status
                              #:channel-storage #:channel-storage-summary
                              #:channel-summaries #:channel-summary #:column
                              #:column-data-type #:column-name #:columns
                              #:compute-type #:container-dataset-action
                              #:create-channel #:create-channel-request
                              #:create-channel-response #:create-dataset
                              #:create-dataset-content
                              #:create-dataset-content-request
                              #:create-dataset-content-response
                              #:create-dataset-request
                              #:create-dataset-response #:create-datastore
                              #:create-datastore-request
                              #:create-datastore-response #:create-pipeline
                              #:create-pipeline-request
                              #:create-pipeline-response
                              #:customer-managed-channel-s3storage
                              #:customer-managed-channel-s3storage-summary
                              #:customer-managed-datastore-s3storage
                              #:customer-managed-datastore-s3storage-summary
                              #:dataset #:dataset-action #:dataset-action-name
                              #:dataset-action-summaries
                              #:dataset-action-summary #:dataset-action-type
                              #:dataset-actions #:dataset-arn
                              #:dataset-content-delivery-destination
                              #:dataset-content-delivery-rule
                              #:dataset-content-delivery-rules
                              #:dataset-content-state #:dataset-content-status
                              #:dataset-content-summaries
                              #:dataset-content-summary
                              #:dataset-content-version
                              #:dataset-content-version-value #:dataset-entries
                              #:dataset-entry #:dataset-name #:dataset-status
                              #:dataset-summaries #:dataset-summary
                              #:dataset-trigger #:dataset-triggers #:datastore
                              #:datastore-activity #:datastore-arn
                              #:datastore-iot-site-wise-multi-layer-storage
                              #:datastore-iot-site-wise-multi-layer-storage-summary
                              #:datastore-name #:datastore-partition
                              #:datastore-partitions #:datastore-statistics
                              #:datastore-status #:datastore-storage
                              #:datastore-storage-summary #:datastore-summaries
                              #:datastore-summary #:delete-channel
                              #:delete-channel-request #:delete-dataset
                              #:delete-dataset-content
                              #:delete-dataset-content-request
                              #:delete-dataset-request #:delete-datastore
                              #:delete-datastore-request #:delete-pipeline
                              #:delete-pipeline-request #:delta-time
                              #:delta-time-session-window-configuration
                              #:describe-channel #:describe-channel-request
                              #:describe-channel-response #:describe-dataset
                              #:describe-dataset-request
                              #:describe-dataset-response #:describe-datastore
                              #:describe-datastore-request
                              #:describe-datastore-response
                              #:describe-logging-options
                              #:describe-logging-options-request
                              #:describe-logging-options-response
                              #:describe-pipeline #:describe-pipeline-request
                              #:describe-pipeline-response
                              #:device-registry-enrich-activity
                              #:device-shadow-enrich-activity #:double-value
                              #:end-time #:entry-name #:error-code
                              #:error-message #:estimated-resource-size
                              #:file-format-configuration #:file-format-type
                              #:filter-activity #:filter-expression
                              #:get-dataset-content
                              #:get-dataset-content-request
                              #:get-dataset-content-response
                              #:glue-configuration #:glue-database-name
                              #:glue-table-name #:image
                              #:include-statistics-flag
                              #:internal-failure-exception
                              #:invalid-request-exception
                              #:iot-events-destination-configuration
                              #:iot-events-input-name
                              #:iot-site-wise-customer-managed-datastore-s3storage
                              #:iot-site-wise-customer-managed-datastore-s3storage-summary
                              #:json-configuration #:lambda-activity
                              #:lambda-name #:late-data-rule
                              #:late-data-rule-configuration
                              #:late-data-rule-name #:late-data-rules
                              #:limit-exceeded-exception #:list-channels
                              #:list-channels-request #:list-channels-response
                              #:list-dataset-contents
                              #:list-dataset-contents-request
                              #:list-dataset-contents-response #:list-datasets
                              #:list-datasets-request #:list-datasets-response
                              #:list-datastores #:list-datastores-request
                              #:list-datastores-response #:list-pipelines
                              #:list-pipelines-request
                              #:list-pipelines-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:log-result
                              #:logging-enabled #:logging-level
                              #:logging-options #:math-activity
                              #:math-expression #:max-messages #:max-results
                              #:max-versions #:message #:message-id
                              #:message-payload #:message-payloads #:messages
                              #:next-token #:offset-seconds #:output-file-name
                              #:output-file-uri-value #:parquet-configuration
                              #:partition #:partition-attribute-name
                              #:partitions #:pipeline #:pipeline-activities
                              #:pipeline-activity #:pipeline-arn
                              #:pipeline-name #:pipeline-summaries
                              #:pipeline-summary #:presigned-uri
                              #:put-logging-options
                              #:put-logging-options-request #:query-filter
                              #:query-filters #:reason
                              #:remove-attributes-activity #:reprocessing-id
                              #:reprocessing-status #:reprocessing-summaries
                              #:reprocessing-summary
                              #:resource-already-exists-exception
                              #:resource-arn #:resource-arn2
                              #:resource-configuration
                              #:resource-not-found-exception #:retention-period
                              #:retention-period-in-days #:role-arn
                              #:run-pipeline-activity
                              #:run-pipeline-activity-request
                              #:run-pipeline-activity-response
                              #:s3destination-configuration #:s3key-prefix
                              #:s3path-channel-message
                              #:s3path-channel-messages #:sample-channel-data
                              #:sample-channel-data-request
                              #:sample-channel-data-response #:schedule
                              #:schedule-expression #:schema-definition
                              #:select-attributes-activity
                              #:service-managed-channel-s3storage
                              #:service-managed-channel-s3storage-summary
                              #:service-managed-datastore-s3storage
                              #:service-managed-datastore-s3storage-summary
                              #:service-unavailable-exception
                              #:session-timeout-in-minutes #:size-in-bytes
                              #:sql-query #:sql-query-dataset-action
                              #:start-pipeline-reprocessing
                              #:start-pipeline-reprocessing-request
                              #:start-pipeline-reprocessing-response
                              #:start-time #:string-value #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:throttling-exception
                              #:time-expression #:timestamp #:timestamp-format
                              #:timestamp-partition #:triggering-dataset
                              #:unlimited-retention-period
                              #:unlimited-versioning #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-channel
                              #:update-channel-request #:update-dataset
                              #:update-dataset-request #:update-datastore
                              #:update-datastore-request #:update-pipeline
                              #:update-pipeline-request #:variable
                              #:variable-name #:variables
                              #:versioning-configuration #:volume-size-in-gb
                              #:resource-id))
(common-lisp:in-package #:pira/iotanalytics)

(smithy/sdk/service:define-service awsio-tanalytics :shape-name
                                   "AWSIoTAnalytics" :version "2017-11-27"
                                   :title "AWS IoT Analytics" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoTAnalytics")
                                      ("arnNamespace" . "iotanalytics")
                                      ("cloudFormationName" . "IoTAnalytics")
                                      ("cloudTrailEventSource"
                                       . "iotanalytics.amazonaws.com")
                                      ("endpointPrefix" . "iotanalytics"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iotanalytics"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type activity-batch-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type activity-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure add-attributes-activity common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (attributes :target-type
                                      attribute-name-mapping :required
                                      common-lisp:t :member-name "attributes")
                                     (next :target-type activity-name
                                      :member-name "next"))
                                    (:shape-name "AddAttributesActivity"))

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map attribute-name-mapping :key attribute-name :value
                              attribute-name)

(smithy/sdk/shapes:define-list attribute-names :member attribute-name)

(smithy/sdk/shapes:define-list batch-put-message-error-entries :member
                               batch-put-message-error-entry)

(smithy/sdk/shapes:define-structure batch-put-message-error-entry
                                    common-lisp:nil
                                    ((message-id :target-type message-id
                                      :member-name "messageId")
                                     (error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "BatchPutMessageErrorEntry"))

(smithy/sdk/shapes:define-input batch-put-message-request common-lisp:nil
                                ((channel-name :target-type channel-name
                                  :required common-lisp:t :member-name
                                  "channelName")
                                 (messages :target-type messages :required
                                  common-lisp:t :member-name "messages"))
                                (:shape-name "BatchPutMessageRequest"))

(smithy/sdk/shapes:define-output batch-put-message-response common-lisp:nil
                                 ((batch-put-message-error-entries :target-type
                                   batch-put-message-error-entries :member-name
                                   "batchPutMessageErrorEntries"))
                                 (:shape-name "BatchPutMessageResponse"))

(smithy/sdk/shapes:define-type bucket-key-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-pipeline-reprocessing-request
                                common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName" :http-label common-lisp:t)
                                 (reprocessing-id :target-type reprocessing-id
                                  :required common-lisp:t :member-name
                                  "reprocessingId" :http-label common-lisp:t))
                                (:shape-name
                                 "CancelPipelineReprocessingRequest"))

(smithy/sdk/shapes:define-output cancel-pipeline-reprocessing-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelPipelineReprocessingResponse"))

(smithy/sdk/shapes:define-structure channel common-lisp:nil
                                    ((name :target-type channel-name
                                      :member-name "name")
                                     (storage :target-type channel-storage
                                      :member-name "storage")
                                     (arn :target-type channel-arn :member-name
                                      "arn")
                                     (status :target-type channel-status
                                      :member-name "status")
                                     (retention-period :target-type
                                      retention-period :member-name
                                      "retentionPeriod")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (last-message-arrival-time :target-type
                                      timestamp :member-name
                                      "lastMessageArrivalTime"))
                                    (:shape-name "Channel"))

(smithy/sdk/shapes:define-structure channel-activity common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (channel-name :target-type channel-name
                                      :required common-lisp:t :member-name
                                      "channelName")
                                     (next :target-type activity-name
                                      :member-name "next"))
                                    (:shape-name "ChannelActivity"))

(smithy/sdk/shapes:define-type channel-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure channel-messages common-lisp:nil
                                    ((s3paths :target-type
                                      s3path-channel-messages :member-name
                                      "s3Paths"))
                                    (:shape-name "ChannelMessages"))

(smithy/sdk/shapes:define-type channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure channel-statistics common-lisp:nil
                                    ((size :target-type estimated-resource-size
                                      :member-name "size"))
                                    (:shape-name "ChannelStatistics"))

(smithy/sdk/shapes:define-enum channel-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure channel-storage common-lisp:nil
                                    ((service-managed-s3 :target-type
                                      service-managed-channel-s3storage
                                      :member-name "serviceManagedS3")
                                     (customer-managed-s3 :target-type
                                      customer-managed-channel-s3storage
                                      :member-name "customerManagedS3"))
                                    (:shape-name "ChannelStorage"))

(smithy/sdk/shapes:define-structure channel-storage-summary common-lisp:nil
                                    ((service-managed-s3 :target-type
                                      service-managed-channel-s3storage-summary
                                      :member-name "serviceManagedS3")
                                     (customer-managed-s3 :target-type
                                      customer-managed-channel-s3storage-summary
                                      :member-name "customerManagedS3"))
                                    (:shape-name "ChannelStorageSummary"))

(smithy/sdk/shapes:define-list channel-summaries :member channel-summary)

(smithy/sdk/shapes:define-structure channel-summary common-lisp:nil
                                    ((channel-name :target-type channel-name
                                      :member-name "channelName")
                                     (channel-storage :target-type
                                      channel-storage-summary :member-name
                                      "channelStorage")
                                     (status :target-type channel-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (last-message-arrival-time :target-type
                                      timestamp :member-name
                                      "lastMessageArrivalTime"))
                                    (:shape-name "ChannelSummary"))

(smithy/sdk/shapes:define-structure column common-lisp:nil
                                    ((name :target-type column-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type column-data-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "Column"))

(smithy/sdk/shapes:define-type column-data-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list columns :member column)

(smithy/sdk/shapes:define-enum compute-type
    common-lisp:nil
  (:acu-1 "ACU_1")
  (:acu-2 "ACU_2"))

(smithy/sdk/shapes:define-structure container-dataset-action common-lisp:nil
                                    ((image :target-type image :required
                                      common-lisp:t :member-name "image")
                                     (execution-role-arn :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "executionRoleArn")
                                     (resource-configuration :target-type
                                      resource-configuration :required
                                      common-lisp:t :member-name
                                      "resourceConfiguration")
                                     (variables :target-type variables
                                      :member-name "variables"))
                                    (:shape-name "ContainerDatasetAction"))

(smithy/sdk/shapes:define-input create-channel-request common-lisp:nil
                                ((channel-name :target-type channel-name
                                  :required common-lisp:t :member-name
                                  "channelName")
                                 (channel-storage :target-type channel-storage
                                  :member-name "channelStorage")
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "retentionPeriod")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateChannelRequest"))

(smithy/sdk/shapes:define-output create-channel-response common-lisp:nil
                                 ((channel-name :target-type channel-name
                                   :member-name "channelName")
                                  (channel-arn :target-type channel-arn
                                   :member-name "channelArn")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "retentionPeriod"))
                                 (:shape-name "CreateChannelResponse"))

(smithy/sdk/shapes:define-input create-dataset-content-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "datasetName" :http-label common-lisp:t)
                                 (version-id :target-type
                                  dataset-content-version :member-name
                                  "versionId"))
                                (:shape-name "CreateDatasetContentRequest"))

(smithy/sdk/shapes:define-output create-dataset-content-response
                                 common-lisp:nil
                                 ((version-id :target-type
                                   dataset-content-version :member-name
                                   "versionId"))
                                 (:shape-name "CreateDatasetContentResponse"))

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "datasetName")
                                 (actions :target-type dataset-actions
                                  :required common-lisp:t :member-name
                                  "actions")
                                 (triggers :target-type dataset-triggers
                                  :member-name "triggers")
                                 (content-delivery-rules :target-type
                                  dataset-content-delivery-rules :member-name
                                  "contentDeliveryRules")
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "retentionPeriod")
                                 (versioning-configuration :target-type
                                  versioning-configuration :member-name
                                  "versioningConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (late-data-rules :target-type late-data-rules
                                  :member-name "lateDataRules"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((dataset-name :target-type dataset-name
                                   :member-name "datasetName")
                                  (dataset-arn :target-type dataset-arn
                                   :member-name "datasetArn")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "retentionPeriod"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-datastore-request common-lisp:nil
                                ((datastore-name :target-type datastore-name
                                  :required common-lisp:t :member-name
                                  "datastoreName")
                                 (datastore-storage :target-type
                                  datastore-storage :member-name
                                  "datastoreStorage")
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "retentionPeriod")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (file-format-configuration :target-type
                                  file-format-configuration :member-name
                                  "fileFormatConfiguration")
                                 (datastore-partitions :target-type
                                  datastore-partitions :member-name
                                  "datastorePartitions"))
                                (:shape-name "CreateDatastoreRequest"))

(smithy/sdk/shapes:define-output create-datastore-response common-lisp:nil
                                 ((datastore-name :target-type datastore-name
                                   :member-name "datastoreName")
                                  (datastore-arn :target-type datastore-arn
                                   :member-name "datastoreArn")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "retentionPeriod"))
                                 (:shape-name "CreateDatastoreResponse"))

(smithy/sdk/shapes:define-input create-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName")
                                 (pipeline-activities :target-type
                                  pipeline-activities :required common-lisp:t
                                  :member-name "pipelineActivities")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreatePipelineRequest"))

(smithy/sdk/shapes:define-output create-pipeline-response common-lisp:nil
                                 ((pipeline-name :target-type pipeline-name
                                   :member-name "pipelineName")
                                  (pipeline-arn :target-type pipeline-arn
                                   :member-name "pipelineArn"))
                                 (:shape-name "CreatePipelineResponse"))

(smithy/sdk/shapes:define-structure customer-managed-channel-s3storage
                                    common-lisp:nil
                                    ((bucket :target-type bucket-name :required
                                      common-lisp:t :member-name "bucket")
                                     (key-prefix :target-type s3key-prefix
                                      :member-name "keyPrefix")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name
                                     "CustomerManagedChannelS3Storage"))

(smithy/sdk/shapes:define-structure customer-managed-channel-s3storage-summary
                                    common-lisp:nil
                                    ((bucket :target-type bucket-name
                                      :member-name "bucket")
                                     (key-prefix :target-type s3key-prefix
                                      :member-name "keyPrefix")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn"))
                                    (:shape-name
                                     "CustomerManagedChannelS3StorageSummary"))

(smithy/sdk/shapes:define-structure customer-managed-datastore-s3storage
                                    common-lisp:nil
                                    ((bucket :target-type bucket-name :required
                                      common-lisp:t :member-name "bucket")
                                     (key-prefix :target-type s3key-prefix
                                      :member-name "keyPrefix")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name
                                     "CustomerManagedDatastoreS3Storage"))

(smithy/sdk/shapes:define-structure
 customer-managed-datastore-s3storage-summary common-lisp:nil
 ((bucket :target-type bucket-name :member-name "bucket")
  (key-prefix :target-type s3key-prefix :member-name "keyPrefix")
  (role-arn :target-type role-arn :member-name "roleArn"))
 (:shape-name "CustomerManagedDatastoreS3StorageSummary"))

(smithy/sdk/shapes:define-structure dataset common-lisp:nil
                                    ((name :target-type dataset-name
                                      :member-name "name")
                                     (arn :target-type dataset-arn :member-name
                                      "arn")
                                     (actions :target-type dataset-actions
                                      :member-name "actions")
                                     (triggers :target-type dataset-triggers
                                      :member-name "triggers")
                                     (content-delivery-rules :target-type
                                      dataset-content-delivery-rules
                                      :member-name "contentDeliveryRules")
                                     (status :target-type dataset-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (retention-period :target-type
                                      retention-period :member-name
                                      "retentionPeriod")
                                     (versioning-configuration :target-type
                                      versioning-configuration :member-name
                                      "versioningConfiguration")
                                     (late-data-rules :target-type
                                      late-data-rules :member-name
                                      "lateDataRules"))
                                    (:shape-name "Dataset"))

(smithy/sdk/shapes:define-structure dataset-action common-lisp:nil
                                    ((action-name :target-type
                                      dataset-action-name :member-name
                                      "actionName")
                                     (query-action :target-type
                                      sql-query-dataset-action :member-name
                                      "queryAction")
                                     (container-action :target-type
                                      container-dataset-action :member-name
                                      "containerAction"))
                                    (:shape-name "DatasetAction"))

(smithy/sdk/shapes:define-type dataset-action-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dataset-action-summaries :member
                               dataset-action-summary)

(smithy/sdk/shapes:define-structure dataset-action-summary common-lisp:nil
                                    ((action-name :target-type
                                      dataset-action-name :member-name
                                      "actionName")
                                     (action-type :target-type
                                      dataset-action-type :member-name
                                      "actionType"))
                                    (:shape-name "DatasetActionSummary"))

(smithy/sdk/shapes:define-enum dataset-action-type
    common-lisp:nil
  (:query "QUERY")
  (:container "CONTAINER"))

(smithy/sdk/shapes:define-list dataset-actions :member dataset-action)

(smithy/sdk/shapes:define-type dataset-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dataset-content-delivery-destination
                                    common-lisp:nil
                                    ((iot-events-destination-configuration
                                      :target-type
                                      iot-events-destination-configuration
                                      :member-name
                                      "iotEventsDestinationConfiguration")
                                     (s3destination-configuration :target-type
                                      s3destination-configuration :member-name
                                      "s3DestinationConfiguration"))
                                    (:shape-name
                                     "DatasetContentDeliveryDestination"))

(smithy/sdk/shapes:define-structure dataset-content-delivery-rule
                                    common-lisp:nil
                                    ((entry-name :target-type entry-name
                                      :member-name "entryName")
                                     (destination :target-type
                                      dataset-content-delivery-destination
                                      :required common-lisp:t :member-name
                                      "destination"))
                                    (:shape-name "DatasetContentDeliveryRule"))

(smithy/sdk/shapes:define-list dataset-content-delivery-rules :member
                               dataset-content-delivery-rule)

(smithy/sdk/shapes:define-enum dataset-content-state
    common-lisp:nil
  (:creating "CREATING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure dataset-content-status common-lisp:nil
                                    ((state :target-type dataset-content-state
                                      :member-name "state")
                                     (reason :target-type reason :member-name
                                      "reason"))
                                    (:shape-name "DatasetContentStatus"))

(smithy/sdk/shapes:define-list dataset-content-summaries :member
                               dataset-content-summary)

(smithy/sdk/shapes:define-structure dataset-content-summary common-lisp:nil
                                    ((version :target-type
                                      dataset-content-version :member-name
                                      "version")
                                     (status :target-type
                                      dataset-content-status :member-name
                                      "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (schedule-time :target-type timestamp
                                      :member-name "scheduleTime")
                                     (completion-time :target-type timestamp
                                      :member-name "completionTime"))
                                    (:shape-name "DatasetContentSummary"))

(smithy/sdk/shapes:define-type dataset-content-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dataset-content-version-value
                                    common-lisp:nil
                                    ((dataset-name :target-type dataset-name
                                      :required common-lisp:t :member-name
                                      "datasetName"))
                                    (:shape-name "DatasetContentVersionValue"))

(smithy/sdk/shapes:define-list dataset-entries :member dataset-entry)

(smithy/sdk/shapes:define-structure dataset-entry common-lisp:nil
                                    ((entry-name :target-type entry-name
                                      :member-name "entryName")
                                     (data-uri :target-type presigned-uri
                                      :member-name "dataURI"))
                                    (:shape-name "DatasetEntry"))

(smithy/sdk/shapes:define-type dataset-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dataset-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-list dataset-summaries :member dataset-summary)

(smithy/sdk/shapes:define-structure dataset-summary common-lisp:nil
                                    ((dataset-name :target-type dataset-name
                                      :member-name "datasetName")
                                     (status :target-type dataset-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (triggers :target-type dataset-triggers
                                      :member-name "triggers")
                                     (actions :target-type
                                      dataset-action-summaries :member-name
                                      "actions"))
                                    (:shape-name "DatasetSummary"))

(smithy/sdk/shapes:define-structure dataset-trigger common-lisp:nil
                                    ((schedule :target-type schedule
                                      :member-name "schedule")
                                     (dataset :target-type triggering-dataset
                                      :member-name "dataset"))
                                    (:shape-name "DatasetTrigger"))

(smithy/sdk/shapes:define-list dataset-triggers :member dataset-trigger)

(smithy/sdk/shapes:define-structure datastore common-lisp:nil
                                    ((name :target-type datastore-name
                                      :member-name "name")
                                     (storage :target-type datastore-storage
                                      :member-name "storage")
                                     (arn :target-type datastore-arn
                                      :member-name "arn")
                                     (status :target-type datastore-status
                                      :member-name "status")
                                     (retention-period :target-type
                                      retention-period :member-name
                                      "retentionPeriod")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (last-message-arrival-time :target-type
                                      timestamp :member-name
                                      "lastMessageArrivalTime")
                                     (file-format-configuration :target-type
                                      file-format-configuration :member-name
                                      "fileFormatConfiguration")
                                     (datastore-partitions :target-type
                                      datastore-partitions :member-name
                                      "datastorePartitions"))
                                    (:shape-name "Datastore"))

(smithy/sdk/shapes:define-structure datastore-activity common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (datastore-name :target-type
                                      datastore-name :required common-lisp:t
                                      :member-name "datastoreName"))
                                    (:shape-name "DatastoreActivity"))

(smithy/sdk/shapes:define-type datastore-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure datastore-iot-site-wise-multi-layer-storage
                                    common-lisp:nil
                                    ((customer-managed-s3storage :target-type
                                      iot-site-wise-customer-managed-datastore-s3storage
                                      :required common-lisp:t :member-name
                                      "customerManagedS3Storage"))
                                    (:shape-name
                                     "DatastoreIotSiteWiseMultiLayerStorage"))

(smithy/sdk/shapes:define-structure
 datastore-iot-site-wise-multi-layer-storage-summary common-lisp:nil
 ((customer-managed-s3storage :target-type
   iot-site-wise-customer-managed-datastore-s3storage-summary :member-name
   "customerManagedS3Storage"))
 (:shape-name "DatastoreIotSiteWiseMultiLayerStorageSummary"))

(smithy/sdk/shapes:define-type datastore-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure datastore-partition common-lisp:nil
                                    ((attribute-partition :target-type
                                      partition :member-name
                                      "attributePartition")
                                     (timestamp-partition :target-type
                                      timestamp-partition :member-name
                                      "timestampPartition"))
                                    (:shape-name "DatastorePartition"))

(smithy/sdk/shapes:define-structure datastore-partitions common-lisp:nil
                                    ((partitions :target-type partitions
                                      :member-name "partitions"))
                                    (:shape-name "DatastorePartitions"))

(smithy/sdk/shapes:define-structure datastore-statistics common-lisp:nil
                                    ((size :target-type estimated-resource-size
                                      :member-name "size"))
                                    (:shape-name "DatastoreStatistics"))

(smithy/sdk/shapes:define-enum datastore-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-union datastore-storage common-lisp:nil
                                ((service-managed-s3 :target-type
                                  service-managed-datastore-s3storage
                                  :member-name "serviceManagedS3")
                                 (customer-managed-s3 :target-type
                                  customer-managed-datastore-s3storage
                                  :member-name "customerManagedS3")
                                 (iot-site-wise-multi-layer-storage
                                  :target-type
                                  datastore-iot-site-wise-multi-layer-storage
                                  :member-name "iotSiteWiseMultiLayerStorage"))
                                (:shape-name "DatastoreStorage"))

(smithy/sdk/shapes:define-structure datastore-storage-summary common-lisp:nil
                                    ((service-managed-s3 :target-type
                                      service-managed-datastore-s3storage-summary
                                      :member-name "serviceManagedS3")
                                     (customer-managed-s3 :target-type
                                      customer-managed-datastore-s3storage-summary
                                      :member-name "customerManagedS3")
                                     (iot-site-wise-multi-layer-storage
                                      :target-type
                                      datastore-iot-site-wise-multi-layer-storage-summary
                                      :member-name
                                      "iotSiteWiseMultiLayerStorage"))
                                    (:shape-name "DatastoreStorageSummary"))

(smithy/sdk/shapes:define-list datastore-summaries :member datastore-summary)

(smithy/sdk/shapes:define-structure datastore-summary common-lisp:nil
                                    ((datastore-name :target-type
                                      datastore-name :member-name
                                      "datastoreName")
                                     (datastore-storage :target-type
                                      datastore-storage-summary :member-name
                                      "datastoreStorage")
                                     (status :target-type datastore-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (last-message-arrival-time :target-type
                                      timestamp :member-name
                                      "lastMessageArrivalTime")
                                     (file-format-type :target-type
                                      file-format-type :member-name
                                      "fileFormatType")
                                     (datastore-partitions :target-type
                                      datastore-partitions :member-name
                                      "datastorePartitions"))
                                    (:shape-name "DatastoreSummary"))

(smithy/sdk/shapes:define-input delete-channel-request common-lisp:nil
                                ((channel-name :target-type channel-name
                                  :required common-lisp:t :member-name
                                  "channelName" :http-label common-lisp:t))
                                (:shape-name "DeleteChannelRequest"))

(smithy/sdk/shapes:define-input delete-dataset-content-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "datasetName" :http-label common-lisp:t)
                                 (version-id :target-type
                                  dataset-content-version :member-name
                                  "versionId" :http-query "versionId"))
                                (:shape-name "DeleteDatasetContentRequest"))

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "datasetName" :http-label common-lisp:t))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-input delete-datastore-request common-lisp:nil
                                ((datastore-name :target-type datastore-name
                                  :required common-lisp:t :member-name
                                  "datastoreName" :http-label common-lisp:t))
                                (:shape-name "DeleteDatastoreRequest"))

(smithy/sdk/shapes:define-input delete-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName" :http-label common-lisp:t))
                                (:shape-name "DeletePipelineRequest"))

(smithy/sdk/shapes:define-structure delta-time common-lisp:nil
                                    ((offset-seconds :target-type
                                      offset-seconds :required common-lisp:t
                                      :member-name "offsetSeconds")
                                     (time-expression :target-type
                                      time-expression :required common-lisp:t
                                      :member-name "timeExpression"))
                                    (:shape-name "DeltaTime"))

(smithy/sdk/shapes:define-structure delta-time-session-window-configuration
                                    common-lisp:nil
                                    ((timeout-in-minutes :target-type
                                      session-timeout-in-minutes :required
                                      common-lisp:t :member-name
                                      "timeoutInMinutes"))
                                    (:shape-name
                                     "DeltaTimeSessionWindowConfiguration"))

(smithy/sdk/shapes:define-input describe-channel-request common-lisp:nil
                                ((channel-name :target-type channel-name
                                  :required common-lisp:t :member-name
                                  "channelName" :http-label common-lisp:t)
                                 (include-statistics :target-type
                                  include-statistics-flag :member-name
                                  "includeStatistics" :http-query
                                  "includeStatistics"))
                                (:shape-name "DescribeChannelRequest"))

(smithy/sdk/shapes:define-output describe-channel-response common-lisp:nil
                                 ((channel :target-type channel :member-name
                                   "channel")
                                  (statistics :target-type channel-statistics
                                   :member-name "statistics"))
                                 (:shape-name "DescribeChannelResponse"))

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "datasetName" :http-label common-lisp:t))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((dataset :target-type dataset :member-name
                                   "dataset"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input describe-datastore-request common-lisp:nil
                                ((datastore-name :target-type datastore-name
                                  :required common-lisp:t :member-name
                                  "datastoreName" :http-label common-lisp:t)
                                 (include-statistics :target-type
                                  include-statistics-flag :member-name
                                  "includeStatistics" :http-query
                                  "includeStatistics"))
                                (:shape-name "DescribeDatastoreRequest"))

(smithy/sdk/shapes:define-output describe-datastore-response common-lisp:nil
                                 ((datastore :target-type datastore
                                   :member-name "datastore")
                                  (statistics :target-type datastore-statistics
                                   :member-name "statistics"))
                                 (:shape-name "DescribeDatastoreResponse"))

(smithy/sdk/shapes:define-input describe-logging-options-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "DescribeLoggingOptionsRequest"))

(smithy/sdk/shapes:define-output describe-logging-options-response
                                 common-lisp:nil
                                 ((logging-options :target-type logging-options
                                   :member-name "loggingOptions"))
                                 (:shape-name "DescribeLoggingOptionsResponse"))

(smithy/sdk/shapes:define-input describe-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName" :http-label common-lisp:t))
                                (:shape-name "DescribePipelineRequest"))

(smithy/sdk/shapes:define-output describe-pipeline-response common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "pipeline"))
                                 (:shape-name "DescribePipelineResponse"))

(smithy/sdk/shapes:define-structure device-registry-enrich-activity
                                    common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (attribute :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (thing-name :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "thingName")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (next :target-type activity-name
                                      :member-name "next"))
                                    (:shape-name
                                     "DeviceRegistryEnrichActivity"))

(smithy/sdk/shapes:define-structure device-shadow-enrich-activity
                                    common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (attribute :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (thing-name :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "thingName")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (next :target-type activity-name
                                      :member-name "next"))
                                    (:shape-name "DeviceShadowEnrichActivity"))

(smithy/sdk/shapes:define-type double-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type end-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type entry-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure estimated-resource-size common-lisp:nil
                                    ((estimated-size-in-bytes :target-type
                                      size-in-bytes :member-name
                                      "estimatedSizeInBytes")
                                     (estimated-on :target-type timestamp
                                      :member-name "estimatedOn"))
                                    (:shape-name "EstimatedResourceSize"))

(smithy/sdk/shapes:define-structure file-format-configuration common-lisp:nil
                                    ((json-configuration :target-type
                                      json-configuration :member-name
                                      "jsonConfiguration")
                                     (parquet-configuration :target-type
                                      parquet-configuration :member-name
                                      "parquetConfiguration"))
                                    (:shape-name "FileFormatConfiguration"))

(smithy/sdk/shapes:define-enum file-format-type
    common-lisp:nil
  (:json "JSON")
  (:parquet "PARQUET"))

(smithy/sdk/shapes:define-structure filter-activity common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (filter :target-type filter-expression
                                      :required common-lisp:t :member-name
                                      "filter")
                                     (next :target-type activity-name
                                      :member-name "next"))
                                    (:shape-name "FilterActivity"))

(smithy/sdk/shapes:define-type filter-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-dataset-content-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "datasetName" :http-label common-lisp:t)
                                 (version-id :target-type
                                  dataset-content-version :member-name
                                  "versionId" :http-query "versionId"))
                                (:shape-name "GetDatasetContentRequest"))

(smithy/sdk/shapes:define-output get-dataset-content-response common-lisp:nil
                                 ((entries :target-type dataset-entries
                                   :member-name "entries")
                                  (timestamp :target-type timestamp
                                   :member-name "timestamp")
                                  (status :target-type dataset-content-status
                                   :member-name "status"))
                                 (:shape-name "GetDatasetContentResponse"))

(smithy/sdk/shapes:define-structure glue-configuration common-lisp:nil
                                    ((table-name :target-type glue-table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (database-name :target-type
                                      glue-database-name :required
                                      common-lisp:t :member-name
                                      "databaseName"))
                                    (:shape-name "GlueConfiguration"))

(smithy/sdk/shapes:define-type glue-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type glue-table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type include-statistics-flag
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure iot-events-destination-configuration
                                    common-lisp:nil
                                    ((input-name :target-type
                                      iot-events-input-name :required
                                      common-lisp:t :member-name "inputName")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name
                                     "IotEventsDestinationConfiguration"))

(smithy/sdk/shapes:define-type iot-events-input-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 iot-site-wise-customer-managed-datastore-s3storage common-lisp:nil
 ((bucket :target-type bucket-name :required common-lisp:t :member-name
   "bucket")
  (key-prefix :target-type s3key-prefix :member-name "keyPrefix"))
 (:shape-name "IotSiteWiseCustomerManagedDatastoreS3Storage"))

(smithy/sdk/shapes:define-structure
 iot-site-wise-customer-managed-datastore-s3storage-summary common-lisp:nil
 ((bucket :target-type bucket-name :member-name "bucket")
  (key-prefix :target-type s3key-prefix :member-name "keyPrefix"))
 (:shape-name "IotSiteWiseCustomerManagedDatastoreS3StorageSummary"))

(smithy/sdk/shapes:define-structure json-configuration common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "JsonConfiguration"))

(smithy/sdk/shapes:define-structure lambda-activity common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (lambda-name :target-type lambda-name
                                      :required common-lisp:t :member-name
                                      "lambdaName")
                                     (batch-size :target-type
                                      activity-batch-size :required
                                      common-lisp:t :member-name "batchSize")
                                     (next :target-type activity-name
                                      :member-name "next"))
                                    (:shape-name "LambdaActivity"))

(smithy/sdk/shapes:define-type lambda-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure late-data-rule common-lisp:nil
                                    ((rule-name :target-type
                                      late-data-rule-name :member-name
                                      "ruleName")
                                     (rule-configuration :target-type
                                      late-data-rule-configuration :required
                                      common-lisp:t :member-name
                                      "ruleConfiguration"))
                                    (:shape-name "LateDataRule"))

(smithy/sdk/shapes:define-structure late-data-rule-configuration
                                    common-lisp:nil
                                    ((delta-time-session-window-configuration
                                      :target-type
                                      delta-time-session-window-configuration
                                      :member-name
                                      "deltaTimeSessionWindowConfiguration"))
                                    (:shape-name "LateDataRuleConfiguration"))

(smithy/sdk/shapes:define-type late-data-rule-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list late-data-rules :member late-data-rule)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 410))

(smithy/sdk/shapes:define-input list-channels-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListChannelsRequest"))

(smithy/sdk/shapes:define-output list-channels-response common-lisp:nil
                                 ((channel-summaries :target-type
                                   channel-summaries :member-name
                                   "channelSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListChannelsResponse"))

(smithy/sdk/shapes:define-input list-dataset-contents-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "datasetName" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (scheduled-on-or-after :target-type timestamp
                                  :member-name "scheduledOnOrAfter" :http-query
                                  "scheduledOnOrAfter")
                                 (scheduled-before :target-type timestamp
                                  :member-name "scheduledBefore" :http-query
                                  "scheduledBefore"))
                                (:shape-name "ListDatasetContentsRequest"))

(smithy/sdk/shapes:define-output list-dataset-contents-response common-lisp:nil
                                 ((dataset-content-summaries :target-type
                                   dataset-content-summaries :member-name
                                   "datasetContentSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatasetContentsResponse"))

(smithy/sdk/shapes:define-input list-datasets-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDatasetsRequest"))

(smithy/sdk/shapes:define-output list-datasets-response common-lisp:nil
                                 ((dataset-summaries :target-type
                                   dataset-summaries :member-name
                                   "datasetSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatasetsResponse"))

(smithy/sdk/shapes:define-input list-datastores-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDatastoresRequest"))

(smithy/sdk/shapes:define-output list-datastores-response common-lisp:nil
                                 ((datastore-summaries :target-type
                                   datastore-summaries :member-name
                                   "datastoreSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatastoresResponse"))

(smithy/sdk/shapes:define-input list-pipelines-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPipelinesRequest"))

(smithy/sdk/shapes:define-output list-pipelines-response common-lisp:nil
                                 ((pipeline-summaries :target-type
                                   pipeline-summaries :member-name
                                   "pipelineSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPipelinesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-query "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type log-result smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type logging-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum logging-level
    common-lisp:nil
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure logging-options common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (level :target-type logging-level
                                      :required common-lisp:t :member-name
                                      "level")
                                     (enabled :target-type logging-enabled
                                      :required common-lisp:t :member-name
                                      "enabled"))
                                    (:shape-name "LoggingOptions"))

(smithy/sdk/shapes:define-structure math-activity common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (attribute :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "attribute")
                                     (math :target-type math-expression
                                      :required common-lisp:t :member-name
                                      "math")
                                     (next :target-type activity-name
                                      :member-name "next"))
                                    (:shape-name "MathActivity"))

(smithy/sdk/shapes:define-type math-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-messages smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-versions smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((message-id :target-type message-id
                                      :required common-lisp:t :member-name
                                      "messageId")
                                     (payload :target-type message-payload
                                      :required common-lisp:t :member-name
                                      "payload"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-payload smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list message-payloads :member message-payload)

(smithy/sdk/shapes:define-list messages :member message)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type offset-seconds smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type output-file-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure output-file-uri-value common-lisp:nil
                                    ((file-name :target-type output-file-name
                                      :required common-lisp:t :member-name
                                      "fileName"))
                                    (:shape-name "OutputFileUriValue"))

(smithy/sdk/shapes:define-structure parquet-configuration common-lisp:nil
                                    ((schema-definition :target-type
                                      schema-definition :member-name
                                      "schemaDefinition"))
                                    (:shape-name "ParquetConfiguration"))

(smithy/sdk/shapes:define-structure partition common-lisp:nil
                                    ((attribute-name :target-type
                                      partition-attribute-name :required
                                      common-lisp:t :member-name
                                      "attributeName"))
                                    (:shape-name "Partition"))

(smithy/sdk/shapes:define-type partition-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list partitions :member datastore-partition)

(smithy/sdk/shapes:define-structure pipeline common-lisp:nil
                                    ((name :target-type pipeline-name
                                      :member-name "name")
                                     (arn :target-type pipeline-arn
                                      :member-name "arn")
                                     (activities :target-type
                                      pipeline-activities :member-name
                                      "activities")
                                     (reprocessing-summaries :target-type
                                      reprocessing-summaries :member-name
                                      "reprocessingSummaries")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime"))
                                    (:shape-name "Pipeline"))

(smithy/sdk/shapes:define-list pipeline-activities :member pipeline-activity)

(smithy/sdk/shapes:define-structure pipeline-activity common-lisp:nil
                                    ((channel :target-type channel-activity
                                      :member-name "channel")
                                     (lambda :target-type lambda-activity
                                      :member-name "lambda")
                                     (datastore :target-type datastore-activity
                                      :member-name "datastore")
                                     (add-attributes :target-type
                                      add-attributes-activity :member-name
                                      "addAttributes")
                                     (remove-attributes :target-type
                                      remove-attributes-activity :member-name
                                      "removeAttributes")
                                     (select-attributes :target-type
                                      select-attributes-activity :member-name
                                      "selectAttributes")
                                     (filter :target-type filter-activity
                                      :member-name "filter")
                                     (math :target-type math-activity
                                      :member-name "math")
                                     (device-registry-enrich :target-type
                                      device-registry-enrich-activity
                                      :member-name "deviceRegistryEnrich")
                                     (device-shadow-enrich :target-type
                                      device-shadow-enrich-activity
                                      :member-name "deviceShadowEnrich"))
                                    (:shape-name "PipelineActivity"))

(smithy/sdk/shapes:define-type pipeline-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pipeline-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pipeline-summaries :member pipeline-summary)

(smithy/sdk/shapes:define-structure pipeline-summary common-lisp:nil
                                    ((pipeline-name :target-type pipeline-name
                                      :member-name "pipelineName")
                                     (reprocessing-summaries :target-type
                                      reprocessing-summaries :member-name
                                      "reprocessingSummaries")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime"))
                                    (:shape-name "PipelineSummary"))

(smithy/sdk/shapes:define-type presigned-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-logging-options-request common-lisp:nil
                                ((logging-options :target-type logging-options
                                  :required common-lisp:t :member-name
                                  "loggingOptions"))
                                (:shape-name "PutLoggingOptionsRequest"))

(smithy/sdk/shapes:define-structure query-filter common-lisp:nil
                                    ((delta-time :target-type delta-time
                                      :member-name "deltaTime"))
                                    (:shape-name "QueryFilter"))

(smithy/sdk/shapes:define-list query-filters :member query-filter)

(smithy/sdk/shapes:define-type reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure remove-attributes-activity common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (attributes :target-type attribute-names
                                      :required common-lisp:t :member-name
                                      "attributes")
                                     (next :target-type activity-name
                                      :member-name "next"))
                                    (:shape-name "RemoveAttributesActivity"))

(smithy/sdk/shapes:define-type reprocessing-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum reprocessing-status
    common-lisp:nil
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:cancelled "CANCELLED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list reprocessing-summaries :member
                               reprocessing-summary)

(smithy/sdk/shapes:define-structure reprocessing-summary common-lisp:nil
                                    ((id :target-type reprocessing-id
                                      :member-name "id")
                                     (status :target-type reprocessing-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime"))
                                    (:shape-name "ReprocessingSummary"))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-arn :target-type resource-arn2
                                  :member-name "resourceArn"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-configuration common-lisp:nil
                                    ((compute-type :target-type compute-type
                                      :required common-lisp:t :member-name
                                      "computeType")
                                     (volume-size-in-gb :target-type
                                      volume-size-in-gb :required common-lisp:t
                                      :member-name "volumeSizeInGB"))
                                    (:shape-name "ResourceConfiguration"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure retention-period common-lisp:nil
                                    ((unlimited :target-type
                                      unlimited-retention-period :member-name
                                      "unlimited")
                                     (number-of-days :target-type
                                      retention-period-in-days :member-name
                                      "numberOfDays"))
                                    (:shape-name "RetentionPeriod"))

(smithy/sdk/shapes:define-type retention-period-in-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input run-pipeline-activity-request common-lisp:nil
                                ((pipeline-activity :target-type
                                  pipeline-activity :required common-lisp:t
                                  :member-name "pipelineActivity")
                                 (payloads :target-type message-payloads
                                  :required common-lisp:t :member-name
                                  "payloads"))
                                (:shape-name "RunPipelineActivityRequest"))

(smithy/sdk/shapes:define-output run-pipeline-activity-response common-lisp:nil
                                 ((payloads :target-type message-payloads
                                   :member-name "payloads")
                                  (log-result :target-type log-result
                                   :member-name "logResult"))
                                 (:shape-name "RunPipelineActivityResponse"))

(smithy/sdk/shapes:define-structure s3destination-configuration common-lisp:nil
                                    ((bucket :target-type bucket-name :required
                                      common-lisp:t :member-name "bucket")
                                     (key :target-type bucket-key-expression
                                      :required common-lisp:t :member-name
                                      "key")
                                     (glue-configuration :target-type
                                      glue-configuration :member-name
                                      "glueConfiguration")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "S3DestinationConfiguration"))

(smithy/sdk/shapes:define-type s3key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3path-channel-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list s3path-channel-messages :member
                               s3path-channel-message)

(smithy/sdk/shapes:define-input sample-channel-data-request common-lisp:nil
                                ((channel-name :target-type channel-name
                                  :required common-lisp:t :member-name
                                  "channelName" :http-label common-lisp:t)
                                 (max-messages :target-type max-messages
                                  :member-name "maxMessages" :http-query
                                  "maxMessages")
                                 (start-time :target-type start-time
                                  :member-name "startTime" :http-query
                                  "startTime")
                                 (end-time :target-type end-time :member-name
                                  "endTime" :http-query "endTime"))
                                (:shape-name "SampleChannelDataRequest"))

(smithy/sdk/shapes:define-output sample-channel-data-response common-lisp:nil
                                 ((payloads :target-type message-payloads
                                   :member-name "payloads"))
                                 (:shape-name "SampleChannelDataResponse"))

(smithy/sdk/shapes:define-structure schedule common-lisp:nil
                                    ((expression :target-type
                                      schedule-expression :member-name
                                      "expression"))
                                    (:shape-name "Schedule"))

(smithy/sdk/shapes:define-type schedule-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure schema-definition common-lisp:nil
                                    ((columns :target-type columns :member-name
                                      "columns"))
                                    (:shape-name "SchemaDefinition"))

(smithy/sdk/shapes:define-structure select-attributes-activity common-lisp:nil
                                    ((name :target-type activity-name :required
                                      common-lisp:t :member-name "name")
                                     (attributes :target-type attribute-names
                                      :required common-lisp:t :member-name
                                      "attributes")
                                     (next :target-type activity-name
                                      :member-name "next"))
                                    (:shape-name "SelectAttributesActivity"))

(smithy/sdk/shapes:define-structure service-managed-channel-s3storage
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "ServiceManagedChannelS3Storage"))

(smithy/sdk/shapes:define-structure service-managed-channel-s3storage-summary
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "ServiceManagedChannelS3StorageSummary"))

(smithy/sdk/shapes:define-structure service-managed-datastore-s3storage
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "ServiceManagedDatastoreS3Storage"))

(smithy/sdk/shapes:define-structure service-managed-datastore-s3storage-summary
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "ServiceManagedDatastoreS3StorageSummary"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type session-timeout-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type size-in-bytes smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type sql-query smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sql-query-dataset-action common-lisp:nil
                                    ((sql-query :target-type sql-query
                                      :required common-lisp:t :member-name
                                      "sqlQuery")
                                     (filters :target-type query-filters
                                      :member-name "filters"))
                                    (:shape-name "SqlQueryDatasetAction"))

(smithy/sdk/shapes:define-input start-pipeline-reprocessing-request
                                common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName" :http-label common-lisp:t)
                                 (start-time :target-type start-time
                                  :member-name "startTime")
                                 (end-time :target-type end-time :member-name
                                  "endTime")
                                 (channel-messages :target-type
                                  channel-messages :member-name
                                  "channelMessages"))
                                (:shape-name
                                 "StartPipelineReprocessingRequest"))

(smithy/sdk/shapes:define-output start-pipeline-reprocessing-response
                                 common-lisp:nil
                                 ((reprocessing-id :target-type reprocessing-id
                                   :member-name "reprocessingId"))
                                 (:shape-name
                                  "StartPipelineReprocessingResponse"))

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type string-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-query "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timestamp-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure timestamp-partition common-lisp:nil
                                    ((attribute-name :target-type
                                      partition-attribute-name :required
                                      common-lisp:t :member-name
                                      "attributeName")
                                     (timestamp-format :target-type
                                      timestamp-format :member-name
                                      "timestampFormat"))
                                    (:shape-name "TimestampPartition"))

(smithy/sdk/shapes:define-structure triggering-dataset common-lisp:nil
                                    ((name :target-type dataset-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "TriggeringDataset"))

(smithy/sdk/shapes:define-type unlimited-retention-period
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type unlimited-versioning
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-query "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-channel-request common-lisp:nil
                                ((channel-name :target-type channel-name
                                  :required common-lisp:t :member-name
                                  "channelName" :http-label common-lisp:t)
                                 (channel-storage :target-type channel-storage
                                  :member-name "channelStorage")
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "retentionPeriod"))
                                (:shape-name "UpdateChannelRequest"))

(smithy/sdk/shapes:define-input update-dataset-request common-lisp:nil
                                ((dataset-name :target-type dataset-name
                                  :required common-lisp:t :member-name
                                  "datasetName" :http-label common-lisp:t)
                                 (actions :target-type dataset-actions
                                  :required common-lisp:t :member-name
                                  "actions")
                                 (triggers :target-type dataset-triggers
                                  :member-name "triggers")
                                 (content-delivery-rules :target-type
                                  dataset-content-delivery-rules :member-name
                                  "contentDeliveryRules")
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "retentionPeriod")
                                 (versioning-configuration :target-type
                                  versioning-configuration :member-name
                                  "versioningConfiguration")
                                 (late-data-rules :target-type late-data-rules
                                  :member-name "lateDataRules"))
                                (:shape-name "UpdateDatasetRequest"))

(smithy/sdk/shapes:define-input update-datastore-request common-lisp:nil
                                ((datastore-name :target-type datastore-name
                                  :required common-lisp:t :member-name
                                  "datastoreName" :http-label common-lisp:t)
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "retentionPeriod")
                                 (datastore-storage :target-type
                                  datastore-storage :member-name
                                  "datastoreStorage")
                                 (file-format-configuration :target-type
                                  file-format-configuration :member-name
                                  "fileFormatConfiguration"))
                                (:shape-name "UpdateDatastoreRequest"))

(smithy/sdk/shapes:define-input update-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "pipelineName" :http-label common-lisp:t)
                                 (pipeline-activities :target-type
                                  pipeline-activities :required common-lisp:t
                                  :member-name "pipelineActivities"))
                                (:shape-name "UpdatePipelineRequest"))

(smithy/sdk/shapes:define-structure variable common-lisp:nil
                                    ((name :target-type variable-name :required
                                      common-lisp:t :member-name "name")
                                     (string-value :target-type string-value
                                      :member-name "stringValue")
                                     (double-value :target-type double-value
                                      :member-name "doubleValue")
                                     (dataset-content-version-value
                                      :target-type
                                      dataset-content-version-value
                                      :member-name
                                      "datasetContentVersionValue")
                                     (output-file-uri-value :target-type
                                      output-file-uri-value :member-name
                                      "outputFileUriValue"))
                                    (:shape-name "Variable"))

(smithy/sdk/shapes:define-type variable-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list variables :member variable)

(smithy/sdk/shapes:define-structure versioning-configuration common-lisp:nil
                                    ((unlimited :target-type
                                      unlimited-versioning :member-name
                                      "unlimited")
                                     (max-versions :target-type max-versions
                                      :member-name "maxVersions"))
                                    (:shape-name "VersioningConfiguration"))

(smithy/sdk/shapes:define-type volume-size-in-gb
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-put-message :shape-name
                                       "BatchPutMessage" :input
                                       batch-put-message-request :output
                                       batch-put-message-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/messages/batch"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-pipeline-reprocessing :shape-name
                                       "CancelPipelineReprocessing" :input
                                       cancel-pipeline-reprocessing-request
                                       :output
                                       cancel-pipeline-reprocessing-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/pipelines/{pipelineName}/reprocessing/{reprocessingId}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-channel :shape-name
                                       "CreateChannel" :input
                                       create-channel-request :output
                                       create-channel-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/channels" :code
                                       201)

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/datasets" :code
                                       201)

(smithy/sdk/operation:define-operation create-dataset-content :shape-name
                                       "CreateDatasetContent" :input
                                       create-dataset-content-request :output
                                       create-dataset-content-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/datasets/{datasetName}/content" :code
                                       200)

(smithy/sdk/operation:define-operation create-datastore :shape-name
                                       "CreateDatastore" :input
                                       create-datastore-request :output
                                       create-datastore-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/datastores" :code
                                       201)

(smithy/sdk/operation:define-operation create-pipeline :shape-name
                                       "CreatePipeline" :input
                                       create-pipeline-request :output
                                       create-pipeline-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/pipelines" :code
                                       201)

(smithy/sdk/operation:define-operation delete-channel :shape-name
                                       "DeleteChannel" :input
                                       delete-channel-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/channels/{channelName}" :code 204)

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/datasets/{datasetName}" :code 204)

(smithy/sdk/operation:define-operation delete-dataset-content :shape-name
                                       "DeleteDatasetContent" :input
                                       delete-dataset-content-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/datasets/{datasetName}/content" :code
                                       204)

(smithy/sdk/operation:define-operation delete-datastore :shape-name
                                       "DeleteDatastore" :input
                                       delete-datastore-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/datastores/{datastoreName}" :code 204)

(smithy/sdk/operation:define-operation delete-pipeline :shape-name
                                       "DeletePipeline" :input
                                       delete-pipeline-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/pipelines/{pipelineName}" :code 204)

(smithy/sdk/operation:define-operation describe-channel :shape-name
                                       "DescribeChannel" :input
                                       describe-channel-request :output
                                       describe-channel-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/channels/{channelName}" :code 200)

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/datasets/{datasetName}" :code 200)

(smithy/sdk/operation:define-operation describe-datastore :shape-name
                                       "DescribeDatastore" :input
                                       describe-datastore-request :output
                                       describe-datastore-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/datastores/{datastoreName}" :code 200)

(smithy/sdk/operation:define-operation describe-logging-options :shape-name
                                       "DescribeLoggingOptions" :input
                                       describe-logging-options-request :output
                                       describe-logging-options-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/logging" :code 200)

(smithy/sdk/operation:define-operation describe-pipeline :shape-name
                                       "DescribePipeline" :input
                                       describe-pipeline-request :output
                                       describe-pipeline-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/pipelines/{pipelineName}" :code 200)

(smithy/sdk/operation:define-operation get-dataset-content :shape-name
                                       "GetDatasetContent" :input
                                       get-dataset-content-request :output
                                       get-dataset-content-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/datasets/{datasetName}/content" :code
                                       200)

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-request :output
                                       list-channels-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/channels" :code 200)

(smithy/sdk/operation:define-operation list-dataset-contents :shape-name
                                       "ListDatasetContents" :input
                                       list-dataset-contents-request :output
                                       list-dataset-contents-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/datasets/{datasetName}/contents" :code
                                       200)

(smithy/sdk/operation:define-operation list-datasets :shape-name "ListDatasets"
                                       :input list-datasets-request :output
                                       list-datasets-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/datasets" :code 200)

(smithy/sdk/operation:define-operation list-datastores :shape-name
                                       "ListDatastores" :input
                                       list-datastores-request :output
                                       list-datastores-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/datastores" :code
                                       200)

(smithy/sdk/operation:define-operation list-pipelines :shape-name
                                       "ListPipelines" :input
                                       list-pipelines-request :output
                                       list-pipelines-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/pipelines" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation put-logging-options :shape-name
                                       "PutLoggingOptions" :input
                                       put-logging-options-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PUT" :uri "/logging" :code 200)

(smithy/sdk/operation:define-operation run-pipeline-activity :shape-name
                                       "RunPipelineActivity" :input
                                       run-pipeline-activity-request :output
                                       run-pipeline-activity-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/pipelineactivities/run" :code 200)

(smithy/sdk/operation:define-operation sample-channel-data :shape-name
                                       "SampleChannelData" :input
                                       sample-channel-data-request :output
                                       sample-channel-data-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/channels/{channelName}/sample" :code
                                       200)

(smithy/sdk/operation:define-operation start-pipeline-reprocessing :shape-name
                                       "StartPipelineReprocessing" :input
                                       start-pipeline-reprocessing-request
                                       :output
                                       start-pipeline-reprocessing-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/pipelines/{pipelineName}/reprocessing"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/tags" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "DELETE" :uri "/tags" :code 204)

(smithy/sdk/operation:define-operation update-channel :shape-name
                                       "UpdateChannel" :input
                                       update-channel-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/channels/{channelName}" :code 200)

(smithy/sdk/operation:define-operation update-dataset :shape-name
                                       "UpdateDataset" :input
                                       update-dataset-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/datasets/{datasetName}" :code 200)

(smithy/sdk/operation:define-operation update-datastore :shape-name
                                       "UpdateDatastore" :input
                                       update-datastore-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/datastores/{datastoreName}" :code 200)

(smithy/sdk/operation:define-operation update-pipeline :shape-name
                                       "UpdatePipeline" :input
                                       update-pipeline-request :output
                                       common-lisp:null :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/pipelines/{pipelineName}" :code 200)
