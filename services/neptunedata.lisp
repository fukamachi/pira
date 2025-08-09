(uiop/package:define-package #:pira/neptunedata (:use)
                             (:export #:action #:amazon-neptune-dataplane
                              #:cancel-gremlin-query #:cancel-loader-job
                              #:cancel-mldata-processing-job
                              #:cancel-mlmodel-training-job
                              #:cancel-mlmodel-transform-job
                              #:cancel-open-cypher-query #:classes
                              #:create-mlendpoint
                              #:custom-model-training-parameters
                              #:custom-model-transform-parameters
                              #:delete-mlendpoint
                              #:delete-propertygraph-statistics
                              #:delete-sparql-statistics
                              #:delete-statistics-value-map
                              #:document-valued-map #:edge-labels
                              #:edge-properties #:edge-structure
                              #:edge-structures #:encoding #:execute-fast-reset
                              #:execute-gremlin-explain-query
                              #:execute-gremlin-profile-query
                              #:execute-gremlin-query
                              #:execute-open-cypher-explain-query
                              #:execute-open-cypher-query #:fast-reset-token
                              #:format #:get-engine-status
                              #:get-gremlin-query-status
                              #:get-loader-job-status
                              #:get-mldata-processing-job #:get-mlendpoint
                              #:get-mlmodel-training-job
                              #:get-mlmodel-transform-job
                              #:get-open-cypher-query-status
                              #:get-propertygraph-statistics
                              #:get-propertygraph-stream
                              #:get-propertygraph-summary
                              #:get-rdfgraph-summary #:get-sparql-statistics
                              #:get-sparql-stream #:graph-summary-type
                              #:gremlin-queries #:gremlin-query-status
                              #:gremlin-query-status-attributes #:iterator-type
                              #:list-gremlin-queries #:list-loader-jobs
                              #:list-mldata-processing-jobs #:list-mlendpoints
                              #:list-mlmodel-training-jobs
                              #:list-mlmodel-transform-jobs
                              #:list-open-cypher-queries #:loader-id-result
                              #:long-valued-map #:long-valued-map-list
                              #:manage-propertygraph-statistics
                              #:manage-sparql-statistics #:ml-config-definition
                              #:ml-models #:ml-resource-definition #:mode
                              #:models #:node-labels #:node-properties
                              #:node-structure #:node-structures
                              #:open-cypher-explain-mode #:open-cypher-queries
                              #:outgoing-edge-labels #:parallelism
                              #:positive-integer #:predicates
                              #:propertygraph-data #:propertygraph-record
                              #:propertygraph-records-list
                              #:propertygraph-summary
                              #:propertygraph-summary-value-map
                              #:query-eval-stats #:query-language-version
                              #:rdfgraph-summary #:rdfgraph-summary-value-map
                              #:refresh-statistics-id-map #:report-as-text
                              #:s3bucket-region #:sparql-data #:sparql-record
                              #:sparql-records-list #:start-loader-job
                              #:start-mldata-processing-job
                              #:start-mlmodel-training-job
                              #:start-mlmodel-transform-job #:statistics
                              #:statistics-auto-generation-mode
                              #:statistics-summary #:string-list
                              #:string-valued-map #:subject-structure
                              #:subject-structures))
(common-lisp:in-package #:pira/neptunedata)

(smithy/sdk/service:define-service amazon-neptune-dataplane :shape-name
                                   "AmazonNeptuneDataplane" :version
                                   "2023-08-01" :title "Amazon NeptuneData"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "neptunedata")
                                      ("arnNamespace" . "neptune-db"))
                                     ("aws.auth#sigv4" ("name" . "neptune-db"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum action
    common-lisp:nil
  (:initialize-reset "initiateDatabaseReset")
  (:perform-reset "performDatabaseReset"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error bulk-load-id-not-found-exception
                                common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "BulkLoadIdNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input cancel-gremlin-query-input common-lisp:nil
                                ((query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "queryId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelGremlinQueryInput"))

(smithy/sdk/shapes:define-output cancel-gremlin-query-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status"))
                                 (:shape-name "CancelGremlinQueryOutput"))

(smithy/sdk/shapes:define-input cancel-loader-job-input common-lisp:nil
                                ((load-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "loadId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelLoaderJobInput"))

(smithy/sdk/shapes:define-output cancel-loader-job-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status"))
                                 (:shape-name "CancelLoaderJobOutput"))

(smithy/sdk/shapes:define-input cancel-mldata-processing-job-input
                                common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn")
                                 (clean :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "clean" :http-query "clean"))
                                (:shape-name "CancelMLDataProcessingJobInput"))

(smithy/sdk/shapes:define-output cancel-mldata-processing-job-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status"))
                                 (:shape-name
                                  "CancelMLDataProcessingJobOutput"))

(smithy/sdk/shapes:define-input cancel-mlmodel-training-job-input
                                common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn")
                                 (clean :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "clean" :http-query "clean"))
                                (:shape-name "CancelMLModelTrainingJobInput"))

(smithy/sdk/shapes:define-output cancel-mlmodel-training-job-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status"))
                                 (:shape-name "CancelMLModelTrainingJobOutput"))

(smithy/sdk/shapes:define-input cancel-mlmodel-transform-job-input
                                common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn")
                                 (clean :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "clean" :http-query "clean"))
                                (:shape-name "CancelMLModelTransformJobInput"))

(smithy/sdk/shapes:define-output cancel-mlmodel-transform-job-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status"))
                                 (:shape-name
                                  "CancelMLModelTransformJobOutput"))

(smithy/sdk/shapes:define-input cancel-open-cypher-query-input common-lisp:nil
                                ((query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "queryId"
                                  :http-label common-lisp:t)
                                 (silent :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "silent" :http-query "silent"))
                                (:shape-name "CancelOpenCypherQueryInput"))

(smithy/sdk/shapes:define-output cancel-open-cypher-query-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status")
                                  (payload :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "payload"))
                                 (:shape-name "CancelOpenCypherQueryOutput"))

(smithy/sdk/shapes:define-error cancelled-by-user-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "CancelledByUserException")
                                (:error-code 500))

(smithy/sdk/shapes:define-list classes :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error client-timeout-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "ClientTimeoutException")
                                (:error-code 408))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error constraint-violation-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "ConstraintViolationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-mlendpoint-input common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "id")
                                 (ml-model-training-job-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "mlModelTrainingJobId")
                                 (ml-model-transform-job-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "mlModelTransformJobId")
                                 (update :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "update")
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn")
                                 (model-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "modelName")
                                 (instance-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "instanceType")
                                 (instance-count :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "instanceCount")
                                 (volume-encryption-kmskey :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "volumeEncryptionKMSKey"))
                                (:shape-name "CreateMLEndpointInput"))

(smithy/sdk/shapes:define-output create-mlendpoint-output common-lisp:nil
                                 ((id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "arn")
                                  (creation-time-in-millis :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "creationTimeInMillis"))
                                 (:shape-name "CreateMLEndpointOutput"))

(smithy/sdk/shapes:define-structure custom-model-training-parameters
                                    common-lisp:nil
                                    ((source-s3directory-path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "sourceS3DirectoryPath")
                                     (training-entry-point-script :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "trainingEntryPointScript")
                                     (transform-entry-point-script :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "transformEntryPointScript"))
                                    (:shape-name
                                     "CustomModelTrainingParameters"))

(smithy/sdk/shapes:define-structure custom-model-transform-parameters
                                    common-lisp:nil
                                    ((source-s3directory-path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "sourceS3DirectoryPath")
                                     (transform-entry-point-script :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "transformEntryPointScript"))
                                    (:shape-name
                                     "CustomModelTransformParameters"))

