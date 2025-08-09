(uiop/package:define-package #:pira/supplychain (:use)
                             (:export #:asc-resource-arn #:aws-account-id
                              #:bill-of-materials-import-job
                              #:bill-of-materials-import-job-resource
                              #:client-token #:configuration-job-status
                              #:configuration-s3uri
                              #:create-bill-of-materials-import-job
                              #:create-data-integration-flow
                              #:create-data-lake-dataset
                              #:create-data-lake-namespace #:create-instance
                              #:data-integration-dataset-arn
                              #:data-integration-event
                              #:data-integration-event-data
                              #:data-integration-event-dataset-load-execution-details
                              #:data-integration-event-dataset-load-status
                              #:data-integration-event-dataset-operation-type
                              #:data-integration-event-dataset-target-configuration
                              #:data-integration-event-dataset-target-details
                              #:data-integration-event-group-id
                              #:data-integration-event-list
                              #:data-integration-event-max-results
                              #:data-integration-event-next-token
                              #:data-integration-event-type
                              #:data-integration-flow
                              #:data-integration-flow-dataset-options
                              #:data-integration-flow-dataset-source
                              #:data-integration-flow-dataset-source-configuration
                              #:data-integration-flow-dataset-target-configuration
                              #:data-integration-flow-dedupe-strategy
                              #:data-integration-flow-dedupe-strategy-type
                              #:data-integration-flow-execution
                              #:data-integration-flow-execution-diagnostic-reports-root-s3uri
                              #:data-integration-flow-execution-list
                              #:data-integration-flow-execution-max-results
                              #:data-integration-flow-execution-next-token
                              #:data-integration-flow-execution-output-metadata
                              #:data-integration-flow-execution-source-info
                              #:data-integration-flow-execution-status
                              #:data-integration-flow-field-priority-dedupe-field
                              #:data-integration-flow-field-priority-dedupe-field-list
                              #:data-integration-flow-field-priority-dedupe-field-name
                              #:data-integration-flow-field-priority-dedupe-sort-order
                              #:data-integration-flow-field-priority-dedupe-strategy-configuration
                              #:data-integration-flow-file-type
                              #:data-integration-flow-list
                              #:data-integration-flow-load-type
                              #:data-integration-flow-max-results
                              #:data-integration-flow-name
                              #:data-integration-flow-next-token
                              #:data-integration-flow-resource
                              #:data-integration-flow-s3options
                              #:data-integration-flow-s3prefix
                              #:data-integration-flow-s3source
                              #:data-integration-flow-s3source-configuration
                              #:data-integration-flow-s3target-configuration
                              #:data-integration-flow-sqlquery
                              #:data-integration-flow-sqltransformation-configuration
                              #:data-integration-flow-source
                              #:data-integration-flow-source-list
                              #:data-integration-flow-source-name
                              #:data-integration-flow-source-type
                              #:data-integration-flow-target
                              #:data-integration-flow-target-type
                              #:data-integration-flow-transformation
                              #:data-integration-flow-transformation-type
                              #:data-integration-s3object-key
                              #:data-lake-dataset
                              #:data-lake-dataset-description
                              #:data-lake-dataset-list
                              #:data-lake-dataset-max-results
                              #:data-lake-dataset-name
                              #:data-lake-dataset-next-token
                              #:data-lake-dataset-partition-field
                              #:data-lake-dataset-partition-field-list
                              #:data-lake-dataset-partition-field-transform
                              #:data-lake-dataset-partition-spec
                              #:data-lake-dataset-partition-transform-type
                              #:data-lake-dataset-primary-key-field
                              #:data-lake-dataset-primary-key-field-list
                              #:data-lake-dataset-resource
                              #:data-lake-dataset-schema
                              #:data-lake-dataset-schema-field
                              #:data-lake-dataset-schema-field-list
                              #:data-lake-dataset-schema-field-name
                              #:data-lake-dataset-schema-field-type
                              #:data-lake-dataset-schema-name
                              #:data-lake-namespace
                              #:data-lake-namespace-description
                              #:data-lake-namespace-list
                              #:data-lake-namespace-max-results
                              #:data-lake-namespace-name
                              #:data-lake-namespace-next-token
                              #:data-lake-namespace-resource
                              #:dataset-identifier
                              #:delete-data-integration-flow
                              #:delete-data-lake-dataset
                              #:delete-data-lake-namespace #:delete-instance
                              #:galaxy-public-apigateway
                              #:get-bill-of-materials-import-job
                              #:get-data-integration-event
                              #:get-data-integration-flow
                              #:get-data-integration-flow-execution
                              #:get-data-lake-dataset #:get-data-lake-namespace
                              #:get-instance #:instance #:instance-description
                              #:instance-list #:instance-max-results
                              #:instance-name #:instance-name-list
                              #:instance-next-token #:instance-resource
                              #:instance-state #:instance-state-list
                              #:instance-web-app-dns-domain #:kms-key-arn
                              #:list-data-integration-events
                              #:list-data-integration-flow-executions
                              #:list-data-integration-flows
                              #:list-data-lake-datasets
                              #:list-data-lake-namespaces #:list-instances
                              #:list-tags-for-resource #:s3bucket-name
                              #:send-data-integration-event #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:uuid #:untag-resource
                              #:update-data-integration-flow
                              #:update-data-lake-dataset
                              #:update-data-lake-namespace #:update-instance))
(common-lisp:in-package #:pira/supplychain)

(smithy/sdk/service:define-service galaxy-public-apigateway :shape-name
                                   "GalaxyPublicAPIGateway" :version
                                   "2024-01-01" :title "AWS Supply Chain"
                                   :errors
                                   '(access-denied-exception conflict-exception
                                     internal-server-exception
                                     resource-not-found-exception
                                     service-quota-exceeded-exception
                                     throttling-exception validation-exception)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SupplyChain")
                                      ("arnNamespace" . "scn")
                                      ("endpointPrefix" . "scn"))
                                     ("aws.auth#sigv4" ("name" . "scn"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type asc-resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bill-of-materials-import-job
                                    common-lisp:nil
                                    ((instance-id :target-type uuid :required
                                      common-lisp:t :member-name "instanceId")
                                     (job-id :target-type uuid :required
                                      common-lisp:t :member-name "jobId")
                                     (status :target-type
                                      configuration-job-status :required
                                      common-lisp:t :member-name "status")
                                     (s3uri :target-type configuration-s3uri
                                      :required common-lisp:t :member-name
                                      "s3uri")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "BillOfMaterialsImportJob"))

common-lisp:nil

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum configuration-job-status
    common-lisp:nil
  (:new "NEW")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS")
  (:queued "QUEUED")
  (:success "SUCCESS"))

(smithy/sdk/shapes:define-type configuration-s3uri
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-bill-of-materials-import-job-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (s3uri :target-type configuration-s3uri
                                  :required common-lisp:t :member-name "s3uri")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "CreateBillOfMaterialsImportJobRequest"))

(smithy/sdk/shapes:define-output create-bill-of-materials-import-job-response
                                 common-lisp:nil
                                 ((job-id :target-type uuid :required
                                   common-lisp:t :member-name "jobId"))
                                 (:shape-name
                                  "CreateBillOfMaterialsImportJobResponse"))

(smithy/sdk/shapes:define-input create-data-integration-flow-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (name :target-type data-integration-flow-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t)
                                 (sources :target-type
                                  data-integration-flow-source-list :required
                                  common-lisp:t :member-name "sources")
                                 (transformation :target-type
                                  data-integration-flow-transformation
                                  :required common-lisp:t :member-name
                                  "transformation")
                                 (target :target-type
                                  data-integration-flow-target :required
                                  common-lisp:t :member-name "target")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateDataIntegrationFlowRequest"))

(smithy/sdk/shapes:define-output create-data-integration-flow-response
                                 common-lisp:nil
                                 ((instance-id :target-type uuid :required
                                   common-lisp:t :member-name "instanceId")
                                  (name :target-type data-integration-flow-name
                                   :required common-lisp:t :member-name
                                   "name"))
                                 (:shape-name
                                  "CreateDataIntegrationFlowResponse"))

(smithy/sdk/shapes:define-input create-data-lake-dataset-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (namespace :target-type
                                  data-lake-namespace-name :required
                                  common-lisp:t :member-name "namespace"
                                  :http-label common-lisp:t)
                                 (name :target-type data-lake-dataset-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t)
                                 (schema :target-type data-lake-dataset-schema
                                  :member-name "schema")
                                 (description :target-type
                                  data-lake-dataset-description :member-name
                                  "description")
                                 (partition-spec :target-type
                                  data-lake-dataset-partition-spec :member-name
                                  "partitionSpec")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateDataLakeDatasetRequest"))

(smithy/sdk/shapes:define-output create-data-lake-dataset-response
                                 common-lisp:nil
                                 ((dataset :target-type data-lake-dataset
                                   :required common-lisp:t :member-name
                                   "dataset"))
                                 (:shape-name "CreateDataLakeDatasetResponse"))

(smithy/sdk/shapes:define-input create-data-lake-namespace-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (name :target-type data-lake-namespace-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  data-lake-namespace-description :member-name
                                  "description")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateDataLakeNamespaceRequest"))

(smithy/sdk/shapes:define-output create-data-lake-namespace-response
                                 common-lisp:nil
                                 ((namespace :target-type data-lake-namespace
                                   :required common-lisp:t :member-name
                                   "namespace"))
                                 (:shape-name
                                  "CreateDataLakeNamespaceResponse"))

(smithy/sdk/shapes:define-input create-instance-request common-lisp:nil
                                ((instance-name :target-type instance-name
                                  :member-name "instanceName")
                                 (instance-description :target-type
                                  instance-description :member-name
                                  "instanceDescription")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (web-app-dns-domain :target-type
                                  instance-web-app-dns-domain :member-name
                                  "webAppDnsDomain")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateInstanceRequest"))

(smithy/sdk/shapes:define-output create-instance-response common-lisp:nil
                                 ((instance :target-type instance :required
                                   common-lisp:t :member-name "instance"))
                                 (:shape-name "CreateInstanceResponse"))

(smithy/sdk/shapes:define-type data-integration-dataset-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-integration-event common-lisp:nil
                                    ((instance-id :target-type uuid :required
                                      common-lisp:t :member-name "instanceId")
                                     (event-id :target-type uuid :required
                                      common-lisp:t :member-name "eventId")
                                     (event-type :target-type
                                      data-integration-event-type :required
                                      common-lisp:t :member-name "eventType")
                                     (event-group-id :target-type
                                      data-integration-event-group-id :required
                                      common-lisp:t :member-name
                                      "eventGroupId")
                                     (event-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "eventTimestamp")
                                     (dataset-target-details :target-type
                                      data-integration-event-dataset-target-details
                                      :member-name "datasetTargetDetails"))
                                    (:shape-name "DataIntegrationEvent"))

(smithy/sdk/shapes:define-type data-integration-event-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 data-integration-event-dataset-load-execution-details common-lisp:nil
 ((status :target-type data-integration-event-dataset-load-status :required
   common-lisp:t :member-name "status")
  (message :target-type smithy/sdk/smithy-types:string :member-name "message"))
 (:shape-name "DataIntegrationEventDatasetLoadExecutionDetails"))

(smithy/sdk/shapes:define-enum data-integration-event-dataset-load-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum data-integration-event-dataset-operation-type
    common-lisp:nil
  (:append "APPEND")
  (:upsert "UPSERT")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-structure
 data-integration-event-dataset-target-configuration common-lisp:nil
 ((dataset-identifier :target-type data-integration-dataset-arn :required
   common-lisp:t :member-name "datasetIdentifier")
  (operation-type :target-type data-integration-event-dataset-operation-type
   :required common-lisp:t :member-name "operationType"))
 (:shape-name "DataIntegrationEventDatasetTargetConfiguration"))

(smithy/sdk/shapes:define-structure
 data-integration-event-dataset-target-details common-lisp:nil
 ((dataset-identifier :target-type data-integration-dataset-arn :required
   common-lisp:t :member-name "datasetIdentifier")
  (operation-type :target-type data-integration-event-dataset-operation-type
   :required common-lisp:t :member-name "operationType")
  (dataset-load-execution :target-type
   data-integration-event-dataset-load-execution-details :required
   common-lisp:t :member-name "datasetLoadExecution"))
 (:shape-name "DataIntegrationEventDatasetTargetDetails"))

(smithy/sdk/shapes:define-type data-integration-event-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-integration-event-list :member
                               data-integration-event)

(smithy/sdk/shapes:define-type data-integration-event-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type data-integration-event-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-integration-event-type
    common-lisp:nil
  (:forecast "scn.data.forecast")
  (:inventory-level "scn.data.inventorylevel")
  (:inbound-order "scn.data.inboundorder")
  (:inbound-order-line "scn.data.inboundorderline")
  (:inbound-order-line-schedule "scn.data.inboundorderlineschedule")
  (:outbound-order-line "scn.data.outboundorderline")
  (:outbound-shipment "scn.data.outboundshipment")
  (:process-header "scn.data.processheader")
  (:process-operation "scn.data.processoperation")
  (:process-product "scn.data.processproduct")
  (:reservation "scn.data.reservation")
  (:shipment "scn.data.shipment")
  (:shipment-stop "scn.data.shipmentstop")
  (:shipment-stop-order "scn.data.shipmentstoporder")
  (:supply-plan "scn.data.supplyplan")
  (:dataset "scn.data.dataset"))

(smithy/sdk/shapes:define-structure data-integration-flow common-lisp:nil
                                    ((instance-id :target-type uuid :required
                                      common-lisp:t :member-name "instanceId")
                                     (name :target-type
                                      data-integration-flow-name :required
                                      common-lisp:t :member-name "name")
                                     (sources :target-type
                                      data-integration-flow-source-list
                                      :required common-lisp:t :member-name
                                      "sources")
                                     (transformation :target-type
                                      data-integration-flow-transformation
                                      :required common-lisp:t :member-name
                                      "transformation")
                                     (target :target-type
                                      data-integration-flow-target :required
                                      common-lisp:t :member-name "target")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime"))
                                    (:shape-name "DataIntegrationFlow"))

(smithy/sdk/shapes:define-structure data-integration-flow-dataset-options
                                    common-lisp:nil
                                    ((load-type :target-type
                                      data-integration-flow-load-type
                                      :member-name "loadType")
                                     (dedupe-records :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "dedupeRecords")
                                     (dedupe-strategy :target-type
                                      data-integration-flow-dedupe-strategy
                                      :member-name "dedupeStrategy"))
                                    (:shape-name
                                     "DataIntegrationFlowDatasetOptions"))

(smithy/sdk/shapes:define-structure data-integration-flow-dataset-source
                                    common-lisp:nil
                                    ((dataset-identifier :target-type
                                      data-integration-dataset-arn :required
                                      common-lisp:t :member-name
                                      "datasetIdentifier"))
                                    (:shape-name
                                     "DataIntegrationFlowDatasetSource"))

(smithy/sdk/shapes:define-structure
 data-integration-flow-dataset-source-configuration common-lisp:nil
 ((dataset-identifier :target-type dataset-identifier :required common-lisp:t
   :member-name "datasetIdentifier")
  (options :target-type data-integration-flow-dataset-options :member-name
   "options"))
 (:shape-name "DataIntegrationFlowDatasetSourceConfiguration"))

(smithy/sdk/shapes:define-structure
 data-integration-flow-dataset-target-configuration common-lisp:nil
 ((dataset-identifier :target-type dataset-identifier :required common-lisp:t
   :member-name "datasetIdentifier")
  (options :target-type data-integration-flow-dataset-options :member-name
   "options"))
 (:shape-name "DataIntegrationFlowDatasetTargetConfiguration"))

(smithy/sdk/shapes:define-structure data-integration-flow-dedupe-strategy
                                    common-lisp:nil
                                    ((type :target-type
                                      data-integration-flow-dedupe-strategy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (field-priority :target-type
                                      data-integration-flow-field-priority-dedupe-strategy-configuration
                                      :member-name "fieldPriority"))
                                    (:shape-name
                                     "DataIntegrationFlowDedupeStrategy"))

(smithy/sdk/shapes:define-enum data-integration-flow-dedupe-strategy-type
    common-lisp:nil
  (:field-priority "FIELD_PRIORITY"))

(smithy/sdk/shapes:define-structure data-integration-flow-execution
                                    common-lisp:nil
                                    ((instance-id :target-type uuid :required
                                      common-lisp:t :member-name "instanceId")
                                     (flow-name :target-type
                                      data-integration-flow-name :required
                                      common-lisp:t :member-name "flowName")
                                     (execution-id :target-type uuid :required
                                      common-lisp:t :member-name "executionId")
                                     (status :target-type
                                      data-integration-flow-execution-status
                                      :member-name "status")
                                     (source-info :target-type
                                      data-integration-flow-execution-source-info
                                      :member-name "sourceInfo")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (output-metadata :target-type
                                      data-integration-flow-execution-output-metadata
                                      :member-name "outputMetadata"))
                                    (:shape-name
                                     "DataIntegrationFlowExecution"))

(smithy/sdk/shapes:define-type
 data-integration-flow-execution-diagnostic-reports-root-s3uri
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-integration-flow-execution-list :member
                               data-integration-flow-execution)

(smithy/sdk/shapes:define-type data-integration-flow-execution-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type data-integration-flow-execution-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 data-integration-flow-execution-output-metadata common-lisp:nil
 ((diagnostic-reports-root-s3uri :target-type
   data-integration-flow-execution-diagnostic-reports-root-s3uri :member-name
   "diagnosticReportsRootS3URI"))
 (:shape-name "DataIntegrationFlowExecutionOutputMetadata"))

(smithy/sdk/shapes:define-structure data-integration-flow-execution-source-info
                                    common-lisp:nil
                                    ((source-type :target-type
                                      data-integration-flow-source-type
                                      :required common-lisp:t :member-name
                                      "sourceType")
                                     (s3source :target-type
                                      data-integration-flow-s3source
                                      :member-name "s3Source")
                                     (dataset-source :target-type
                                      data-integration-flow-dataset-source
                                      :member-name "datasetSource"))
                                    (:shape-name
                                     "DataIntegrationFlowExecutionSourceInfo"))

(smithy/sdk/shapes:define-enum data-integration-flow-execution-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure
 data-integration-flow-field-priority-dedupe-field common-lisp:nil
 ((name :target-type data-integration-flow-field-priority-dedupe-field-name
   :required common-lisp:t :member-name "name")
  (sort-order :target-type
   data-integration-flow-field-priority-dedupe-sort-order :required
   common-lisp:t :member-name "sortOrder"))
 (:shape-name "DataIntegrationFlowFieldPriorityDedupeField"))

(smithy/sdk/shapes:define-list
 data-integration-flow-field-priority-dedupe-field-list :member
 data-integration-flow-field-priority-dedupe-field)

(smithy/sdk/shapes:define-type
 data-integration-flow-field-priority-dedupe-field-name
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-integration-flow-field-priority-dedupe-sort-order
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-structure
 data-integration-flow-field-priority-dedupe-strategy-configuration
 common-lisp:nil
 ((fields :target-type data-integration-flow-field-priority-dedupe-field-list
   :required common-lisp:t :member-name "fields"))
 (:shape-name "DataIntegrationFlowFieldPriorityDedupeStrategyConfiguration"))

(smithy/sdk/shapes:define-enum data-integration-flow-file-type
    common-lisp:nil
  (:csv "CSV")
  (:parquet "PARQUET")
  (:json "JSON"))

(smithy/sdk/shapes:define-list data-integration-flow-list :member
                               data-integration-flow)

(smithy/sdk/shapes:define-enum data-integration-flow-load-type
    common-lisp:nil
  (:incremental "INCREMENTAL")
  (:replace "REPLACE"))

(smithy/sdk/shapes:define-type data-integration-flow-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type data-integration-flow-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-integration-flow-next-token
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure data-integration-flow-s3options
                                    common-lisp:nil
                                    ((file-type :target-type
                                      data-integration-flow-file-type
                                      :member-name "fileType"))
                                    (:shape-name
                                     "DataIntegrationFlowS3Options"))

(smithy/sdk/shapes:define-type data-integration-flow-s3prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-integration-flow-s3source
                                    common-lisp:nil
                                    ((bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (key :target-type
                                      data-integration-s3object-key :required
                                      common-lisp:t :member-name "key"))
                                    (:shape-name "DataIntegrationFlowS3Source"))

(smithy/sdk/shapes:define-structure
 data-integration-flow-s3source-configuration common-lisp:nil
 ((bucket-name :target-type s3bucket-name :required common-lisp:t :member-name
   "bucketName")
  (prefix :target-type data-integration-flow-s3prefix :required common-lisp:t
   :member-name "prefix")
  (options :target-type data-integration-flow-s3options :member-name
   "options"))
 (:shape-name "DataIntegrationFlowS3SourceConfiguration"))

(smithy/sdk/shapes:define-structure
 data-integration-flow-s3target-configuration common-lisp:nil
 ((bucket-name :target-type s3bucket-name :required common-lisp:t :member-name
   "bucketName")
  (prefix :target-type data-integration-flow-s3prefix :required common-lisp:t
   :member-name "prefix")
  (options :target-type data-integration-flow-s3options :member-name
   "options"))
 (:shape-name "DataIntegrationFlowS3TargetConfiguration"))

(smithy/sdk/shapes:define-type data-integration-flow-sqlquery
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 data-integration-flow-sqltransformation-configuration common-lisp:nil
 ((query :target-type data-integration-flow-sqlquery :required common-lisp:t
   :member-name "query"))
 (:shape-name "DataIntegrationFlowSQLTransformationConfiguration"))

(smithy/sdk/shapes:define-structure data-integration-flow-source
                                    common-lisp:nil
                                    ((source-type :target-type
                                      data-integration-flow-source-type
                                      :required common-lisp:t :member-name
                                      "sourceType")
                                     (source-name :target-type
                                      data-integration-flow-source-name
                                      :required common-lisp:t :member-name
                                      "sourceName")
                                     (s3source :target-type
                                      data-integration-flow-s3source-configuration
                                      :member-name "s3Source")
                                     (dataset-source :target-type
                                      data-integration-flow-dataset-source-configuration
                                      :member-name "datasetSource"))
                                    (:shape-name "DataIntegrationFlowSource"))

(smithy/sdk/shapes:define-list data-integration-flow-source-list :member
                               data-integration-flow-source)

(smithy/sdk/shapes:define-type data-integration-flow-source-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-integration-flow-source-type
    common-lisp:nil
  (:s3 "S3")
  (:dataset "DATASET"))

(smithy/sdk/shapes:define-structure data-integration-flow-target
                                    common-lisp:nil
                                    ((target-type :target-type
                                      data-integration-flow-target-type
                                      :required common-lisp:t :member-name
                                      "targetType")
                                     (s3target :target-type
                                      data-integration-flow-s3target-configuration
                                      :member-name "s3Target")
                                     (dataset-target :target-type
                                      data-integration-flow-dataset-target-configuration
                                      :member-name "datasetTarget"))
                                    (:shape-name "DataIntegrationFlowTarget"))

(smithy/sdk/shapes:define-enum data-integration-flow-target-type
    common-lisp:nil
  (:s3 "S3")
  (:dataset "DATASET"))

(smithy/sdk/shapes:define-structure data-integration-flow-transformation
                                    common-lisp:nil
                                    ((transformation-type :target-type
                                      data-integration-flow-transformation-type
                                      :required common-lisp:t :member-name
                                      "transformationType")
                                     (sql-transformation :target-type
                                      data-integration-flow-sqltransformation-configuration
                                      :member-name "sqlTransformation"))
                                    (:shape-name
                                     "DataIntegrationFlowTransformation"))

(smithy/sdk/shapes:define-enum data-integration-flow-transformation-type
    common-lisp:nil
  (:sql "SQL")
  (:none "NONE"))

(smithy/sdk/shapes:define-type data-integration-s3object-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-lake-dataset common-lisp:nil
                                    ((instance-id :target-type uuid :required
                                      common-lisp:t :member-name "instanceId")
                                     (namespace :target-type
                                      data-lake-namespace-name :required
                                      common-lisp:t :member-name "namespace")
                                     (name :target-type data-lake-dataset-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (arn :target-type asc-resource-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (schema :target-type
                                      data-lake-dataset-schema :required
                                      common-lisp:t :member-name "schema")
                                     (description :target-type
                                      data-lake-dataset-description
                                      :member-name "description")
                                     (partition-spec :target-type
                                      data-lake-dataset-partition-spec
                                      :member-name "partitionSpec")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime"))
                                    (:shape-name "DataLakeDataset"))

(smithy/sdk/shapes:define-type data-lake-dataset-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-lake-dataset-list :member data-lake-dataset)

(smithy/sdk/shapes:define-type data-lake-dataset-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type data-lake-dataset-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-lake-dataset-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-lake-dataset-partition-field
                                    common-lisp:nil
                                    ((name :target-type
                                      data-lake-dataset-schema-field-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (transform :target-type
                                      data-lake-dataset-partition-field-transform
                                      :required common-lisp:t :member-name
                                      "transform"))
                                    (:shape-name
                                     "DataLakeDatasetPartitionField"))

(smithy/sdk/shapes:define-list data-lake-dataset-partition-field-list :member
                               data-lake-dataset-partition-field)

(smithy/sdk/shapes:define-structure data-lake-dataset-partition-field-transform
                                    common-lisp:nil
                                    ((type :target-type
                                      data-lake-dataset-partition-transform-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name
                                     "DataLakeDatasetPartitionFieldTransform"))

(smithy/sdk/shapes:define-structure data-lake-dataset-partition-spec
                                    common-lisp:nil
                                    ((fields :target-type
                                      data-lake-dataset-partition-field-list
                                      :required common-lisp:t :member-name
                                      "fields"))
                                    (:shape-name
                                     "DataLakeDatasetPartitionSpec"))

(smithy/sdk/shapes:define-enum data-lake-dataset-partition-transform-type
    common-lisp:nil
  (:year "YEAR")
  (:month "MONTH")
  (:day "DAY")
  (:hour "HOUR")
  (:identity "IDENTITY"))

(smithy/sdk/shapes:define-structure data-lake-dataset-primary-key-field
                                    common-lisp:nil
                                    ((name :target-type
                                      data-lake-dataset-schema-field-name
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name
                                     "DataLakeDatasetPrimaryKeyField"))

(smithy/sdk/shapes:define-list data-lake-dataset-primary-key-field-list :member
                               data-lake-dataset-primary-key-field)

common-lisp:nil

(smithy/sdk/shapes:define-structure data-lake-dataset-schema common-lisp:nil
                                    ((name :target-type
                                      data-lake-dataset-schema-name :required
                                      common-lisp:t :member-name "name")
                                     (fields :target-type
                                      data-lake-dataset-schema-field-list
                                      :required common-lisp:t :member-name
                                      "fields")
                                     (primary-keys :target-type
                                      data-lake-dataset-primary-key-field-list
                                      :member-name "primaryKeys"))
                                    (:shape-name "DataLakeDatasetSchema"))

(smithy/sdk/shapes:define-structure data-lake-dataset-schema-field
                                    common-lisp:nil
                                    ((name :target-type
                                      data-lake-dataset-schema-field-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type
                                      data-lake-dataset-schema-field-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (is-required :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "isRequired"))
                                    (:shape-name "DataLakeDatasetSchemaField"))

(smithy/sdk/shapes:define-list data-lake-dataset-schema-field-list :member
                               data-lake-dataset-schema-field)

(smithy/sdk/shapes:define-type data-lake-dataset-schema-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-lake-dataset-schema-field-type
    common-lisp:nil
  (:int "INT")
  (:double "DOUBLE")
  (:string "STRING")
  (:timestamp "TIMESTAMP")
  (:long "LONG"))

(smithy/sdk/shapes:define-type data-lake-dataset-schema-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-lake-namespace common-lisp:nil
                                    ((instance-id :target-type uuid :required
                                      common-lisp:t :member-name "instanceId")
                                     (name :target-type
                                      data-lake-namespace-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type asc-resource-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (description :target-type
                                      data-lake-namespace-description
                                      :member-name "description")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedTime"))
                                    (:shape-name "DataLakeNamespace"))

(smithy/sdk/shapes:define-type data-lake-namespace-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-lake-namespace-list :member
                               data-lake-namespace)

(smithy/sdk/shapes:define-type data-lake-namespace-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type data-lake-namespace-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-lake-namespace-next-token
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type dataset-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-data-integration-flow-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (name :target-type data-integration-flow-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteDataIntegrationFlowRequest"))

(smithy/sdk/shapes:define-output delete-data-integration-flow-response
                                 common-lisp:nil
                                 ((instance-id :target-type uuid :required
                                   common-lisp:t :member-name "instanceId")
                                  (name :target-type data-integration-flow-name
                                   :required common-lisp:t :member-name
                                   "name"))
                                 (:shape-name
                                  "DeleteDataIntegrationFlowResponse"))

(smithy/sdk/shapes:define-input delete-data-lake-dataset-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (namespace :target-type
                                  data-lake-namespace-name :required
                                  common-lisp:t :member-name "namespace"
                                  :http-label common-lisp:t)
                                 (name :target-type data-lake-dataset-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDataLakeDatasetRequest"))

(smithy/sdk/shapes:define-output delete-data-lake-dataset-response
                                 common-lisp:nil
                                 ((instance-id :target-type uuid :required
                                   common-lisp:t :member-name "instanceId")
                                  (namespace :target-type
                                   data-lake-namespace-name :required
                                   common-lisp:t :member-name "namespace")
                                  (name :target-type data-lake-dataset-name
                                   :required common-lisp:t :member-name
                                   "name"))
                                 (:shape-name "DeleteDataLakeDatasetResponse"))

(smithy/sdk/shapes:define-input delete-data-lake-namespace-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (name :target-type data-lake-namespace-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDataLakeNamespaceRequest"))

(smithy/sdk/shapes:define-output delete-data-lake-namespace-response
                                 common-lisp:nil
                                 ((instance-id :target-type uuid :required
                                   common-lisp:t :member-name "instanceId")
                                  (name :target-type data-lake-namespace-name
                                   :required common-lisp:t :member-name
                                   "name"))
                                 (:shape-name
                                  "DeleteDataLakeNamespaceResponse"))

(smithy/sdk/shapes:define-input delete-instance-request common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteInstanceRequest"))

(smithy/sdk/shapes:define-output delete-instance-response common-lisp:nil
                                 ((instance :target-type instance :required
                                   common-lisp:t :member-name "instance"))
                                 (:shape-name "DeleteInstanceResponse"))

(smithy/sdk/shapes:define-input get-bill-of-materials-import-job-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type uuid :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetBillOfMaterialsImportJobRequest"))

(smithy/sdk/shapes:define-output get-bill-of-materials-import-job-response
                                 common-lisp:nil
                                 ((job :target-type
                                   bill-of-materials-import-job :required
                                   common-lisp:t :member-name "job"))
                                 (:shape-name
                                  "GetBillOfMaterialsImportJobResponse"))

(smithy/sdk/shapes:define-input get-data-integration-event-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (event-id :target-type uuid :required
                                  common-lisp:t :member-name "eventId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataIntegrationEventRequest"))

(smithy/sdk/shapes:define-output get-data-integration-event-response
                                 common-lisp:nil
                                 ((event :target-type data-integration-event
                                   :required common-lisp:t :member-name
                                   "event"))
                                 (:shape-name
                                  "GetDataIntegrationEventResponse"))

(smithy/sdk/shapes:define-input get-data-integration-flow-execution-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (flow-name :target-type
                                  data-integration-flow-name :required
                                  common-lisp:t :member-name "flowName"
                                  :http-label common-lisp:t)
                                 (execution-id :target-type uuid :required
                                  common-lisp:t :member-name "executionId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetDataIntegrationFlowExecutionRequest"))

(smithy/sdk/shapes:define-output get-data-integration-flow-execution-response
                                 common-lisp:nil
                                 ((flow-execution :target-type
                                   data-integration-flow-execution :required
                                   common-lisp:t :member-name "flowExecution"))
                                 (:shape-name
                                  "GetDataIntegrationFlowExecutionResponse"))

(smithy/sdk/shapes:define-input get-data-integration-flow-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (name :target-type data-integration-flow-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataIntegrationFlowRequest"))

(smithy/sdk/shapes:define-output get-data-integration-flow-response
                                 common-lisp:nil
                                 ((flow :target-type data-integration-flow
                                   :required common-lisp:t :member-name
                                   "flow"))
                                 (:shape-name "GetDataIntegrationFlowResponse"))

(smithy/sdk/shapes:define-input get-data-lake-dataset-request common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (namespace :target-type
                                  data-lake-namespace-name :required
                                  common-lisp:t :member-name "namespace"
                                  :http-label common-lisp:t)
                                 (name :target-type data-lake-dataset-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataLakeDatasetRequest"))

(smithy/sdk/shapes:define-output get-data-lake-dataset-response common-lisp:nil
                                 ((dataset :target-type data-lake-dataset
                                   :required common-lisp:t :member-name
                                   "dataset"))
                                 (:shape-name "GetDataLakeDatasetResponse"))

(smithy/sdk/shapes:define-input get-data-lake-namespace-request common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (name :target-type data-lake-namespace-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDataLakeNamespaceRequest"))

(smithy/sdk/shapes:define-output get-data-lake-namespace-response
                                 common-lisp:nil
                                 ((namespace :target-type data-lake-namespace
                                   :required common-lisp:t :member-name
                                   "namespace"))
                                 (:shape-name "GetDataLakeNamespaceResponse"))

(smithy/sdk/shapes:define-input get-instance-request common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetInstanceRequest"))

(smithy/sdk/shapes:define-output get-instance-response common-lisp:nil
                                 ((instance :target-type instance :required
                                   common-lisp:t :member-name "instance"))
                                 (:shape-name "GetInstanceResponse"))

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((instance-id :target-type uuid :required
                                      common-lisp:t :member-name "instanceId")
                                     (aws-account-id :target-type
                                      aws-account-id :required common-lisp:t
                                      :member-name "awsAccountId")
                                     (state :target-type instance-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage")
                                     (web-app-dns-domain :target-type
                                      instance-web-app-dns-domain :member-name
                                      "webAppDnsDomain")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastModifiedTime")
                                     (instance-name :target-type instance-name
                                      :member-name "instanceName")
                                     (instance-description :target-type
                                      instance-description :member-name
                                      "instanceDescription")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (version-number :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "versionNumber"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-type instance-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-list :member instance)

(smithy/sdk/shapes:define-type instance-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type instance-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-name-list :member instance-name)

(smithy/sdk/shapes:define-type instance-next-token
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum instance-state
    common-lisp:nil
  (:initializing "Initializing")
  (:active "Active")
  (:create-failed "CreateFailed")
  (:delete-failed "DeleteFailed")
  (:deleting "Deleting")
  (:deleted "Deleted"))

(smithy/sdk/shapes:define-list instance-state-list :member instance-state)

(smithy/sdk/shapes:define-type instance-web-app-dns-domain
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-data-integration-events-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (event-type :target-type
                                  data-integration-event-type :member-name
                                  "eventType" :http-query "eventType")
                                 (next-token :target-type
                                  data-integration-event-next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  data-integration-event-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListDataIntegrationEventsRequest"))

(smithy/sdk/shapes:define-output list-data-integration-events-response
                                 common-lisp:nil
                                 ((events :target-type
                                   data-integration-event-list :required
                                   common-lisp:t :member-name "events")
                                  (next-token :target-type
                                   data-integration-event-next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDataIntegrationEventsResponse"))

(smithy/sdk/shapes:define-input list-data-integration-flow-executions-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (flow-name :target-type
                                  data-integration-flow-name :required
                                  common-lisp:t :member-name "flowName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type
                                  data-integration-flow-execution-next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  data-integration-flow-execution-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListDataIntegrationFlowExecutionsRequest"))

(smithy/sdk/shapes:define-output list-data-integration-flow-executions-response
                                 common-lisp:nil
                                 ((flow-executions :target-type
                                   data-integration-flow-execution-list
                                   :required common-lisp:t :member-name
                                   "flowExecutions")
                                  (next-token :target-type
                                   data-integration-flow-execution-next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDataIntegrationFlowExecutionsResponse"))

(smithy/sdk/shapes:define-input list-data-integration-flows-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type
                                  data-integration-flow-next-token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  data-integration-flow-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDataIntegrationFlowsRequest"))

(smithy/sdk/shapes:define-output list-data-integration-flows-response
                                 common-lisp:nil
                                 ((flows :target-type
                                   data-integration-flow-list :required
                                   common-lisp:t :member-name "flows")
                                  (next-token :target-type
                                   data-integration-flow-next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDataIntegrationFlowsResponse"))

(smithy/sdk/shapes:define-input list-data-lake-datasets-request common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (namespace :target-type
                                  data-lake-namespace-name :required
                                  common-lisp:t :member-name "namespace"
                                  :http-label common-lisp:t)
                                 (next-token :target-type
                                  data-lake-dataset-next-token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  data-lake-dataset-max-results :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListDataLakeDatasetsRequest"))

(smithy/sdk/shapes:define-output list-data-lake-datasets-response
                                 common-lisp:nil
                                 ((datasets :target-type data-lake-dataset-list
                                   :required common-lisp:t :member-name
                                   "datasets")
                                  (next-token :target-type
                                   data-lake-dataset-next-token :member-name
                                   "nextToken"))
                                 (:shape-name "ListDataLakeDatasetsResponse"))

(smithy/sdk/shapes:define-input list-data-lake-namespaces-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type
                                  data-lake-namespace-next-token :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  data-lake-namespace-max-results :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListDataLakeNamespacesRequest"))

(smithy/sdk/shapes:define-output list-data-lake-namespaces-response
                                 common-lisp:nil
                                 ((namespaces :target-type
                                   data-lake-namespace-list :required
                                   common-lisp:t :member-name "namespaces")
                                  (next-token :target-type
                                   data-lake-namespace-next-token :member-name
                                   "nextToken"))
                                 (:shape-name "ListDataLakeNamespacesResponse"))

(smithy/sdk/shapes:define-input list-instances-request common-lisp:nil
                                ((next-token :target-type instance-next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type instance-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (instance-name-filter :target-type
                                  instance-name-list :member-name
                                  "instanceNameFilter" :http-query
                                  "instanceNameFilter")
                                 (instance-state-filter :target-type
                                  instance-state-list :member-name
                                  "instanceStateFilter" :http-query
                                  "instanceStateFilter"))
                                (:shape-name "ListInstancesRequest"))

(smithy/sdk/shapes:define-output list-instances-response common-lisp:nil
                                 ((instances :target-type instance-list
                                   :required common-lisp:t :member-name
                                   "instances")
                                  (next-token :target-type instance-next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListInstancesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type asc-resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input send-data-integration-event-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (event-type :target-type
                                  data-integration-event-type :required
                                  common-lisp:t :member-name "eventType")
                                 (data :target-type data-integration-event-data
                                  :required common-lisp:t :member-name "data")
                                 (event-group-id :target-type
                                  data-integration-event-group-id :required
                                  common-lisp:t :member-name "eventGroupId")
                                 (event-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "eventTimestamp"
                                  :timestamp-format "epoch-seconds")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (dataset-target :target-type
                                  data-integration-event-dataset-target-configuration
                                  :member-name "datasetTarget"))
                                (:shape-name "SendDataIntegrationEventRequest"))

(smithy/sdk/shapes:define-output send-data-integration-event-response
                                 common-lisp:nil
                                 ((event-id :target-type uuid :required
                                   common-lisp:t :member-name "eventId"))
                                 (:shape-name
                                  "SendDataIntegrationEventResponse"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type asc-resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type asc-resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-data-integration-flow-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (name :target-type data-integration-flow-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t)
                                 (sources :target-type
                                  data-integration-flow-source-list
                                  :member-name "sources")
                                 (transformation :target-type
                                  data-integration-flow-transformation
                                  :member-name "transformation")
                                 (target :target-type
                                  data-integration-flow-target :member-name
                                  "target"))
                                (:shape-name
                                 "UpdateDataIntegrationFlowRequest"))

(smithy/sdk/shapes:define-output update-data-integration-flow-response
                                 common-lisp:nil
                                 ((flow :target-type data-integration-flow
                                   :required common-lisp:t :member-name
                                   "flow"))
                                 (:shape-name
                                  "UpdateDataIntegrationFlowResponse"))

(smithy/sdk/shapes:define-input update-data-lake-dataset-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (namespace :target-type
                                  data-lake-namespace-name :required
                                  common-lisp:t :member-name "namespace"
                                  :http-label common-lisp:t)
                                 (name :target-type data-lake-dataset-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  data-lake-dataset-description :member-name
                                  "description"))
                                (:shape-name "UpdateDataLakeDatasetRequest"))

(smithy/sdk/shapes:define-output update-data-lake-dataset-response
                                 common-lisp:nil
                                 ((dataset :target-type data-lake-dataset
                                   :required common-lisp:t :member-name
                                   "dataset"))
                                 (:shape-name "UpdateDataLakeDatasetResponse"))

(smithy/sdk/shapes:define-input update-data-lake-namespace-request
                                common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (name :target-type data-lake-namespace-name
                                  :required common-lisp:t :member-name "name"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  data-lake-namespace-description :member-name
                                  "description"))
                                (:shape-name "UpdateDataLakeNamespaceRequest"))

(smithy/sdk/shapes:define-output update-data-lake-namespace-response
                                 common-lisp:nil
                                 ((namespace :target-type data-lake-namespace
                                   :required common-lisp:t :member-name
                                   "namespace"))
                                 (:shape-name
                                  "UpdateDataLakeNamespaceResponse"))

(smithy/sdk/shapes:define-input update-instance-request common-lisp:nil
                                ((instance-id :target-type uuid :required
                                  common-lisp:t :member-name "instanceId"
                                  :http-label common-lisp:t)
                                 (instance-name :target-type instance-name
                                  :member-name "instanceName")
                                 (instance-description :target-type
                                  instance-description :member-name
                                  "instanceDescription"))
                                (:shape-name "UpdateInstanceRequest"))

(smithy/sdk/shapes:define-output update-instance-response common-lisp:nil
                                 ((instance :target-type instance :required
                                   common-lisp:t :member-name "instance"))
                                 (:shape-name "UpdateInstanceResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-bill-of-materials-import-job
                                       :shape-name
                                       "CreateBillOfMaterialsImportJob" :input
                                       create-bill-of-materials-import-job-request
                                       :output
                                       create-bill-of-materials-import-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-integration-flow :shape-name
                                       "CreateDataIntegrationFlow" :input
                                       create-data-integration-flow-request
                                       :output
                                       create-data-integration-flow-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-lake-dataset :shape-name
                                       "CreateDataLakeDataset" :input
                                       create-data-lake-dataset-request :output
                                       create-data-lake-dataset-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-lake-namespace :shape-name
                                       "CreateDataLakeNamespace" :input
                                       create-data-lake-namespace-request
                                       :output
                                       create-data-lake-namespace-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-instance :shape-name
                                       "CreateInstance" :input
                                       create-instance-request :output
                                       create-instance-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/api/instance"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-data-integration-flow :shape-name
                                       "DeleteDataIntegrationFlow" :input
                                       delete-data-integration-flow-request
                                       :output
                                       delete-data-integration-flow-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-data-lake-dataset :shape-name
                                       "DeleteDataLakeDataset" :input
                                       delete-data-lake-dataset-request :output
                                       delete-data-lake-dataset-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-data-lake-namespace :shape-name
                                       "DeleteDataLakeNamespace" :input
                                       delete-data-lake-namespace-request
                                       :output
                                       delete-data-lake-namespace-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-instance :shape-name
                                       "DeleteInstance" :input
                                       delete-instance-request :output
                                       delete-instance-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/api/instance/{instanceId}" :code 200)

(smithy/sdk/operation:define-operation get-bill-of-materials-import-job
                                       :shape-name
                                       "GetBillOfMaterialsImportJob" :input
                                       get-bill-of-materials-import-job-request
                                       :output
                                       get-bill-of-materials-import-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs/{jobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-integration-event :shape-name
                                       "GetDataIntegrationEvent" :input
                                       get-data-integration-event-request
                                       :output
                                       get-data-integration-event-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api-data/data-integration/instance/{instanceId}/data-integration-events/{eventId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-integration-flow :shape-name
                                       "GetDataIntegrationFlow" :input
                                       get-data-integration-flow-request
                                       :output
                                       get-data-integration-flow-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-integration-flow-execution
                                       :shape-name
                                       "GetDataIntegrationFlowExecution" :input
                                       get-data-integration-flow-execution-request
                                       :output
                                       get-data-integration-flow-execution-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions/{executionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-lake-dataset :shape-name
                                       "GetDataLakeDataset" :input
                                       get-data-lake-dataset-request :output
                                       get-data-lake-dataset-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-lake-namespace :shape-name
                                       "GetDataLakeNamespace" :input
                                       get-data-lake-namespace-request :output
                                       get-data-lake-namespace-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-instance :shape-name "GetInstance"
                                       :input get-instance-request :output
                                       get-instance-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api/instance/{instanceId}" :code 200)

(smithy/sdk/operation:define-operation list-data-integration-events :shape-name
                                       "ListDataIntegrationEvents" :input
                                       list-data-integration-events-request
                                       :output
                                       list-data-integration-events-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api-data/data-integration/instance/{instanceId}/data-integration-events"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-integration-flow-executions
                                       :shape-name
                                       "ListDataIntegrationFlowExecutions"
                                       :input
                                       list-data-integration-flow-executions-request
                                       :output
                                       list-data-integration-flow-executions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-integration-flows :shape-name
                                       "ListDataIntegrationFlows" :input
                                       list-data-integration-flows-request
                                       :output
                                       list-data-integration-flows-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api/data-integration/instance/{instanceId}/data-integration-flows"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-lake-datasets :shape-name
                                       "ListDataLakeDatasets" :input
                                       list-data-lake-datasets-request :output
                                       list-data-lake-datasets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-lake-namespaces :shape-name
                                       "ListDataLakeNamespaces" :input
                                       list-data-lake-namespaces-request
                                       :output
                                       list-data-lake-namespaces-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces"
                                       :code 200)

(smithy/sdk/operation:define-operation list-instances :shape-name
                                       "ListInstances" :input
                                       list-instances-request :output
                                       list-instances-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/api/instance" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/api/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation send-data-integration-event :shape-name
                                       "SendDataIntegrationEvent" :input
                                       send-data-integration-event-request
                                       :output
                                       send-data-integration-event-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/api-data/data-integration/instance/{instanceId}/data-integration-events"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/api/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/api/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-data-integration-flow :shape-name
                                       "UpdateDataIntegrationFlow" :input
                                       update-data-integration-flow-request
                                       :output
                                       update-data-integration-flow-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-data-lake-dataset :shape-name
                                       "UpdateDataLakeDataset" :input
                                       update-data-lake-dataset-request :output
                                       update-data-lake-dataset-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-data-lake-namespace :shape-name
                                       "UpdateDataLakeNamespace" :input
                                       update-data-lake-namespace-request
                                       :output
                                       update-data-lake-namespace-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/api/datalake/instance/{instanceId}/namespaces/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-instance :shape-name
                                       "UpdateInstance" :input
                                       update-instance-request :output
                                       update-instance-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/api/instance/{instanceId}" :code 200)
