(uiop/package:define-package #:pira/neptune-graph (:use)
                             (:export #:access-denied-exception
                              #:amazon-neptune-graph #:arn
                              #:blank-node-handling #:cancel-export-task
                              #:cancel-import-task #:cancel-query
                              #:conflict-exception #:conflict-exception-reason
                              #:create-graph #:create-graph-snapshot
                              #:create-graph-using-import-task
                              #:create-private-graph-endpoint #:delete-graph
                              #:delete-graph-snapshot
                              #:delete-private-graph-endpoint
                              #:document-valued-map #:edge-labels
                              #:edge-properties #:edge-structure
                              #:edge-structures #:execute-query #:explain-mode
                              #:export-filter #:export-filter-element
                              #:export-filter-label
                              #:export-filter-output-data-type
                              #:export-filter-output-property-name
                              #:export-filter-per-label-map
                              #:export-filter-property-attributes
                              #:export-filter-property-map
                              #:export-filter-source-property-name
                              #:export-format #:export-task-details
                              #:export-task-id #:export-task-status
                              #:export-task-summary #:export-task-summary-list
                              #:format #:get-export-task #:get-graph
                              #:get-graph-snapshot #:get-graph-summary
                              #:get-import-task #:get-private-graph-endpoint
                              #:get-query #:graph-data-summary #:graph-id
                              #:graph-identifier #:graph-name #:graph-resource
                              #:graph-snapshot-summary
                              #:graph-snapshot-summary-list #:graph-status
                              #:graph-summary #:graph-summary-list
                              #:graph-summary-mode #:import-options
                              #:import-task-details #:import-task-status
                              #:import-task-summary #:import-task-summary-list
                              #:internal-server-exception #:kms-key-arn
                              #:list-export-tasks #:list-graph-snapshots
                              #:list-graphs #:list-import-tasks
                              #:list-private-graph-endpoints #:list-queries
                              #:list-tags-for-resource #:long-valued-map
                              #:long-valued-map-list #:max-results
                              #:multi-value-handling-type
                              #:neptune-import-options #:node-labels
                              #:node-properties #:node-structure
                              #:node-structures #:outgoing-edge-labels
                              #:pagination-token #:parquet-type
                              #:plan-cache-type
                              #:private-graph-endpoint-resource
                              #:private-graph-endpoint-status
                              #:private-graph-endpoint-summary
                              #:private-graph-endpoint-summary-list
                              #:provisioned-memory #:query-language
                              #:query-response-blob #:query-state
                              #:query-state-input #:query-summary
                              #:query-summary-list #:replica-count
                              #:reset-graph #:resource-not-found-exception
                              #:restore-graph-from-snapshot #:role-arn
                              #:security-group-id #:security-group-ids
                              #:service-quota-exceeded-exception #:snapshot-id
                              #:snapshot-identifier #:snapshot-name
                              #:snapshot-resource #:snapshot-status
                              #:start-export-task #:start-import-task
                              #:subnet-id #:subnet-ids #:tag-key #:tag-key-list
                              #:tag-map #:tag-resource #:tag-value #:task-id
                              #:task-resource #:throttling-exception
                              #:unprocessable-exception
                              #:unprocessable-exception-reason #:untag-resource
                              #:update-graph #:validation-exception
                              #:validation-exception-reason
                              #:vector-search-configuration
                              #:vector-search-dimension #:vpc-endpoint-id
                              #:vpc-id #:neptune-graph-error))
(common-lisp:in-package #:pira/neptune-graph)

(common-lisp:define-condition neptune-graph-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-neptune-graph :shape-name
                                   "AmazonNeptuneGraph" :version "2023-11-29"
                                   :title "Amazon Neptune Graph" :operations
                                   '(cancel-query execute-query
                                     get-graph-summary get-query list-queries
                                     list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Neptune Graph")
                                      ("arnNamespace" . "neptune-graph")
                                      ("cloudTrailEventSource"
                                       . "neptune-graph.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "neptune-graph"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class neptune-graph-error))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum blank-node-handling
    common-lisp:nil
  (:convert-to-iri "convertToIri"))

(smithy/sdk/shapes:define-input cancel-export-task-input common-lisp:nil
                                ((task-identifier :target-type export-task-id
                                  :required common-lisp:t :member-name
                                  "taskIdentifier" :http-label common-lisp:t))
                                (:shape-name "CancelExportTaskInput"))

(smithy/sdk/shapes:define-output cancel-export-task-output common-lisp:nil
                                 ((graph-id :target-type graph-id :required
                                   common-lisp:t :member-name "graphId")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (task-id :target-type export-task-id
                                   :required common-lisp:t :member-name
                                   "taskId")
                                  (status :target-type export-task-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (format :target-type export-format :required
                                   common-lisp:t :member-name "format")
                                  (destination :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "destination")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :required common-lisp:t :member-name
                                   "kmsKeyIdentifier")
                                  (parquet-type :target-type parquet-type
                                   :member-name "parquetType")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason"))
                                 (:shape-name "CancelExportTaskOutput"))

(smithy/sdk/shapes:define-input cancel-import-task-input common-lisp:nil
                                ((task-identifier :target-type task-id
                                  :required common-lisp:t :member-name
                                  "taskIdentifier" :http-label common-lisp:t))
                                (:shape-name "CancelImportTaskInput"))

(smithy/sdk/shapes:define-output cancel-import-task-output common-lisp:nil
                                 ((graph-id :target-type graph-id :member-name
                                   "graphId")
                                  (task-id :target-type task-id :required
                                   common-lisp:t :member-name "taskId")
                                  (source :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "source")
                                  (format :target-type format :member-name
                                   "format")
                                  (parquet-type :target-type parquet-type
                                   :member-name "parquetType")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type import-task-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name "CancelImportTaskOutput"))

(smithy/sdk/shapes:define-input cancel-query-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :host-label
                                  common-lisp:t :http-header "graphIdentifier")
                                 (query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "queryId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelQueryInput"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type conflict-exception-reason
                                  :member-name "reason"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class neptune-graph-error))

(smithy/sdk/shapes:define-enum conflict-exception-reason
    common-lisp:nil
  (:concurrent-modification "CONCURRENT_MODIFICATION"))

(smithy/sdk/shapes:define-input create-graph-input common-lisp:nil
                                ((graph-name :target-type graph-name :required
                                  common-lisp:t :member-name "graphName")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (public-connectivity :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publicConnectivity")
                                 (kms-key-identifier :target-type kms-key-arn
                                  :member-name "kmsKeyIdentifier")
                                 (vector-search-configuration :target-type
                                  vector-search-configuration :member-name
                                  "vectorSearchConfiguration")
                                 (replica-count :target-type replica-count
                                  :member-name "replicaCount")
                                 (deletion-protection :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "deletionProtection")
                                 (provisioned-memory :target-type
                                  provisioned-memory :required common-lisp:t
                                  :member-name "provisionedMemory"))
                                (:shape-name "CreateGraphInput"))

(smithy/sdk/shapes:define-output create-graph-output common-lisp:nil
                                 ((id :target-type graph-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type graph-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type graph-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createTime")
                                  (provisioned-memory :target-type
                                   provisioned-memory :member-name
                                   "provisionedMemory")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (public-connectivity :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publicConnectivity")
                                  (vector-search-configuration :target-type
                                   vector-search-configuration :member-name
                                   "vectorSearchConfiguration")
                                  (replica-count :target-type replica-count
                                   :member-name "replicaCount")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier")
                                  (source-snapshot-id :target-type snapshot-id
                                   :member-name "sourceSnapshotId")
                                  (deletion-protection :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "deletionProtection")
                                  (build-number :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "buildNumber"))
                                 (:shape-name "CreateGraphOutput"))

(smithy/sdk/shapes:define-input create-graph-snapshot-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier")
                                 (snapshot-name :target-type snapshot-name
                                  :required common-lisp:t :member-name
                                  "snapshotName")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateGraphSnapshotInput"))

(smithy/sdk/shapes:define-output create-graph-snapshot-output common-lisp:nil
                                 ((id :target-type snapshot-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type snapshot-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "arn")
                                  (source-graph-id :target-type graph-id
                                   :member-name "sourceGraphId")
                                  (snapshot-create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "snapshotCreateTime")
                                  (status :target-type snapshot-status
                                   :member-name "status")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier"))
                                 (:shape-name "CreateGraphSnapshotOutput"))

(smithy/sdk/shapes:define-input create-graph-using-import-task-input
                                common-lisp:nil
                                ((graph-name :target-type graph-name :required
                                  common-lisp:t :member-name "graphName")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (public-connectivity :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publicConnectivity")
                                 (kms-key-identifier :target-type kms-key-arn
                                  :member-name "kmsKeyIdentifier")
                                 (vector-search-configuration :target-type
                                  vector-search-configuration :member-name
                                  "vectorSearchConfiguration")
                                 (replica-count :target-type replica-count
                                  :member-name "replicaCount")
                                 (deletion-protection :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "deletionProtection")
                                 (import-options :target-type import-options
                                  :member-name "importOptions")
                                 (max-provisioned-memory :target-type
                                  provisioned-memory :member-name
                                  "maxProvisionedMemory")
                                 (min-provisioned-memory :target-type
                                  provisioned-memory :member-name
                                  "minProvisionedMemory")
                                 (fail-on-error :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "failOnError")
                                 (source :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "source")
                                 (format :target-type format :member-name
                                  "format")
                                 (parquet-type :target-type parquet-type
                                  :member-name "parquetType")
                                 (blank-node-handling :target-type
                                  blank-node-handling :member-name
                                  "blankNodeHandling")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn"))
                                (:shape-name "CreateGraphUsingImportTaskInput"))

(smithy/sdk/shapes:define-output create-graph-using-import-task-output
                                 common-lisp:nil
                                 ((graph-id :target-type graph-id :member-name
                                   "graphId")
                                  (task-id :target-type task-id :required
                                   common-lisp:t :member-name "taskId")
                                  (source :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "source")
                                  (format :target-type format :member-name
                                   "format")
                                  (parquet-type :target-type parquet-type
                                   :member-name "parquetType")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type import-task-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (import-options :target-type import-options
                                   :member-name "importOptions"))
                                 (:shape-name
                                  "CreateGraphUsingImportTaskOutput"))

(smithy/sdk/shapes:define-input create-private-graph-endpoint-input
                                common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :http-label
                                  common-lisp:t)
                                 (vpc-id :target-type vpc-id :member-name
                                  "vpcId")
                                 (subnet-ids :target-type subnet-ids
                                  :member-name "subnetIds")
                                 (vpc-security-group-ids :target-type
                                  security-group-ids :member-name
                                  "vpcSecurityGroupIds"))
                                (:shape-name "CreatePrivateGraphEndpointInput"))

(smithy/sdk/shapes:define-output create-private-graph-endpoint-output
                                 common-lisp:nil
                                 ((vpc-id :target-type vpc-id :required
                                   common-lisp:t :member-name "vpcId")
                                  (subnet-ids :target-type subnet-ids :required
                                   common-lisp:t :member-name "subnetIds")
                                  (status :target-type
                                   private-graph-endpoint-status :required
                                   common-lisp:t :member-name "status")
                                  (vpc-endpoint-id :target-type vpc-endpoint-id
                                   :member-name "vpcEndpointId"))
                                 (:shape-name
                                  "CreatePrivateGraphEndpointOutput"))

(smithy/sdk/shapes:define-input delete-graph-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :http-label
                                  common-lisp:t)
                                 (skip-snapshot :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "skipSnapshot"
                                  :http-query "skipSnapshot"))
                                (:shape-name "DeleteGraphInput"))

(smithy/sdk/shapes:define-output delete-graph-output common-lisp:nil
                                 ((id :target-type graph-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type graph-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type graph-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createTime")
                                  (provisioned-memory :target-type
                                   provisioned-memory :member-name
                                   "provisionedMemory")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (public-connectivity :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publicConnectivity")
                                  (vector-search-configuration :target-type
                                   vector-search-configuration :member-name
                                   "vectorSearchConfiguration")
                                  (replica-count :target-type replica-count
                                   :member-name "replicaCount")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier")
                                  (source-snapshot-id :target-type snapshot-id
                                   :member-name "sourceSnapshotId")
                                  (deletion-protection :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "deletionProtection")
                                  (build-number :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "buildNumber"))
                                 (:shape-name "DeleteGraphOutput"))

(smithy/sdk/shapes:define-input delete-graph-snapshot-input common-lisp:nil
                                ((snapshot-identifier :target-type
                                  snapshot-identifier :required common-lisp:t
                                  :member-name "snapshotIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteGraphSnapshotInput"))

(smithy/sdk/shapes:define-output delete-graph-snapshot-output common-lisp:nil
                                 ((id :target-type snapshot-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type snapshot-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "arn")
                                  (source-graph-id :target-type graph-id
                                   :member-name "sourceGraphId")
                                  (snapshot-create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "snapshotCreateTime")
                                  (status :target-type snapshot-status
                                   :member-name "status")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier"))
                                 (:shape-name "DeleteGraphSnapshotOutput"))

(smithy/sdk/shapes:define-input delete-private-graph-endpoint-input
                                common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :http-label
                                  common-lisp:t)
                                 (vpc-id :target-type vpc-id :required
                                  common-lisp:t :member-name "vpcId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeletePrivateGraphEndpointInput"))

(smithy/sdk/shapes:define-output delete-private-graph-endpoint-output
                                 common-lisp:nil
                                 ((vpc-id :target-type vpc-id :required
                                   common-lisp:t :member-name "vpcId")
                                  (subnet-ids :target-type subnet-ids :required
                                   common-lisp:t :member-name "subnetIds")
                                  (status :target-type
                                   private-graph-endpoint-status :required
                                   common-lisp:t :member-name "status")
                                  (vpc-endpoint-id :target-type vpc-endpoint-id
                                   :member-name "vpcEndpointId"))
                                 (:shape-name
                                  "DeletePrivateGraphEndpointOutput"))

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

(smithy/sdk/shapes:define-input execute-query-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :host-label
                                  common-lisp:t :http-header "graphIdentifier")
                                 (query-string :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "queryString"
                                  :json-name "query")
                                 (language :target-type query-language
                                  :required common-lisp:t :member-name
                                  "language")
                                 (parameters :target-type document-valued-map
                                  :member-name "parameters")
                                 (plan-cache :target-type plan-cache-type
                                  :member-name "planCache")
                                 (explain-mode :target-type explain-mode
                                  :member-name "explainMode" :json-name
                                  "explain")
                                 (query-timeout-milliseconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "queryTimeoutMilliseconds"))
                                (:shape-name "ExecuteQueryInput"))

(smithy/sdk/shapes:define-output execute-query-output common-lisp:nil
                                 ((payload :target-type query-response-blob
                                   :required common-lisp:t :member-name
                                   "payload" :http-payload common-lisp:t))
                                 (:shape-name "ExecuteQueryOutput"))

(smithy/sdk/shapes:define-enum explain-mode
    common-lisp:nil
  (:static "STATIC")
  (:details "DETAILS"))

(smithy/sdk/shapes:define-structure export-filter common-lisp:nil
                                    ((vertex-filter :target-type
                                      export-filter-per-label-map :member-name
                                      "vertexFilter")
                                     (edge-filter :target-type
                                      export-filter-per-label-map :member-name
                                      "edgeFilter"))
                                    (:shape-name "ExportFilter"))

(smithy/sdk/shapes:define-structure export-filter-element common-lisp:nil
                                    ((properties :target-type
                                      export-filter-property-map :member-name
                                      "properties"))
                                    (:shape-name "ExportFilterElement"))

(smithy/sdk/shapes:define-type export-filter-label
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-filter-output-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-filter-output-property-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map export-filter-per-label-map :key
                              export-filter-label :value export-filter-element)

(smithy/sdk/shapes:define-structure export-filter-property-attributes
                                    common-lisp:nil
                                    ((output-type :target-type
                                      export-filter-output-data-type
                                      :member-name "outputType")
                                     (source-property-name :target-type
                                      export-filter-source-property-name
                                      :member-name "sourcePropertyName")
                                     (multi-value-handling :target-type
                                      multi-value-handling-type :member-name
                                      "multiValueHandling"))
                                    (:shape-name
                                     "ExportFilterPropertyAttributes"))

(smithy/sdk/shapes:define-map export-filter-property-map :key
                              export-filter-output-property-name :value
                              export-filter-property-attributes)

(smithy/sdk/shapes:define-type export-filter-source-property-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum export-format
    common-lisp:nil
  (:parquet "PARQUET")
  (:csv "CSV"))

(smithy/sdk/shapes:define-structure export-task-details common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (time-elapsed-seconds :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "timeElapsedSeconds")
                                     (progress-percentage :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "progressPercentage")
                                     (num-vertices-written :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numVerticesWritten")
                                     (num-edges-written :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numEdgesWritten"))
                                    (:shape-name "ExportTaskDetails"))

(smithy/sdk/shapes:define-type export-task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum export-task-status
    common-lisp:nil
  (:initializing "INITIALIZING")
  (:exporting "EXPORTING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:cancelling "CANCELLING")
  (:cancelled "CANCELLED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure export-task-summary common-lisp:nil
                                    ((graph-id :target-type graph-id :required
                                      common-lisp:t :member-name "graphId")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (task-id :target-type export-task-id
                                      :required common-lisp:t :member-name
                                      "taskId")
                                     (status :target-type export-task-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (format :target-type export-format
                                      :required common-lisp:t :member-name
                                      "format")
                                     (destination :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "destination")
                                     (kms-key-identifier :target-type
                                      kms-key-arn :required common-lisp:t
                                      :member-name "kmsKeyIdentifier")
                                     (parquet-type :target-type parquet-type
                                      :member-name "parquetType")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason"))
                                    (:shape-name "ExportTaskSummary"))

(smithy/sdk/shapes:define-list export-task-summary-list :member
                               export-task-summary)

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:csv "CSV")
  (:open-cypher "OPEN_CYPHER")
  (:parquet "PARQUET")
  (:ntriples "NTRIPLES"))

(smithy/sdk/shapes:define-input get-export-task-input common-lisp:nil
                                ((task-identifier :target-type export-task-id
                                  :required common-lisp:t :member-name
                                  "taskIdentifier" :http-label common-lisp:t))
                                (:shape-name "GetExportTaskInput"))

(smithy/sdk/shapes:define-output get-export-task-output common-lisp:nil
                                 ((graph-id :target-type graph-id :required
                                   common-lisp:t :member-name "graphId")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (task-id :target-type export-task-id
                                   :required common-lisp:t :member-name
                                   "taskId")
                                  (status :target-type export-task-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (format :target-type export-format :required
                                   common-lisp:t :member-name "format")
                                  (destination :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "destination")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :required common-lisp:t :member-name
                                   "kmsKeyIdentifier")
                                  (parquet-type :target-type parquet-type
                                   :member-name "parquetType")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (export-task-details :target-type
                                   export-task-details :member-name
                                   "exportTaskDetails")
                                  (export-filter :target-type export-filter
                                   :member-name "exportFilter"))
                                 (:shape-name "GetExportTaskOutput"))

(smithy/sdk/shapes:define-input get-graph-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetGraphInput"))

(smithy/sdk/shapes:define-output get-graph-output common-lisp:nil
                                 ((id :target-type graph-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type graph-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type graph-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createTime")
                                  (provisioned-memory :target-type
                                   provisioned-memory :member-name
                                   "provisionedMemory")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (public-connectivity :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publicConnectivity")
                                  (vector-search-configuration :target-type
                                   vector-search-configuration :member-name
                                   "vectorSearchConfiguration")
                                  (replica-count :target-type replica-count
                                   :member-name "replicaCount")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier")
                                  (source-snapshot-id :target-type snapshot-id
                                   :member-name "sourceSnapshotId")
                                  (deletion-protection :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "deletionProtection")
                                  (build-number :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "buildNumber"))
                                 (:shape-name "GetGraphOutput"))

(smithy/sdk/shapes:define-input get-graph-snapshot-input common-lisp:nil
                                ((snapshot-identifier :target-type
                                  snapshot-identifier :required common-lisp:t
                                  :member-name "snapshotIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetGraphSnapshotInput"))

(smithy/sdk/shapes:define-output get-graph-snapshot-output common-lisp:nil
                                 ((id :target-type snapshot-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type snapshot-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "arn")
                                  (source-graph-id :target-type graph-id
                                   :member-name "sourceGraphId")
                                  (snapshot-create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "snapshotCreateTime")
                                  (status :target-type snapshot-status
                                   :member-name "status")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier"))
                                 (:shape-name "GetGraphSnapshotOutput"))

(smithy/sdk/shapes:define-input get-graph-summary-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :host-label
                                  common-lisp:t :http-header "graphIdentifier")
                                 (mode :target-type graph-summary-mode
                                  :member-name "mode" :http-query "mode"))
                                (:shape-name "GetGraphSummaryInput"))

(smithy/sdk/shapes:define-output get-graph-summary-output common-lisp:nil
                                 ((version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "version")
                                  (last-statistics-computation-time
                                   :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastStatisticsComputationTime"
                                   :timestamp-format "date-time")
                                  (graph-summary :target-type
                                   graph-data-summary :member-name
                                   "graphSummary"))
                                 (:shape-name "GetGraphSummaryOutput"))

(smithy/sdk/shapes:define-input get-import-task-input common-lisp:nil
                                ((task-identifier :target-type task-id
                                  :required common-lisp:t :member-name
                                  "taskIdentifier" :http-label common-lisp:t))
                                (:shape-name "GetImportTaskInput"))

(smithy/sdk/shapes:define-output get-import-task-output common-lisp:nil
                                 ((graph-id :target-type graph-id :member-name
                                   "graphId")
                                  (task-id :target-type task-id :required
                                   common-lisp:t :member-name "taskId")
                                  (source :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "source")
                                  (format :target-type format :member-name
                                   "format")
                                  (parquet-type :target-type parquet-type
                                   :member-name "parquetType")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type import-task-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (import-options :target-type import-options
                                   :member-name "importOptions")
                                  (import-task-details :target-type
                                   import-task-details :member-name
                                   "importTaskDetails")
                                  (attempt-number :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "attemptNumber")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason"))
                                 (:shape-name "GetImportTaskOutput"))

(smithy/sdk/shapes:define-input get-private-graph-endpoint-input
                                common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :http-label
                                  common-lisp:t)
                                 (vpc-id :target-type vpc-id :required
                                  common-lisp:t :member-name "vpcId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetPrivateGraphEndpointInput"))

(smithy/sdk/shapes:define-output get-private-graph-endpoint-output
                                 common-lisp:nil
                                 ((vpc-id :target-type vpc-id :required
                                   common-lisp:t :member-name "vpcId")
                                  (subnet-ids :target-type subnet-ids :required
                                   common-lisp:t :member-name "subnetIds")
                                  (status :target-type
                                   private-graph-endpoint-status :required
                                   common-lisp:t :member-name "status")
                                  (vpc-endpoint-id :target-type vpc-endpoint-id
                                   :member-name "vpcEndpointId"))
                                 (:shape-name "GetPrivateGraphEndpointOutput"))

(smithy/sdk/shapes:define-input get-query-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :host-label
                                  common-lisp:t :http-header "graphIdentifier")
                                 (query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "queryId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetQueryInput"))

(smithy/sdk/shapes:define-output get-query-output common-lisp:nil
                                 ((id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "id")
                                  (query-string :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "queryString")
                                  (waited :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "waited")
                                  (elapsed :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "elapsed")
                                  (state :target-type query-state :member-name
                                   "state"))
                                 (:shape-name "GetQueryOutput"))

(smithy/sdk/shapes:define-structure graph-data-summary common-lisp:nil
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
                                    (:shape-name "GraphDataSummary"))

(smithy/sdk/shapes:define-type graph-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type graph-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type graph-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure graph-snapshot-summary common-lisp:nil
                                    ((id :target-type snapshot-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type snapshot-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (source-graph-id :target-type graph-id
                                      :member-name "sourceGraphId")
                                     (snapshot-create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "snapshotCreateTime")
                                     (status :target-type snapshot-status
                                      :member-name "status")
                                     (kms-key-identifier :target-type
                                      kms-key-arn :member-name
                                      "kmsKeyIdentifier"))
                                    (:shape-name "GraphSnapshotSummary"))

(smithy/sdk/shapes:define-list graph-snapshot-summary-list :member
                               graph-snapshot-summary)

(smithy/sdk/shapes:define-enum graph-status
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:resetting "RESETTING")
  (:updating "UPDATING")
  (:snapshotting "SNAPSHOTTING")
  (:failed "FAILED")
  (:importing "IMPORTING"))

(smithy/sdk/shapes:define-structure graph-summary common-lisp:nil
                                    ((id :target-type graph-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type graph-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type graph-status
                                      :member-name "status")
                                     (provisioned-memory :target-type
                                      provisioned-memory :member-name
                                      "provisionedMemory")
                                     (public-connectivity :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "publicConnectivity")
                                     (endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "endpoint")
                                     (replica-count :target-type replica-count
                                      :member-name "replicaCount")
                                     (kms-key-identifier :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyIdentifier")
                                     (deletion-protection :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "deletionProtection"))
                                    (:shape-name "GraphSummary"))

(smithy/sdk/shapes:define-list graph-summary-list :member graph-summary)

(smithy/sdk/shapes:define-enum graph-summary-mode
    common-lisp:nil
  (:basic "BASIC")
  (:detailed "DETAILED"))

(smithy/sdk/shapes:define-union import-options common-lisp:nil
                                ((neptune :target-type neptune-import-options
                                  :member-name "neptune"))
                                (:shape-name "ImportOptions"))

(smithy/sdk/shapes:define-structure import-task-details common-lisp:nil
                                    ((status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "status")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (time-elapsed-seconds :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "timeElapsedSeconds")
                                     (progress-percentage :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "progressPercentage")
                                     (error-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "errorCount")
                                     (error-details :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorDetails")
                                     (statement-count :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "statementCount")
                                     (dictionary-entry-count :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "dictionaryEntryCount"))
                                    (:shape-name "ImportTaskDetails"))

(smithy/sdk/shapes:define-enum import-task-status
    common-lisp:nil
  (:initializing "INITIALIZING")
  (:exporting "EXPORTING")
  (:analyzing-data "ANALYZING_DATA")
  (:importing "IMPORTING")
  (:reprovisioning "REPROVISIONING")
  (:rolling-back "ROLLING_BACK")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:cancelling "CANCELLING")
  (:cancelled "CANCELLED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure import-task-summary common-lisp:nil
                                    ((graph-id :target-type graph-id
                                      :member-name "graphId")
                                     (task-id :target-type task-id :required
                                      common-lisp:t :member-name "taskId")
                                     (source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "source")
                                     (format :target-type format :member-name
                                      "format")
                                     (parquet-type :target-type parquet-type
                                      :member-name "parquetType")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (status :target-type import-task-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "ImportTaskSummary"))

(smithy/sdk/shapes:define-list import-task-summary-list :member
                               import-task-summary)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class neptune-graph-error))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-export-tasks-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :member-name
                                  "graphIdentifier" :http-query
                                  "graphIdentifier")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListExportTasksInput"))

(smithy/sdk/shapes:define-output list-export-tasks-output common-lisp:nil
                                 ((tasks :target-type export-task-summary-list
                                   :required common-lisp:t :member-name
                                   "tasks")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListExportTasksOutput"))

(smithy/sdk/shapes:define-input list-graph-snapshots-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :member-name
                                  "graphIdentifier" :http-query
                                  "graphIdentifier")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListGraphSnapshotsInput"))

(smithy/sdk/shapes:define-output list-graph-snapshots-output common-lisp:nil
                                 ((graph-snapshots :target-type
                                   graph-snapshot-summary-list :required
                                   common-lisp:t :member-name "graphSnapshots")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListGraphSnapshotsOutput"))

(smithy/sdk/shapes:define-input list-graphs-input common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListGraphsInput"))

(smithy/sdk/shapes:define-output list-graphs-output common-lisp:nil
                                 ((graphs :target-type graph-summary-list
                                   :required common-lisp:t :member-name
                                   "graphs")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListGraphsOutput"))

(smithy/sdk/shapes:define-input list-import-tasks-input common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListImportTasksInput"))

(smithy/sdk/shapes:define-output list-import-tasks-output common-lisp:nil
                                 ((tasks :target-type import-task-summary-list
                                   :required common-lisp:t :member-name
                                   "tasks")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListImportTasksOutput"))

(smithy/sdk/shapes:define-input list-private-graph-endpoints-input
                                common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :http-label
                                  common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPrivateGraphEndpointsInput"))

(smithy/sdk/shapes:define-output list-private-graph-endpoints-output
                                 common-lisp:nil
                                 ((private-graph-endpoints :target-type
                                   private-graph-endpoint-summary-list
                                   :required common-lisp:t :member-name
                                   "privateGraphEndpoints")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListPrivateGraphEndpointsOutput"))

(smithy/sdk/shapes:define-input list-queries-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :host-label
                                  common-lisp:t :http-header "graphIdentifier")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "maxResults"
                                  :http-query "maxResults")
                                 (state :target-type query-state-input
                                  :member-name "state" :http-query "state"))
                                (:shape-name "ListQueriesInput"))

(smithy/sdk/shapes:define-output list-queries-output common-lisp:nil
                                 ((queries :target-type query-summary-list
                                   :required common-lisp:t :member-name
                                   "queries"))
                                 (:shape-name "ListQueriesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-map long-valued-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list long-valued-map-list :member long-valued-map)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum multi-value-handling-type
    common-lisp:nil
  (:to-list "TO_LIST")
  (:pick-first "PICK_FIRST"))

(smithy/sdk/shapes:define-structure neptune-import-options common-lisp:nil
                                    ((s3export-path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "s3ExportPath")
                                     (s3export-kms-key-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "s3ExportKmsKeyId")
                                     (preserve-default-vertex-labels
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "preserveDefaultVertexLabels")
                                     (preserve-edge-ids :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "preserveEdgeIds"))
                                    (:shape-name "NeptuneImportOptions"))

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

(smithy/sdk/shapes:define-list outgoing-edge-labels :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum parquet-type
    common-lisp:nil
  (:columnar "COLUMNAR"))

(smithy/sdk/shapes:define-enum plan-cache-type
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:auto "AUTO"))

common-lisp:nil

(smithy/sdk/shapes:define-enum private-graph-endpoint-status
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure private-graph-endpoint-summary
                                    common-lisp:nil
                                    ((vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "vpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (status :target-type
                                      private-graph-endpoint-status :required
                                      common-lisp:t :member-name "status")
                                     (vpc-endpoint-id :target-type
                                      vpc-endpoint-id :member-name
                                      "vpcEndpointId"))
                                    (:shape-name "PrivateGraphEndpointSummary"))

(smithy/sdk/shapes:define-list private-graph-endpoint-summary-list :member
                               private-graph-endpoint-summary)

(smithy/sdk/shapes:define-type provisioned-memory
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum query-language
    common-lisp:nil
  (:open-cypher "OPEN_CYPHER"))

(smithy/sdk/shapes:define-type query-response-blob smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-enum query-state
    common-lisp:nil
  (:running "RUNNING")
  (:waiting "WAITING")
  (:cancelling "CANCELLING"))

(smithy/sdk/shapes:define-enum query-state-input
    common-lisp:nil
  (:all "ALL")
  (:running "RUNNING")
  (:waiting "WAITING")
  (:cancelling "CANCELLING"))

(smithy/sdk/shapes:define-structure query-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (query-string :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "queryString")
                                     (waited :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "waited")
                                     (elapsed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "elapsed")
                                     (state :target-type query-state
                                      :member-name "state"))
                                    (:shape-name "QuerySummary"))

(smithy/sdk/shapes:define-list query-summary-list :member query-summary)

(smithy/sdk/shapes:define-type replica-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input reset-graph-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :http-label
                                  common-lisp:t)
                                 (skip-snapshot :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "skipSnapshot"))
                                (:shape-name "ResetGraphInput"))

(smithy/sdk/shapes:define-output reset-graph-output common-lisp:nil
                                 ((id :target-type graph-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type graph-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type graph-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createTime")
                                  (provisioned-memory :target-type
                                   provisioned-memory :member-name
                                   "provisionedMemory")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (public-connectivity :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publicConnectivity")
                                  (vector-search-configuration :target-type
                                   vector-search-configuration :member-name
                                   "vectorSearchConfiguration")
                                  (replica-count :target-type replica-count
                                   :member-name "replicaCount")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier")
                                  (source-snapshot-id :target-type snapshot-id
                                   :member-name "sourceSnapshotId")
                                  (deletion-protection :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "deletionProtection")
                                  (build-number :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "buildNumber"))
                                 (:shape-name "ResetGraphOutput"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class neptune-graph-error))

(smithy/sdk/shapes:define-input restore-graph-from-snapshot-input
                                common-lisp:nil
                                ((snapshot-identifier :target-type
                                  snapshot-identifier :required common-lisp:t
                                  :member-name "snapshotIdentifier" :http-label
                                  common-lisp:t)
                                 (graph-name :target-type graph-name :required
                                  common-lisp:t :member-name "graphName")
                                 (provisioned-memory :target-type
                                  provisioned-memory :member-name
                                  "provisionedMemory")
                                 (deletion-protection :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "deletionProtection")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (replica-count :target-type replica-count
                                  :member-name "replicaCount")
                                 (public-connectivity :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publicConnectivity"))
                                (:shape-name "RestoreGraphFromSnapshotInput"))

(smithy/sdk/shapes:define-output restore-graph-from-snapshot-output
                                 common-lisp:nil
                                 ((id :target-type graph-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type graph-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type graph-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createTime")
                                  (provisioned-memory :target-type
                                   provisioned-memory :member-name
                                   "provisionedMemory")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (public-connectivity :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publicConnectivity")
                                  (vector-search-configuration :target-type
                                   vector-search-configuration :member-name
                                   "vectorSearchConfiguration")
                                  (replica-count :target-type replica-count
                                   :member-name "replicaCount")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier")
                                  (source-snapshot-id :target-type snapshot-id
                                   :member-name "sourceSnapshotId")
                                  (deletion-protection :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "deletionProtection")
                                  (build-number :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "buildNumber"))
                                 (:shape-name "RestoreGraphFromSnapshotOutput"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class neptune-graph-error))

(smithy/sdk/shapes:define-type snapshot-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snapshot-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snapshot-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum snapshot-status
    common-lisp:nil
  (:creating "CREATING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-input start-export-task-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (format :target-type export-format :required
                                  common-lisp:t :member-name "format")
                                 (destination :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "destination")
                                 (kms-key-identifier :target-type kms-key-arn
                                  :required common-lisp:t :member-name
                                  "kmsKeyIdentifier")
                                 (parquet-type :target-type parquet-type
                                  :member-name "parquetType")
                                 (export-filter :target-type export-filter
                                  :member-name "exportFilter")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "StartExportTaskInput"))

(smithy/sdk/shapes:define-output start-export-task-output common-lisp:nil
                                 ((graph-id :target-type graph-id :required
                                   common-lisp:t :member-name "graphId")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (task-id :target-type export-task-id
                                   :required common-lisp:t :member-name
                                   "taskId")
                                  (status :target-type export-task-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (format :target-type export-format :required
                                   common-lisp:t :member-name "format")
                                  (destination :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "destination")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :required common-lisp:t :member-name
                                   "kmsKeyIdentifier")
                                  (parquet-type :target-type parquet-type
                                   :member-name "parquetType")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (export-filter :target-type export-filter
                                   :member-name "exportFilter"))
                                 (:shape-name "StartExportTaskOutput"))

(smithy/sdk/shapes:define-input start-import-task-input common-lisp:nil
                                ((import-options :target-type import-options
                                  :member-name "importOptions")
                                 (fail-on-error :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "failOnError")
                                 (source :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "source")
                                 (format :target-type format :member-name
                                  "format")
                                 (parquet-type :target-type parquet-type
                                  :member-name "parquetType")
                                 (blank-node-handling :target-type
                                  blank-node-handling :member-name
                                  "blankNodeHandling")
                                 (graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :http-label
                                  common-lisp:t)
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn"))
                                (:shape-name "StartImportTaskInput"))

(smithy/sdk/shapes:define-output start-import-task-output common-lisp:nil
                                 ((graph-id :target-type graph-id :member-name
                                   "graphId")
                                  (task-id :target-type task-id :required
                                   common-lisp:t :member-name "taskId")
                                  (source :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "source")
                                  (format :target-type format :member-name
                                   "format")
                                  (parquet-type :target-type parquet-type
                                   :member-name "parquetType")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type import-task-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (import-options :target-type import-options
                                   :member-name "importOptions"))
                                 (:shape-name "StartImportTaskOutput"))

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class neptune-graph-error))

(smithy/sdk/shapes:define-error unprocessable-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  unprocessable-exception-reason :required
                                  common-lisp:t :member-name "reason"))
                                (:shape-name "UnprocessableException")
                                (:error-code 422)
                                (:base-class neptune-graph-error))

(smithy/sdk/shapes:define-enum unprocessable-exception-reason
    common-lisp:nil
  (:query-timeout "QUERY_TIMEOUT")
  (:internal-limit-exceeded "INTERNAL_LIMIT_EXCEEDED")
  (:memory-limit-exceeded "MEMORY_LIMIT_EXCEEDED")
  (:storage-limit-exceeded "STORAGE_LIMIT_EXCEEDED")
  (:partition-full "PARTITION_FULL"))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-graph-input common-lisp:nil
                                ((graph-identifier :target-type
                                  graph-identifier :required common-lisp:t
                                  :member-name "graphIdentifier" :http-label
                                  common-lisp:t)
                                 (public-connectivity :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "publicConnectivity")
                                 (provisioned-memory :target-type
                                  provisioned-memory :member-name
                                  "provisionedMemory")
                                 (deletion-protection :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "deletionProtection"))
                                (:shape-name "UpdateGraphInput"))

(smithy/sdk/shapes:define-output update-graph-output common-lisp:nil
                                 ((id :target-type graph-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type graph-name :required
                                   common-lisp:t :member-name "name")
                                  (arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type graph-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (create-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createTime")
                                  (provisioned-memory :target-type
                                   provisioned-memory :member-name
                                   "provisionedMemory")
                                  (endpoint :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "endpoint")
                                  (public-connectivity :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "publicConnectivity")
                                  (vector-search-configuration :target-type
                                   vector-search-configuration :member-name
                                   "vectorSearchConfiguration")
                                  (replica-count :target-type replica-count
                                   :member-name "replicaCount")
                                  (kms-key-identifier :target-type kms-key-arn
                                   :member-name "kmsKeyIdentifier")
                                  (source-snapshot-id :target-type snapshot-id
                                   :member-name "sourceSnapshotId")
                                  (deletion-protection :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "deletionProtection")
                                  (build-number :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "buildNumber"))
                                 (:shape-name "UpdateGraphOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class neptune-graph-error))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:constraint-violation "CONSTRAINT_VIOLATION")
  (:illegal-argument "ILLEGAL_ARGUMENT")
  (:malformed-query "MALFORMED_QUERY")
  (:query-cancelled "QUERY_CANCELLED")
  (:query-too-large "QUERY_TOO_LARGE")
  (:unsupported-operation "UNSUPPORTED_OPERATION")
  (:bad-request "BAD_REQUEST"))

(smithy/sdk/shapes:define-structure vector-search-configuration common-lisp:nil
                                    ((dimension :target-type
                                      vector-search-dimension :required
                                      common-lisp:t :member-name "dimension"))
                                    (:shape-name "VectorSearchConfiguration"))

(smithy/sdk/shapes:define-type vector-search-dimension
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type vpc-endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation cancel-export-task :shape-name
                                       "CancelExportTask" :input
                                       cancel-export-task-input :output
                                       cancel-export-task-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/exporttasks/{taskIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation cancel-import-task :shape-name
                                       "CancelImportTask" :input
                                       cancel-import-task-input :output
                                       cancel-import-task-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/importtasks/{taskIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation cancel-query :shape-name "CancelQuery"
                                       :input cancel-query-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/queries/{queryId}" :code 200
                                       :endpoint-host-prefix
                                       "{graphIdentifier}.")

(smithy/sdk/operation:define-operation create-graph :shape-name "CreateGraph"
                                       :input create-graph-input :output
                                       create-graph-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/graphs" :code 201)

(smithy/sdk/operation:define-operation create-graph-snapshot :shape-name
                                       "CreateGraphSnapshot" :input
                                       create-graph-snapshot-input :output
                                       create-graph-snapshot-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/snapshots" :code
                                       201)

(smithy/sdk/operation:define-operation create-graph-using-import-task
                                       :shape-name "CreateGraphUsingImportTask"
                                       :input
                                       create-graph-using-import-task-input
                                       :output
                                       create-graph-using-import-task-output
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/importtasks" :code
                                       201)

(smithy/sdk/operation:define-operation create-private-graph-endpoint
                                       :shape-name "CreatePrivateGraphEndpoint"
                                       :input
                                       create-private-graph-endpoint-input
                                       :output
                                       create-private-graph-endpoint-output
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/graphs/{graphIdentifier}/endpoints/"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-graph :shape-name "DeleteGraph"
                                       :input delete-graph-input :output
                                       delete-graph-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/graphs/{graphIdentifier}" :code 200)

(smithy/sdk/operation:define-operation delete-graph-snapshot :shape-name
                                       "DeleteGraphSnapshot" :input
                                       delete-graph-snapshot-input :output
                                       delete-graph-snapshot-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/snapshots/{snapshotIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-private-graph-endpoint
                                       :shape-name "DeletePrivateGraphEndpoint"
                                       :input
                                       delete-private-graph-endpoint-input
                                       :output
                                       delete-private-graph-endpoint-output
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/graphs/{graphIdentifier}/endpoints/{vpcId}"
                                       :code 200)

(smithy/sdk/operation:define-operation execute-query :shape-name "ExecuteQuery"
                                       :input execute-query-input :output
                                       execute-query-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        unprocessable-exception
                                        validation-exception)
                                       :method "POST" :uri "/queries" :code 200
                                       :endpoint-host-prefix
                                       "{graphIdentifier}.")

(smithy/sdk/operation:define-operation get-export-task :shape-name
                                       "GetExportTask" :input
                                       get-export-task-input :output
                                       get-export-task-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/exporttasks/{taskIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-graph :shape-name "GetGraph" :input
                                       get-graph-input :output get-graph-output
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/graphs/{graphIdentifier}" :code 200)

(smithy/sdk/operation:define-operation get-graph-snapshot :shape-name
                                       "GetGraphSnapshot" :input
                                       get-graph-snapshot-input :output
                                       get-graph-snapshot-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/snapshots/{snapshotIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-graph-summary :shape-name
                                       "GetGraphSummary" :input
                                       get-graph-summary-input :output
                                       get-graph-summary-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/summary" :code 200
                                       :endpoint-host-prefix
                                       "{graphIdentifier}.")

(smithy/sdk/operation:define-operation get-import-task :shape-name
                                       "GetImportTask" :input
                                       get-import-task-input :output
                                       get-import-task-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/importtasks/{taskIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-private-graph-endpoint :shape-name
                                       "GetPrivateGraphEndpoint" :input
                                       get-private-graph-endpoint-input :output
                                       get-private-graph-endpoint-output
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/graphs/{graphIdentifier}/endpoints/{vpcId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-query :shape-name "GetQuery" :input
                                       get-query-input :output get-query-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/queries/{queryId}"
                                       :code 200 :endpoint-host-prefix
                                       "{graphIdentifier}.")

(smithy/sdk/operation:define-operation list-export-tasks :shape-name
                                       "ListExportTasks" :input
                                       list-export-tasks-input :output
                                       list-export-tasks-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/exporttasks" :code
                                       200)

(smithy/sdk/operation:define-operation list-graph-snapshots :shape-name
                                       "ListGraphSnapshots" :input
                                       list-graph-snapshots-input :output
                                       list-graph-snapshots-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/snapshots" :code
                                       200)

(smithy/sdk/operation:define-operation list-graphs :shape-name "ListGraphs"
                                       :input list-graphs-input :output
                                       list-graphs-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/graphs" :code 200)

(smithy/sdk/operation:define-operation list-import-tasks :shape-name
                                       "ListImportTasks" :input
                                       list-import-tasks-input :output
                                       list-import-tasks-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/importtasks" :code
                                       200)

(smithy/sdk/operation:define-operation list-private-graph-endpoints :shape-name
                                       "ListPrivateGraphEndpoints" :input
                                       list-private-graph-endpoints-input
                                       :output
                                       list-private-graph-endpoints-output
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/graphs/{graphIdentifier}/endpoints/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-queries :shape-name "ListQueries"
                                       :input list-queries-input :output
                                       list-queries-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/queries" :code 200
                                       :endpoint-host-prefix
                                       "{graphIdentifier}.")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation reset-graph :shape-name "ResetGraph"
                                       :input reset-graph-input :output
                                       reset-graph-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/graphs/{graphIdentifier}" :code 200)

(smithy/sdk/operation:define-operation restore-graph-from-snapshot :shape-name
                                       "RestoreGraphFromSnapshot" :input
                                       restore-graph-from-snapshot-input
                                       :output
                                       restore-graph-from-snapshot-output
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/snapshots/{snapshotIdentifier}/restore"
                                       :code 201)

(smithy/sdk/operation:define-operation start-export-task :shape-name
                                       "StartExportTask" :input
                                       start-export-task-input :output
                                       start-export-task-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/exporttasks" :code
                                       201)

(smithy/sdk/operation:define-operation start-import-task :shape-name
                                       "StartImportTask" :input
                                       start-import-task-input :output
                                       start-import-task-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/graphs/{graphIdentifier}/importtasks"
                                       :code 201)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-graph :shape-name "UpdateGraph"
                                       :input update-graph-input :output
                                       update-graph-output :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/graphs/{graphIdentifier}" :code 200)