(smithy/sdk/shapes:define-input delete-mlendpoint-input common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn")
                                 (clean :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "clean" :http-query "clean"))
                                (:shape-name "DeleteMLEndpointInput"))

(smithy/sdk/shapes:define-output delete-mlendpoint-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status"))
                                 (:shape-name "DeleteMLEndpointOutput"))

(smithy/sdk/shapes:define-output delete-propertygraph-statistics-output
                                 common-lisp:nil
                                 ((status-code :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "statusCode" :http-response-code
                                   common-lisp:t)
                                  (status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status")
                                  (payload :target-type
                                   delete-statistics-value-map :member-name
                                   "payload"))
                                 (:shape-name
                                  "DeletePropertygraphStatisticsOutput"))

(smithy/sdk/shapes:define-output delete-sparql-statistics-output
                                 common-lisp:nil
                                 ((status-code :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "statusCode" :http-response-code
                                   common-lisp:t)
                                  (status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status")
                                  (payload :target-type
                                   delete-statistics-value-map :member-name
                                   "payload"))
                                 (:shape-name "DeleteSparqlStatisticsOutput"))

(smithy/sdk/shapes:define-structure delete-statistics-value-map common-lisp:nil
                                    ((active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "active")
                                     (statistics-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statisticsId"))
                                    (:shape-name "DeleteStatisticsValueMap"))

(smithy/sdk/shapes:define-map document-valued-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-list edge-labels :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list edge-properties :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure edge-structure common-lisp:nil
                                    ((count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "count")
                                     (edge-properties :target-type
                                      edge-properties :member-name
                                      "edgeProperties"))
                                    (:shape-name "EdgeStructure"))

(smithy/sdk/shapes:define-list edge-structures :member edge-structure)

(smithy/sdk/shapes:define-enum encoding
    common-lisp:nil
  (:gzip "gzip"))

(smithy/sdk/shapes:define-input execute-fast-reset-input common-lisp:nil
                                ((action :target-type action :required
                                  common-lisp:t :member-name "action")
                                 (token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "token"))
                                (:shape-name "ExecuteFastResetInput"))

(smithy/sdk/shapes:define-output execute-fast-reset-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (payload :target-type fast-reset-token
                                   :member-name "payload"))
                                 (:shape-name "ExecuteFastResetOutput"))

(smithy/sdk/shapes:define-input execute-gremlin-explain-query-input
                                common-lisp:nil
                                ((gremlin-query :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "gremlinQuery"
                                  :json-name "gremlin"))
                                (:shape-name "ExecuteGremlinExplainQueryInput"))

(smithy/sdk/shapes:define-output execute-gremlin-explain-query-output
                                 common-lisp:nil
                                 ((output :target-type report-as-text
                                   :member-name "output" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ExecuteGremlinExplainQueryOutput"))

(smithy/sdk/shapes:define-input execute-gremlin-profile-query-input
                                common-lisp:nil
                                ((gremlin-query :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "gremlinQuery"
                                  :json-name "gremlin")
                                 (results :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "results" :json-name "profile.results")
                                 (chop :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "chop" :json-name "profile.chop")
                                 (serializer :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serializer" :json-name "profile.serializer")
                                 (index-ops :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "indexOps" :json-name "profile.indexOps"))
                                (:shape-name "ExecuteGremlinProfileQueryInput"))

(smithy/sdk/shapes:define-output execute-gremlin-profile-query-output
                                 common-lisp:nil
                                 ((output :target-type report-as-text
                                   :member-name "output" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ExecuteGremlinProfileQueryOutput"))

(smithy/sdk/shapes:define-input execute-gremlin-query-input common-lisp:nil
                                ((gremlin-query :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "gremlinQuery"
                                  :json-name "gremlin")
                                 (serializer :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serializer" :http-header "accept"))
                                (:shape-name "ExecuteGremlinQueryInput"))

(smithy/sdk/shapes:define-output execute-gremlin-query-output common-lisp:nil
                                 ((request-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "requestId")
                                  (status :target-type
                                   gremlin-query-status-attributes :member-name
                                   "status")
                                  (result :target-type
                                   smithy/sdk/smithy-types:document
                                   :member-name "result")
                                  (meta :target-type
                                   smithy/sdk/smithy-types:document
                                   :member-name "meta"))
                                 (:shape-name "ExecuteGremlinQueryOutput"))

(smithy/sdk/shapes:define-input execute-open-cypher-explain-query-input
                                common-lisp:nil
                                ((open-cypher-query :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "openCypherQuery"
                                  :json-name "query")
                                 (parameters :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "parameters")
                                 (explain-mode :target-type
                                  open-cypher-explain-mode :required
                                  common-lisp:t :member-name "explainMode"
                                  :json-name "explain"))
                                (:shape-name
                                 "ExecuteOpenCypherExplainQueryInput"))

(smithy/sdk/shapes:define-output execute-open-cypher-explain-query-output
                                 common-lisp:nil
                                 ((results :target-type
                                   smithy/sdk/smithy-types:blob :required
                                   common-lisp:t :member-name "results"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "ExecuteOpenCypherExplainQueryOutput"))

(smithy/sdk/shapes:define-input execute-open-cypher-query-input common-lisp:nil
                                ((open-cypher-query :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "openCypherQuery"
                                  :json-name "query")
                                 (parameters :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "parameters"))
                                (:shape-name "ExecuteOpenCypherQueryInput"))

(smithy/sdk/shapes:define-output execute-open-cypher-query-output
                                 common-lisp:nil
                                 ((results :target-type
                                   smithy/sdk/smithy-types:document :required
                                   common-lisp:t :member-name "results"))
                                 (:shape-name "ExecuteOpenCypherQueryOutput"))

(smithy/sdk/shapes:define-error expired-stream-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "ExpiredStreamException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error failure-by-query-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "FailureByQueryException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure fast-reset-token common-lisp:nil
                                    ((token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "token"))
                                    (:shape-name "FastResetToken"))

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:csv "csv")
  (:opencypher "opencypher")
  (:ntriples "ntriples")
  (:nquads "nquads")
  (:rdfxml "rdfxml")
  (:turtle "turtle"))

(smithy/sdk/shapes:define-output get-engine-status-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status")
                                  (start-time :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "startTime")
                                  (db-engine-version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "dbEngineVersion")
                                  (role :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "role")
                                  (dfe-query-engine :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "dfeQueryEngine")
                                  (gremlin :target-type query-language-version
                                   :member-name "gremlin")
                                  (sparql :target-type query-language-version
                                   :member-name "sparql")
                                  (opencypher :target-type
                                   query-language-version :member-name
                                   "opencypher")
                                  (lab-mode :target-type string-valued-map
                                   :member-name "labMode")
                                  (rolling-back-trx-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "rollingBackTrxCount")
                                  (rolling-back-trx-earliest-start-time
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "rollingBackTrxEarliestStartTime")
                                  (features :target-type document-valued-map
                                   :member-name "features")
                                  (settings :target-type string-valued-map
                                   :member-name "settings"))
                                 (:shape-name "GetEngineStatusOutput"))

(smithy/sdk/shapes:define-input get-gremlin-query-status-input common-lisp:nil
                                ((query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "queryId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetGremlinQueryStatusInput"))

(smithy/sdk/shapes:define-output get-gremlin-query-status-output
                                 common-lisp:nil
                                 ((query-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "queryId")
                                  (query-string :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "queryString")
                                  (query-eval-stats :target-type
                                   query-eval-stats :member-name
                                   "queryEvalStats"))
                                 (:shape-name "GetGremlinQueryStatusOutput"))

(smithy/sdk/shapes:define-input get-loader-job-status-input common-lisp:nil
                                ((load-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "loadId"
                                  :http-label common-lisp:t)
                                 (details :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "details" :http-query "details")
                                 (errors :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "errors" :http-query "errors")
                                 (page :target-type positive-integer
                                  :member-name "page" :http-query "page")
                                 (errors-per-page :target-type positive-integer
                                  :member-name "errorsPerPage" :http-query
                                  "errorsPerPage"))
                                (:shape-name "GetLoaderJobStatusInput"))

(smithy/sdk/shapes:define-output get-loader-job-status-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (payload :target-type
                                   smithy/sdk/smithy-types:document :required
                                   common-lisp:t :member-name "payload"))
                                 (:shape-name "GetLoaderJobStatusOutput"))

(smithy/sdk/shapes:define-input get-mldata-processing-job-input common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn"))
                                (:shape-name "GetMLDataProcessingJobInput"))

(smithy/sdk/shapes:define-output get-mldata-processing-job-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (processing-job :target-type
                                   ml-resource-definition :member-name
                                   "processingJob"))
                                 (:shape-name "GetMLDataProcessingJobOutput"))

(smithy/sdk/shapes:define-input get-mlendpoint-input common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn"))
                                (:shape-name "GetMLEndpointInput"))

(smithy/sdk/shapes:define-output get-mlendpoint-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (endpoint :target-type ml-resource-definition
                                   :member-name "endpoint")
                                  (endpoint-config :target-type
                                   ml-config-definition :member-name
                                   "endpointConfig"))
                                 (:shape-name "GetMLEndpointOutput"))

(smithy/sdk/shapes:define-input get-mlmodel-training-job-input common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn"))
                                (:shape-name "GetMLModelTrainingJobInput"))

(smithy/sdk/shapes:define-output get-mlmodel-training-job-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (processing-job :target-type
                                   ml-resource-definition :member-name
                                   "processingJob")
                                  (hpo-job :target-type ml-resource-definition
                                   :member-name "hpoJob")
                                  (model-transform-job :target-type
                                   ml-resource-definition :member-name
                                   "modelTransformJob")
                                  (ml-models :target-type ml-models
                                   :member-name "mlModels"))
                                 (:shape-name "GetMLModelTrainingJobOutput"))

(smithy/sdk/shapes:define-input get-mlmodel-transform-job-input common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn"))
                                (:shape-name "GetMLModelTransformJobInput"))

(smithy/sdk/shapes:define-output get-mlmodel-transform-job-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "status")
                                  (id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (base-processing-job :target-type
                                   ml-resource-definition :member-name
                                   "baseProcessingJob")
                                  (remote-model-transform-job :target-type
                                   ml-resource-definition :member-name
                                   "remoteModelTransformJob")
                                  (models :target-type models :member-name
                                   "models"))
                                 (:shape-name "GetMLModelTransformJobOutput"))

(smithy/sdk/shapes:define-input get-open-cypher-query-status-input
                                common-lisp:nil
                                ((query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "queryId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetOpenCypherQueryStatusInput"))

(smithy/sdk/shapes:define-output get-open-cypher-query-status-output
                                 common-lisp:nil
                                 ((query-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "queryId")
                                  (query-string :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "queryString")
                                  (query-eval-stats :target-type
                                   query-eval-stats :member-name
                                   "queryEvalStats"))
                                 (:shape-name "GetOpenCypherQueryStatusOutput"))

(smithy/sdk/shapes:define-output get-propertygraph-statistics-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (payload :target-type statistics :required
                                   common-lisp:t :member-name "payload"))
                                 (:shape-name
                                  "GetPropertygraphStatisticsOutput"))

(smithy/sdk/shapes:define-input get-propertygraph-stream-input common-lisp:nil
                                ((limit :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "limit" :http-query "limit")
                                 (iterator-type :target-type iterator-type
                                  :member-name "iteratorType" :http-query
                                  "iteratorType")
                                 (commit-num :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "commitNum" :http-query "commitNum")
                                 (op-num :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "opNum" :http-query "opNum")
                                 (encoding :target-type encoding :member-name
                                  "encoding" :http-header "Accept-Encoding"))
                                (:shape-name "GetPropertygraphStreamInput"))

(smithy/sdk/shapes:define-output get-propertygraph-stream-output
                                 common-lisp:nil
                                 ((last-event-id :target-type string-valued-map
                                   :required common-lisp:t :member-name
                                   "lastEventId")
                                  (last-trx-timestamp-in-millis :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name
                                   "lastTrxTimestampInMillis" :json-name
                                   "lastTrxTimestamp")
                                  (format :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "format")
                                  (records :target-type
                                   propertygraph-records-list :required
                                   common-lisp:t :member-name "records")
                                  (total-records :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "totalRecords"))
                                 (:shape-name "GetPropertygraphStreamOutput"))

(smithy/sdk/shapes:define-input get-propertygraph-summary-input common-lisp:nil
                                ((mode :target-type graph-summary-type
                                  :member-name "mode" :http-query "mode"))
                                (:shape-name "GetPropertygraphSummaryInput"))

(smithy/sdk/shapes:define-output get-propertygraph-summary-output
                                 common-lisp:nil
                                 ((status-code :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "statusCode" :http-response-code
                                   common-lisp:t)
                                  (payload :target-type
                                   propertygraph-summary-value-map :member-name
                                   "payload"))
                                 (:shape-name "GetPropertygraphSummaryOutput"))

(smithy/sdk/shapes:define-input get-rdfgraph-summary-input common-lisp:nil
                                ((mode :target-type graph-summary-type
                                  :member-name "mode" :http-query "mode"))
                                (:shape-name "GetRDFGraphSummaryInput"))

(smithy/sdk/shapes:define-output get-rdfgraph-summary-output common-lisp:nil
                                 ((status-code :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "statusCode" :http-response-code
                                   common-lisp:t)
                                  (payload :target-type
                                   rdfgraph-summary-value-map :member-name
                                   "payload"))
                                 (:shape-name "GetRDFGraphSummaryOutput"))

(smithy/sdk/shapes:define-output get-sparql-statistics-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (payload :target-type statistics :required
                                   common-lisp:t :member-name "payload"))
                                 (:shape-name "GetSparqlStatisticsOutput"))

(smithy/sdk/shapes:define-input get-sparql-stream-input common-lisp:nil
                                ((limit :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "limit" :http-query "limit")
                                 (iterator-type :target-type iterator-type
                                  :member-name "iteratorType" :http-query
                                  "iteratorType")
                                 (commit-num :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "commitNum" :http-query "commitNum")
                                 (op-num :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "opNum" :http-query "opNum")
                                 (encoding :target-type encoding :member-name
                                  "encoding" :http-header "Accept-Encoding"))
                                (:shape-name "GetSparqlStreamInput"))

(smithy/sdk/shapes:define-output get-sparql-stream-output common-lisp:nil
                                 ((last-event-id :target-type string-valued-map
                                   :required common-lisp:t :member-name
                                   "lastEventId")
                                  (last-trx-timestamp-in-millis :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name
                                   "lastTrxTimestampInMillis" :json-name
                                   "lastTrxTimestamp")
                                  (format :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "format")
                                  (records :target-type sparql-records-list
                                   :required common-lisp:t :member-name
                                   "records")
                                  (total-records :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "totalRecords"))
                                 (:shape-name "GetSparqlStreamOutput"))

(smithy/sdk/shapes:define-enum graph-summary-type
    common-lisp:nil
  (:basic "basic")
  (:detailed "detailed"))

(smithy/sdk/shapes:define-list gremlin-queries :member gremlin-query-status)

(smithy/sdk/shapes:define-structure gremlin-query-status common-lisp:nil
                                    ((query-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "queryId")
                                     (query-string :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "queryString")
                                     (query-eval-stats :target-type
                                      query-eval-stats :member-name
                                      "queryEvalStats"))
                                    (:shape-name "GremlinQueryStatus"))

(smithy/sdk/shapes:define-structure gremlin-query-status-attributes
                                    common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message")
                                     (code :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "code")
                                     (attributes :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "attributes"))
                                    (:shape-name
                                     "GremlinQueryStatusAttributes"))

(smithy/sdk/shapes:define-error illegal-argument-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "IllegalArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-numeric-data-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "InvalidNumericDataException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum iterator-type
    common-lisp:nil
  (:at-sequence-number "AT_SEQUENCE_NUMBER")
  (:after-sequence-number "AFTER_SEQUENCE_NUMBER")
  (:trim-horizon "TRIM_HORIZON")
  (:latest "LATEST"))

(smithy/sdk/shapes:define-input list-gremlin-queries-input common-lisp:nil
                                ((include-waiting :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeWaiting" :http-query
                                  "includeWaiting"))
                                (:shape-name "ListGremlinQueriesInput"))

(smithy/sdk/shapes:define-output list-gremlin-queries-output common-lisp:nil
                                 ((accepted-query-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "acceptedQueryCount")
                                  (running-query-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "runningQueryCount")
                                  (queries :target-type gremlin-queries
                                   :member-name "queries"))
                                 (:shape-name "ListGremlinQueriesOutput"))

(smithy/sdk/shapes:define-input list-loader-jobs-input common-lisp:nil
                                ((limit :target-type positive-integer
                                  :member-name "limit" :http-query "limit")
                                 (include-queued-loads :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeQueuedLoads" :http-query
                                  "includeQueuedLoads"))
                                (:shape-name "ListLoaderJobsInput"))

(smithy/sdk/shapes:define-output list-loader-jobs-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (payload :target-type loader-id-result
                                   :required common-lisp:t :member-name
                                   "payload"))
                                 (:shape-name "ListLoaderJobsOutput"))

(smithy/sdk/shapes:define-input list-mldata-processing-jobs-input
                                common-lisp:nil
                                ((max-items :target-type positive-integer
                                  :member-name "maxItems" :http-query
                                  "maxItems")
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn"))
                                (:shape-name "ListMLDataProcessingJobsInput"))

(smithy/sdk/shapes:define-output list-mldata-processing-jobs-output
                                 common-lisp:nil
                                 ((ids :target-type string-list :member-name
                                   "ids"))
                                 (:shape-name "ListMLDataProcessingJobsOutput"))

(smithy/sdk/shapes:define-input list-mlendpoints-input common-lisp:nil
                                ((max-items :target-type positive-integer
                                  :member-name "maxItems" :http-query
                                  "maxItems")
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn"))
                                (:shape-name "ListMLEndpointsInput"))

(smithy/sdk/shapes:define-output list-mlendpoints-output common-lisp:nil
                                 ((ids :target-type string-list :member-name
                                   "ids"))
                                 (:shape-name "ListMLEndpointsOutput"))

(smithy/sdk/shapes:define-input list-mlmodel-training-jobs-input
                                common-lisp:nil
                                ((max-items :target-type positive-integer
                                  :member-name "maxItems" :http-query
                                  "maxItems")
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn"))
                                (:shape-name "ListMLModelTrainingJobsInput"))

(smithy/sdk/shapes:define-output list-mlmodel-training-jobs-output
                                 common-lisp:nil
                                 ((ids :target-type string-list :member-name
                                   "ids"))
                                 (:shape-name "ListMLModelTrainingJobsOutput"))

(smithy/sdk/shapes:define-input list-mlmodel-transform-jobs-input
                                common-lisp:nil
                                ((max-items :target-type positive-integer
                                  :member-name "maxItems" :http-query
                                  "maxItems")
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn" :http-query
                                  "neptuneIamRoleArn"))
                                (:shape-name "ListMLModelTransformJobsInput"))

(smithy/sdk/shapes:define-output list-mlmodel-transform-jobs-output
                                 common-lisp:nil
                                 ((ids :target-type string-list :member-name
                                   "ids"))
                                 (:shape-name "ListMLModelTransformJobsOutput"))

(smithy/sdk/shapes:define-input list-open-cypher-queries-input common-lisp:nil
                                ((include-waiting :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeWaiting" :http-query
                                  "includeWaiting"))
                                (:shape-name "ListOpenCypherQueriesInput"))

(smithy/sdk/shapes:define-output list-open-cypher-queries-output
                                 common-lisp:nil
                                 ((accepted-query-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "acceptedQueryCount")
                                  (running-query-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "runningQueryCount")
                                  (queries :target-type open-cypher-queries
                                   :member-name "queries"))
                                 (:shape-name "ListOpenCypherQueriesOutput"))

(smithy/sdk/shapes:define-error load-url-access-denied-exception
                                common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "LoadUrlAccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure loader-id-result common-lisp:nil
                                    ((load-ids :target-type string-list
                                      :member-name "loadIds"))
                                    (:shape-name "LoaderIdResult"))

(smithy/sdk/shapes:define-map long-valued-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list long-valued-map-list :member long-valued-map)

(smithy/sdk/shapes:define-error mlresource-not-found-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "MLResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error malformed-query-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "MalformedQueryException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input manage-propertygraph-statistics-input
                                common-lisp:nil
                                ((mode :target-type
                                  statistics-auto-generation-mode :member-name
                                  "mode"))
                                (:shape-name
                                 "ManagePropertygraphStatisticsInput"))

(smithy/sdk/shapes:define-output manage-propertygraph-statistics-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (payload :target-type
                                   refresh-statistics-id-map :member-name
                                   "payload"))
                                 (:shape-name
                                  "ManagePropertygraphStatisticsOutput"))

(smithy/sdk/shapes:define-input manage-sparql-statistics-input common-lisp:nil
                                ((mode :target-type
                                  statistics-auto-generation-mode :member-name
                                  "mode"))
                                (:shape-name "ManageSparqlStatisticsInput"))

(smithy/sdk/shapes:define-output manage-sparql-statistics-output
                                 common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (payload :target-type
                                   refresh-statistics-id-map :member-name
                                   "payload"))
                                 (:shape-name "ManageSparqlStatisticsOutput"))

(smithy/sdk/shapes:define-error memory-limit-exceeded-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "MemoryLimitExceededException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error method-not-allowed-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "MethodNotAllowedException")
                                (:error-code 405))

(smithy/sdk/shapes:define-error missing-parameter-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "MissingParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure ml-config-definition common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn"))
                                    (:shape-name "MlConfigDefinition"))

(smithy/sdk/shapes:define-list ml-models :member ml-config-definition)

(smithy/sdk/shapes:define-structure ml-resource-definition common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "status")
                                     (output-location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "outputLocation")
                                     (failure-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureReason")
                                     (cloudwatch-log-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "cloudwatchLogUrl"))
                                    (:shape-name "MlResourceDefinition"))

(smithy/sdk/shapes:define-enum mode
    common-lisp:nil
  (:resume "RESUME")
  (:new "NEW")
  (:auto "AUTO"))

(smithy/sdk/shapes:define-list models :member ml-config-definition)

(smithy/sdk/shapes:define-list node-labels :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list node-properties :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-structure common-lisp:nil
                                    ((count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "count")
                                     (node-properties :target-type
                                      node-properties :member-name
                                      "nodeProperties")
                                     (distinct-outgoing-edge-labels
                                      :target-type outgoing-edge-labels
                                      :member-name
                                      "distinctOutgoingEdgeLabels"))
                                    (:shape-name "NodeStructure"))

(smithy/sdk/shapes:define-list node-structures :member node-structure)

(smithy/sdk/shapes:define-enum open-cypher-explain-mode
    common-lisp:nil
  (:static "static")
  (:dynamic "dynamic")
  (:details "details"))

(smithy/sdk/shapes:define-list open-cypher-queries :member gremlin-query-status)

(smithy/sdk/shapes:define-list outgoing-edge-labels :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum parallelism
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:oversubscribe "OVERSUBSCRIBE"))

(smithy/sdk/shapes:define-error parsing-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "ParsingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error preconditions-failed-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "PreconditionsFailedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list predicates :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure propertygraph-data common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:document
                                      :required common-lisp:t :member-name
                                      "value")
                                     (from :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "from")
                                     (to :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "to"))
                                    (:shape-name "PropertygraphData"))

(smithy/sdk/shapes:define-structure propertygraph-record common-lisp:nil
                                    ((commit-timestamp-in-millis :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "commitTimestampInMillis" :json-name
                                      "commitTimestamp")
                                     (event-id :target-type string-valued-map
                                      :required common-lisp:t :member-name
                                      "eventId")
                                     (data :target-type propertygraph-data
                                      :required common-lisp:t :member-name
                                      "data")
                                     (op :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "op")
                                     (is-last-op :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isLastOp"))
                                    (:shape-name "PropertygraphRecord"))

(smithy/sdk/shapes:define-list propertygraph-records-list :member
                               propertygraph-record)

(smithy/sdk/shapes:define-structure propertygraph-summary common-lisp:nil
                                    ((num-nodes :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numNodes")
                                     (num-edges :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numEdges")
                                     (num-node-labels :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numNodeLabels")
                                     (num-edge-labels :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numEdgeLabels")
                                     (node-labels :target-type node-labels
                                      :member-name "nodeLabels")
                                     (edge-labels :target-type edge-labels
                                      :member-name "edgeLabels")
                                     (num-node-properties :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numNodeProperties")
                                     (num-edge-properties :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numEdgeProperties")
                                     (node-properties :target-type
                                      long-valued-map-list :member-name
                                      "nodeProperties")
                                     (edge-properties :target-type
                                      long-valued-map-list :member-name
                                      "edgeProperties")
                                     (total-node-property-values :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "totalNodePropertyValues")
                                     (total-edge-property-values :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "totalEdgePropertyValues")
                                     (node-structures :target-type
                                      node-structures :member-name
                                      "nodeStructures")
                                     (edge-structures :target-type
                                      edge-structures :member-name
                                      "edgeStructures"))
                                    (:shape-name "PropertygraphSummary"))

(smithy/sdk/shapes:define-structure propertygraph-summary-value-map
                                    common-lisp:nil
                                    ((version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version")
                                     (last-statistics-computation-time
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "lastStatisticsComputationTime"
                                      :timestamp-format "date-time")
                                     (graph-summary :target-type
                                      propertygraph-summary :member-name
                                      "graphSummary"))
                                    (:shape-name
                                     "PropertygraphSummaryValueMap"))

(smithy/sdk/shapes:define-structure query-eval-stats common-lisp:nil
                                    ((waited :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "waited")
                                     (elapsed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "elapsed")
                                     (cancelled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "cancelled")
                                     (subqueries :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "subqueries"))
                                    (:shape-name "QueryEvalStats"))

(smithy/sdk/shapes:define-structure query-language-version common-lisp:nil
                                    ((version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "QueryLanguageVersion"))

(smithy/sdk/shapes:define-error query-limit-exceeded-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "QueryLimitExceededException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error query-limit-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "QueryLimitException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error query-too-large-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "QueryTooLargeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure rdfgraph-summary common-lisp:nil
                                    ((num-distinct-subjects :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numDistinctSubjects")
                                     (num-distinct-predicates :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numDistinctPredicates")
                                     (num-quads :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numQuads")
                                     (num-classes :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numClasses")
                                     (classes :target-type classes :member-name
                                      "classes")
                                     (predicates :target-type
                                      long-valued-map-list :member-name
                                      "predicates")
                                     (subject-structures :target-type
                                      subject-structures :member-name
                                      "subjectStructures"))
                                    (:shape-name "RDFGraphSummary"))

(smithy/sdk/shapes:define-structure rdfgraph-summary-value-map common-lisp:nil
                                    ((version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version")
                                     (last-statistics-computation-time
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "lastStatisticsComputationTime"
                                      :timestamp-format "date-time")
                                     (graph-summary :target-type
                                      rdfgraph-summary :member-name
                                      "graphSummary"))
                                    (:shape-name "RDFGraphSummaryValueMap"))

(smithy/sdk/shapes:define-error read-only-violation-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "ReadOnlyViolationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure refresh-statistics-id-map common-lisp:nil
                                    ((statistics-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statisticsId"))
                                    (:shape-name "RefreshStatisticsIdMap"))

(smithy/sdk/shapes:define-type report-as-text smithy/sdk/smithy-types:blob
                               :media-type "text/plain")

(smithy/sdk/shapes:define-enum s3bucket-region
    common-lisp:nil
  (:us-east-1 "us-east-1")
  (:us-east-2 "us-east-2")
  (:us-west-1 "us-west-1")
  (:us-west-2 "us-west-2")
  (:ca-central-1 "ca-central-1")
  (:sa-east-1 "sa-east-1")
  (:eu-north-1 "eu-north-1")
  (:eu-west-1 "eu-west-1")
  (:eu-west-2 "eu-west-2")
  (:eu-west-3 "eu-west-3")
  (:eu-central-1 "eu-central-1")
  (:me-south-1 "me-south-1")
  (:af-south-1 "af-south-1")
  (:ap-east-1 "ap-east-1")
  (:ap-northeast-1 "ap-northeast-1")
  (:ap-northeast-2 "ap-northeast-2")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-south-1 "ap-south-1")
  (:cn-north-1 "cn-north-1")
  (:cn-northwest-1 "cn-northwest-1")
  (:us-gov-west-1 "us-gov-west-1")
  (:us-gov-east-1 "us-gov-east-1")
  (:ca-west-1 "ca-west-1")
  (:eu-south-2 "eu-south-2")
  (:il-central-1 "il-central-1")
  (:me-central-1 "me-central-1")
  (:ap-northeast-3 "ap-northeast-3")
  (:ap-southeast-3 "ap-southeast-3")
  (:ap-southeast-4 "ap-southeast-4")
  (:ap-southeast-5 "ap-southeast-5")
  (:ap-southeast-7 "ap-southeast-7")
  (:mx-central-1 "mx-central-1")
  (:ap-east-2 "ap-east-2")
  (:ap-south-2 "ap-south-2")
  (:eu-central-2 "eu-central-2"))

(smithy/sdk/shapes:define-error s3exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "S3Exception") (:error-code 400))

(smithy/sdk/shapes:define-error server-shutdown-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "ServerShutdownException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure sparql-data common-lisp:nil
                                    ((stmt :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "stmt"))
                                    (:shape-name "SparqlData"))

(smithy/sdk/shapes:define-structure sparql-record common-lisp:nil
                                    ((commit-timestamp-in-millis :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "commitTimestampInMillis" :json-name
                                      "commitTimestamp")
                                     (event-id :target-type string-valued-map
                                      :required common-lisp:t :member-name
                                      "eventId")
                                     (data :target-type sparql-data :required
                                      common-lisp:t :member-name "data")
                                     (op :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "op")
                                     (is-last-op :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isLastOp"))
                                    (:shape-name "SparqlRecord"))

(smithy/sdk/shapes:define-list sparql-records-list :member sparql-record)

(smithy/sdk/shapes:define-input start-loader-job-input common-lisp:nil
                                ((source :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "source")
                                 (format :target-type format :required
                                  common-lisp:t :member-name "format")
                                 (s3bucket-region :target-type s3bucket-region
                                  :required common-lisp:t :member-name
                                  "s3BucketRegion" :json-name "region")
                                 (iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "iamRoleArn")
                                 (mode :target-type mode :member-name "mode")
                                 (fail-on-error :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "failOnError")
                                 (parallelism :target-type parallelism
                                  :member-name "parallelism")
                                 (parser-configuration :target-type
                                  string-valued-map :member-name
                                  "parserConfiguration")
                                 (update-single-cardinality-properties
                                  :target-type smithy/sdk/smithy-types:boolean
                                  :member-name
                                  "updateSingleCardinalityProperties")
                                 (queue-request :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "queueRequest")
                                 (dependencies :target-type string-list
                                  :member-name "dependencies")
                                 (user-provided-edge-ids :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "userProvidedEdgeIds"))
                                (:shape-name "StartLoaderJobInput"))

(smithy/sdk/shapes:define-output start-loader-job-output common-lisp:nil
                                 ((status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (payload :target-type string-valued-map
                                   :required common-lisp:t :member-name
                                   "payload"))
                                 (:shape-name "StartLoaderJobOutput"))

(smithy/sdk/shapes:define-input start-mldata-processing-job-input
                                common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "id")
                                 (previous-data-processing-job-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "previousDataProcessingJobId")
                                 (input-data-s3location :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "inputDataS3Location")
                                 (processed-data-s3location :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "processedDataS3Location")
                                 (sagemaker-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "sagemakerIamRoleArn")
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn")
                                 (processing-instance-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "processingInstanceType")
                                 (processing-instance-volume-size-in-gb
                                  :target-type smithy/sdk/smithy-types:integer
                                  :member-name
                                  "processingInstanceVolumeSizeInGB")
                                 (processing-time-out-in-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "processingTimeOutInSeconds")
                                 (model-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "modelType")
                                 (config-file-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "configFileName")
                                 (subnets :target-type string-list :member-name
                                  "subnets")
                                 (security-group-ids :target-type string-list
                                  :member-name "securityGroupIds")
                                 (volume-encryption-kmskey :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "volumeEncryptionKMSKey")
                                 (s3output-encryption-kmskey :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "s3OutputEncryptionKMSKey"))
                                (:shape-name "StartMLDataProcessingJobInput"))

(smithy/sdk/shapes:define-output start-mldata-processing-job-output
                                 common-lisp:nil
                                 ((id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "arn")
                                  (creation-time-in-millis :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "creationTimeInMillis"))
                                 (:shape-name "StartMLDataProcessingJobOutput"))

(smithy/sdk/shapes:define-input start-mlmodel-training-job-input
                                common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "id")
                                 (previous-model-training-job-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "previousModelTrainingJobId")
                                 (data-processing-job-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "dataProcessingJobId")
                                 (train-model-s3location :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "trainModelS3Location")
                                 (sagemaker-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "sagemakerIamRoleArn")
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn")
                                 (base-processing-instance-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "baseProcessingInstanceType")
                                 (training-instance-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "trainingInstanceType")
                                 (training-instance-volume-size-in-gb
                                  :target-type smithy/sdk/smithy-types:integer
                                  :member-name
                                  "trainingInstanceVolumeSizeInGB")
                                 (training-time-out-in-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "trainingTimeOutInSeconds")
                                 (max-hponumber-of-training-jobs :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxHPONumberOfTrainingJobs")
                                 (max-hpoparallel-training-jobs :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxHPOParallelTrainingJobs")
                                 (subnets :target-type string-list :member-name
                                  "subnets")
                                 (security-group-ids :target-type string-list
                                  :member-name "securityGroupIds")
                                 (volume-encryption-kmskey :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "volumeEncryptionKMSKey")
                                 (s3output-encryption-kmskey :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "s3OutputEncryptionKMSKey")
                                 (enable-managed-spot-training :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "enableManagedSpotTraining")
                                 (custom-model-training-parameters :target-type
                                  custom-model-training-parameters :member-name
                                  "customModelTrainingParameters"))
                                (:shape-name "StartMLModelTrainingJobInput"))

(smithy/sdk/shapes:define-output start-mlmodel-training-job-output
                                 common-lisp:nil
                                 ((id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "arn")
                                  (creation-time-in-millis :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "creationTimeInMillis"))
                                 (:shape-name "StartMLModelTrainingJobOutput"))

(smithy/sdk/shapes:define-input start-mlmodel-transform-job-input
                                common-lisp:nil
                                ((id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "id")
                                 (data-processing-job-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "dataProcessingJobId")
                                 (ml-model-training-job-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "mlModelTrainingJobId")
                                 (training-job-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "trainingJobName")
                                 (model-transform-output-s3location
                                  :target-type smithy/sdk/smithy-types:string
                                  :required common-lisp:t :member-name
                                  "modelTransformOutputS3Location")
                                 (sagemaker-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "sagemakerIamRoleArn")
                                 (neptune-iam-role-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "neptuneIamRoleArn")
                                 (custom-model-transform-parameters
                                  :target-type
                                  custom-model-transform-parameters
                                  :member-name
                                  "customModelTransformParameters")
                                 (base-processing-instance-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "baseProcessingInstanceType")
                                 (base-processing-instance-volume-size-in-gb
                                  :target-type smithy/sdk/smithy-types:integer
                                  :member-name
                                  "baseProcessingInstanceVolumeSizeInGB")
                                 (subnets :target-type string-list :member-name
                                  "subnets")
                                 (security-group-ids :target-type string-list
                                  :member-name "securityGroupIds")
                                 (volume-encryption-kmskey :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "volumeEncryptionKMSKey")
                                 (s3output-encryption-kmskey :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "s3OutputEncryptionKMSKey"))
                                (:shape-name "StartMLModelTransformJobInput"))

(smithy/sdk/shapes:define-output start-mlmodel-transform-job-output
                                 common-lisp:nil
                                 ((id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "arn")
                                  (creation-time-in-millis :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "creationTimeInMillis"))
                                 (:shape-name "StartMLModelTransformJobOutput"))

(smithy/sdk/shapes:define-structure statistics common-lisp:nil
                                    ((auto-compute :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "autoCompute")
                                     (active :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "active")
                                     (statistics-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statisticsId")
                                     (date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "date" :timestamp-format
                                      "date-time")
                                     (note :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "note")
                                     (signature-info :target-type
                                      statistics-summary :member-name
                                      "signatureInfo"))
                                    (:shape-name "Statistics"))

(smithy/sdk/shapes:define-enum statistics-auto-generation-mode
    common-lisp:nil
  (:disable-autocompute "disableAutoCompute")
  (:enable-autocompute "enableAutoCompute")
  (:refresh "refresh"))

(smithy/sdk/shapes:define-error statistics-not-available-exception
                                common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "StatisticsNotAvailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure statistics-summary common-lisp:nil
                                    ((signature-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "signatureCount")
                                     (instance-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "instanceCount")
                                     (predicate-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "predicateCount"))
                                    (:shape-name "StatisticsSummary"))

(smithy/sdk/shapes:define-error stream-records-not-found-exception
                                common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "StreamRecordsNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map string-valued-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subject-structure common-lisp:nil
                                    ((count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "count")
                                     (predicates :target-type predicates
                                      :member-name "predicates"))
                                    (:shape-name "SubjectStructure"))

(smithy/sdk/shapes:define-list subject-structures :member subject-structure)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "ThrottlingException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error time-limit-exceeded-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "TimeLimitExceededException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((detailed-message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "detailedMessage")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "requestId")
                                 (code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "code"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation cancel-gremlin-query :shape-name
                                       "CancelGremlinQuery" :input
                                       cancel-gremlin-query-input :output
                                       cancel-gremlin-query-output :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "DELETE" :uri
                                       "/gremlin/status/{queryId}" :code 200)

(smithy/sdk/operation:define-operation cancel-loader-job :shape-name
                                       "CancelLoaderJob" :input
                                       cancel-loader-job-input :output
                                       cancel-loader-job-output :errors
                                       (bad-request-exception
                                        bulk-load-id-not-found-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        internal-failure-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        load-url-access-denied-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "DELETE" :uri "/loader/{loadId}"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-mldata-processing-job :shape-name
                                       "CancelMLDataProcessingJob" :input
                                       cancel-mldata-processing-job-input
                                       :output
                                       cancel-mldata-processing-job-output
                                       :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "DELETE" :uri
                                       "/ml/dataprocessing/{id}" :code 200)

(smithy/sdk/operation:define-operation cancel-mlmodel-training-job :shape-name
                                       "CancelMLModelTrainingJob" :input
                                       cancel-mlmodel-training-job-input
                                       :output
                                       cancel-mlmodel-training-job-output
                                       :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "DELETE" :uri
                                       "/ml/modeltraining/{id}" :code 200)

(smithy/sdk/operation:define-operation cancel-mlmodel-transform-job :shape-name
                                       "CancelMLModelTransformJob" :input
                                       cancel-mlmodel-transform-job-input
                                       :output
                                       cancel-mlmodel-transform-job-output
                                       :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "DELETE" :uri
                                       "/ml/modeltransform/{id}" :code 200)

(smithy/sdk/operation:define-operation cancel-open-cypher-query :shape-name
                                       "CancelOpenCypherQuery" :input
                                       cancel-open-cypher-query-input :output
                                       cancel-open-cypher-query-output :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-numeric-data-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "DELETE" :uri
                                       "/opencypher/status/{queryId}" :code 200)

(smithy/sdk/operation:define-operation create-mlendpoint :shape-name
                                       "CreateMLEndpoint" :input
                                       create-mlendpoint-input :output
                                       create-mlendpoint-output :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/ml/endpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-mlendpoint :shape-name
                                       "DeleteMLEndpoint" :input
                                       delete-mlendpoint-input :output
                                       delete-mlendpoint-output :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "DELETE" :uri
                                       "/ml/endpoints/{id}" :code 200)

(smithy/sdk/operation:define-operation delete-propertygraph-statistics
                                       :shape-name
                                       "DeletePropertygraphStatistics" :input
                                       common-lisp:null :output
                                       delete-propertygraph-statistics-output
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        statistics-not-available-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "DELETE" :uri
                                       "/propertygraph/statistics")

(smithy/sdk/operation:define-operation delete-sparql-statistics :shape-name
                                       "DeleteSparqlStatistics" :input
                                       common-lisp:null :output
                                       delete-sparql-statistics-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        statistics-not-available-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "DELETE" :uri
                                       "/sparql/statistics")

(smithy/sdk/operation:define-operation execute-fast-reset :shape-name
                                       "ExecuteFastReset" :input
                                       execute-fast-reset-input :output
                                       execute-fast-reset-output :errors
                                       (access-denied-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        method-not-allowed-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        server-shutdown-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/system" :code 200)

(smithy/sdk/operation:define-operation execute-gremlin-explain-query
                                       :shape-name "ExecuteGremlinExplainQuery"
                                       :input
                                       execute-gremlin-explain-query-input
                                       :output
                                       execute-gremlin-explain-query-output
                                       :errors
                                       (bad-request-exception
                                        cancelled-by-user-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        malformed-query-exception
                                        memory-limit-exceeded-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        query-limit-exceeded-exception
                                        query-limit-exception
                                        query-too-large-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/gremlin/explain"
                                       :code 200)

(smithy/sdk/operation:define-operation execute-gremlin-profile-query
                                       :shape-name "ExecuteGremlinProfileQuery"
                                       :input
                                       execute-gremlin-profile-query-input
                                       :output
                                       execute-gremlin-profile-query-output
                                       :errors
                                       (bad-request-exception
                                        cancelled-by-user-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        malformed-query-exception
                                        memory-limit-exceeded-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        query-limit-exceeded-exception
                                        query-limit-exception
                                        query-too-large-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/gremlin/profile"
                                       :code 200)

(smithy/sdk/operation:define-operation execute-gremlin-query :shape-name
                                       "ExecuteGremlinQuery" :input
                                       execute-gremlin-query-input :output
                                       execute-gremlin-query-output :errors
                                       (bad-request-exception
                                        cancelled-by-user-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        malformed-query-exception
                                        memory-limit-exceeded-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        query-limit-exceeded-exception
                                        query-limit-exception
                                        query-too-large-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/gremlin" :code 200)

(smithy/sdk/operation:define-operation execute-open-cypher-explain-query
                                       :shape-name
                                       "ExecuteOpenCypherExplainQuery" :input
                                       execute-open-cypher-explain-query-input
                                       :output
                                       execute-open-cypher-explain-query-output
                                       :errors
                                       (bad-request-exception
                                        cancelled-by-user-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-numeric-data-exception
                                        invalid-parameter-exception
                                        malformed-query-exception
                                        memory-limit-exceeded-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        query-limit-exceeded-exception
                                        query-limit-exception
                                        query-too-large-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri
                                       "/opencypher/explain" :code 200)

(smithy/sdk/operation:define-operation execute-open-cypher-query :shape-name
                                       "ExecuteOpenCypherQuery" :input
                                       execute-open-cypher-query-input :output
                                       execute-open-cypher-query-output :errors
                                       (bad-request-exception
                                        cancelled-by-user-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-numeric-data-exception
                                        invalid-parameter-exception
                                        malformed-query-exception
                                        memory-limit-exceeded-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        query-limit-exceeded-exception
                                        query-limit-exception
                                        query-too-large-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/opencypher" :code
                                       200)

(smithy/sdk/operation:define-operation get-engine-status :shape-name
                                       "GetEngineStatus" :input
                                       common-lisp:null :output
                                       get-engine-status-output :errors
                                       (client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        internal-failure-exception
                                        invalid-argument-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/status" :code 200)

(smithy/sdk/operation:define-operation get-gremlin-query-status :shape-name
                                       "GetGremlinQueryStatus" :input
                                       get-gremlin-query-status-input :output
                                       get-gremlin-query-status-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri
                                       "/gremlin/status/{queryId}" :code 200)

(smithy/sdk/operation:define-operation get-loader-job-status :shape-name
                                       "GetLoaderJobStatus" :input
                                       get-loader-job-status-input :output
                                       get-loader-job-status-output :errors
                                       (bad-request-exception
                                        bulk-load-id-not-found-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        internal-failure-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        load-url-access-denied-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/loader/{loadId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-mldata-processing-job :shape-name
                                       "GetMLDataProcessingJob" :input
                                       get-mldata-processing-job-input :output
                                       get-mldata-processing-job-output :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri
                                       "/ml/dataprocessing/{id}" :code 200)

(smithy/sdk/operation:define-operation get-mlendpoint :shape-name
                                       "GetMLEndpoint" :input
                                       get-mlendpoint-input :output
                                       get-mlendpoint-output :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/ml/endpoints/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-mlmodel-training-job :shape-name
                                       "GetMLModelTrainingJob" :input
                                       get-mlmodel-training-job-input :output
                                       get-mlmodel-training-job-output :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri
                                       "/ml/modeltraining/{id}" :code 200)

(smithy/sdk/operation:define-operation get-mlmodel-transform-job :shape-name
                                       "GetMLModelTransformJob" :input
                                       get-mlmodel-transform-job-input :output
                                       get-mlmodel-transform-job-output :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri
                                       "/ml/modeltransform/{id}" :code 200)

(smithy/sdk/operation:define-operation get-open-cypher-query-status :shape-name
                                       "GetOpenCypherQueryStatus" :input
                                       get-open-cypher-query-status-input
                                       :output
                                       get-open-cypher-query-status-output
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-numeric-data-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri
                                       "/opencypher/status/{queryId}" :code 200)

(smithy/sdk/operation:define-operation get-propertygraph-statistics :shape-name
                                       "GetPropertygraphStatistics" :input
                                       common-lisp:null :output
                                       get-propertygraph-statistics-output
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        statistics-not-available-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri
                                       "/propertygraph/statistics" :code 200)

(smithy/sdk/operation:define-operation get-propertygraph-stream :shape-name
                                       "GetPropertygraphStream" :input
                                       get-propertygraph-stream-input :output
                                       get-propertygraph-stream-output :errors
                                       (client-timeout-exception
                                        constraint-violation-exception
                                        expired-stream-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        memory-limit-exceeded-exception
                                        preconditions-failed-exception
                                        stream-records-not-found-exception
                                        throttling-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri
                                       "/propertygraph/stream" :code 200)

(smithy/sdk/operation:define-operation get-propertygraph-summary :shape-name
                                       "GetPropertygraphSummary" :input
                                       get-propertygraph-summary-input :output
                                       get-propertygraph-summary-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        statistics-not-available-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri
                                       "/propertygraph/statistics/summary"
                                       :code 200)

(smithy/sdk/operation:define-operation get-rdfgraph-summary :shape-name
                                       "GetRDFGraphSummary" :input
                                       get-rdfgraph-summary-input :output
                                       get-rdfgraph-summary-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        statistics-not-available-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri
                                       "/rdf/statistics/summary" :code 200)

(smithy/sdk/operation:define-operation get-sparql-statistics :shape-name
                                       "GetSparqlStatistics" :input
                                       common-lisp:null :output
                                       get-sparql-statistics-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        statistics-not-available-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/sparql/statistics"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sparql-stream :shape-name
                                       "GetSparqlStream" :input
                                       get-sparql-stream-input :output
                                       get-sparql-stream-output :errors
                                       (client-timeout-exception
                                        constraint-violation-exception
                                        expired-stream-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        memory-limit-exceeded-exception
                                        preconditions-failed-exception
                                        stream-records-not-found-exception
                                        throttling-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/sparql/stream"
                                       :code 200)

(smithy/sdk/operation:define-operation list-gremlin-queries :shape-name
                                       "ListGremlinQueries" :input
                                       list-gremlin-queries-input :output
                                       list-gremlin-queries-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/gremlin/status"
                                       :code 200)

(smithy/sdk/operation:define-operation list-loader-jobs :shape-name
                                       "ListLoaderJobs" :input
                                       list-loader-jobs-input :output
                                       list-loader-jobs-output :errors
                                       (bad-request-exception
                                        bulk-load-id-not-found-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        internal-failure-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        load-url-access-denied-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/loader" :code 200)

(smithy/sdk/operation:define-operation list-mldata-processing-jobs :shape-name
                                       "ListMLDataProcessingJobs" :input
                                       list-mldata-processing-jobs-input
                                       :output
                                       list-mldata-processing-jobs-output
                                       :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/ml/dataprocessing"
                                       :code 200)

(smithy/sdk/operation:define-operation list-mlendpoints :shape-name
                                       "ListMLEndpoints" :input
                                       list-mlendpoints-input :output
                                       list-mlendpoints-output :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/ml/endpoints" :code
                                       200)

(smithy/sdk/operation:define-operation list-mlmodel-training-jobs :shape-name
                                       "ListMLModelTrainingJobs" :input
                                       list-mlmodel-training-jobs-input :output
                                       list-mlmodel-training-jobs-output
                                       :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/ml/modeltraining"
                                       :code 200)

(smithy/sdk/operation:define-operation list-mlmodel-transform-jobs :shape-name
                                       "ListMLModelTransformJobs" :input
                                       list-mlmodel-transform-jobs-input
                                       :output
                                       list-mlmodel-transform-jobs-output
                                       :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/ml/modeltransform"
                                       :code 200)

(smithy/sdk/operation:define-operation list-open-cypher-queries :shape-name
                                       "ListOpenCypherQueries" :input
                                       list-open-cypher-queries-input :output
                                       list-open-cypher-queries-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        concurrent-modification-exception
                                        constraint-violation-exception
                                        failure-by-query-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-numeric-data-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        parsing-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        time-limit-exceeded-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "GET" :uri "/opencypher/status"
                                       :code 200)

(smithy/sdk/operation:define-operation manage-propertygraph-statistics
                                       :shape-name
                                       "ManagePropertygraphStatistics" :input
                                       manage-propertygraph-statistics-input
                                       :output
                                       manage-propertygraph-statistics-output
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        statistics-not-available-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri
                                       "/propertygraph/statistics" :code 200)

(smithy/sdk/operation:define-operation manage-sparql-statistics :shape-name
                                       "ManageSparqlStatistics" :input
                                       manage-sparql-statistics-input :output
                                       manage-sparql-statistics-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        read-only-violation-exception
                                        statistics-not-available-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/sparql/statistics"
                                       :code 200)

(smithy/sdk/operation:define-operation start-loader-job :shape-name
                                       "StartLoaderJob" :input
                                       start-loader-job-input :output
                                       start-loader-job-output :errors
                                       (bad-request-exception
                                        bulk-load-id-not-found-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        internal-failure-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        load-url-access-denied-exception
                                        missing-parameter-exception
                                        preconditions-failed-exception
                                        s3exception too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/loader" :code 200)

(smithy/sdk/operation:define-operation start-mldata-processing-job :shape-name
                                       "StartMLDataProcessingJob" :input
                                       start-mldata-processing-job-input
                                       :output
                                       start-mldata-processing-job-output
                                       :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/ml/dataprocessing"
                                       :code 200)

(smithy/sdk/operation:define-operation start-mlmodel-training-job :shape-name
                                       "StartMLModelTrainingJob" :input
                                       start-mlmodel-training-job-input :output
                                       start-mlmodel-training-job-output
                                       :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/ml/modeltraining"
                                       :code 200)

(smithy/sdk/operation:define-operation start-mlmodel-transform-job :shape-name
                                       "StartMLModelTransformJob" :input
                                       start-mlmodel-transform-job-input
                                       :output
                                       start-mlmodel-transform-job-output
                                       :errors
                                       (bad-request-exception
                                        client-timeout-exception
                                        constraint-violation-exception
                                        illegal-argument-exception
                                        invalid-argument-exception
                                        invalid-parameter-exception
                                        missing-parameter-exception
                                        mlresource-not-found-exception
                                        preconditions-failed-exception
                                        too-many-requests-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/ml/modeltransform"
                                       :code 200)
