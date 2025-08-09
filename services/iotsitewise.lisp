(uiop/package:define-package #:pira/iotsitewise (:use)
                             (:export #:arn #:awsio-tsite-wise
                              #:access-policy-summaries #:access-policy-summary
                              #:action-definition #:action-definitions
                              #:action-payload #:action-payload-string
                              #:action-summaries #:action-summary
                              #:adaptive-ingestion #:aggregate-type
                              #:aggregate-types #:aggregated-double-value
                              #:aggregated-value #:aggregated-values
                              #:aggregates #:alarms #:amazon-resource-name
                              #:asset-binding-value-filter
                              #:asset-composite-model
                              #:asset-composite-model-path
                              #:asset-composite-model-path-segment
                              #:asset-composite-model-summaries
                              #:asset-composite-model-summary
                              #:asset-composite-models #:asset-error-code
                              #:asset-error-details #:asset-error-message
                              #:asset-hierarchies #:asset-hierarchy
                              #:asset-hierarchy-info #:asset-ids
                              #:asset-model-binding-value-filter
                              #:asset-model-composite-model
                              #:asset-model-composite-model-definition
                              #:asset-model-composite-model-definitions
                              #:asset-model-composite-model-path
                              #:asset-model-composite-model-path-segment
                              #:asset-model-composite-model-summaries
                              #:asset-model-composite-model-summary
                              #:asset-model-composite-models
                              #:asset-model-hierarchies #:asset-model-hierarchy
                              #:asset-model-hierarchy-definition
                              #:asset-model-hierarchy-definitions
                              #:asset-model-properties #:asset-model-property
                              #:asset-model-property-binding-value
                              #:asset-model-property-binding-value-filter
                              #:asset-model-property-definition
                              #:asset-model-property-definitions
                              #:asset-model-property-path
                              #:asset-model-property-path-segment
                              #:asset-model-property-summaries
                              #:asset-model-property-summary
                              #:asset-model-state #:asset-model-status
                              #:asset-model-summaries #:asset-model-summary
                              #:asset-model-type #:asset-model-version-filter
                              #:asset-model-version-type #:asset-properties
                              #:asset-property #:asset-property-alias
                              #:asset-property-binding-value
                              #:asset-property-binding-value-filter
                              #:asset-property-path
                              #:asset-property-path-segment
                              #:asset-property-summaries
                              #:asset-property-summary #:asset-property-value
                              #:asset-property-value-history
                              #:asset-property-values
                              #:asset-relationship-summaries
                              #:asset-relationship-summary
                              #:asset-relationship-type #:asset-state
                              #:asset-status #:asset-summaries #:asset-summary
                              #:associate-assets
                              #:associate-time-series-to-asset-property
                              #:associated-assets-summaries
                              #:associated-assets-summary #:attribute
                              #:auth-mode #:batch-associate-project-assets
                              #:batch-associate-project-assets-errors
                              #:batch-disassociate-project-assets
                              #:batch-disassociate-project-assets-errors
                              #:batch-entry-completion-status
                              #:batch-get-asset-property-aggregates
                              #:batch-get-asset-property-aggregates-entries
                              #:batch-get-asset-property-aggregates-entry
                              #:batch-get-asset-property-aggregates-error-code
                              #:batch-get-asset-property-aggregates-error-entries
                              #:batch-get-asset-property-aggregates-error-entry
                              #:batch-get-asset-property-aggregates-error-info
                              #:batch-get-asset-property-aggregates-max-results
                              #:batch-get-asset-property-aggregates-skipped-entries
                              #:batch-get-asset-property-aggregates-skipped-entry
                              #:batch-get-asset-property-aggregates-success-entries
                              #:batch-get-asset-property-aggregates-success-entry
                              #:batch-get-asset-property-value
                              #:batch-get-asset-property-value-entries
                              #:batch-get-asset-property-value-entry
                              #:batch-get-asset-property-value-error-code
                              #:batch-get-asset-property-value-error-entries
                              #:batch-get-asset-property-value-error-entry
                              #:batch-get-asset-property-value-error-info
                              #:batch-get-asset-property-value-history
                              #:batch-get-asset-property-value-history-entries
                              #:batch-get-asset-property-value-history-entry
                              #:batch-get-asset-property-value-history-error-code
                              #:batch-get-asset-property-value-history-error-entries
                              #:batch-get-asset-property-value-history-error-entry
                              #:batch-get-asset-property-value-history-error-info
                              #:batch-get-asset-property-value-history-max-results
                              #:batch-get-asset-property-value-history-skipped-entries
                              #:batch-get-asset-property-value-history-skipped-entry
                              #:batch-get-asset-property-value-history-success-entries
                              #:batch-get-asset-property-value-history-success-entry
                              #:batch-get-asset-property-value-skipped-entries
                              #:batch-get-asset-property-value-skipped-entry
                              #:batch-get-asset-property-value-success-entries
                              #:batch-get-asset-property-value-success-entry
                              #:batch-put-asset-property-error
                              #:batch-put-asset-property-error-entries
                              #:batch-put-asset-property-error-entry
                              #:batch-put-asset-property-errors
                              #:batch-put-asset-property-value
                              #:batch-put-asset-property-value-error-code
                              #:binding-value-list #:boolean-value #:bucket
                              #:capability-configuration #:capability-namespace
                              #:capability-sync-status #:citation #:citations
                              #:client-token #:column-info #:column-name
                              #:column-names #:column-type #:columns-list
                              #:composite-model-property #:composition-details
                              #:composition-relationship
                              #:composition-relationship-item
                              #:composition-relationship-summaries
                              #:composition-relationship-summary
                              #:computation-model-anomaly-detection-configuration
                              #:computation-model-configuration
                              #:computation-model-data-binding
                              #:computation-model-data-binding-usage-summaries
                              #:computation-model-data-binding-usage-summary
                              #:computation-model-data-binding-value
                              #:computation-model-data-binding-variable
                              #:computation-model-execution-summary
                              #:computation-model-execution-summary-key
                              #:computation-model-execution-summary-value
                              #:computation-model-id-list
                              #:computation-model-resolve-to-resource-summaries
                              #:computation-model-resolve-to-resource-summary
                              #:computation-model-state
                              #:computation-model-status
                              #:computation-model-summaries
                              #:computation-model-summary
                              #:computation-model-type #:compute-location
                              #:configuration-error-details
                              #:configuration-state #:configuration-status
                              #:content #:conversation-id
                              #:core-device-operating-system
                              #:core-device-thing-name #:create-access-policy
                              #:create-asset #:create-asset-model
                              #:create-asset-model-composite-model
                              #:create-bulk-import-job
                              #:create-computation-model #:create-dashboard
                              #:create-dataset #:create-gateway
                              #:create-missing-property #:create-portal
                              #:create-project #:csv #:custom-id
                              #:customer-managed-s3storage
                              #:dashboard-definition #:dashboard-summaries
                              #:dashboard-summary #:data-binding-value
                              #:data-binding-value-filter #:data-set-reference
                              #:dataset-source #:dataset-source-format
                              #:dataset-source-type #:dataset-state
                              #:dataset-status #:dataset-summaries
                              #:dataset-summary #:datum #:datum-list
                              #:default-value #:delete-access-policy
                              #:delete-asset #:delete-asset-model
                              #:delete-asset-model-composite-model
                              #:delete-asset-model-interface-relationship
                              #:delete-computation-model #:delete-dashboard
                              #:delete-dataset #:delete-files-after-import
                              #:delete-gateway #:delete-portal #:delete-project
                              #:delete-time-series #:describe-access-policy
                              #:describe-action #:describe-asset
                              #:describe-asset-composite-model
                              #:describe-asset-model
                              #:describe-asset-model-composite-model
                              #:describe-asset-model-interface-relationship
                              #:describe-asset-property
                              #:describe-bulk-import-job
                              #:describe-computation-model
                              #:describe-computation-model-execution-summary
                              #:describe-dashboard #:describe-dataset
                              #:describe-default-encryption-configuration
                              #:describe-execution #:describe-gateway
                              #:describe-gateway-capability-configuration
                              #:describe-logging-options #:describe-portal
                              #:describe-project
                              #:describe-storage-configuration
                              #:describe-time-series #:description
                              #:detailed-error #:detailed-error-code
                              #:detailed-error-message #:detailed-errors
                              #:disallow-ingest-null-na-n #:disassociate-assets
                              #:disassociate-time-series-from-asset-property
                              #:disassociated-data-storage-state #:etag #:email
                              #:encryption-type #:entry-id #:error-code
                              #:error-details #:error-message
                              #:error-report-location #:exception-message
                              #:exclude-properties #:execute-action
                              #:execute-query #:execute-query-max-results
                              #:execute-query-next-token #:execution-details
                              #:execution-details-key #:execution-details-value
                              #:execution-result #:execution-result-key
                              #:execution-result-value #:execution-state
                              #:execution-status #:execution-summaries
                              #:execution-summary #:expression
                              #:expression-variable #:expression-variables
                              #:external-id #:file #:file-format #:files
                              #:forwarding-config #:forwarding-config-state
                              #:gateway-capability-summaries
                              #:gateway-capability-summary #:gateway-name
                              #:gateway-platform #:gateway-summaries
                              #:gateway-summary #:gateway-version
                              #:get-asset-property-aggregates
                              #:get-asset-property-value
                              #:get-asset-property-value-aggregates-max-results
                              #:get-asset-property-value-history
                              #:get-asset-property-value-history-max-results
                              #:get-interpolated-asset-property-values
                              #:greengrass #:greengrass-v2 #:group-identity
                              #:hierarchy-mapping #:hierarchy-mappings
                              #:iamrole-identity #:iamuser-identity #:id #:ids
                              #:iam-arn #:identity #:identity-id
                              #:identity-type #:image #:image-file
                              #:image-file-data #:image-file-type
                              #:image-location #:input-properties
                              #:interface-details #:interface-relationship
                              #:interface-relationship-summaries
                              #:interface-relationship-summary
                              #:interface-summaries #:interface-summary
                              #:interpolated-asset-property-value
                              #:interpolated-asset-property-values
                              #:interpolation-type #:interval
                              #:interval-in-seconds
                              #:interval-window-in-seconds #:invocation-output
                              #:invoke-assistant #:iot-core-thing-name
                              #:job-configuration #:job-status #:job-summaries
                              #:job-summary #:kendra-source-detail #:kms-key-id
                              #:list-access-policies #:list-actions
                              #:list-asset-model-composite-models
                              #:list-asset-model-properties
                              #:list-asset-model-properties-filter
                              #:list-asset-models
                              #:list-asset-models-type-filter
                              #:list-asset-properties
                              #:list-asset-properties-filter
                              #:list-asset-relationships #:list-assets
                              #:list-assets-filter #:list-associated-assets
                              #:list-bulk-import-jobs
                              #:list-bulk-import-jobs-filter
                              #:list-composition-relationships
                              #:list-computation-model-data-binding-usages
                              #:list-computation-model-resolve-to-resources
                              #:list-computation-models #:list-dashboards
                              #:list-datasets #:list-executions #:list-gateways
                              #:list-interface-relationships #:list-portals
                              #:list-project-assets #:list-projects
                              #:list-tags-for-resource #:list-time-series
                              #:list-time-series-type #:location
                              #:logging-level #:logging-options #:macro
                              #:match-by-property-name #:matched-data-binding
                              #:max-interpolated-results #:max-results
                              #:measurement #:measurement-processing-config
                              #:message-input #:metric
                              #:metric-processing-config #:metric-window
                              #:monitor-error-code #:monitor-error-details
                              #:monitor-error-message #:multi-layer-storage
                              #:name #:next-token #:nullable-boolean
                              #:number-of-days #:offset #:offset-in-nanos
                              #:parquet #:permission #:portal-client-id
                              #:portal-resource #:portal-state #:portal-status
                              #:portal-summaries #:portal-summary
                              #:portal-tools #:portal-type
                              #:portal-type-configuration #:portal-type-entry
                              #:portal-type-key #:project-resource
                              #:project-summaries #:project-summary #:property
                              #:property-alias #:property-data-type
                              #:property-mapping
                              #:property-mapping-configuration
                              #:property-mappings #:property-notification
                              #:property-notification-state
                              #:property-notification-topic #:property-type
                              #:property-unit #:property-value-boolean-value
                              #:property-value-double-value
                              #:property-value-integer-value
                              #:property-value-null-value
                              #:property-value-string-value
                              #:put-asset-model-interface-relationship
                              #:put-asset-property-value-entries
                              #:put-asset-property-value-entry
                              #:put-default-encryption-configuration
                              #:put-logging-options #:put-storage-configuration
                              #:qualities #:quality #:query-statement
                              #:raw-value-type #:reference #:resolution
                              #:resolve-to #:resolve-to-resource-type
                              #:resource #:resource-arn #:resource-id
                              #:resource-type #:response-stream
                              #:restricted-description #:restricted-name
                              #:result-property #:retention-period #:row #:rows
                              #:ssoapplication-id #:scalar-type #:scalar-value
                              #:select-all #:siemens-ie #:source
                              #:source-detail #:storage-type #:string #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:target-resource
                              #:target-resource-type #:time-in-nanos
                              #:time-in-seconds #:time-ordering
                              #:time-series-id #:time-series-summaries
                              #:time-series-summary #:timestamp #:timestamps
                              #:trace #:transform #:transform-processing-config
                              #:traversal-direction #:traversal-type
                              #:tumbling-window #:unlimited #:untag-resource
                              #:update-access-policy #:update-asset
                              #:update-asset-model
                              #:update-asset-model-composite-model
                              #:update-asset-property
                              #:update-computation-model #:update-dashboard
                              #:update-dataset #:update-gateway
                              #:update-gateway-capability-configuration
                              #:update-portal #:update-project #:url
                              #:user-identity #:variable-name #:variable-value
                              #:variant #:version #:warm-tier-retention-period
                              #:warm-tier-state))
(common-lisp:in-package #:pira/iotsitewise)

(smithy/sdk/service:define-service awsio-tsite-wise :shape-name
                                   "AWSIoTSiteWise" :version "2019-12-02"
                                   :title "AWS IoT SiteWise" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoTSiteWise")
                                      ("arnNamespace" . "iotsitewise")
                                      ("cloudFormationName" . "IoTSiteWise")
                                      ("cloudTrailEventSource"
                                       . "iotsitewise.amazonaws.com")
                                      ("endpointPrefix" . "iotsitewise"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iotsitewise"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list access-policy-summaries :member
                               access-policy-summary)

(smithy/sdk/shapes:define-structure access-policy-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (identity :target-type identity :required
                                      common-lisp:t :member-name "identity")
                                     (resource :target-type resource :required
                                      common-lisp:t :member-name "resource")
                                     (permission :target-type permission
                                      :required common-lisp:t :member-name
                                      "permission")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate")
                                     (last-update-date :target-type timestamp
                                      :member-name "lastUpdateDate"))
                                    (:shape-name "AccessPolicySummary"))

(smithy/sdk/shapes:define-structure action-definition common-lisp:nil
                                    ((action-definition-id :target-type id
                                      :required common-lisp:t :member-name
                                      "actionDefinitionId")
                                     (action-name :target-type name :required
                                      common-lisp:t :member-name "actionName")
                                     (action-type :target-type name :required
                                      common-lisp:t :member-name "actionType"))
                                    (:shape-name "ActionDefinition"))

(smithy/sdk/shapes:define-list action-definitions :member action-definition)

(smithy/sdk/shapes:define-structure action-payload common-lisp:nil
                                    ((string-value :target-type
                                      action-payload-string :required
                                      common-lisp:t :member-name
                                      "stringValue"))
                                    (:shape-name "ActionPayload"))

(smithy/sdk/shapes:define-type action-payload-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list action-summaries :member action-summary)

(smithy/sdk/shapes:define-structure action-summary common-lisp:nil
                                    ((action-id :target-type id :member-name
                                      "actionId")
                                     (action-definition-id :target-type id
                                      :member-name "actionDefinitionId")
                                     (target-resource :target-type
                                      target-resource :member-name
                                      "targetResource")
                                     (resolve-to :target-type resolve-to
                                      :member-name "resolveTo"))
                                    (:shape-name "ActionSummary"))

(smithy/sdk/shapes:define-type adaptive-ingestion
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum aggregate-type
    common-lisp:nil
  (:average "AVERAGE")
  (:count "COUNT")
  (:maximum "MAXIMUM")
  (:minimum "MINIMUM")
  (:sum "SUM")
  (:standard-deviation "STANDARD_DEVIATION"))

(smithy/sdk/shapes:define-list aggregate-types :member aggregate-type)

(smithy/sdk/shapes:define-type aggregated-double-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure aggregated-value common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (quality :target-type quality :member-name
                                      "quality")
                                     (value :target-type aggregates :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "AggregatedValue"))

(smithy/sdk/shapes:define-list aggregated-values :member aggregated-value)

(smithy/sdk/shapes:define-structure aggregates common-lisp:nil
                                    ((average :target-type
                                      aggregated-double-value :member-name
                                      "average")
                                     (count :target-type
                                      aggregated-double-value :member-name
                                      "count")
                                     (maximum :target-type
                                      aggregated-double-value :member-name
                                      "maximum")
                                     (minimum :target-type
                                      aggregated-double-value :member-name
                                      "minimum")
                                     (sum :target-type aggregated-double-value
                                      :member-name "sum")
                                     (standard-deviation :target-type
                                      aggregated-double-value :member-name
                                      "standardDeviation"))
                                    (:shape-name "Aggregates"))

(smithy/sdk/shapes:define-structure alarms common-lisp:nil
                                    ((alarm-role-arn :target-type iam-arn
                                      :required common-lisp:t :member-name
                                      "alarmRoleArn")
                                     (notification-lambda-arn :target-type arn
                                      :member-name "notificationLambdaArn"))
                                    (:shape-name "Alarms"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-binding-value-filter common-lisp:nil
                                    ((asset-id :target-type id :required
                                      common-lisp:t :member-name "assetId"))
                                    (:shape-name "AssetBindingValueFilter"))

(smithy/sdk/shapes:define-structure asset-composite-model common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (type :target-type name :required
                                      common-lisp:t :member-name "type")
                                     (properties :target-type asset-properties
                                      :required common-lisp:t :member-name
                                      "properties")
                                     (id :target-type id :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId"))
                                    (:shape-name "AssetCompositeModel"))

(smithy/sdk/shapes:define-list asset-composite-model-path :member
                               asset-composite-model-path-segment)

(smithy/sdk/shapes:define-structure asset-composite-model-path-segment
                                    common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (name :target-type name :member-name
                                      "name"))
                                    (:shape-name
                                     "AssetCompositeModelPathSegment"))

(smithy/sdk/shapes:define-list asset-composite-model-summaries :member
                               asset-composite-model-summary)

(smithy/sdk/shapes:define-structure asset-composite-model-summary
                                    common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type name :required
                                      common-lisp:t :member-name "type")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (path :target-type
                                      asset-composite-model-path :required
                                      common-lisp:t :member-name "path"))
                                    (:shape-name "AssetCompositeModelSummary"))

(smithy/sdk/shapes:define-list asset-composite-models :member
                               asset-composite-model)

(smithy/sdk/shapes:define-enum asset-error-code
    common-lisp:nil
  (:internal-failure "INTERNAL_FAILURE"))

(smithy/sdk/shapes:define-structure asset-error-details common-lisp:nil
                                    ((asset-id :target-type id :required
                                      common-lisp:t :member-name "assetId")
                                     (code :target-type asset-error-code
                                      :required common-lisp:t :member-name
                                      "code")
                                     (message :target-type asset-error-message
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "AssetErrorDetails"))

(smithy/sdk/shapes:define-type asset-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list asset-hierarchies :member asset-hierarchy)

(smithy/sdk/shapes:define-structure asset-hierarchy common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "AssetHierarchy"))

(smithy/sdk/shapes:define-structure asset-hierarchy-info common-lisp:nil
                                    ((parent-asset-id :target-type id
                                      :member-name "parentAssetId")
                                     (child-asset-id :target-type id
                                      :member-name "childAssetId"))
                                    (:shape-name "AssetHierarchyInfo"))

(smithy/sdk/shapes:define-list asset-ids :member id)

(smithy/sdk/shapes:define-structure asset-model-binding-value-filter
                                    common-lisp:nil
                                    ((asset-model-id :target-type id :required
                                      common-lisp:t :member-name
                                      "assetModelId"))
                                    (:shape-name
                                     "AssetModelBindingValueFilter"))

(smithy/sdk/shapes:define-structure asset-model-composite-model common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (type :target-type name :required
                                      common-lisp:t :member-name "type")
                                     (properties :target-type
                                      asset-model-properties :member-name
                                      "properties")
                                     (id :target-type custom-id :member-name
                                      "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId"))
                                    (:shape-name "AssetModelCompositeModel"))

(smithy/sdk/shapes:define-structure asset-model-composite-model-definition
                                    common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (type :target-type name :required
                                      common-lisp:t :member-name "type")
                                     (properties :target-type
                                      asset-model-property-definitions
                                      :member-name "properties"))
                                    (:shape-name
                                     "AssetModelCompositeModelDefinition"))

(smithy/sdk/shapes:define-list asset-model-composite-model-definitions :member
                               asset-model-composite-model-definition)

(smithy/sdk/shapes:define-list asset-model-composite-model-path :member
                               asset-model-composite-model-path-segment)

(smithy/sdk/shapes:define-structure asset-model-composite-model-path-segment
                                    common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (name :target-type name :member-name
                                      "name"))
                                    (:shape-name
                                     "AssetModelCompositeModelPathSegment"))

(smithy/sdk/shapes:define-list asset-model-composite-model-summaries :member
                               asset-model-composite-model-summary)

(smithy/sdk/shapes:define-structure asset-model-composite-model-summary
                                    common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type name :required
                                      common-lisp:t :member-name "type")
                                     (description :target-type description
                                      :member-name "description")
                                     (path :target-type
                                      asset-model-composite-model-path
                                      :member-name "path"))
                                    (:shape-name
                                     "AssetModelCompositeModelSummary"))

(smithy/sdk/shapes:define-list asset-model-composite-models :member
                               asset-model-composite-model)

(smithy/sdk/shapes:define-list asset-model-hierarchies :member
                               asset-model-hierarchy)

(smithy/sdk/shapes:define-structure asset-model-hierarchy common-lisp:nil
                                    ((id :target-type custom-id :member-name
                                      "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (child-asset-model-id :target-type
                                      custom-id :required common-lisp:t
                                      :member-name "childAssetModelId"))
                                    (:shape-name "AssetModelHierarchy"))

(smithy/sdk/shapes:define-structure asset-model-hierarchy-definition
                                    common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (child-asset-model-id :target-type
                                      custom-id :required common-lisp:t
                                      :member-name "childAssetModelId"))
                                    (:shape-name
                                     "AssetModelHierarchyDefinition"))

(smithy/sdk/shapes:define-list asset-model-hierarchy-definitions :member
                               asset-model-hierarchy-definition)

(smithy/sdk/shapes:define-list asset-model-properties :member
                               asset-model-property)

(smithy/sdk/shapes:define-structure asset-model-property common-lisp:nil
                                    ((id :target-type custom-id :member-name
                                      "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (data-type :target-type property-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (data-type-spec :target-type name
                                      :member-name "dataTypeSpec")
                                     (unit :target-type property-unit
                                      :member-name "unit")
                                     (type :target-type property-type :required
                                      common-lisp:t :member-name "type")
                                     (path :target-type
                                      asset-model-property-path :member-name
                                      "path"))
                                    (:shape-name "AssetModelProperty"))

(smithy/sdk/shapes:define-structure asset-model-property-binding-value
                                    common-lisp:nil
                                    ((asset-model-id :target-type id :required
                                      common-lisp:t :member-name
                                      "assetModelId")
                                     (property-id :target-type id :required
                                      common-lisp:t :member-name "propertyId"))
                                    (:shape-name
                                     "AssetModelPropertyBindingValue"))

(smithy/sdk/shapes:define-structure asset-model-property-binding-value-filter
                                    common-lisp:nil
                                    ((asset-model-id :target-type id :required
                                      common-lisp:t :member-name
                                      "assetModelId")
                                     (property-id :target-type id :required
                                      common-lisp:t :member-name "propertyId"))
                                    (:shape-name
                                     "AssetModelPropertyBindingValueFilter"))

(smithy/sdk/shapes:define-structure asset-model-property-definition
                                    common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (data-type :target-type property-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (data-type-spec :target-type name
                                      :member-name "dataTypeSpec")
                                     (unit :target-type property-unit
                                      :member-name "unit")
                                     (type :target-type property-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name
                                     "AssetModelPropertyDefinition"))

(smithy/sdk/shapes:define-list asset-model-property-definitions :member
                               asset-model-property-definition)

(smithy/sdk/shapes:define-list asset-model-property-path :member
                               asset-model-property-path-segment)

(smithy/sdk/shapes:define-structure asset-model-property-path-segment
                                    common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (name :target-type name :member-name
                                      "name"))
                                    (:shape-name
                                     "AssetModelPropertyPathSegment"))

(smithy/sdk/shapes:define-list asset-model-property-summaries :member
                               asset-model-property-summary)

(smithy/sdk/shapes:define-structure asset-model-property-summary
                                    common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (data-type :target-type property-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (data-type-spec :target-type name
                                      :member-name "dataTypeSpec")
                                     (unit :target-type property-unit
                                      :member-name "unit")
                                     (type :target-type property-type :required
                                      common-lisp:t :member-name "type")
                                     (asset-model-composite-model-id
                                      :target-type id :member-name
                                      "assetModelCompositeModelId")
                                     (path :target-type
                                      asset-model-property-path :member-name
                                      "path")
                                     (interface-summaries :target-type
                                      interface-summaries :member-name
                                      "interfaceSummaries"))
                                    (:shape-name "AssetModelPropertySummary"))

(smithy/sdk/shapes:define-enum asset-model-state
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:propagating "PROPAGATING")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure asset-model-status common-lisp:nil
                                    ((state :target-type asset-model-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (error :target-type error-details
                                      :member-name "error"))
                                    (:shape-name "AssetModelStatus"))

(smithy/sdk/shapes:define-list asset-model-summaries :member
                               asset-model-summary)

(smithy/sdk/shapes:define-structure asset-model-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (asset-model-type :target-type
                                      asset-model-type :member-name
                                      "assetModelType")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate")
                                     (last-update-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateDate")
                                     (status :target-type asset-model-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (version :target-type version :member-name
                                      "version"))
                                    (:shape-name "AssetModelSummary"))

(smithy/sdk/shapes:define-enum asset-model-type
    common-lisp:nil
  (:asset-model "ASSET_MODEL")
  (:component-model "COMPONENT_MODEL")
  (:interface "INTERFACE"))

(smithy/sdk/shapes:define-type asset-model-version-filter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum asset-model-version-type
    common-lisp:nil
  (:latest "LATEST")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-list asset-properties :member asset-property)

(smithy/sdk/shapes:define-structure asset-property common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (alias :target-type property-alias
                                      :member-name "alias")
                                     (notification :target-type
                                      property-notification :member-name
                                      "notification")
                                     (data-type :target-type property-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (data-type-spec :target-type name
                                      :member-name "dataTypeSpec")
                                     (unit :target-type property-unit
                                      :member-name "unit")
                                     (path :target-type asset-property-path
                                      :member-name "path"))
                                    (:shape-name "AssetProperty"))

(smithy/sdk/shapes:define-type asset-property-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-property-binding-value
                                    common-lisp:nil
                                    ((asset-id :target-type id :required
                                      common-lisp:t :member-name "assetId")
                                     (property-id :target-type id :required
                                      common-lisp:t :member-name "propertyId"))
                                    (:shape-name "AssetPropertyBindingValue"))

(smithy/sdk/shapes:define-structure asset-property-binding-value-filter
                                    common-lisp:nil
                                    ((asset-id :target-type id :required
                                      common-lisp:t :member-name "assetId")
                                     (property-id :target-type id :required
                                      common-lisp:t :member-name "propertyId"))
                                    (:shape-name
                                     "AssetPropertyBindingValueFilter"))

(smithy/sdk/shapes:define-list asset-property-path :member
                               asset-property-path-segment)

(smithy/sdk/shapes:define-structure asset-property-path-segment common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (name :target-type name :member-name
                                      "name"))
                                    (:shape-name "AssetPropertyPathSegment"))

(smithy/sdk/shapes:define-list asset-property-summaries :member
                               asset-property-summary)

(smithy/sdk/shapes:define-structure asset-property-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (alias :target-type property-alias
                                      :member-name "alias")
                                     (unit :target-type property-unit
                                      :member-name "unit")
                                     (notification :target-type
                                      property-notification :member-name
                                      "notification")
                                     (asset-composite-model-id :target-type id
                                      :member-name "assetCompositeModelId")
                                     (path :target-type asset-property-path
                                      :member-name "path"))
                                    (:shape-name "AssetPropertySummary"))

(smithy/sdk/shapes:define-structure asset-property-value common-lisp:nil
                                    ((value :target-type variant :required
                                      common-lisp:t :member-name "value")
                                     (timestamp :target-type time-in-nanos
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (quality :target-type quality :member-name
                                      "quality"))
                                    (:shape-name "AssetPropertyValue"))

(smithy/sdk/shapes:define-list asset-property-value-history :member
                               asset-property-value)

(smithy/sdk/shapes:define-list asset-property-values :member
                               asset-property-value)

(smithy/sdk/shapes:define-list asset-relationship-summaries :member
                               asset-relationship-summary)

(smithy/sdk/shapes:define-structure asset-relationship-summary common-lisp:nil
                                    ((hierarchy-info :target-type
                                      asset-hierarchy-info :member-name
                                      "hierarchyInfo")
                                     (relationship-type :target-type
                                      asset-relationship-type :required
                                      common-lisp:t :member-name
                                      "relationshipType"))
                                    (:shape-name "AssetRelationshipSummary"))

(smithy/sdk/shapes:define-enum asset-relationship-type
    common-lisp:nil
  (:hierarchy "HIERARCHY"))

(smithy/sdk/shapes:define-enum asset-state
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure asset-status common-lisp:nil
                                    ((state :target-type asset-state :required
                                      common-lisp:t :member-name "state")
                                     (error :target-type error-details
                                      :member-name "error"))
                                    (:shape-name "AssetStatus"))

(smithy/sdk/shapes:define-list asset-summaries :member asset-summary)

(smithy/sdk/shapes:define-structure asset-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (asset-model-id :target-type id :required
                                      common-lisp:t :member-name
                                      "assetModelId")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate")
                                     (last-update-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateDate")
                                     (status :target-type asset-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (hierarchies :target-type
                                      asset-hierarchies :required common-lisp:t
                                      :member-name "hierarchies")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "AssetSummary"))

(smithy/sdk/shapes:define-input associate-assets-request common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (hierarchy-id :target-type custom-id :required
                                  common-lisp:t :member-name "hierarchyId")
                                 (child-asset-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "childAssetId")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "AssociateAssetsRequest"))

(smithy/sdk/shapes:define-input associate-time-series-to-asset-property-request
                                common-lisp:nil
                                ((alias :target-type property-alias :required
                                  common-lisp:t :member-name "alias"
                                  :http-query "alias")
                                 (asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-query "assetId")
                                 (property-id :target-type custom-id :required
                                  common-lisp:t :member-name "propertyId"
                                  :http-query "propertyId")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "AssociateTimeSeriesToAssetPropertyRequest"))

(smithy/sdk/shapes:define-list associated-assets-summaries :member
                               associated-assets-summary)

(smithy/sdk/shapes:define-structure associated-assets-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (asset-model-id :target-type id :required
                                      common-lisp:t :member-name
                                      "assetModelId")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate")
                                     (last-update-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateDate")
                                     (status :target-type asset-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (hierarchies :target-type
                                      asset-hierarchies :required common-lisp:t
                                      :member-name "hierarchies")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "AssociatedAssetsSummary"))

(smithy/sdk/shapes:define-structure attribute common-lisp:nil
                                    ((default-value :target-type default-value
                                      :member-name "defaultValue"))
                                    (:shape-name "Attribute"))

(smithy/sdk/shapes:define-enum auth-mode
    common-lisp:nil
  (:iam "IAM")
  (:sso "SSO"))

(smithy/sdk/shapes:define-list batch-associate-project-assets-errors :member
                               asset-error-details)

(smithy/sdk/shapes:define-input batch-associate-project-assets-request
                                common-lisp:nil
                                ((project-id :target-type id :required
                                  common-lisp:t :member-name "projectId"
                                  :http-label common-lisp:t)
                                 (asset-ids :target-type ids :required
                                  common-lisp:t :member-name "assetIds")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "BatchAssociateProjectAssetsRequest"))

(smithy/sdk/shapes:define-output batch-associate-project-assets-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-associate-project-assets-errors
                                   :member-name "errors"))
                                 (:shape-name
                                  "BatchAssociateProjectAssetsResponse"))

(smithy/sdk/shapes:define-list batch-disassociate-project-assets-errors :member
                               asset-error-details)

(smithy/sdk/shapes:define-input batch-disassociate-project-assets-request
                                common-lisp:nil
                                ((project-id :target-type id :required
                                  common-lisp:t :member-name "projectId"
                                  :http-label common-lisp:t)
                                 (asset-ids :target-type ids :required
                                  common-lisp:t :member-name "assetIds")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "BatchDisassociateProjectAssetsRequest"))

(smithy/sdk/shapes:define-output batch-disassociate-project-assets-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-disassociate-project-assets-errors
                                   :member-name "errors"))
                                 (:shape-name
                                  "BatchDisassociateProjectAssetsResponse"))

(smithy/sdk/shapes:define-enum batch-entry-completion-status
    common-lisp:nil
  (:success "SUCCESS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-list batch-get-asset-property-aggregates-entries
                               :member
                               batch-get-asset-property-aggregates-entry)

(smithy/sdk/shapes:define-structure batch-get-asset-property-aggregates-entry
                                    common-lisp:nil
                                    ((entry-id :target-type entry-id :required
                                      common-lisp:t :member-name "entryId")
                                     (asset-id :target-type id :member-name
                                      "assetId")
                                     (property-id :target-type id :member-name
                                      "propertyId")
                                     (property-alias :target-type
                                      asset-property-alias :member-name
                                      "propertyAlias")
                                     (aggregate-types :target-type
                                      aggregate-types :required common-lisp:t
                                      :member-name "aggregateTypes")
                                     (resolution :target-type resolution
                                      :required common-lisp:t :member-name
                                      "resolution")
                                     (start-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startDate")
                                     (end-date :target-type timestamp :required
                                      common-lisp:t :member-name "endDate")
                                     (qualities :target-type qualities
                                      :member-name "qualities")
                                     (time-ordering :target-type time-ordering
                                      :member-name "timeOrdering"))
                                    (:shape-name
                                     "BatchGetAssetPropertyAggregatesEntry"))

(smithy/sdk/shapes:define-enum batch-get-asset-property-aggregates-error-code
    common-lisp:nil
  (:resource-not-found-exception "ResourceNotFoundException")
  (:invalid-request-exception "InvalidRequestException")
  (:access-denied-exception "AccessDeniedException"))

(smithy/sdk/shapes:define-list
 batch-get-asset-property-aggregates-error-entries :member
 batch-get-asset-property-aggregates-error-entry)

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-aggregates-error-entry common-lisp:nil
 ((error-code :target-type batch-get-asset-property-aggregates-error-code
   :required common-lisp:t :member-name "errorCode")
  (error-message :target-type error-message :required common-lisp:t
   :member-name "errorMessage")
  (entry-id :target-type entry-id :required common-lisp:t :member-name
   "entryId"))
 (:shape-name "BatchGetAssetPropertyAggregatesErrorEntry"))

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-aggregates-error-info common-lisp:nil
 ((error-code :target-type batch-get-asset-property-aggregates-error-code
   :required common-lisp:t :member-name "errorCode")
  (error-timestamp :target-type timestamp :required common-lisp:t :member-name
   "errorTimestamp"))
 (:shape-name "BatchGetAssetPropertyAggregatesErrorInfo"))

(smithy/sdk/shapes:define-type batch-get-asset-property-aggregates-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input batch-get-asset-property-aggregates-request
                                common-lisp:nil
                                ((entries :target-type
                                  batch-get-asset-property-aggregates-entries
                                  :required common-lisp:t :member-name
                                  "entries")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  batch-get-asset-property-aggregates-max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "BatchGetAssetPropertyAggregatesRequest"))

(smithy/sdk/shapes:define-output batch-get-asset-property-aggregates-response
                                 common-lisp:nil
                                 ((error-entries :target-type
                                   batch-get-asset-property-aggregates-error-entries
                                   :required common-lisp:t :member-name
                                   "errorEntries")
                                  (success-entries :target-type
                                   batch-get-asset-property-aggregates-success-entries
                                   :required common-lisp:t :member-name
                                   "successEntries")
                                  (skipped-entries :target-type
                                   batch-get-asset-property-aggregates-skipped-entries
                                   :required common-lisp:t :member-name
                                   "skippedEntries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "BatchGetAssetPropertyAggregatesResponse"))

(smithy/sdk/shapes:define-list
 batch-get-asset-property-aggregates-skipped-entries :member
 batch-get-asset-property-aggregates-skipped-entry)

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-aggregates-skipped-entry common-lisp:nil
 ((entry-id :target-type entry-id :required common-lisp:t :member-name
   "entryId")
  (completion-status :target-type batch-entry-completion-status :required
   common-lisp:t :member-name "completionStatus")
  (error-info :target-type batch-get-asset-property-aggregates-error-info
   :member-name "errorInfo"))
 (:shape-name "BatchGetAssetPropertyAggregatesSkippedEntry"))

(smithy/sdk/shapes:define-list
 batch-get-asset-property-aggregates-success-entries :member
 batch-get-asset-property-aggregates-success-entry)

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-aggregates-success-entry common-lisp:nil
 ((entry-id :target-type entry-id :required common-lisp:t :member-name
   "entryId")
  (aggregated-values :target-type aggregated-values :required common-lisp:t
   :member-name "aggregatedValues"))
 (:shape-name "BatchGetAssetPropertyAggregatesSuccessEntry"))

(smithy/sdk/shapes:define-list batch-get-asset-property-value-entries :member
                               batch-get-asset-property-value-entry)

(smithy/sdk/shapes:define-structure batch-get-asset-property-value-entry
                                    common-lisp:nil
                                    ((entry-id :target-type entry-id :required
                                      common-lisp:t :member-name "entryId")
                                     (asset-id :target-type id :member-name
                                      "assetId")
                                     (property-id :target-type id :member-name
                                      "propertyId")
                                     (property-alias :target-type
                                      asset-property-alias :member-name
                                      "propertyAlias"))
                                    (:shape-name
                                     "BatchGetAssetPropertyValueEntry"))

(smithy/sdk/shapes:define-enum batch-get-asset-property-value-error-code
    common-lisp:nil
  (:resource-not-found-exception "ResourceNotFoundException")
  (:invalid-request-exception "InvalidRequestException")
  (:access-denied-exception "AccessDeniedException"))

(smithy/sdk/shapes:define-list batch-get-asset-property-value-error-entries
                               :member
                               batch-get-asset-property-value-error-entry)

(smithy/sdk/shapes:define-structure batch-get-asset-property-value-error-entry
                                    common-lisp:nil
                                    ((error-code :target-type
                                      batch-get-asset-property-value-error-code
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (error-message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "errorMessage")
                                     (entry-id :target-type entry-id :required
                                      common-lisp:t :member-name "entryId"))
                                    (:shape-name
                                     "BatchGetAssetPropertyValueErrorEntry"))

(smithy/sdk/shapes:define-structure batch-get-asset-property-value-error-info
                                    common-lisp:nil
                                    ((error-code :target-type
                                      batch-get-asset-property-value-error-code
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (error-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "errorTimestamp"))
                                    (:shape-name
                                     "BatchGetAssetPropertyValueErrorInfo"))

(smithy/sdk/shapes:define-list batch-get-asset-property-value-history-entries
                               :member
                               batch-get-asset-property-value-history-entry)

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-value-history-entry common-lisp:nil
 ((entry-id :target-type entry-id :required common-lisp:t :member-name
   "entryId")
  (asset-id :target-type id :member-name "assetId")
  (property-id :target-type id :member-name "propertyId")
  (property-alias :target-type asset-property-alias :member-name
   "propertyAlias")
  (start-date :target-type timestamp :member-name "startDate")
  (end-date :target-type timestamp :member-name "endDate")
  (qualities :target-type qualities :member-name "qualities")
  (time-ordering :target-type time-ordering :member-name "timeOrdering"))
 (:shape-name "BatchGetAssetPropertyValueHistoryEntry"))

(smithy/sdk/shapes:define-enum batch-get-asset-property-value-history-error-code
    common-lisp:nil
  (:resource-not-found-exception "ResourceNotFoundException")
  (:invalid-request-exception "InvalidRequestException")
  (:access-denied-exception "AccessDeniedException"))

(smithy/sdk/shapes:define-list
 batch-get-asset-property-value-history-error-entries :member
 batch-get-asset-property-value-history-error-entry)

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-value-history-error-entry common-lisp:nil
 ((error-code :target-type batch-get-asset-property-value-history-error-code
   :required common-lisp:t :member-name "errorCode")
  (error-message :target-type error-message :required common-lisp:t
   :member-name "errorMessage")
  (entry-id :target-type entry-id :required common-lisp:t :member-name
   "entryId"))
 (:shape-name "BatchGetAssetPropertyValueHistoryErrorEntry"))

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-value-history-error-info common-lisp:nil
 ((error-code :target-type batch-get-asset-property-value-history-error-code
   :required common-lisp:t :member-name "errorCode")
  (error-timestamp :target-type timestamp :required common-lisp:t :member-name
   "errorTimestamp"))
 (:shape-name "BatchGetAssetPropertyValueHistoryErrorInfo"))

(smithy/sdk/shapes:define-type
 batch-get-asset-property-value-history-max-results
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input batch-get-asset-property-value-history-request
                                common-lisp:nil
                                ((entries :target-type
                                  batch-get-asset-property-value-history-entries
                                  :required common-lisp:t :member-name
                                  "entries")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  batch-get-asset-property-value-history-max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "BatchGetAssetPropertyValueHistoryRequest"))

(smithy/sdk/shapes:define-output
 batch-get-asset-property-value-history-response common-lisp:nil
 ((error-entries :target-type
   batch-get-asset-property-value-history-error-entries :required common-lisp:t
   :member-name "errorEntries")
  (success-entries :target-type
   batch-get-asset-property-value-history-success-entries :required
   common-lisp:t :member-name "successEntries")
  (skipped-entries :target-type
   batch-get-asset-property-value-history-skipped-entries :required
   common-lisp:t :member-name "skippedEntries")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "BatchGetAssetPropertyValueHistoryResponse"))

(smithy/sdk/shapes:define-list
 batch-get-asset-property-value-history-skipped-entries :member
 batch-get-asset-property-value-history-skipped-entry)

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-value-history-skipped-entry common-lisp:nil
 ((entry-id :target-type entry-id :required common-lisp:t :member-name
   "entryId")
  (completion-status :target-type batch-entry-completion-status :required
   common-lisp:t :member-name "completionStatus")
  (error-info :target-type batch-get-asset-property-value-history-error-info
   :member-name "errorInfo"))
 (:shape-name "BatchGetAssetPropertyValueHistorySkippedEntry"))

(smithy/sdk/shapes:define-list
 batch-get-asset-property-value-history-success-entries :member
 batch-get-asset-property-value-history-success-entry)

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-value-history-success-entry common-lisp:nil
 ((entry-id :target-type entry-id :required common-lisp:t :member-name
   "entryId")
  (asset-property-value-history :target-type asset-property-value-history
   :required common-lisp:t :member-name "assetPropertyValueHistory"))
 (:shape-name "BatchGetAssetPropertyValueHistorySuccessEntry"))

(smithy/sdk/shapes:define-input batch-get-asset-property-value-request
                                common-lisp:nil
                                ((entries :target-type
                                  batch-get-asset-property-value-entries
                                  :required common-lisp:t :member-name
                                  "entries")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "BatchGetAssetPropertyValueRequest"))

(smithy/sdk/shapes:define-output batch-get-asset-property-value-response
                                 common-lisp:nil
                                 ((error-entries :target-type
                                   batch-get-asset-property-value-error-entries
                                   :required common-lisp:t :member-name
                                   "errorEntries")
                                  (success-entries :target-type
                                   batch-get-asset-property-value-success-entries
                                   :required common-lisp:t :member-name
                                   "successEntries")
                                  (skipped-entries :target-type
                                   batch-get-asset-property-value-skipped-entries
                                   :required common-lisp:t :member-name
                                   "skippedEntries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "BatchGetAssetPropertyValueResponse"))

(smithy/sdk/shapes:define-list batch-get-asset-property-value-skipped-entries
                               :member
                               batch-get-asset-property-value-skipped-entry)

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-value-skipped-entry common-lisp:nil
 ((entry-id :target-type entry-id :required common-lisp:t :member-name
   "entryId")
  (completion-status :target-type batch-entry-completion-status :required
   common-lisp:t :member-name "completionStatus")
  (error-info :target-type batch-get-asset-property-value-error-info
   :member-name "errorInfo"))
 (:shape-name "BatchGetAssetPropertyValueSkippedEntry"))

(smithy/sdk/shapes:define-list batch-get-asset-property-value-success-entries
                               :member
                               batch-get-asset-property-value-success-entry)

(smithy/sdk/shapes:define-structure
 batch-get-asset-property-value-success-entry common-lisp:nil
 ((entry-id :target-type entry-id :required common-lisp:t :member-name
   "entryId")
  (asset-property-value :target-type asset-property-value :member-name
   "assetPropertyValue"))
 (:shape-name "BatchGetAssetPropertyValueSuccessEntry"))

(smithy/sdk/shapes:define-structure batch-put-asset-property-error
                                    common-lisp:nil
                                    ((error-code :target-type
                                      batch-put-asset-property-value-error-code
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (error-message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "errorMessage")
                                     (timestamps :target-type timestamps
                                      :required common-lisp:t :member-name
                                      "timestamps"))
                                    (:shape-name "BatchPutAssetPropertyError"))

(smithy/sdk/shapes:define-list batch-put-asset-property-error-entries :member
                               batch-put-asset-property-error-entry)

(smithy/sdk/shapes:define-structure batch-put-asset-property-error-entry
                                    common-lisp:nil
                                    ((entry-id :target-type entry-id :required
                                      common-lisp:t :member-name "entryId")
                                     (errors :target-type
                                      batch-put-asset-property-errors :required
                                      common-lisp:t :member-name "errors"))
                                    (:shape-name
                                     "BatchPutAssetPropertyErrorEntry"))

(smithy/sdk/shapes:define-list batch-put-asset-property-errors :member
                               batch-put-asset-property-error)

(smithy/sdk/shapes:define-enum batch-put-asset-property-value-error-code
    common-lisp:nil
  (:resource-not-found-exception "ResourceNotFoundException")
  (:invalid-request-exception "InvalidRequestException")
  (:internal-failure-exception "InternalFailureException")
  (:service-unavailable-exception "ServiceUnavailableException")
  (:throttling-exception "ThrottlingException")
  (:limit-exceeded-exception "LimitExceededException")
  (:conflicting-operation-exception "ConflictingOperationException")
  (:timestamp-out-of-range-exception "TimestampOutOfRangeException")
  (:access-denied-exception "AccessDeniedException"))

(smithy/sdk/shapes:define-input batch-put-asset-property-value-request
                                common-lisp:nil
                                ((enable-partial-entry-processing :target-type
                                  boolean-value :member-name
                                  "enablePartialEntryProcessing")
                                 (entries :target-type
                                  put-asset-property-value-entries :required
                                  common-lisp:t :member-name "entries"))
                                (:shape-name
                                 "BatchPutAssetPropertyValueRequest"))

(smithy/sdk/shapes:define-output batch-put-asset-property-value-response
                                 common-lisp:nil
                                 ((error-entries :target-type
                                   batch-put-asset-property-error-entries
                                   :required common-lisp:t :member-name
                                   "errorEntries"))
                                 (:shape-name
                                  "BatchPutAssetPropertyValueResponse"))

(smithy/sdk/shapes:define-list binding-value-list :member
                               computation-model-data-binding-value)

(smithy/sdk/shapes:define-type boolean-value smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type capability-configuration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type capability-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum capability-sync-status
    common-lisp:nil
  (:in-sync "IN_SYNC")
  (:out-of-sync "OUT_OF_SYNC")
  (:sync-failed "SYNC_FAILED")
  (:unknown "UNKNOWN")
  (:not-applicable "NOT_APPLICABLE"))

(smithy/sdk/shapes:define-structure citation common-lisp:nil
                                    ((reference :target-type reference
                                      :member-name "reference")
                                     (content :target-type content :member-name
                                      "content"))
                                    (:shape-name "Citation"))

(smithy/sdk/shapes:define-list citations :member citation)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure column-info common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (type :target-type column-type
                                      :member-name "type"))
                                    (:shape-name "ColumnInfo"))

(smithy/sdk/shapes:define-enum column-name
    common-lisp:nil
  (:alias "ALIAS")
  (:asset-id "ASSET_ID")
  (:property-id "PROPERTY_ID")
  (:data-type "DATA_TYPE")
  (:timestamp-seconds "TIMESTAMP_SECONDS")
  (:timestamp-nano-offset "TIMESTAMP_NANO_OFFSET")
  (:quality "QUALITY")
  (:value "VALUE"))

(smithy/sdk/shapes:define-list column-names :member column-name)

(smithy/sdk/shapes:define-structure column-type common-lisp:nil
                                    ((scalar-type :target-type scalar-type
                                      :member-name "scalarType"))
                                    (:shape-name "ColumnType"))

(smithy/sdk/shapes:define-list columns-list :member column-info)

(smithy/sdk/shapes:define-structure composite-model-property common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type name :required
                                      common-lisp:t :member-name "type")
                                     (asset-property :target-type property
                                      :required common-lisp:t :member-name
                                      "assetProperty")
                                     (id :target-type id :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId"))
                                    (:shape-name "CompositeModelProperty"))

(smithy/sdk/shapes:define-structure composition-details common-lisp:nil
                                    ((composition-relationship :target-type
                                      composition-relationship :member-name
                                      "compositionRelationship"))
                                    (:shape-name "CompositionDetails"))

(smithy/sdk/shapes:define-list composition-relationship :member
                               composition-relationship-item)

(smithy/sdk/shapes:define-structure composition-relationship-item
                                    common-lisp:nil
                                    ((id :target-type id :member-name "id"))
                                    (:shape-name "CompositionRelationshipItem"))

(smithy/sdk/shapes:define-list composition-relationship-summaries :member
                               composition-relationship-summary)

(smithy/sdk/shapes:define-structure composition-relationship-summary
                                    common-lisp:nil
                                    ((asset-model-id :target-type id :required
                                      common-lisp:t :member-name
                                      "assetModelId")
                                     (asset-model-composite-model-id
                                      :target-type id :required common-lisp:t
                                      :member-name
                                      "assetModelCompositeModelId")
                                     (asset-model-composite-model-type
                                      :target-type name :required common-lisp:t
                                      :member-name
                                      "assetModelCompositeModelType"))
                                    (:shape-name
                                     "CompositionRelationshipSummary"))

(smithy/sdk/shapes:define-structure
 computation-model-anomaly-detection-configuration common-lisp:nil
 ((input-properties :target-type input-properties :required common-lisp:t
   :member-name "inputProperties")
  (result-property :target-type result-property :required common-lisp:t
   :member-name "resultProperty"))
 (:shape-name "ComputationModelAnomalyDetectionConfiguration"))

(smithy/sdk/shapes:define-structure computation-model-configuration
                                    common-lisp:nil
                                    ((anomaly-detection :target-type
                                      computation-model-anomaly-detection-configuration
                                      :member-name "anomalyDetection"))
                                    (:shape-name
                                     "ComputationModelConfiguration"))

(smithy/sdk/shapes:define-map computation-model-data-binding :key
                              computation-model-data-binding-variable :value
                              computation-model-data-binding-value)

(smithy/sdk/shapes:define-list computation-model-data-binding-usage-summaries
                               :member
                               computation-model-data-binding-usage-summary)

(smithy/sdk/shapes:define-structure
 computation-model-data-binding-usage-summary common-lisp:nil
 ((computation-model-ids :target-type computation-model-id-list :required
   common-lisp:t :member-name "computationModelIds")
  (matched-data-binding :target-type matched-data-binding :required
   common-lisp:t :member-name "matchedDataBinding"))
 (:shape-name "ComputationModelDataBindingUsageSummary"))

(smithy/sdk/shapes:define-structure computation-model-data-binding-value
                                    common-lisp:nil
                                    ((asset-model-property :target-type
                                      asset-model-property-binding-value
                                      :member-name "assetModelProperty")
                                     (asset-property :target-type
                                      asset-property-binding-value :member-name
                                      "assetProperty")
                                     (list :target-type binding-value-list
                                      :member-name "list"))
                                    (:shape-name
                                     "ComputationModelDataBindingValue"))

(smithy/sdk/shapes:define-type computation-model-data-binding-variable
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map computation-model-execution-summary :key
                              computation-model-execution-summary-key :value
                              computation-model-execution-summary-value)

(smithy/sdk/shapes:define-type computation-model-execution-summary-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type computation-model-execution-summary-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list computation-model-id-list :member id)

(smithy/sdk/shapes:define-list computation-model-resolve-to-resource-summaries
                               :member
                               computation-model-resolve-to-resource-summary)

(smithy/sdk/shapes:define-structure
 computation-model-resolve-to-resource-summary common-lisp:nil
 ((resolve-to :target-type resolve-to :member-name "resolveTo"))
 (:shape-name "ComputationModelResolveToResourceSummary"))

(smithy/sdk/shapes:define-enum computation-model-state
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure computation-model-status common-lisp:nil
                                    ((state :target-type
                                      computation-model-state :required
                                      common-lisp:t :member-name "state")
                                     (error :target-type error-details
                                      :member-name "error"))
                                    (:shape-name "ComputationModelStatus"))

(smithy/sdk/shapes:define-list computation-model-summaries :member
                               computation-model-summary)

(smithy/sdk/shapes:define-structure computation-model-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type restricted-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      restricted-description :member-name
                                      "description")
                                     (type :target-type computation-model-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate")
                                     (last-update-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateDate")
                                     (status :target-type
                                      computation-model-status :required
                                      common-lisp:t :member-name "status")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "ComputationModelSummary"))

(smithy/sdk/shapes:define-enum computation-model-type
    common-lisp:nil
  (:anomaly-detection "ANOMALY_DETECTION"))

(smithy/sdk/shapes:define-enum compute-location
    common-lisp:nil
  (:edge "EDGE")
  (:cloud "CLOUD"))

(smithy/sdk/shapes:define-structure configuration-error-details common-lisp:nil
                                    ((code :target-type error-code :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ConfigurationErrorDetails"))

(smithy/sdk/shapes:define-enum configuration-state
    common-lisp:nil
  (:active "ACTIVE")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-structure configuration-status common-lisp:nil
                                    ((state :target-type configuration-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (error :target-type
                                      configuration-error-details :member-name
                                      "error"))
                                    (:shape-name "ConfigurationStatus"))

(smithy/sdk/shapes:define-error conflicting-operation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "ConflictingOperationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure content common-lisp:nil
                                    ((text :target-type string :member-name
                                      "text"))
                                    (:shape-name "Content"))

(smithy/sdk/shapes:define-type conversation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum core-device-operating-system
    common-lisp:nil
  (:linux-aarch64 "LINUX_AARCH64")
  (:linux-amd64 "LINUX_AMD64")
  (:windows-amd64 "WINDOWS_AMD64"))

(smithy/sdk/shapes:define-type core-device-thing-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-access-policy-request common-lisp:nil
                                ((access-policy-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "accessPolicyIdentity")
                                 (access-policy-resource :target-type resource
                                  :required common-lisp:t :member-name
                                  "accessPolicyResource")
                                 (access-policy-permission :target-type
                                  permission :required common-lisp:t
                                  :member-name "accessPolicyPermission")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateAccessPolicyRequest"))

(smithy/sdk/shapes:define-output create-access-policy-response common-lisp:nil
                                 ((access-policy-id :target-type id :required
                                   common-lisp:t :member-name "accessPolicyId")
                                  (access-policy-arn :target-type arn :required
                                   common-lisp:t :member-name
                                   "accessPolicyArn"))
                                 (:shape-name "CreateAccessPolicyResponse"))

(smithy/sdk/shapes:define-input create-asset-model-composite-model-request
                                common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (asset-model-composite-model-external-id
                                  :target-type external-id :member-name
                                  "assetModelCompositeModelExternalId")
                                 (parent-asset-model-composite-model-id
                                  :target-type custom-id :member-name
                                  "parentAssetModelCompositeModelId")
                                 (asset-model-composite-model-id :target-type
                                  id :member-name "assetModelCompositeModelId")
                                 (asset-model-composite-model-description
                                  :target-type description :member-name
                                  "assetModelCompositeModelDescription")
                                 (asset-model-composite-model-name :target-type
                                  name :required common-lisp:t :member-name
                                  "assetModelCompositeModelName")
                                 (asset-model-composite-model-type :target-type
                                  name :required common-lisp:t :member-name
                                  "assetModelCompositeModelType")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (composed-asset-model-id :target-type
                                  custom-id :member-name
                                  "composedAssetModelId")
                                 (asset-model-composite-model-properties
                                  :target-type asset-model-property-definitions
                                  :member-name
                                  "assetModelCompositeModelProperties")
                                 (if-match :target-type etag :member-name
                                  "ifMatch" :http-header "If-Match")
                                 (if-none-match :target-type select-all
                                  :member-name "ifNoneMatch" :http-header
                                  "If-None-Match")
                                 (match-for-version-type :target-type
                                  asset-model-version-type :member-name
                                  "matchForVersionType" :http-header
                                  "Match-For-Version-Type"))
                                (:shape-name
                                 "CreateAssetModelCompositeModelRequest"))

(smithy/sdk/shapes:define-output create-asset-model-composite-model-response
                                 common-lisp:nil
                                 ((asset-model-composite-model-id :target-type
                                   id :required common-lisp:t :member-name
                                   "assetModelCompositeModelId")
                                  (asset-model-composite-model-path
                                   :target-type
                                   asset-model-composite-model-path :required
                                   common-lisp:t :member-name
                                   "assetModelCompositeModelPath")
                                  (asset-model-status :target-type
                                   asset-model-status :required common-lisp:t
                                   :member-name "assetModelStatus"))
                                 (:shape-name
                                  "CreateAssetModelCompositeModelResponse"))

(smithy/sdk/shapes:define-input create-asset-model-request common-lisp:nil
                                ((asset-model-name :target-type name :required
                                  common-lisp:t :member-name "assetModelName")
                                 (asset-model-type :target-type
                                  asset-model-type :member-name
                                  "assetModelType")
                                 (asset-model-id :target-type id :member-name
                                  "assetModelId")
                                 (asset-model-external-id :target-type
                                  external-id :member-name
                                  "assetModelExternalId")
                                 (asset-model-description :target-type
                                  description :member-name
                                  "assetModelDescription")
                                 (asset-model-properties :target-type
                                  asset-model-property-definitions :member-name
                                  "assetModelProperties")
                                 (asset-model-hierarchies :target-type
                                  asset-model-hierarchy-definitions
                                  :member-name "assetModelHierarchies")
                                 (asset-model-composite-models :target-type
                                  asset-model-composite-model-definitions
                                  :member-name "assetModelCompositeModels")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateAssetModelRequest"))

(smithy/sdk/shapes:define-output create-asset-model-response common-lisp:nil
                                 ((asset-model-id :target-type id :required
                                   common-lisp:t :member-name "assetModelId")
                                  (asset-model-arn :target-type arn :required
                                   common-lisp:t :member-name "assetModelArn")
                                  (asset-model-status :target-type
                                   asset-model-status :required common-lisp:t
                                   :member-name "assetModelStatus"))
                                 (:shape-name "CreateAssetModelResponse"))

(smithy/sdk/shapes:define-input create-asset-request common-lisp:nil
                                ((asset-name :target-type name :required
                                  common-lisp:t :member-name "assetName")
                                 (asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId")
                                 (asset-id :target-type id :member-name
                                  "assetId")
                                 (asset-external-id :target-type external-id
                                  :member-name "assetExternalId")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (asset-description :target-type description
                                  :member-name "assetDescription"))
                                (:shape-name "CreateAssetRequest"))

(smithy/sdk/shapes:define-output create-asset-response common-lisp:nil
                                 ((asset-id :target-type id :required
                                   common-lisp:t :member-name "assetId")
                                  (asset-arn :target-type arn :required
                                   common-lisp:t :member-name "assetArn")
                                  (asset-status :target-type asset-status
                                   :required common-lisp:t :member-name
                                   "assetStatus"))
                                 (:shape-name "CreateAssetResponse"))

(smithy/sdk/shapes:define-input create-bulk-import-job-request common-lisp:nil
                                ((job-name :target-type name :required
                                  common-lisp:t :member-name "jobName")
                                 (job-role-arn :target-type arn :required
                                  common-lisp:t :member-name "jobRoleArn")
                                 (files :target-type files :required
                                  common-lisp:t :member-name "files")
                                 (error-report-location :target-type
                                  error-report-location :required common-lisp:t
                                  :member-name "errorReportLocation")
                                 (job-configuration :target-type
                                  job-configuration :required common-lisp:t
                                  :member-name "jobConfiguration")
                                 (adaptive-ingestion :target-type
                                  adaptive-ingestion :member-name
                                  "adaptiveIngestion")
                                 (delete-files-after-import :target-type
                                  delete-files-after-import :member-name
                                  "deleteFilesAfterImport"))
                                (:shape-name "CreateBulkImportJobRequest"))

(smithy/sdk/shapes:define-output create-bulk-import-job-response
                                 common-lisp:nil
                                 ((job-id :target-type id :required
                                   common-lisp:t :member-name "jobId")
                                  (job-name :target-type name :required
                                   common-lisp:t :member-name "jobName")
                                  (job-status :target-type job-status :required
                                   common-lisp:t :member-name "jobStatus"))
                                 (:shape-name "CreateBulkImportJobResponse"))

(smithy/sdk/shapes:define-input create-computation-model-request
                                common-lisp:nil
                                ((computation-model-name :target-type
                                  restricted-name :required common-lisp:t
                                  :member-name "computationModelName")
                                 (computation-model-description :target-type
                                  restricted-description :member-name
                                  "computationModelDescription")
                                 (computation-model-configuration :target-type
                                  computation-model-configuration :required
                                  common-lisp:t :member-name
                                  "computationModelConfiguration")
                                 (computation-model-data-binding :target-type
                                  computation-model-data-binding :required
                                  common-lisp:t :member-name
                                  "computationModelDataBinding")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateComputationModelRequest"))

(smithy/sdk/shapes:define-output create-computation-model-response
                                 common-lisp:nil
                                 ((computation-model-id :target-type id
                                   :required common-lisp:t :member-name
                                   "computationModelId")
                                  (computation-model-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "computationModelArn")
                                  (computation-model-status :target-type
                                   computation-model-status :required
                                   common-lisp:t :member-name
                                   "computationModelStatus"))
                                 (:shape-name "CreateComputationModelResponse"))

(smithy/sdk/shapes:define-input create-dashboard-request common-lisp:nil
                                ((project-id :target-type id :required
                                  common-lisp:t :member-name "projectId")
                                 (dashboard-name :target-type name :required
                                  common-lisp:t :member-name "dashboardName")
                                 (dashboard-description :target-type
                                  description :member-name
                                  "dashboardDescription")
                                 (dashboard-definition :target-type
                                  dashboard-definition :required common-lisp:t
                                  :member-name "dashboardDefinition")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateDashboardRequest"))

(smithy/sdk/shapes:define-output create-dashboard-response common-lisp:nil
                                 ((dashboard-id :target-type id :required
                                   common-lisp:t :member-name "dashboardId")
                                  (dashboard-arn :target-type arn :required
                                   common-lisp:t :member-name "dashboardArn"))
                                 (:shape-name "CreateDashboardResponse"))

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((dataset-id :target-type id :member-name
                                  "datasetId")
                                 (dataset-name :target-type restricted-name
                                  :required common-lisp:t :member-name
                                  "datasetName")
                                 (dataset-description :target-type
                                  restricted-description :member-name
                                  "datasetDescription")
                                 (dataset-source :target-type dataset-source
                                  :required common-lisp:t :member-name
                                  "datasetSource")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((dataset-id :target-type id :required
                                   common-lisp:t :member-name "datasetId")
                                  (dataset-arn :target-type arn :required
                                   common-lisp:t :member-name "datasetArn")
                                  (dataset-status :target-type dataset-status
                                   :required common-lisp:t :member-name
                                   "datasetStatus"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-gateway-request common-lisp:nil
                                ((gateway-name :target-type gateway-name
                                  :required common-lisp:t :member-name
                                  "gatewayName")
                                 (gateway-platform :target-type
                                  gateway-platform :required common-lisp:t
                                  :member-name "gatewayPlatform")
                                 (gateway-version :target-type gateway-version
                                  :member-name "gatewayVersion")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateGatewayRequest"))

(smithy/sdk/shapes:define-output create-gateway-response common-lisp:nil
                                 ((gateway-id :target-type id :required
                                   common-lisp:t :member-name "gatewayId")
                                  (gateway-arn :target-type arn :required
                                   common-lisp:t :member-name "gatewayArn"))
                                 (:shape-name "CreateGatewayResponse"))

(smithy/sdk/shapes:define-type create-missing-property
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input create-portal-request common-lisp:nil
                                ((portal-name :target-type name :required
                                  common-lisp:t :member-name "portalName")
                                 (portal-description :target-type description
                                  :member-name "portalDescription")
                                 (portal-contact-email :target-type email
                                  :required common-lisp:t :member-name
                                  "portalContactEmail")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (portal-logo-image-file :target-type
                                  image-file :member-name
                                  "portalLogoImageFile")
                                 (role-arn :target-type iam-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (portal-auth-mode :target-type auth-mode
                                  :member-name "portalAuthMode")
                                 (notification-sender-email :target-type email
                                  :member-name "notificationSenderEmail")
                                 (alarms :target-type alarms :member-name
                                  "alarms")
                                 (portal-type :target-type portal-type
                                  :member-name "portalType")
                                 (portal-type-configuration :target-type
                                  portal-type-configuration :member-name
                                  "portalTypeConfiguration"))
                                (:shape-name "CreatePortalRequest"))

(smithy/sdk/shapes:define-output create-portal-response common-lisp:nil
                                 ((portal-id :target-type id :required
                                   common-lisp:t :member-name "portalId")
                                  (portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (portal-start-url :target-type url :required
                                   common-lisp:t :member-name "portalStartUrl")
                                  (portal-status :target-type portal-status
                                   :required common-lisp:t :member-name
                                   "portalStatus")
                                  (sso-application-id :target-type
                                   ssoapplication-id :required common-lisp:t
                                   :member-name "ssoApplicationId"))
                                 (:shape-name "CreatePortalResponse"))

(smithy/sdk/shapes:define-input create-project-request common-lisp:nil
                                ((portal-id :target-type id :required
                                  common-lisp:t :member-name "portalId")
                                 (project-name :target-type name :required
                                  common-lisp:t :member-name "projectName")
                                 (project-description :target-type description
                                  :member-name "projectDescription")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateProjectRequest"))

(smithy/sdk/shapes:define-output create-project-response common-lisp:nil
                                 ((project-id :target-type id :required
                                   common-lisp:t :member-name "projectId")
                                  (project-arn :target-type arn :required
                                   common-lisp:t :member-name "projectArn"))
                                 (:shape-name "CreateProjectResponse"))

(smithy/sdk/shapes:define-structure csv common-lisp:nil
                                    ((column-names :target-type column-names
                                      :required common-lisp:t :member-name
                                      "columnNames"))
                                    (:shape-name "Csv"))

(smithy/sdk/shapes:define-type custom-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure customer-managed-s3storage common-lisp:nil
                                    ((s3resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "s3ResourceArn")
                                     (role-arn :target-type arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "CustomerManagedS3Storage"))

(smithy/sdk/shapes:define-type dashboard-definition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dashboard-summaries :member dashboard-summary)

(smithy/sdk/shapes:define-structure dashboard-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate")
                                     (last-update-date :target-type timestamp
                                      :member-name "lastUpdateDate"))
                                    (:shape-name "DashboardSummary"))

(smithy/sdk/shapes:define-structure data-binding-value common-lisp:nil
                                    ((asset-model-property :target-type
                                      asset-model-property-binding-value
                                      :member-name "assetModelProperty")
                                     (asset-property :target-type
                                      asset-property-binding-value :member-name
                                      "assetProperty"))
                                    (:shape-name "DataBindingValue"))

(smithy/sdk/shapes:define-structure data-binding-value-filter common-lisp:nil
                                    ((asset :target-type
                                      asset-binding-value-filter :member-name
                                      "asset")
                                     (asset-model :target-type
                                      asset-model-binding-value-filter
                                      :member-name "assetModel")
                                     (asset-property :target-type
                                      asset-property-binding-value-filter
                                      :member-name "assetProperty")
                                     (asset-model-property :target-type
                                      asset-model-property-binding-value-filter
                                      :member-name "assetModelProperty"))
                                    (:shape-name "DataBindingValueFilter"))

(smithy/sdk/shapes:define-structure data-set-reference common-lisp:nil
                                    ((dataset-arn :target-type string
                                      :member-name "datasetArn")
                                     (source :target-type source :member-name
                                      "source"))
                                    (:shape-name "DataSetReference"))

(smithy/sdk/shapes:define-structure dataset-source common-lisp:nil
                                    ((source-type :target-type
                                      dataset-source-type :required
                                      common-lisp:t :member-name "sourceType")
                                     (source-format :target-type
                                      dataset-source-format :required
                                      common-lisp:t :member-name
                                      "sourceFormat")
                                     (source-detail :target-type source-detail
                                      :member-name "sourceDetail"))
                                    (:shape-name "DatasetSource"))

(smithy/sdk/shapes:define-enum dataset-source-format
    common-lisp:nil
  (:knowledge-base "KNOWLEDGE_BASE"))

(smithy/sdk/shapes:define-enum dataset-source-type
    common-lisp:nil
  (:kendra "KENDRA"))

(smithy/sdk/shapes:define-enum dataset-state
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure dataset-status common-lisp:nil
                                    ((state :target-type dataset-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (error :target-type error-details
                                      :member-name "error"))
                                    (:shape-name "DatasetStatus"))

(smithy/sdk/shapes:define-list dataset-summaries :member dataset-summary)

(smithy/sdk/shapes:define-structure dataset-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type restricted-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      restricted-description :required
                                      common-lisp:t :member-name "description")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate")
                                     (last-update-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateDate")
                                     (status :target-type dataset-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "DatasetSummary"))

(smithy/sdk/shapes:define-structure datum common-lisp:nil
                                    ((scalar-value :target-type scalar-value
                                      :member-name "scalarValue")
                                     (array-value :target-type datum-list
                                      :member-name "arrayValue")
                                     (row-value :target-type row :member-name
                                      "rowValue")
                                     (null-value :target-type nullable-boolean
                                      :member-name "nullValue"))
                                    (:shape-name "Datum"))

(smithy/sdk/shapes:define-list datum-list :member datum)

(smithy/sdk/shapes:define-type default-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-access-policy-request common-lisp:nil
                                ((access-policy-id :target-type id :required
                                  common-lisp:t :member-name "accessPolicyId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteAccessPolicyRequest"))

(smithy/sdk/shapes:define-output delete-access-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAccessPolicyResponse"))

(smithy/sdk/shapes:define-input delete-asset-model-composite-model-request
                                common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (asset-model-composite-model-id :target-type
                                  custom-id :required common-lisp:t
                                  :member-name "assetModelCompositeModelId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken")
                                 (if-match :target-type etag :member-name
                                  "ifMatch" :http-header "If-Match")
                                 (if-none-match :target-type select-all
                                  :member-name "ifNoneMatch" :http-header
                                  "If-None-Match")
                                 (match-for-version-type :target-type
                                  asset-model-version-type :member-name
                                  "matchForVersionType" :http-header
                                  "Match-For-Version-Type"))
                                (:shape-name
                                 "DeleteAssetModelCompositeModelRequest"))

(smithy/sdk/shapes:define-output delete-asset-model-composite-model-response
                                 common-lisp:nil
                                 ((asset-model-status :target-type
                                   asset-model-status :required common-lisp:t
                                   :member-name "assetModelStatus"))
                                 (:shape-name
                                  "DeleteAssetModelCompositeModelResponse"))

(smithy/sdk/shapes:define-input
 delete-asset-model-interface-relationship-request common-lisp:nil
 ((asset-model-id :target-type custom-id :required common-lisp:t :member-name
   "assetModelId" :http-label common-lisp:t)
  (interface-asset-model-id :target-type custom-id :required common-lisp:t
   :member-name "interfaceAssetModelId" :http-label common-lisp:t)
  (client-token :target-type client-token :member-name "clientToken"
   :http-query "clientToken"))
 (:shape-name "DeleteAssetModelInterfaceRelationshipRequest"))

(smithy/sdk/shapes:define-output
 delete-asset-model-interface-relationship-response common-lisp:nil
 ((asset-model-id :target-type id :required common-lisp:t :member-name
   "assetModelId")
  (interface-asset-model-id :target-type id :required common-lisp:t
   :member-name "interfaceAssetModelId")
  (asset-model-arn :target-type arn :required common-lisp:t :member-name
   "assetModelArn")
  (asset-model-status :target-type asset-model-status :required common-lisp:t
   :member-name "assetModelStatus"))
 (:shape-name "DeleteAssetModelInterfaceRelationshipResponse"))

(smithy/sdk/shapes:define-input delete-asset-model-request common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken")
                                 (if-match :target-type etag :member-name
                                  "ifMatch" :http-header "If-Match")
                                 (if-none-match :target-type select-all
                                  :member-name "ifNoneMatch" :http-header
                                  "If-None-Match")
                                 (match-for-version-type :target-type
                                  asset-model-version-type :member-name
                                  "matchForVersionType" :http-header
                                  "Match-For-Version-Type"))
                                (:shape-name "DeleteAssetModelRequest"))

(smithy/sdk/shapes:define-output delete-asset-model-response common-lisp:nil
                                 ((asset-model-status :target-type
                                   asset-model-status :required common-lisp:t
                                   :member-name "assetModelStatus"))
                                 (:shape-name "DeleteAssetModelResponse"))

(smithy/sdk/shapes:define-input delete-asset-request common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteAssetRequest"))

(smithy/sdk/shapes:define-output delete-asset-response common-lisp:nil
                                 ((asset-status :target-type asset-status
                                   :required common-lisp:t :member-name
                                   "assetStatus"))
                                 (:shape-name "DeleteAssetResponse"))

(smithy/sdk/shapes:define-input delete-computation-model-request
                                common-lisp:nil
                                ((computation-model-id :target-type id
                                  :required common-lisp:t :member-name
                                  "computationModelId" :http-label
                                  common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteComputationModelRequest"))

(smithy/sdk/shapes:define-output delete-computation-model-response
                                 common-lisp:nil
                                 ((computation-model-status :target-type
                                   computation-model-status :required
                                   common-lisp:t :member-name
                                   "computationModelStatus"))
                                 (:shape-name "DeleteComputationModelResponse"))

(smithy/sdk/shapes:define-input delete-dashboard-request common-lisp:nil
                                ((dashboard-id :target-type id :required
                                  common-lisp:t :member-name "dashboardId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteDashboardRequest"))

(smithy/sdk/shapes:define-output delete-dashboard-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDashboardResponse"))

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((dataset-id :target-type id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-output delete-dataset-response common-lisp:nil
                                 ((dataset-status :target-type dataset-status
                                   :required common-lisp:t :member-name
                                   "datasetStatus"))
                                 (:shape-name "DeleteDatasetResponse"))

(smithy/sdk/shapes:define-type delete-files-after-import
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-gateway-request common-lisp:nil
                                ((gateway-id :target-type id :required
                                  common-lisp:t :member-name "gatewayId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteGatewayRequest"))

(smithy/sdk/shapes:define-input delete-portal-request common-lisp:nil
                                ((portal-id :target-type id :required
                                  common-lisp:t :member-name "portalId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeletePortalRequest"))

(smithy/sdk/shapes:define-output delete-portal-response common-lisp:nil
                                 ((portal-status :target-type portal-status
                                   :required common-lisp:t :member-name
                                   "portalStatus"))
                                 (:shape-name "DeletePortalResponse"))

(smithy/sdk/shapes:define-input delete-project-request common-lisp:nil
                                ((project-id :target-type id :required
                                  common-lisp:t :member-name "projectId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteProjectRequest"))

(smithy/sdk/shapes:define-output delete-project-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteProjectResponse"))

(smithy/sdk/shapes:define-input delete-time-series-request common-lisp:nil
                                ((alias :target-type property-alias
                                  :member-name "alias" :http-query "alias")
                                 (asset-id :target-type custom-id :member-name
                                  "assetId" :http-query "assetId")
                                 (property-id :target-type custom-id
                                  :member-name "propertyId" :http-query
                                  "propertyId")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "DeleteTimeSeriesRequest"))

(smithy/sdk/shapes:define-input describe-access-policy-request common-lisp:nil
                                ((access-policy-id :target-type id :required
                                  common-lisp:t :member-name "accessPolicyId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeAccessPolicyRequest"))

(smithy/sdk/shapes:define-output describe-access-policy-response
                                 common-lisp:nil
                                 ((access-policy-id :target-type id :required
                                   common-lisp:t :member-name "accessPolicyId")
                                  (access-policy-arn :target-type arn :required
                                   common-lisp:t :member-name
                                   "accessPolicyArn")
                                  (access-policy-identity :target-type identity
                                   :required common-lisp:t :member-name
                                   "accessPolicyIdentity")
                                  (access-policy-resource :target-type resource
                                   :required common-lisp:t :member-name
                                   "accessPolicyResource")
                                  (access-policy-permission :target-type
                                   permission :required common-lisp:t
                                   :member-name "accessPolicyPermission")
                                  (access-policy-creation-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "accessPolicyCreationDate")
                                  (access-policy-last-update-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "accessPolicyLastUpdateDate"))
                                 (:shape-name "DescribeAccessPolicyResponse"))

(smithy/sdk/shapes:define-input describe-action-request common-lisp:nil
                                ((action-id :target-type id :required
                                  common-lisp:t :member-name "actionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeActionRequest"))

(smithy/sdk/shapes:define-output describe-action-response common-lisp:nil
                                 ((action-id :target-type id :required
                                   common-lisp:t :member-name "actionId")
                                  (target-resource :target-type target-resource
                                   :required common-lisp:t :member-name
                                   "targetResource")
                                  (action-definition-id :target-type id
                                   :required common-lisp:t :member-name
                                   "actionDefinitionId")
                                  (action-payload :target-type action-payload
                                   :required common-lisp:t :member-name
                                   "actionPayload")
                                  (execution-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "executionTime")
                                  (resolve-to :target-type resolve-to
                                   :member-name "resolveTo"))
                                 (:shape-name "DescribeActionResponse"))

(smithy/sdk/shapes:define-input describe-asset-composite-model-request
                                common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (asset-composite-model-id :target-type
                                  custom-id :required common-lisp:t
                                  :member-name "assetCompositeModelId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeAssetCompositeModelRequest"))

(smithy/sdk/shapes:define-output describe-asset-composite-model-response
                                 common-lisp:nil
                                 ((asset-id :target-type id :required
                                   common-lisp:t :member-name "assetId")
                                  (asset-composite-model-id :target-type id
                                   :required common-lisp:t :member-name
                                   "assetCompositeModelId")
                                  (asset-composite-model-external-id
                                   :target-type external-id :member-name
                                   "assetCompositeModelExternalId")
                                  (asset-composite-model-path :target-type
                                   asset-composite-model-path :required
                                   common-lisp:t :member-name
                                   "assetCompositeModelPath")
                                  (asset-composite-model-name :target-type name
                                   :required common-lisp:t :member-name
                                   "assetCompositeModelName")
                                  (asset-composite-model-description
                                   :target-type description :required
                                   common-lisp:t :member-name
                                   "assetCompositeModelDescription")
                                  (asset-composite-model-type :target-type name
                                   :required common-lisp:t :member-name
                                   "assetCompositeModelType")
                                  (asset-composite-model-properties
                                   :target-type asset-properties :required
                                   common-lisp:t :member-name
                                   "assetCompositeModelProperties")
                                  (asset-composite-model-summaries :target-type
                                   asset-composite-model-summaries :required
                                   common-lisp:t :member-name
                                   "assetCompositeModelSummaries")
                                  (action-definitions :target-type
                                   action-definitions :member-name
                                   "actionDefinitions"))
                                 (:shape-name
                                  "DescribeAssetCompositeModelResponse"))

(smithy/sdk/shapes:define-input describe-asset-model-composite-model-request
                                common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (asset-model-composite-model-id :target-type
                                  custom-id :required common-lisp:t
                                  :member-name "assetModelCompositeModelId"
                                  :http-label common-lisp:t)
                                 (asset-model-version :target-type
                                  asset-model-version-filter :member-name
                                  "assetModelVersion" :http-query
                                  "assetModelVersion"))
                                (:shape-name
                                 "DescribeAssetModelCompositeModelRequest"))

(smithy/sdk/shapes:define-output describe-asset-model-composite-model-response
                                 common-lisp:nil
                                 ((asset-model-id :target-type id :required
                                   common-lisp:t :member-name "assetModelId")
                                  (asset-model-composite-model-id :target-type
                                   id :required common-lisp:t :member-name
                                   "assetModelCompositeModelId")
                                  (asset-model-composite-model-external-id
                                   :target-type external-id :member-name
                                   "assetModelCompositeModelExternalId")
                                  (asset-model-composite-model-path
                                   :target-type
                                   asset-model-composite-model-path :required
                                   common-lisp:t :member-name
                                   "assetModelCompositeModelPath")
                                  (asset-model-composite-model-name
                                   :target-type name :required common-lisp:t
                                   :member-name "assetModelCompositeModelName")
                                  (asset-model-composite-model-description
                                   :target-type description :required
                                   common-lisp:t :member-name
                                   "assetModelCompositeModelDescription")
                                  (asset-model-composite-model-type
                                   :target-type name :required common-lisp:t
                                   :member-name "assetModelCompositeModelType")
                                  (asset-model-composite-model-properties
                                   :target-type asset-model-properties
                                   :required common-lisp:t :member-name
                                   "assetModelCompositeModelProperties")
                                  (composition-details :target-type
                                   composition-details :member-name
                                   "compositionDetails")
                                  (asset-model-composite-model-summaries
                                   :target-type
                                   asset-model-composite-model-summaries
                                   :required common-lisp:t :member-name
                                   "assetModelCompositeModelSummaries")
                                  (action-definitions :target-type
                                   action-definitions :member-name
                                   "actionDefinitions"))
                                 (:shape-name
                                  "DescribeAssetModelCompositeModelResponse"))

(smithy/sdk/shapes:define-input
 describe-asset-model-interface-relationship-request common-lisp:nil
 ((asset-model-id :target-type custom-id :required common-lisp:t :member-name
   "assetModelId" :http-label common-lisp:t)
  (interface-asset-model-id :target-type custom-id :required common-lisp:t
   :member-name "interfaceAssetModelId" :http-label common-lisp:t))
 (:shape-name "DescribeAssetModelInterfaceRelationshipRequest"))

(smithy/sdk/shapes:define-output
 describe-asset-model-interface-relationship-response common-lisp:nil
 ((asset-model-id :target-type id :required common-lisp:t :member-name
   "assetModelId")
  (interface-asset-model-id :target-type id :required common-lisp:t
   :member-name "interfaceAssetModelId")
  (property-mappings :target-type property-mappings :required common-lisp:t
   :member-name "propertyMappings")
  (hierarchy-mappings :target-type hierarchy-mappings :required common-lisp:t
   :member-name "hierarchyMappings"))
 (:shape-name "DescribeAssetModelInterfaceRelationshipResponse"))

(smithy/sdk/shapes:define-input describe-asset-model-request common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (exclude-properties :target-type
                                  exclude-properties :member-name
                                  "excludeProperties" :http-query
                                  "excludeProperties")
                                 (asset-model-version :target-type
                                  asset-model-version-filter :member-name
                                  "assetModelVersion" :http-query
                                  "assetModelVersion"))
                                (:shape-name "DescribeAssetModelRequest"))

(smithy/sdk/shapes:define-output describe-asset-model-response common-lisp:nil
                                 ((asset-model-id :target-type id :required
                                   common-lisp:t :member-name "assetModelId")
                                  (asset-model-external-id :target-type
                                   external-id :member-name
                                   "assetModelExternalId")
                                  (asset-model-arn :target-type arn :required
                                   common-lisp:t :member-name "assetModelArn")
                                  (asset-model-name :target-type name :required
                                   common-lisp:t :member-name "assetModelName")
                                  (asset-model-type :target-type
                                   asset-model-type :member-name
                                   "assetModelType")
                                  (asset-model-description :target-type
                                   description :required common-lisp:t
                                   :member-name "assetModelDescription")
                                  (asset-model-properties :target-type
                                   asset-model-properties :required
                                   common-lisp:t :member-name
                                   "assetModelProperties")
                                  (asset-model-hierarchies :target-type
                                   asset-model-hierarchies :required
                                   common-lisp:t :member-name
                                   "assetModelHierarchies")
                                  (asset-model-composite-models :target-type
                                   asset-model-composite-models :member-name
                                   "assetModelCompositeModels")
                                  (asset-model-composite-model-summaries
                                   :target-type
                                   asset-model-composite-model-summaries
                                   :member-name
                                   "assetModelCompositeModelSummaries")
                                  (asset-model-creation-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "assetModelCreationDate")
                                  (asset-model-last-update-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "assetModelLastUpdateDate")
                                  (asset-model-status :target-type
                                   asset-model-status :required common-lisp:t
                                   :member-name "assetModelStatus")
                                  (asset-model-version :target-type version
                                   :member-name "assetModelVersion")
                                  (interface-details :target-type
                                   interface-details :member-name
                                   "interfaceDetails")
                                  (e-tag :target-type etag :member-name "eTag"
                                   :http-header "ETag"))
                                 (:shape-name "DescribeAssetModelResponse"))

(smithy/sdk/shapes:define-input describe-asset-property-request common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (property-id :target-type custom-id :required
                                  common-lisp:t :member-name "propertyId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeAssetPropertyRequest"))

(smithy/sdk/shapes:define-output describe-asset-property-response
                                 common-lisp:nil
                                 ((asset-id :target-type id :required
                                   common-lisp:t :member-name "assetId")
                                  (asset-external-id :target-type external-id
                                   :member-name "assetExternalId")
                                  (asset-name :target-type name :required
                                   common-lisp:t :member-name "assetName")
                                  (asset-model-id :target-type id :required
                                   common-lisp:t :member-name "assetModelId")
                                  (asset-property :target-type property
                                   :member-name "assetProperty")
                                  (composite-model :target-type
                                   composite-model-property :member-name
                                   "compositeModel"))
                                 (:shape-name "DescribeAssetPropertyResponse"))

(smithy/sdk/shapes:define-input describe-asset-request common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (exclude-properties :target-type
                                  exclude-properties :member-name
                                  "excludeProperties" :http-query
                                  "excludeProperties"))
                                (:shape-name "DescribeAssetRequest"))

(smithy/sdk/shapes:define-output describe-asset-response common-lisp:nil
                                 ((asset-id :target-type id :required
                                   common-lisp:t :member-name "assetId")
                                  (asset-external-id :target-type external-id
                                   :member-name "assetExternalId")
                                  (asset-arn :target-type arn :required
                                   common-lisp:t :member-name "assetArn")
                                  (asset-name :target-type name :required
                                   common-lisp:t :member-name "assetName")
                                  (asset-model-id :target-type id :required
                                   common-lisp:t :member-name "assetModelId")
                                  (asset-properties :target-type
                                   asset-properties :required common-lisp:t
                                   :member-name "assetProperties")
                                  (asset-hierarchies :target-type
                                   asset-hierarchies :required common-lisp:t
                                   :member-name "assetHierarchies")
                                  (asset-composite-models :target-type
                                   asset-composite-models :member-name
                                   "assetCompositeModels")
                                  (asset-creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "assetCreationDate")
                                  (asset-last-update-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "assetLastUpdateDate")
                                  (asset-status :target-type asset-status
                                   :required common-lisp:t :member-name
                                   "assetStatus")
                                  (asset-description :target-type description
                                   :member-name "assetDescription")
                                  (asset-composite-model-summaries :target-type
                                   asset-composite-model-summaries :member-name
                                   "assetCompositeModelSummaries"))
                                 (:shape-name "DescribeAssetResponse"))

(smithy/sdk/shapes:define-input describe-bulk-import-job-request
                                common-lisp:nil
                                ((job-id :target-type id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeBulkImportJobRequest"))

(smithy/sdk/shapes:define-output describe-bulk-import-job-response
                                 common-lisp:nil
                                 ((job-id :target-type id :required
                                   common-lisp:t :member-name "jobId")
                                  (job-name :target-type name :required
                                   common-lisp:t :member-name "jobName")
                                  (job-status :target-type job-status :required
                                   common-lisp:t :member-name "jobStatus")
                                  (job-role-arn :target-type arn :required
                                   common-lisp:t :member-name "jobRoleArn")
                                  (files :target-type files :required
                                   common-lisp:t :member-name "files")
                                  (error-report-location :target-type
                                   error-report-location :required
                                   common-lisp:t :member-name
                                   "errorReportLocation")
                                  (job-configuration :target-type
                                   job-configuration :required common-lisp:t
                                   :member-name "jobConfiguration")
                                  (job-creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "jobCreationDate")
                                  (job-last-update-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "jobLastUpdateDate")
                                  (adaptive-ingestion :target-type
                                   adaptive-ingestion :member-name
                                   "adaptiveIngestion")
                                  (delete-files-after-import :target-type
                                   delete-files-after-import :member-name
                                   "deleteFilesAfterImport"))
                                 (:shape-name "DescribeBulkImportJobResponse"))

(smithy/sdk/shapes:define-input
 describe-computation-model-execution-summary-request common-lisp:nil
 ((computation-model-id :target-type id :required common-lisp:t :member-name
   "computationModelId" :http-label common-lisp:t)
  (resolve-to-resource-type :target-type resolve-to-resource-type :member-name
   "resolveToResourceType" :http-query "resolveToResourceType")
  (resolve-to-resource-id :target-type id :member-name "resolveToResourceId"
   :http-query "resolveToResourceId"))
 (:shape-name "DescribeComputationModelExecutionSummaryRequest"))

(smithy/sdk/shapes:define-output
 describe-computation-model-execution-summary-response common-lisp:nil
 ((computation-model-id :target-type id :required common-lisp:t :member-name
   "computationModelId")
  (resolve-to :target-type resolve-to :member-name "resolveTo")
  (computation-model-execution-summary :target-type
   computation-model-execution-summary :required common-lisp:t :member-name
   "computationModelExecutionSummary"))
 (:shape-name "DescribeComputationModelExecutionSummaryResponse"))

(smithy/sdk/shapes:define-input describe-computation-model-request
                                common-lisp:nil
                                ((computation-model-id :target-type id
                                  :required common-lisp:t :member-name
                                  "computationModelId" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeComputationModelRequest"))

(smithy/sdk/shapes:define-output describe-computation-model-response
                                 common-lisp:nil
                                 ((computation-model-id :target-type id
                                   :required common-lisp:t :member-name
                                   "computationModelId")
                                  (computation-model-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "computationModelArn")
                                  (computation-model-name :target-type
                                   restricted-name :required common-lisp:t
                                   :member-name "computationModelName")
                                  (computation-model-description :target-type
                                   restricted-description :member-name
                                   "computationModelDescription")
                                  (computation-model-configuration :target-type
                                   computation-model-configuration :required
                                   common-lisp:t :member-name
                                   "computationModelConfiguration")
                                  (computation-model-data-binding :target-type
                                   computation-model-data-binding :required
                                   common-lisp:t :member-name
                                   "computationModelDataBinding")
                                  (computation-model-creation-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "computationModelCreationDate")
                                  (computation-model-last-update-date
                                   :target-type timestamp :required
                                   common-lisp:t :member-name
                                   "computationModelLastUpdateDate")
                                  (computation-model-status :target-type
                                   computation-model-status :required
                                   common-lisp:t :member-name
                                   "computationModelStatus")
                                  (computation-model-version :target-type
                                   version :required common-lisp:t :member-name
                                   "computationModelVersion")
                                  (action-definitions :target-type
                                   action-definitions :required common-lisp:t
                                   :member-name "actionDefinitions"))
                                 (:shape-name
                                  "DescribeComputationModelResponse"))

(smithy/sdk/shapes:define-input describe-dashboard-request common-lisp:nil
                                ((dashboard-id :target-type id :required
                                  common-lisp:t :member-name "dashboardId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeDashboardRequest"))

(smithy/sdk/shapes:define-output describe-dashboard-response common-lisp:nil
                                 ((dashboard-id :target-type id :required
                                   common-lisp:t :member-name "dashboardId")
                                  (dashboard-arn :target-type arn :required
                                   common-lisp:t :member-name "dashboardArn")
                                  (dashboard-name :target-type name :required
                                   common-lisp:t :member-name "dashboardName")
                                  (project-id :target-type id :required
                                   common-lisp:t :member-name "projectId")
                                  (dashboard-description :target-type
                                   description :member-name
                                   "dashboardDescription")
                                  (dashboard-definition :target-type
                                   dashboard-definition :required common-lisp:t
                                   :member-name "dashboardDefinition")
                                  (dashboard-creation-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "dashboardCreationDate")
                                  (dashboard-last-update-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "dashboardLastUpdateDate"))
                                 (:shape-name "DescribeDashboardResponse"))

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((dataset-id :target-type id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((dataset-id :target-type id :required
                                   common-lisp:t :member-name "datasetId")
                                  (dataset-arn :target-type arn :required
                                   common-lisp:t :member-name "datasetArn")
                                  (dataset-name :target-type restricted-name
                                   :required common-lisp:t :member-name
                                   "datasetName")
                                  (dataset-description :target-type
                                   restricted-description :required
                                   common-lisp:t :member-name
                                   "datasetDescription")
                                  (dataset-source :target-type dataset-source
                                   :required common-lisp:t :member-name
                                   "datasetSource")
                                  (dataset-status :target-type dataset-status
                                   :required common-lisp:t :member-name
                                   "datasetStatus")
                                  (dataset-creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "datasetCreationDate")
                                  (dataset-last-update-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "datasetLastUpdateDate")
                                  (dataset-version :target-type version
                                   :member-name "datasetVersion"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input
 describe-default-encryption-configuration-request common-lisp:nil
 common-lisp:nil (:shape-name "DescribeDefaultEncryptionConfigurationRequest"))

(smithy/sdk/shapes:define-output
 describe-default-encryption-configuration-response common-lisp:nil
 ((encryption-type :target-type encryption-type :required common-lisp:t
   :member-name "encryptionType")
  (kms-key-arn :target-type arn :member-name "kmsKeyArn")
  (configuration-status :target-type configuration-status :required
   common-lisp:t :member-name "configurationStatus"))
 (:shape-name "DescribeDefaultEncryptionConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-execution-request common-lisp:nil
                                ((execution-id :target-type id :required
                                  common-lisp:t :member-name "executionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeExecutionRequest"))

(smithy/sdk/shapes:define-output describe-execution-response common-lisp:nil
                                 ((execution-id :target-type id :required
                                   common-lisp:t :member-name "executionId")
                                  (action-type :target-type name :member-name
                                   "actionType")
                                  (target-resource :target-type target-resource
                                   :required common-lisp:t :member-name
                                   "targetResource")
                                  (target-resource-version :target-type version
                                   :required common-lisp:t :member-name
                                   "targetResourceVersion")
                                  (resolve-to :target-type resolve-to
                                   :member-name "resolveTo")
                                  (execution-start-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "executionStartTime")
                                  (execution-end-time :target-type timestamp
                                   :member-name "executionEndTime")
                                  (execution-status :target-type
                                   execution-status :required common-lisp:t
                                   :member-name "executionStatus")
                                  (execution-result :target-type
                                   execution-result :member-name
                                   "executionResult")
                                  (execution-details :target-type
                                   execution-details :member-name
                                   "executionDetails")
                                  (execution-entity-version :target-type
                                   version :member-name
                                   "executionEntityVersion"))
                                 (:shape-name "DescribeExecutionResponse"))

(smithy/sdk/shapes:define-input
 describe-gateway-capability-configuration-request common-lisp:nil
 ((gateway-id :target-type id :required common-lisp:t :member-name "gatewayId"
   :http-label common-lisp:t)
  (capability-namespace :target-type capability-namespace :required
   common-lisp:t :member-name "capabilityNamespace" :http-label common-lisp:t))
 (:shape-name "DescribeGatewayCapabilityConfigurationRequest"))

(smithy/sdk/shapes:define-output
 describe-gateway-capability-configuration-response common-lisp:nil
 ((gateway-id :target-type id :required common-lisp:t :member-name "gatewayId")
  (capability-namespace :target-type capability-namespace :required
   common-lisp:t :member-name "capabilityNamespace")
  (capability-configuration :target-type capability-configuration :required
   common-lisp:t :member-name "capabilityConfiguration")
  (capability-sync-status :target-type capability-sync-status :required
   common-lisp:t :member-name "capabilitySyncStatus"))
 (:shape-name "DescribeGatewayCapabilityConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-gateway-request common-lisp:nil
                                ((gateway-id :target-type id :required
                                  common-lisp:t :member-name "gatewayId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeGatewayRequest"))

(smithy/sdk/shapes:define-output describe-gateway-response common-lisp:nil
                                 ((gateway-id :target-type id :required
                                   common-lisp:t :member-name "gatewayId")
                                  (gateway-name :target-type gateway-name
                                   :required common-lisp:t :member-name
                                   "gatewayName")
                                  (gateway-arn :target-type arn :required
                                   common-lisp:t :member-name "gatewayArn")
                                  (gateway-platform :target-type
                                   gateway-platform :member-name
                                   "gatewayPlatform")
                                  (gateway-version :target-type gateway-version
                                   :member-name "gatewayVersion")
                                  (gateway-capability-summaries :target-type
                                   gateway-capability-summaries :required
                                   common-lisp:t :member-name
                                   "gatewayCapabilitySummaries")
                                  (creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationDate")
                                  (last-update-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdateDate"))
                                 (:shape-name "DescribeGatewayResponse"))

(smithy/sdk/shapes:define-input describe-logging-options-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "DescribeLoggingOptionsRequest"))

(smithy/sdk/shapes:define-output describe-logging-options-response
                                 common-lisp:nil
                                 ((logging-options :target-type logging-options
                                   :required common-lisp:t :member-name
                                   "loggingOptions"))
                                 (:shape-name "DescribeLoggingOptionsResponse"))

(smithy/sdk/shapes:define-input describe-portal-request common-lisp:nil
                                ((portal-id :target-type id :required
                                  common-lisp:t :member-name "portalId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribePortalRequest"))

(smithy/sdk/shapes:define-output describe-portal-response common-lisp:nil
                                 ((portal-id :target-type id :required
                                   common-lisp:t :member-name "portalId")
                                  (portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (portal-name :target-type name :required
                                   common-lisp:t :member-name "portalName")
                                  (portal-description :target-type description
                                   :member-name "portalDescription")
                                  (portal-client-id :target-type
                                   portal-client-id :required common-lisp:t
                                   :member-name "portalClientId")
                                  (portal-start-url :target-type url :required
                                   common-lisp:t :member-name "portalStartUrl")
                                  (portal-contact-email :target-type email
                                   :required common-lisp:t :member-name
                                   "portalContactEmail")
                                  (portal-status :target-type portal-status
                                   :required common-lisp:t :member-name
                                   "portalStatus")
                                  (portal-creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "portalCreationDate")
                                  (portal-last-update-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "portalLastUpdateDate")
                                  (portal-logo-image-location :target-type
                                   image-location :member-name
                                   "portalLogoImageLocation")
                                  (role-arn :target-type iam-arn :member-name
                                   "roleArn")
                                  (portal-auth-mode :target-type auth-mode
                                   :member-name "portalAuthMode")
                                  (notification-sender-email :target-type email
                                   :member-name "notificationSenderEmail")
                                  (alarms :target-type alarms :member-name
                                   "alarms")
                                  (portal-type :target-type portal-type
                                   :member-name "portalType")
                                  (portal-type-configuration :target-type
                                   portal-type-configuration :member-name
                                   "portalTypeConfiguration"))
                                 (:shape-name "DescribePortalResponse"))

(smithy/sdk/shapes:define-input describe-project-request common-lisp:nil
                                ((project-id :target-type id :required
                                  common-lisp:t :member-name "projectId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeProjectRequest"))

(smithy/sdk/shapes:define-output describe-project-response common-lisp:nil
                                 ((project-id :target-type id :required
                                   common-lisp:t :member-name "projectId")
                                  (project-arn :target-type arn :required
                                   common-lisp:t :member-name "projectArn")
                                  (project-name :target-type name :required
                                   common-lisp:t :member-name "projectName")
                                  (portal-id :target-type id :required
                                   common-lisp:t :member-name "portalId")
                                  (project-description :target-type description
                                   :member-name "projectDescription")
                                  (project-creation-date :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "projectCreationDate")
                                  (project-last-update-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "projectLastUpdateDate"))
                                 (:shape-name "DescribeProjectResponse"))

(smithy/sdk/shapes:define-input describe-storage-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeStorageConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-storage-configuration-response
                                 common-lisp:nil
                                 ((storage-type :target-type storage-type
                                   :required common-lisp:t :member-name
                                   "storageType")
                                  (multi-layer-storage :target-type
                                   multi-layer-storage :member-name
                                   "multiLayerStorage")
                                  (disassociated-data-storage :target-type
                                   disassociated-data-storage-state
                                   :member-name "disassociatedDataStorage")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "retentionPeriod")
                                  (configuration-status :target-type
                                   configuration-status :required common-lisp:t
                                   :member-name "configurationStatus")
                                  (last-update-date :target-type timestamp
                                   :member-name "lastUpdateDate")
                                  (warm-tier :target-type warm-tier-state
                                   :member-name "warmTier")
                                  (warm-tier-retention-period :target-type
                                   warm-tier-retention-period :member-name
                                   "warmTierRetentionPeriod")
                                  (disallow-ingest-null-na-n :target-type
                                   disallow-ingest-null-na-n :member-name
                                   "disallowIngestNullNaN"))
                                 (:shape-name
                                  "DescribeStorageConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-time-series-request common-lisp:nil
                                ((alias :target-type property-alias
                                  :member-name "alias" :http-query "alias")
                                 (asset-id :target-type custom-id :member-name
                                  "assetId" :http-query "assetId")
                                 (property-id :target-type custom-id
                                  :member-name "propertyId" :http-query
                                  "propertyId"))
                                (:shape-name "DescribeTimeSeriesRequest"))

(smithy/sdk/shapes:define-output describe-time-series-response common-lisp:nil
                                 ((asset-id :target-type id :member-name
                                   "assetId")
                                  (property-id :target-type id :member-name
                                   "propertyId")
                                  (alias :target-type property-alias
                                   :member-name "alias")
                                  (time-series-id :target-type time-series-id
                                   :required common-lisp:t :member-name
                                   "timeSeriesId")
                                  (data-type :target-type property-data-type
                                   :required common-lisp:t :member-name
                                   "dataType")
                                  (data-type-spec :target-type name
                                   :member-name "dataTypeSpec")
                                  (time-series-creation-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "timeSeriesCreationDate")
                                  (time-series-last-update-date :target-type
                                   timestamp :required common-lisp:t
                                   :member-name "timeSeriesLastUpdateDate")
                                  (time-series-arn :target-type arn :required
                                   common-lisp:t :member-name "timeSeriesArn"))
                                 (:shape-name "DescribeTimeSeriesResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure detailed-error common-lisp:nil
                                    ((code :target-type detailed-error-code
                                      :required common-lisp:t :member-name
                                      "code")
                                     (message :target-type
                                      detailed-error-message :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "DetailedError"))

(smithy/sdk/shapes:define-enum detailed-error-code
    common-lisp:nil
  (:incompatible-compute-location "INCOMPATIBLE_COMPUTE_LOCATION")
  (:incompatible-forwarding-configuration
   "INCOMPATIBLE_FORWARDING_CONFIGURATION"))

(smithy/sdk/shapes:define-type detailed-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list detailed-errors :member detailed-error)

(smithy/sdk/shapes:define-type disallow-ingest-null-na-n
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input disassociate-assets-request common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (hierarchy-id :target-type custom-id :required
                                  common-lisp:t :member-name "hierarchyId")
                                 (child-asset-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "childAssetId")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "DisassociateAssetsRequest"))

(smithy/sdk/shapes:define-input
 disassociate-time-series-from-asset-property-request common-lisp:nil
 ((alias :target-type property-alias :required common-lisp:t :member-name
   "alias" :http-query "alias")
  (asset-id :target-type custom-id :required common-lisp:t :member-name
   "assetId" :http-query "assetId")
  (property-id :target-type custom-id :required common-lisp:t :member-name
   "propertyId" :http-query "propertyId")
  (client-token :target-type client-token :member-name "clientToken"))
 (:shape-name "DisassociateTimeSeriesFromAssetPropertyRequest"))

(smithy/sdk/shapes:define-enum disassociated-data-storage-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type etag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:sitewise-default-encryption "SITEWISE_DEFAULT_ENCRYPTION")
  (:kms-based-encryption "KMS_BASED_ENCRYPTION"))

(smithy/sdk/shapes:define-type entry-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:validation-error "VALIDATION_ERROR")
  (:internal-failure "INTERNAL_FAILURE"))

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((code :target-type error-code :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "message")
                                     (details :target-type detailed-errors
                                      :member-name "details"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-report-location common-lisp:nil
                                    ((bucket :target-type bucket :required
                                      common-lisp:t :member-name "bucket")
                                     (prefix :target-type string :required
                                      common-lisp:t :member-name "prefix"))
                                    (:shape-name "ErrorReportLocation"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exclude-properties
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input execute-action-request common-lisp:nil
                                ((target-resource :target-type target-resource
                                  :required common-lisp:t :member-name
                                  "targetResource")
                                 (action-definition-id :target-type id
                                  :required common-lisp:t :member-name
                                  "actionDefinitionId")
                                 (action-payload :target-type action-payload
                                  :required common-lisp:t :member-name
                                  "actionPayload")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (resolve-to :target-type resolve-to
                                  :member-name "resolveTo"))
                                (:shape-name "ExecuteActionRequest"))

(smithy/sdk/shapes:define-output execute-action-response common-lisp:nil
                                 ((action-id :target-type id :required
                                   common-lisp:t :member-name "actionId"))
                                 (:shape-name "ExecuteActionResponse"))

(smithy/sdk/shapes:define-type execute-query-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type execute-query-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input execute-query-request common-lisp:nil
                                ((query-statement :target-type query-statement
                                  :required common-lisp:t :member-name
                                  "queryStatement")
                                 (next-token :target-type
                                  execute-query-next-token :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  execute-query-max-results :member-name
                                  "maxResults")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "ExecuteQueryRequest"))

(smithy/sdk/shapes:define-output execute-query-response common-lisp:nil
                                 ((columns :target-type columns-list
                                   :member-name "columns")
                                  (rows :target-type rows :member-name "rows")
                                  (next-token :target-type
                                   execute-query-next-token :member-name
                                   "nextToken"))
                                 (:shape-name "ExecuteQueryResponse"))

(smithy/sdk/shapes:define-map execution-details :key execution-details-key
                              :value execution-details-value)

(smithy/sdk/shapes:define-type execution-details-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-details-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map execution-result :key execution-result-key :value
                              execution-result-value)

(smithy/sdk/shapes:define-type execution-result-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-result-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum execution-state
    common-lisp:nil
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure execution-status common-lisp:nil
                                    ((state :target-type execution-state
                                      :required common-lisp:t :member-name
                                      "state"))
                                    (:shape-name "ExecutionStatus"))

(smithy/sdk/shapes:define-list execution-summaries :member execution-summary)

(smithy/sdk/shapes:define-structure execution-summary common-lisp:nil
                                    ((execution-id :target-type id :required
                                      common-lisp:t :member-name "executionId")
                                     (action-type :target-type name
                                      :member-name "actionType")
                                     (target-resource :target-type
                                      target-resource :required common-lisp:t
                                      :member-name "targetResource")
                                     (target-resource-version :target-type
                                      version :required common-lisp:t
                                      :member-name "targetResourceVersion")
                                     (resolve-to :target-type resolve-to
                                      :member-name "resolveTo")
                                     (execution-start-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "executionStartTime")
                                     (execution-end-time :target-type timestamp
                                      :member-name "executionEndTime")
                                     (execution-status :target-type
                                      execution-status :required common-lisp:t
                                      :member-name "executionStatus")
                                     (execution-entity-version :target-type
                                      version :member-name
                                      "executionEntityVersion"))
                                    (:shape-name "ExecutionSummary"))

(smithy/sdk/shapes:define-type expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure expression-variable common-lisp:nil
                                    ((name :target-type variable-name :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type variable-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "ExpressionVariable"))

(smithy/sdk/shapes:define-list expression-variables :member expression-variable)

(smithy/sdk/shapes:define-type external-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file common-lisp:nil
                                    ((bucket :target-type bucket :required
                                      common-lisp:t :member-name "bucket")
                                     (key :target-type string :required
                                      common-lisp:t :member-name "key")
                                     (version-id :target-type string
                                      :member-name "versionId"))
                                    (:shape-name "File"))

(smithy/sdk/shapes:define-structure file-format common-lisp:nil
                                    ((csv :target-type csv :member-name "csv")
                                     (parquet :target-type parquet :member-name
                                      "parquet"))
                                    (:shape-name "FileFormat"))

(smithy/sdk/shapes:define-list files :member file)

(smithy/sdk/shapes:define-structure forwarding-config common-lisp:nil
                                    ((state :target-type
                                      forwarding-config-state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "ForwardingConfig"))

(smithy/sdk/shapes:define-enum forwarding-config-state
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-list gateway-capability-summaries :member
                               gateway-capability-summary)

(smithy/sdk/shapes:define-structure gateway-capability-summary common-lisp:nil
                                    ((capability-namespace :target-type
                                      capability-namespace :required
                                      common-lisp:t :member-name
                                      "capabilityNamespace")
                                     (capability-sync-status :target-type
                                      capability-sync-status :required
                                      common-lisp:t :member-name
                                      "capabilitySyncStatus"))
                                    (:shape-name "GatewayCapabilitySummary"))

(smithy/sdk/shapes:define-type gateway-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure gateway-platform common-lisp:nil
                                    ((greengrass :target-type greengrass
                                      :member-name "greengrass")
                                     (greengrass-v2 :target-type greengrass-v2
                                      :member-name "greengrassV2")
                                     (siemens-ie :target-type siemens-ie
                                      :member-name "siemensIE"))
                                    (:shape-name "GatewayPlatform"))

(smithy/sdk/shapes:define-list gateway-summaries :member gateway-summary)

(smithy/sdk/shapes:define-structure gateway-summary common-lisp:nil
                                    ((gateway-id :target-type id :required
                                      common-lisp:t :member-name "gatewayId")
                                     (gateway-name :target-type gateway-name
                                      :required common-lisp:t :member-name
                                      "gatewayName")
                                     (gateway-platform :target-type
                                      gateway-platform :member-name
                                      "gatewayPlatform")
                                     (gateway-version :target-type
                                      gateway-version :member-name
                                      "gatewayVersion")
                                     (gateway-capability-summaries :target-type
                                      gateway-capability-summaries :member-name
                                      "gatewayCapabilitySummaries")
                                     (creation-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDate")
                                     (last-update-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateDate"))
                                    (:shape-name "GatewaySummary"))

(smithy/sdk/shapes:define-type gateway-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-asset-property-aggregates-request
                                common-lisp:nil
                                ((asset-id :target-type id :member-name
                                  "assetId" :http-query "assetId")
                                 (property-id :target-type id :member-name
                                  "propertyId" :http-query "propertyId")
                                 (property-alias :target-type
                                  asset-property-alias :member-name
                                  "propertyAlias" :http-query "propertyAlias")
                                 (aggregate-types :target-type aggregate-types
                                  :required common-lisp:t :member-name
                                  "aggregateTypes" :http-query
                                  "aggregateTypes")
                                 (resolution :target-type resolution :required
                                  common-lisp:t :member-name "resolution"
                                  :http-query "resolution")
                                 (qualities :target-type qualities :member-name
                                  "qualities" :http-query "qualities")
                                 (start-date :target-type timestamp :required
                                  common-lisp:t :member-name "startDate"
                                  :http-query "startDate")
                                 (end-date :target-type timestamp :required
                                  common-lisp:t :member-name "endDate"
                                  :http-query "endDate")
                                 (time-ordering :target-type time-ordering
                                  :member-name "timeOrdering" :http-query
                                  "timeOrdering")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  get-asset-property-value-aggregates-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "GetAssetPropertyAggregatesRequest"))

(smithy/sdk/shapes:define-output get-asset-property-aggregates-response
                                 common-lisp:nil
                                 ((aggregated-values :target-type
                                   aggregated-values :required common-lisp:t
                                   :member-name "aggregatedValues")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetAssetPropertyAggregatesResponse"))

(smithy/sdk/shapes:define-type get-asset-property-value-aggregates-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type get-asset-property-value-history-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-asset-property-value-history-request
                                common-lisp:nil
                                ((asset-id :target-type id :member-name
                                  "assetId" :http-query "assetId")
                                 (property-id :target-type id :member-name
                                  "propertyId" :http-query "propertyId")
                                 (property-alias :target-type
                                  asset-property-alias :member-name
                                  "propertyAlias" :http-query "propertyAlias")
                                 (start-date :target-type timestamp
                                  :member-name "startDate" :http-query
                                  "startDate")
                                 (end-date :target-type timestamp :member-name
                                  "endDate" :http-query "endDate")
                                 (qualities :target-type qualities :member-name
                                  "qualities" :http-query "qualities")
                                 (time-ordering :target-type time-ordering
                                  :member-name "timeOrdering" :http-query
                                  "timeOrdering")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  get-asset-property-value-history-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "GetAssetPropertyValueHistoryRequest"))

(smithy/sdk/shapes:define-output get-asset-property-value-history-response
                                 common-lisp:nil
                                 ((asset-property-value-history :target-type
                                   asset-property-value-history :required
                                   common-lisp:t :member-name
                                   "assetPropertyValueHistory")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetAssetPropertyValueHistoryResponse"))

(smithy/sdk/shapes:define-input get-asset-property-value-request
                                common-lisp:nil
                                ((asset-id :target-type id :member-name
                                  "assetId" :http-query "assetId")
                                 (property-id :target-type id :member-name
                                  "propertyId" :http-query "propertyId")
                                 (property-alias :target-type
                                  asset-property-alias :member-name
                                  "propertyAlias" :http-query "propertyAlias"))
                                (:shape-name "GetAssetPropertyValueRequest"))

(smithy/sdk/shapes:define-output get-asset-property-value-response
                                 common-lisp:nil
                                 ((property-value :target-type
                                   asset-property-value :member-name
                                   "propertyValue"))
                                 (:shape-name "GetAssetPropertyValueResponse"))

(smithy/sdk/shapes:define-input get-interpolated-asset-property-values-request
                                common-lisp:nil
                                ((asset-id :target-type id :member-name
                                  "assetId" :http-query "assetId")
                                 (property-id :target-type id :member-name
                                  "propertyId" :http-query "propertyId")
                                 (property-alias :target-type
                                  asset-property-alias :member-name
                                  "propertyAlias" :http-query "propertyAlias")
                                 (start-time-in-seconds :target-type
                                  time-in-seconds :required common-lisp:t
                                  :member-name "startTimeInSeconds" :http-query
                                  "startTimeInSeconds")
                                 (start-time-offset-in-nanos :target-type
                                  offset-in-nanos :member-name
                                  "startTimeOffsetInNanos" :http-query
                                  "startTimeOffsetInNanos")
                                 (end-time-in-seconds :target-type
                                  time-in-seconds :required common-lisp:t
                                  :member-name "endTimeInSeconds" :http-query
                                  "endTimeInSeconds")
                                 (end-time-offset-in-nanos :target-type
                                  offset-in-nanos :member-name
                                  "endTimeOffsetInNanos" :http-query
                                  "endTimeOffsetInNanos")
                                 (quality :target-type quality :required
                                  common-lisp:t :member-name "quality"
                                  :http-query "quality")
                                 (interval-in-seconds :target-type
                                  interval-in-seconds :required common-lisp:t
                                  :member-name "intervalInSeconds" :http-query
                                  "intervalInSeconds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-interpolated-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (type :target-type interpolation-type
                                  :required common-lisp:t :member-name "type"
                                  :http-query "type")
                                 (interval-window-in-seconds :target-type
                                  interval-window-in-seconds :member-name
                                  "intervalWindowInSeconds" :http-query
                                  "intervalWindowInSeconds"))
                                (:shape-name
                                 "GetInterpolatedAssetPropertyValuesRequest"))

(smithy/sdk/shapes:define-output
 get-interpolated-asset-property-values-response common-lisp:nil
 ((interpolated-asset-property-values :target-type
   interpolated-asset-property-values :required common-lisp:t :member-name
   "interpolatedAssetPropertyValues")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "GetInterpolatedAssetPropertyValuesResponse"))

(smithy/sdk/shapes:define-structure greengrass common-lisp:nil
                                    ((group-arn :target-type arn :required
                                      common-lisp:t :member-name "groupArn"))
                                    (:shape-name "Greengrass"))

(smithy/sdk/shapes:define-structure greengrass-v2 common-lisp:nil
                                    ((core-device-thing-name :target-type
                                      core-device-thing-name :required
                                      common-lisp:t :member-name
                                      "coreDeviceThingName")
                                     (core-device-operating-system :target-type
                                      core-device-operating-system :member-name
                                      "coreDeviceOperatingSystem"))
                                    (:shape-name "GreengrassV2"))

(smithy/sdk/shapes:define-structure group-identity common-lisp:nil
                                    ((id :target-type identity-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "GroupIdentity"))

(smithy/sdk/shapes:define-structure hierarchy-mapping common-lisp:nil
                                    ((asset-model-hierarchy-id :target-type id
                                      :required common-lisp:t :member-name
                                      "assetModelHierarchyId")
                                     (interface-asset-model-hierarchy-id
                                      :target-type id :required common-lisp:t
                                      :member-name
                                      "interfaceAssetModelHierarchyId"))
                                    (:shape-name "HierarchyMapping"))

(smithy/sdk/shapes:define-list hierarchy-mappings :member hierarchy-mapping)

(smithy/sdk/shapes:define-structure iamrole-identity common-lisp:nil
                                    ((arn :target-type iam-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "IAMRoleIdentity"))

(smithy/sdk/shapes:define-structure iamuser-identity common-lisp:nil
                                    ((arn :target-type iam-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "IAMUserIdentity"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ids :member id)

(smithy/sdk/shapes:define-type iam-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity common-lisp:nil
                                    ((user :target-type user-identity
                                      :member-name "user")
                                     (group :target-type group-identity
                                      :member-name "group")
                                     (iam-user :target-type iamuser-identity
                                      :member-name "iamUser")
                                     (iam-role :target-type iamrole-identity
                                      :member-name "iamRole"))
                                    (:shape-name "Identity"))

(smithy/sdk/shapes:define-type identity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum identity-type
    common-lisp:nil
  (:user "USER")
  (:group "GROUP")
  (:iam "IAM"))

(smithy/sdk/shapes:define-structure image common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (file :target-type image-file :member-name
                                      "file"))
                                    (:shape-name "Image"))

(smithy/sdk/shapes:define-structure image-file common-lisp:nil
                                    ((data :target-type image-file-data
                                      :required common-lisp:t :member-name
                                      "data")
                                     (type :target-type image-file-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "ImageFile"))

(smithy/sdk/shapes:define-type image-file-data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum image-file-type
    common-lisp:nil
  (:png "PNG"))

(smithy/sdk/shapes:define-structure image-location common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (url :target-type url :required
                                      common-lisp:t :member-name "url"))
                                    (:shape-name "ImageLocation"))

(smithy/sdk/shapes:define-type input-properties smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list interface-details :member interface-relationship)

(smithy/sdk/shapes:define-structure interface-relationship common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "InterfaceRelationship"))

(smithy/sdk/shapes:define-list interface-relationship-summaries :member
                               interface-relationship-summary)

(smithy/sdk/shapes:define-structure interface-relationship-summary
                                    common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name
                                     "InterfaceRelationshipSummary"))

(smithy/sdk/shapes:define-list interface-summaries :member interface-summary)

(smithy/sdk/shapes:define-structure interface-summary common-lisp:nil
                                    ((interface-asset-model-id :target-type id
                                      :required common-lisp:t :member-name
                                      "interfaceAssetModelId")
                                     (interface-asset-model-property-id
                                      :target-type id :required common-lisp:t
                                      :member-name
                                      "interfaceAssetModelPropertyId"))
                                    (:shape-name "InterfaceSummary"))

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure interpolated-asset-property-value
                                    common-lisp:nil
                                    ((timestamp :target-type time-in-nanos
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (value :target-type variant :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name
                                     "InterpolatedAssetPropertyValue"))

(smithy/sdk/shapes:define-list interpolated-asset-property-values :member
                               interpolated-asset-property-value)

(smithy/sdk/shapes:define-type interpolation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type interval smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type interval-in-seconds smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type interval-window-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure invocation-output common-lisp:nil
                                    ((message :target-type string :member-name
                                      "message")
                                     (citations :target-type citations
                                      :member-name "citations"))
                                    (:shape-name "InvocationOutput"))

(smithy/sdk/shapes:define-input invoke-assistant-request common-lisp:nil
                                ((conversation-id :target-type conversation-id
                                  :member-name "conversationId")
                                 (message :target-type message-input :required
                                  common-lisp:t :member-name "message")
                                 (enable-trace :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "enableTrace"))
                                (:shape-name "InvokeAssistantRequest"))

(smithy/sdk/shapes:define-output invoke-assistant-response common-lisp:nil
                                 ((body :target-type response-stream :required
                                   common-lisp:t :member-name "body"
                                   :http-payload common-lisp:t)
                                  (conversation-id :target-type conversation-id
                                   :required common-lisp:t :member-name
                                   "conversationId" :http-header
                                   "x-amz-iotsitewise-assistant-conversation-id"))
                                 (:shape-name "InvokeAssistantResponse"))

(smithy/sdk/shapes:define-type iot-core-thing-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-configuration common-lisp:nil
                                    ((file-format :target-type file-format
                                      :required common-lisp:t :member-name
                                      "fileFormat"))
                                    (:shape-name "JobConfiguration"))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:pending "PENDING")
  (:cancelled "CANCELLED")
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:completed-with-failures "COMPLETED_WITH_FAILURES"))

(smithy/sdk/shapes:define-list job-summaries :member job-summary)

(smithy/sdk/shapes:define-structure job-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type job-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "JobSummary"))

(smithy/sdk/shapes:define-structure kendra-source-detail common-lisp:nil
                                    ((knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn")
                                     (role-arn :target-type arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "KendraSourceDetail"))

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 410))

(smithy/sdk/shapes:define-input list-access-policies-request common-lisp:nil
                                ((identity-type :target-type identity-type
                                  :member-name "identityType" :http-query
                                  "identityType")
                                 (identity-id :target-type identity-id
                                  :member-name "identityId" :http-query
                                  "identityId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType" :http-query
                                  "resourceType")
                                 (resource-id :target-type id :member-name
                                  "resourceId" :http-query "resourceId")
                                 (iam-arn :target-type iam-arn :member-name
                                  "iamArn" :http-query "iamArn")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAccessPoliciesRequest"))

(smithy/sdk/shapes:define-output list-access-policies-response common-lisp:nil
                                 ((access-policy-summaries :target-type
                                   access-policy-summaries :required
                                   common-lisp:t :member-name
                                   "accessPolicySummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAccessPoliciesResponse"))

(smithy/sdk/shapes:define-input list-actions-request common-lisp:nil
                                ((target-resource-type :target-type
                                  target-resource-type :required common-lisp:t
                                  :member-name "targetResourceType" :http-query
                                  "targetResourceType")
                                 (target-resource-id :target-type id :required
                                  common-lisp:t :member-name "targetResourceId"
                                  :http-query "targetResourceId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (resolve-to-resource-type :target-type
                                  resolve-to-resource-type :member-name
                                  "resolveToResourceType" :http-query
                                  "resolveToResourceType")
                                 (resolve-to-resource-id :target-type id
                                  :member-name "resolveToResourceId"
                                  :http-query "resolveToResourceId"))
                                (:shape-name "ListActionsRequest"))

(smithy/sdk/shapes:define-output list-actions-response common-lisp:nil
                                 ((action-summaries :target-type
                                   action-summaries :required common-lisp:t
                                   :member-name "actionSummaries")
                                  (next-token :target-type next-token :required
                                   common-lisp:t :member-name "nextToken"))
                                 (:shape-name "ListActionsResponse"))

(smithy/sdk/shapes:define-input list-asset-model-composite-models-request
                                common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (asset-model-version :target-type
                                  asset-model-version-filter :member-name
                                  "assetModelVersion" :http-query
                                  "assetModelVersion"))
                                (:shape-name
                                 "ListAssetModelCompositeModelsRequest"))

(smithy/sdk/shapes:define-output list-asset-model-composite-models-response
                                 common-lisp:nil
                                 ((asset-model-composite-model-summaries
                                   :target-type
                                   asset-model-composite-model-summaries
                                   :required common-lisp:t :member-name
                                   "assetModelCompositeModelSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAssetModelCompositeModelsResponse"))

(smithy/sdk/shapes:define-enum list-asset-model-properties-filter
    common-lisp:nil
  (:all "ALL")
  (:base "BASE"))

(smithy/sdk/shapes:define-input list-asset-model-properties-request
                                common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (filter :target-type
                                  list-asset-model-properties-filter
                                  :member-name "filter" :http-query "filter")
                                 (asset-model-version :target-type
                                  asset-model-version-filter :member-name
                                  "assetModelVersion" :http-query
                                  "assetModelVersion"))
                                (:shape-name "ListAssetModelPropertiesRequest"))

(smithy/sdk/shapes:define-output list-asset-model-properties-response
                                 common-lisp:nil
                                 ((asset-model-property-summaries :target-type
                                   asset-model-property-summaries :required
                                   common-lisp:t :member-name
                                   "assetModelPropertySummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAssetModelPropertiesResponse"))

(smithy/sdk/shapes:define-input list-asset-models-request common-lisp:nil
                                ((asset-model-types :target-type
                                  list-asset-models-type-filter :member-name
                                  "assetModelTypes" :http-query
                                  "assetModelTypes")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (asset-model-version :target-type
                                  asset-model-version-filter :member-name
                                  "assetModelVersion" :http-query
                                  "assetModelVersion"))
                                (:shape-name "ListAssetModelsRequest"))

(smithy/sdk/shapes:define-output list-asset-models-response common-lisp:nil
                                 ((asset-model-summaries :target-type
                                   asset-model-summaries :required
                                   common-lisp:t :member-name
                                   "assetModelSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssetModelsResponse"))

(smithy/sdk/shapes:define-list list-asset-models-type-filter :member
                               asset-model-type)

(smithy/sdk/shapes:define-enum list-asset-properties-filter
    common-lisp:nil
  (:all "ALL")
  (:base "BASE"))

(smithy/sdk/shapes:define-input list-asset-properties-request common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (filter :target-type
                                  list-asset-properties-filter :member-name
                                  "filter" :http-query "filter"))
                                (:shape-name "ListAssetPropertiesRequest"))

(smithy/sdk/shapes:define-output list-asset-properties-response common-lisp:nil
                                 ((asset-property-summaries :target-type
                                   asset-property-summaries :required
                                   common-lisp:t :member-name
                                   "assetPropertySummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssetPropertiesResponse"))

(smithy/sdk/shapes:define-input list-asset-relationships-request
                                common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (traversal-type :target-type traversal-type
                                  :required common-lisp:t :member-name
                                  "traversalType" :http-query "traversalType")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAssetRelationshipsRequest"))

(smithy/sdk/shapes:define-output list-asset-relationships-response
                                 common-lisp:nil
                                 ((asset-relationship-summaries :target-type
                                   asset-relationship-summaries :required
                                   common-lisp:t :member-name
                                   "assetRelationshipSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssetRelationshipsResponse"))

(smithy/sdk/shapes:define-enum list-assets-filter
    common-lisp:nil
  (:all "ALL")
  (:top-level "TOP_LEVEL"))

(smithy/sdk/shapes:define-input list-assets-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (asset-model-id :target-type custom-id
                                  :member-name "assetModelId" :http-query
                                  "assetModelId")
                                 (filter :target-type list-assets-filter
                                  :member-name "filter" :http-query "filter"))
                                (:shape-name "ListAssetsRequest"))

(smithy/sdk/shapes:define-output list-assets-response common-lisp:nil
                                 ((asset-summaries :target-type asset-summaries
                                   :required common-lisp:t :member-name
                                   "assetSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssetsResponse"))

(smithy/sdk/shapes:define-input list-associated-assets-request common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (hierarchy-id :target-type custom-id
                                  :member-name "hierarchyId" :http-query
                                  "hierarchyId")
                                 (traversal-direction :target-type
                                  traversal-direction :member-name
                                  "traversalDirection" :http-query
                                  "traversalDirection")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAssociatedAssetsRequest"))

(smithy/sdk/shapes:define-output list-associated-assets-response
                                 common-lisp:nil
                                 ((asset-summaries :target-type
                                   associated-assets-summaries :required
                                   common-lisp:t :member-name "assetSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssociatedAssetsResponse"))

(smithy/sdk/shapes:define-enum list-bulk-import-jobs-filter
    common-lisp:nil
  (:all "ALL")
  (:pending "PENDING")
  (:running "RUNNING")
  (:cancelled "CANCELLED")
  (:failed "FAILED")
  (:completed-with-failures "COMPLETED_WITH_FAILURES")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-input list-bulk-import-jobs-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (filter :target-type
                                  list-bulk-import-jobs-filter :member-name
                                  "filter" :http-query "filter"))
                                (:shape-name "ListBulkImportJobsRequest"))

(smithy/sdk/shapes:define-output list-bulk-import-jobs-response common-lisp:nil
                                 ((job-summaries :target-type job-summaries
                                   :required common-lisp:t :member-name
                                   "jobSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBulkImportJobsResponse"))

(smithy/sdk/shapes:define-input list-composition-relationships-request
                                common-lisp:nil
                                ((asset-model-id :target-type id :required
                                  common-lisp:t :member-name "assetModelId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListCompositionRelationshipsRequest"))

(smithy/sdk/shapes:define-output list-composition-relationships-response
                                 common-lisp:nil
                                 ((composition-relationship-summaries
                                   :target-type
                                   composition-relationship-summaries :required
                                   common-lisp:t :member-name
                                   "compositionRelationshipSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListCompositionRelationshipsResponse"))

(smithy/sdk/shapes:define-input
 list-computation-model-data-binding-usages-request common-lisp:nil
 ((data-binding-value-filter :target-type data-binding-value-filter :required
   common-lisp:t :member-name "dataBindingValueFilter")
  (next-token :target-type next-token :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "ListComputationModelDataBindingUsagesRequest"))

(smithy/sdk/shapes:define-output
 list-computation-model-data-binding-usages-response common-lisp:nil
 ((data-binding-usage-summaries :target-type
   computation-model-data-binding-usage-summaries :required common-lisp:t
   :member-name "dataBindingUsageSummaries")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListComputationModelDataBindingUsagesResponse"))

(smithy/sdk/shapes:define-input
 list-computation-model-resolve-to-resources-request common-lisp:nil
 ((computation-model-id :target-type id :required common-lisp:t :member-name
   "computationModelId" :http-label common-lisp:t)
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListComputationModelResolveToResourcesRequest"))

(smithy/sdk/shapes:define-output
 list-computation-model-resolve-to-resources-response common-lisp:nil
 ((computation-model-resolve-to-resource-summaries :target-type
   computation-model-resolve-to-resource-summaries :required common-lisp:t
   :member-name "computationModelResolveToResourceSummaries")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListComputationModelResolveToResourcesResponse"))

(smithy/sdk/shapes:define-input list-computation-models-request common-lisp:nil
                                ((computation-model-type :target-type
                                  computation-model-type :member-name
                                  "computationModelType" :http-query
                                  "computationModelType")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListComputationModelsRequest"))

(smithy/sdk/shapes:define-output list-computation-models-response
                                 common-lisp:nil
                                 ((computation-model-summaries :target-type
                                   computation-model-summaries :required
                                   common-lisp:t :member-name
                                   "computationModelSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListComputationModelsResponse"))

(smithy/sdk/shapes:define-input list-dashboards-request common-lisp:nil
                                ((project-id :target-type id :required
                                  common-lisp:t :member-name "projectId"
                                  :http-query "projectId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDashboardsRequest"))

(smithy/sdk/shapes:define-output list-dashboards-response common-lisp:nil
                                 ((dashboard-summaries :target-type
                                   dashboard-summaries :required common-lisp:t
                                   :member-name "dashboardSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDashboardsResponse"))

(smithy/sdk/shapes:define-input list-datasets-request common-lisp:nil
                                ((source-type :target-type dataset-source-type
                                  :required common-lisp:t :member-name
                                  "sourceType" :http-query "sourceType")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDatasetsRequest"))

(smithy/sdk/shapes:define-output list-datasets-response common-lisp:nil
                                 ((dataset-summaries :target-type
                                   dataset-summaries :required common-lisp:t
                                   :member-name "datasetSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatasetsResponse"))

(smithy/sdk/shapes:define-input list-executions-request common-lisp:nil
                                ((target-resource-type :target-type
                                  target-resource-type :required common-lisp:t
                                  :member-name "targetResourceType" :http-query
                                  "targetResourceType")
                                 (target-resource-id :target-type id :required
                                  common-lisp:t :member-name "targetResourceId"
                                  :http-query "targetResourceId")
                                 (resolve-to-resource-type :target-type
                                  resolve-to-resource-type :member-name
                                  "resolveToResourceType" :http-query
                                  "resolveToResourceType")
                                 (resolve-to-resource-id :target-type id
                                  :member-name "resolveToResourceId"
                                  :http-query "resolveToResourceId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (action-type :target-type name :member-name
                                  "actionType" :http-query "actionType"))
                                (:shape-name "ListExecutionsRequest"))

(smithy/sdk/shapes:define-output list-executions-response common-lisp:nil
                                 ((execution-summaries :target-type
                                   execution-summaries :required common-lisp:t
                                   :member-name "executionSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListExecutionsResponse"))

(smithy/sdk/shapes:define-input list-gateways-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListGatewaysRequest"))

(smithy/sdk/shapes:define-output list-gateways-response common-lisp:nil
                                 ((gateway-summaries :target-type
                                   gateway-summaries :required common-lisp:t
                                   :member-name "gatewaySummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListGatewaysResponse"))

(smithy/sdk/shapes:define-input list-interface-relationships-request
                                common-lisp:nil
                                ((interface-asset-model-id :target-type
                                  custom-id :required common-lisp:t
                                  :member-name "interfaceAssetModelId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListInterfaceRelationshipsRequest"))

(smithy/sdk/shapes:define-output list-interface-relationships-response
                                 common-lisp:nil
                                 ((interface-relationship-summaries
                                   :target-type
                                   interface-relationship-summaries :required
                                   common-lisp:t :member-name
                                   "interfaceRelationshipSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListInterfaceRelationshipsResponse"))

(smithy/sdk/shapes:define-input list-portals-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPortalsRequest"))

(smithy/sdk/shapes:define-output list-portals-response common-lisp:nil
                                 ((portal-summaries :target-type
                                   portal-summaries :member-name
                                   "portalSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPortalsResponse"))

(smithy/sdk/shapes:define-input list-project-assets-request common-lisp:nil
                                ((project-id :target-type id :required
                                  common-lisp:t :member-name "projectId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProjectAssetsRequest"))

(smithy/sdk/shapes:define-output list-project-assets-response common-lisp:nil
                                 ((asset-ids :target-type asset-ids :required
                                   common-lisp:t :member-name "assetIds")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListProjectAssetsResponse"))

(smithy/sdk/shapes:define-input list-projects-request common-lisp:nil
                                ((portal-id :target-type id :required
                                  common-lisp:t :member-name "portalId"
                                  :http-query "portalId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProjectsRequest"))

(smithy/sdk/shapes:define-output list-projects-response common-lisp:nil
                                 ((project-summaries :target-type
                                   project-summaries :required common-lisp:t
                                   :member-name "projectSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListProjectsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-query
                                  "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-time-series-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (asset-id :target-type custom-id :member-name
                                  "assetId" :http-query "assetId")
                                 (alias-prefix :target-type property-alias
                                  :member-name "aliasPrefix" :http-query
                                  "aliasPrefix")
                                 (time-series-type :target-type
                                  list-time-series-type :member-name
                                  "timeSeriesType" :http-query
                                  "timeSeriesType"))
                                (:shape-name "ListTimeSeriesRequest"))

(smithy/sdk/shapes:define-output list-time-series-response common-lisp:nil
                                 ((time-series-summaries :target-type
                                   time-series-summaries :required
                                   common-lisp:t :member-name
                                   "TimeSeriesSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTimeSeriesResponse"))

(smithy/sdk/shapes:define-enum list-time-series-type
    common-lisp:nil
  (:associated "ASSOCIATED")
  (:disassociated "DISASSOCIATED"))

(smithy/sdk/shapes:define-structure location common-lisp:nil
                                    ((uri :target-type string :member-name
                                      "uri"))
                                    (:shape-name "Location"))

(smithy/sdk/shapes:define-enum logging-level
    common-lisp:nil
  (:error "ERROR")
  (:info "INFO")
  (:off "OFF"))

(smithy/sdk/shapes:define-structure logging-options common-lisp:nil
                                    ((level :target-type logging-level
                                      :required common-lisp:t :member-name
                                      "level"))
                                    (:shape-name "LoggingOptions"))

(smithy/sdk/shapes:define-type macro smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type match-by-property-name
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure matched-data-binding common-lisp:nil
                                    ((value :target-type data-binding-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "MatchedDataBinding"))

(smithy/sdk/shapes:define-type max-interpolated-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure measurement common-lisp:nil
                                    ((processing-config :target-type
                                      measurement-processing-config
                                      :member-name "processingConfig"))
                                    (:shape-name "Measurement"))

(smithy/sdk/shapes:define-structure measurement-processing-config
                                    common-lisp:nil
                                    ((forwarding-config :target-type
                                      forwarding-config :required common-lisp:t
                                      :member-name "forwardingConfig"))
                                    (:shape-name "MeasurementProcessingConfig"))

(smithy/sdk/shapes:define-type message-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric common-lisp:nil
                                    ((expression :target-type expression
                                      :member-name "expression")
                                     (variables :target-type
                                      expression-variables :member-name
                                      "variables")
                                     (window :target-type metric-window
                                      :required common-lisp:t :member-name
                                      "window")
                                     (processing-config :target-type
                                      metric-processing-config :member-name
                                      "processingConfig"))
                                    (:shape-name "Metric"))

(smithy/sdk/shapes:define-structure metric-processing-config common-lisp:nil
                                    ((compute-location :target-type
                                      compute-location :required common-lisp:t
                                      :member-name "computeLocation"))
                                    (:shape-name "MetricProcessingConfig"))

(smithy/sdk/shapes:define-structure metric-window common-lisp:nil
                                    ((tumbling :target-type tumbling-window
                                      :member-name "tumbling"))
                                    (:shape-name "MetricWindow"))

(smithy/sdk/shapes:define-enum monitor-error-code
    common-lisp:nil
  (:internal-failure "INTERNAL_FAILURE")
  (:validation-error "VALIDATION_ERROR")
  (:limit-exceeded "LIMIT_EXCEEDED"))

(smithy/sdk/shapes:define-structure monitor-error-details common-lisp:nil
                                    ((code :target-type monitor-error-code
                                      :member-name "code")
                                     (message :target-type
                                      monitor-error-message :member-name
                                      "message"))
                                    (:shape-name "MonitorErrorDetails"))

(smithy/sdk/shapes:define-type monitor-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure multi-layer-storage common-lisp:nil
                                    ((customer-managed-s3storage :target-type
                                      customer-managed-s3storage :required
                                      common-lisp:t :member-name
                                      "customerManagedS3Storage"))
                                    (:shape-name "MultiLayerStorage"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type number-of-days smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type offset smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type offset-in-nanos smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure parquet common-lisp:nil common-lisp:nil
                                    (:shape-name "Parquet"))

(smithy/sdk/shapes:define-enum permission
    common-lisp:nil
  (:administrator "ADMINISTRATOR")
  (:viewer "VIEWER"))

(smithy/sdk/shapes:define-type portal-client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure portal-resource common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "PortalResource"))

(smithy/sdk/shapes:define-enum portal-state
    common-lisp:nil
  (:creating "CREATING")
  (:pending "PENDING")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:active "ACTIVE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure portal-status common-lisp:nil
                                    ((state :target-type portal-state :required
                                      common-lisp:t :member-name "state")
                                     (error :target-type monitor-error-details
                                      :member-name "error"))
                                    (:shape-name "PortalStatus"))

(smithy/sdk/shapes:define-list portal-summaries :member portal-summary)

(smithy/sdk/shapes:define-structure portal-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (start-url :target-type url :required
                                      common-lisp:t :member-name "startUrl")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate")
                                     (last-update-date :target-type timestamp
                                      :member-name "lastUpdateDate")
                                     (role-arn :target-type iam-arn
                                      :member-name "roleArn")
                                     (status :target-type portal-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (portal-type :target-type portal-type
                                      :member-name "portalType"))
                                    (:shape-name "PortalSummary"))

(smithy/sdk/shapes:define-list portal-tools :member name)

(smithy/sdk/shapes:define-enum portal-type
    common-lisp:nil
  (:sitewise-portal-v1 "SITEWISE_PORTAL_V1")
  (:sitewise-portal-v2 "SITEWISE_PORTAL_V2"))

(smithy/sdk/shapes:define-map portal-type-configuration :key portal-type-key
                              :value portal-type-entry)

(smithy/sdk/shapes:define-structure portal-type-entry common-lisp:nil
                                    ((portal-tools :target-type portal-tools
                                      :member-name "portalTools"))
                                    (:shape-name "PortalTypeEntry"))

(smithy/sdk/shapes:define-type portal-type-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error precondition-failed-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "PreconditionFailedException")
                                (:error-code 412))

(smithy/sdk/shapes:define-structure project-resource common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "ProjectResource"))

(smithy/sdk/shapes:define-list project-summaries :member project-summary)

(smithy/sdk/shapes:define-structure project-summary common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate")
                                     (last-update-date :target-type timestamp
                                      :member-name "lastUpdateDate"))
                                    (:shape-name "ProjectSummary"))

(smithy/sdk/shapes:define-structure property common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (external-id :target-type external-id
                                      :member-name "externalId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (alias :target-type property-alias
                                      :member-name "alias")
                                     (notification :target-type
                                      property-notification :member-name
                                      "notification")
                                     (data-type :target-type property-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (unit :target-type property-unit
                                      :member-name "unit")
                                     (type :target-type property-type
                                      :member-name "type")
                                     (path :target-type asset-property-path
                                      :member-name "path"))
                                    (:shape-name "Property"))

(smithy/sdk/shapes:define-type property-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum property-data-type
    common-lisp:nil
  (:string "STRING")
  (:integer "INTEGER")
  (:double "DOUBLE")
  (:boolean "BOOLEAN")
  (:struct "STRUCT"))

(smithy/sdk/shapes:define-structure property-mapping common-lisp:nil
                                    ((asset-model-property-id :target-type
                                      custom-id :required common-lisp:t
                                      :member-name "assetModelPropertyId")
                                     (interface-asset-model-property-id
                                      :target-type custom-id :required
                                      common-lisp:t :member-name
                                      "interfaceAssetModelPropertyId"))
                                    (:shape-name "PropertyMapping"))

(smithy/sdk/shapes:define-structure property-mapping-configuration
                                    common-lisp:nil
                                    ((match-by-property-name :target-type
                                      match-by-property-name :member-name
                                      "matchByPropertyName")
                                     (create-missing-property :target-type
                                      create-missing-property :member-name
                                      "createMissingProperty")
                                     (overrides :target-type property-mappings
                                      :member-name "overrides"))
                                    (:shape-name
                                     "PropertyMappingConfiguration"))

(smithy/sdk/shapes:define-list property-mappings :member property-mapping)

(smithy/sdk/shapes:define-structure property-notification common-lisp:nil
                                    ((topic :target-type
                                      property-notification-topic :required
                                      common-lisp:t :member-name "topic")
                                     (state :target-type
                                      property-notification-state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "PropertyNotification"))

(smithy/sdk/shapes:define-enum property-notification-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type property-notification-topic
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure property-type common-lisp:nil
                                    ((attribute :target-type attribute
                                      :member-name "attribute")
                                     (measurement :target-type measurement
                                      :member-name "measurement")
                                     (transform :target-type transform
                                      :member-name "transform")
                                     (metric :target-type metric :member-name
                                      "metric"))
                                    (:shape-name "PropertyType"))

(smithy/sdk/shapes:define-type property-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type property-value-boolean-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type property-value-double-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type property-value-integer-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure property-value-null-value common-lisp:nil
                                    ((value-type :target-type raw-value-type
                                      :required common-lisp:t :member-name
                                      "valueType"))
                                    (:shape-name "PropertyValueNullValue"))

(smithy/sdk/shapes:define-type property-value-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-asset-model-interface-relationship-request
                                common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (interface-asset-model-id :target-type
                                  custom-id :required common-lisp:t
                                  :member-name "interfaceAssetModelId"
                                  :http-label common-lisp:t)
                                 (property-mapping-configuration :target-type
                                  property-mapping-configuration :required
                                  common-lisp:t :member-name
                                  "propertyMappingConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "PutAssetModelInterfaceRelationshipRequest"))

(smithy/sdk/shapes:define-output
 put-asset-model-interface-relationship-response common-lisp:nil
 ((asset-model-id :target-type id :required common-lisp:t :member-name
   "assetModelId")
  (interface-asset-model-id :target-type id :required common-lisp:t
   :member-name "interfaceAssetModelId")
  (asset-model-arn :target-type arn :required common-lisp:t :member-name
   "assetModelArn")
  (asset-model-status :target-type asset-model-status :required common-lisp:t
   :member-name "assetModelStatus"))
 (:shape-name "PutAssetModelInterfaceRelationshipResponse"))

(smithy/sdk/shapes:define-list put-asset-property-value-entries :member
                               put-asset-property-value-entry)

(smithy/sdk/shapes:define-structure put-asset-property-value-entry
                                    common-lisp:nil
                                    ((entry-id :target-type entry-id :required
                                      common-lisp:t :member-name "entryId")
                                     (asset-id :target-type id :member-name
                                      "assetId")
                                     (property-id :target-type id :member-name
                                      "propertyId")
                                     (property-alias :target-type
                                      asset-property-alias :member-name
                                      "propertyAlias")
                                     (property-values :target-type
                                      asset-property-values :required
                                      common-lisp:t :member-name
                                      "propertyValues"))
                                    (:shape-name "PutAssetPropertyValueEntry"))

(smithy/sdk/shapes:define-input put-default-encryption-configuration-request
                                common-lisp:nil
                                ((encryption-type :target-type encryption-type
                                  :required common-lisp:t :member-name
                                  "encryptionType")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "kmsKeyId"))
                                (:shape-name
                                 "PutDefaultEncryptionConfigurationRequest"))

(smithy/sdk/shapes:define-output put-default-encryption-configuration-response
                                 common-lisp:nil
                                 ((encryption-type :target-type encryption-type
                                   :required common-lisp:t :member-name
                                   "encryptionType")
                                  (kms-key-arn :target-type arn :member-name
                                   "kmsKeyArn")
                                  (configuration-status :target-type
                                   configuration-status :required common-lisp:t
                                   :member-name "configurationStatus"))
                                 (:shape-name
                                  "PutDefaultEncryptionConfigurationResponse"))

(smithy/sdk/shapes:define-input put-logging-options-request common-lisp:nil
                                ((logging-options :target-type logging-options
                                  :required common-lisp:t :member-name
                                  "loggingOptions"))
                                (:shape-name "PutLoggingOptionsRequest"))

(smithy/sdk/shapes:define-output put-logging-options-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutLoggingOptionsResponse"))

(smithy/sdk/shapes:define-input put-storage-configuration-request
                                common-lisp:nil
                                ((storage-type :target-type storage-type
                                  :required common-lisp:t :member-name
                                  "storageType")
                                 (multi-layer-storage :target-type
                                  multi-layer-storage :member-name
                                  "multiLayerStorage")
                                 (disassociated-data-storage :target-type
                                  disassociated-data-storage-state :member-name
                                  "disassociatedDataStorage")
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "retentionPeriod")
                                 (warm-tier :target-type warm-tier-state
                                  :member-name "warmTier")
                                 (warm-tier-retention-period :target-type
                                  warm-tier-retention-period :member-name
                                  "warmTierRetentionPeriod")
                                 (disallow-ingest-null-na-n :target-type
                                  disallow-ingest-null-na-n :member-name
                                  "disallowIngestNullNaN"))
                                (:shape-name "PutStorageConfigurationRequest"))

(smithy/sdk/shapes:define-output put-storage-configuration-response
                                 common-lisp:nil
                                 ((storage-type :target-type storage-type
                                   :required common-lisp:t :member-name
                                   "storageType")
                                  (multi-layer-storage :target-type
                                   multi-layer-storage :member-name
                                   "multiLayerStorage")
                                  (disassociated-data-storage :target-type
                                   disassociated-data-storage-state
                                   :member-name "disassociatedDataStorage")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "retentionPeriod")
                                  (configuration-status :target-type
                                   configuration-status :required common-lisp:t
                                   :member-name "configurationStatus")
                                  (warm-tier :target-type warm-tier-state
                                   :member-name "warmTier")
                                  (warm-tier-retention-period :target-type
                                   warm-tier-retention-period :member-name
                                   "warmTierRetentionPeriod")
                                  (disallow-ingest-null-na-n :target-type
                                   disallow-ingest-null-na-n :member-name
                                   "disallowIngestNullNaN"))
                                 (:shape-name
                                  "PutStorageConfigurationResponse"))

(smithy/sdk/shapes:define-list qualities :member quality)

(smithy/sdk/shapes:define-enum quality
    common-lisp:nil
  (:good "GOOD")
  (:bad "BAD")
  (:uncertain "UNCERTAIN"))

(smithy/sdk/shapes:define-type query-statement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error query-timeout-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "QueryTimeoutException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum raw-value-type
    common-lisp:nil
  (:double "D")
  (:boolean "B")
  (:string "S")
  (:integer "I")
  (:unknown "U"))

(smithy/sdk/shapes:define-structure reference common-lisp:nil
                                    ((dataset :target-type data-set-reference
                                      :member-name "dataset"))
                                    (:shape-name "Reference"))

(smithy/sdk/shapes:define-type resolution smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resolve-to common-lisp:nil
                                    ((asset-id :target-type id :required
                                      common-lisp:t :member-name "assetId"))
                                    (:shape-name "ResolveTo"))

(smithy/sdk/shapes:define-enum resolve-to-resource-type
    common-lisp:nil
  (:asset "ASSET"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((portal :target-type portal-resource
                                      :member-name "portal")
                                     (project :target-type project-resource
                                      :member-name "project"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:portal "PORTAL")
  (:project "PROJECT"))

(smithy/sdk/shapes:define-union response-stream common-lisp:nil
                                ((trace :target-type trace :member-name
                                  "trace")
                                 (output :target-type invocation-output
                                  :member-name "output")
                                 (access-denied-exception :target-type
                                  access-denied-exception :member-name
                                  "accessDeniedException")
                                 (conflicting-operation-exception :target-type
                                  conflicting-operation-exception :member-name
                                  "conflictingOperationException")
                                 (internal-failure-exception :target-type
                                  internal-failure-exception :member-name
                                  "internalFailureException")
                                 (invalid-request-exception :target-type
                                  invalid-request-exception :member-name
                                  "invalidRequestException")
                                 (limit-exceeded-exception :target-type
                                  limit-exceeded-exception :member-name
                                  "limitExceededException")
                                 (resource-not-found-exception :target-type
                                  resource-not-found-exception :member-name
                                  "resourceNotFoundException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException"))
                                (:shape-name "ResponseStream"))

(smithy/sdk/shapes:define-type restricted-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type restricted-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type result-property smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure retention-period common-lisp:nil
                                    ((number-of-days :target-type
                                      number-of-days :member-name
                                      "numberOfDays")
                                     (unlimited :target-type unlimited
                                      :member-name "unlimited"))
                                    (:shape-name "RetentionPeriod"))

(smithy/sdk/shapes:define-structure row common-lisp:nil
                                    ((data :target-type datum-list :required
                                      common-lisp:t :member-name "data"))
                                    (:shape-name "Row"))

(smithy/sdk/shapes:define-list rows :member row)

(smithy/sdk/shapes:define-type ssoapplication-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum scalar-type
    common-lisp:nil
  (:boolean "BOOLEAN")
  (:int "INT")
  (:double "DOUBLE")
  (:timestamp "TIMESTAMP")
  (:string "STRING"))

(smithy/sdk/shapes:define-type scalar-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type select-all smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure siemens-ie common-lisp:nil
                                    ((iot-core-thing-name :target-type
                                      iot-core-thing-name :required
                                      common-lisp:t :member-name
                                      "iotCoreThingName"))
                                    (:shape-name "SiemensIE"))

(smithy/sdk/shapes:define-structure source common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn")
                                     (location :target-type location
                                      :member-name "location"))
                                    (:shape-name "Source"))

(smithy/sdk/shapes:define-structure source-detail common-lisp:nil
                                    ((kendra :target-type kendra-source-detail
                                      :member-name "kendra"))
                                    (:shape-name "SourceDetail"))

(smithy/sdk/shapes:define-enum storage-type
    common-lisp:nil
  (:sitewise-default-storage "SITEWISE_DEFAULT_STORAGE")
  (:multi-layer-storage "MULTI_LAYER_STORAGE"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-query
                                  "resourceArn")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-resource common-lisp:nil
                                    ((asset-id :target-type id :member-name
                                      "assetId")
                                     (computation-model-id :target-type id
                                      :member-name "computationModelId"))
                                    (:shape-name "TargetResource"))

(smithy/sdk/shapes:define-enum target-resource-type
    common-lisp:nil
  (:asset "ASSET")
  (:computation-model "COMPUTATION_MODEL"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-in-nanos common-lisp:nil
                                    ((time-in-seconds :target-type
                                      time-in-seconds :required common-lisp:t
                                      :member-name "timeInSeconds")
                                     (offset-in-nanos :target-type
                                      offset-in-nanos :member-name
                                      "offsetInNanos"))
                                    (:shape-name "TimeInNanos"))

(smithy/sdk/shapes:define-type time-in-seconds smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum time-ordering
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-type time-series-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list time-series-summaries :member
                               time-series-summary)

(smithy/sdk/shapes:define-structure time-series-summary common-lisp:nil
                                    ((asset-id :target-type id :member-name
                                      "assetId")
                                     (property-id :target-type id :member-name
                                      "propertyId")
                                     (alias :target-type property-alias
                                      :member-name "alias")
                                     (time-series-id :target-type
                                      time-series-id :required common-lisp:t
                                      :member-name "timeSeriesId")
                                     (data-type :target-type property-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (data-type-spec :target-type name
                                      :member-name "dataTypeSpec")
                                     (time-series-creation-date :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "timeSeriesCreationDate")
                                     (time-series-last-update-date :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "timeSeriesLastUpdateDate")
                                     (time-series-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "timeSeriesArn"))
                                    (:shape-name "TimeSeriesSummary"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list timestamps :member time-in-nanos)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure trace common-lisp:nil
                                    ((text :target-type string :member-name
                                      "text"))
                                    (:shape-name "Trace"))

(smithy/sdk/shapes:define-structure transform common-lisp:nil
                                    ((expression :target-type expression
                                      :required common-lisp:t :member-name
                                      "expression")
                                     (variables :target-type
                                      expression-variables :required
                                      common-lisp:t :member-name "variables")
                                     (processing-config :target-type
                                      transform-processing-config :member-name
                                      "processingConfig"))
                                    (:shape-name "Transform"))

(smithy/sdk/shapes:define-structure transform-processing-config common-lisp:nil
                                    ((compute-location :target-type
                                      compute-location :required common-lisp:t
                                      :member-name "computeLocation")
                                     (forwarding-config :target-type
                                      forwarding-config :member-name
                                      "forwardingConfig"))
                                    (:shape-name "TransformProcessingConfig"))

(smithy/sdk/shapes:define-enum traversal-direction
    common-lisp:nil
  (:parent "PARENT")
  (:child "CHILD"))

(smithy/sdk/shapes:define-enum traversal-type
    common-lisp:nil
  (:path-to-root "PATH_TO_ROOT"))

(smithy/sdk/shapes:define-structure tumbling-window common-lisp:nil
                                    ((interval :target-type interval :required
                                      common-lisp:t :member-name "interval")
                                     (offset :target-type offset :member-name
                                      "offset"))
                                    (:shape-name "TumblingWindow"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-type unlimited smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-query
                                  "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-access-policy-request common-lisp:nil
                                ((access-policy-id :target-type id :required
                                  common-lisp:t :member-name "accessPolicyId"
                                  :http-label common-lisp:t)
                                 (access-policy-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "accessPolicyIdentity")
                                 (access-policy-resource :target-type resource
                                  :required common-lisp:t :member-name
                                  "accessPolicyResource")
                                 (access-policy-permission :target-type
                                  permission :required common-lisp:t
                                  :member-name "accessPolicyPermission")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateAccessPolicyRequest"))

(smithy/sdk/shapes:define-output update-access-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateAccessPolicyResponse"))

(smithy/sdk/shapes:define-input update-asset-model-composite-model-request
                                common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (asset-model-composite-model-id :target-type
                                  custom-id :required common-lisp:t
                                  :member-name "assetModelCompositeModelId"
                                  :http-label common-lisp:t)
                                 (asset-model-composite-model-external-id
                                  :target-type external-id :member-name
                                  "assetModelCompositeModelExternalId")
                                 (asset-model-composite-model-description
                                  :target-type description :member-name
                                  "assetModelCompositeModelDescription")
                                 (asset-model-composite-model-name :target-type
                                  name :required common-lisp:t :member-name
                                  "assetModelCompositeModelName")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (asset-model-composite-model-properties
                                  :target-type asset-model-properties
                                  :member-name
                                  "assetModelCompositeModelProperties")
                                 (if-match :target-type etag :member-name
                                  "ifMatch" :http-header "If-Match")
                                 (if-none-match :target-type select-all
                                  :member-name "ifNoneMatch" :http-header
                                  "If-None-Match")
                                 (match-for-version-type :target-type
                                  asset-model-version-type :member-name
                                  "matchForVersionType" :http-header
                                  "Match-For-Version-Type"))
                                (:shape-name
                                 "UpdateAssetModelCompositeModelRequest"))

(smithy/sdk/shapes:define-output update-asset-model-composite-model-response
                                 common-lisp:nil
                                 ((asset-model-composite-model-path
                                   :target-type
                                   asset-model-composite-model-path :required
                                   common-lisp:t :member-name
                                   "assetModelCompositeModelPath")
                                  (asset-model-status :target-type
                                   asset-model-status :required common-lisp:t
                                   :member-name "assetModelStatus"))
                                 (:shape-name
                                  "UpdateAssetModelCompositeModelResponse"))

(smithy/sdk/shapes:define-input update-asset-model-request common-lisp:nil
                                ((asset-model-id :target-type custom-id
                                  :required common-lisp:t :member-name
                                  "assetModelId" :http-label common-lisp:t)
                                 (asset-model-external-id :target-type
                                  external-id :member-name
                                  "assetModelExternalId")
                                 (asset-model-name :target-type name :required
                                  common-lisp:t :member-name "assetModelName")
                                 (asset-model-description :target-type
                                  description :member-name
                                  "assetModelDescription")
                                 (asset-model-properties :target-type
                                  asset-model-properties :member-name
                                  "assetModelProperties")
                                 (asset-model-hierarchies :target-type
                                  asset-model-hierarchies :member-name
                                  "assetModelHierarchies")
                                 (asset-model-composite-models :target-type
                                  asset-model-composite-models :member-name
                                  "assetModelCompositeModels")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (if-match :target-type etag :member-name
                                  "ifMatch" :http-header "If-Match")
                                 (if-none-match :target-type select-all
                                  :member-name "ifNoneMatch" :http-header
                                  "If-None-Match")
                                 (match-for-version-type :target-type
                                  asset-model-version-type :member-name
                                  "matchForVersionType" :http-header
                                  "Match-For-Version-Type"))
                                (:shape-name "UpdateAssetModelRequest"))

(smithy/sdk/shapes:define-output update-asset-model-response common-lisp:nil
                                 ((asset-model-status :target-type
                                   asset-model-status :required common-lisp:t
                                   :member-name "assetModelStatus"))
                                 (:shape-name "UpdateAssetModelResponse"))

(smithy/sdk/shapes:define-input update-asset-property-request common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (property-id :target-type custom-id :required
                                  common-lisp:t :member-name "propertyId"
                                  :http-label common-lisp:t)
                                 (property-alias :target-type property-alias
                                  :member-name "propertyAlias")
                                 (property-notification-state :target-type
                                  property-notification-state :member-name
                                  "propertyNotificationState")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (property-unit :target-type property-unit
                                  :member-name "propertyUnit"))
                                (:shape-name "UpdateAssetPropertyRequest"))

(smithy/sdk/shapes:define-input update-asset-request common-lisp:nil
                                ((asset-id :target-type custom-id :required
                                  common-lisp:t :member-name "assetId"
                                  :http-label common-lisp:t)
                                 (asset-external-id :target-type external-id
                                  :member-name "assetExternalId")
                                 (asset-name :target-type name :required
                                  common-lisp:t :member-name "assetName")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (asset-description :target-type description
                                  :member-name "assetDescription"))
                                (:shape-name "UpdateAssetRequest"))

(smithy/sdk/shapes:define-output update-asset-response common-lisp:nil
                                 ((asset-status :target-type asset-status
                                   :required common-lisp:t :member-name
                                   "assetStatus"))
                                 (:shape-name "UpdateAssetResponse"))

(smithy/sdk/shapes:define-input update-computation-model-request
                                common-lisp:nil
                                ((computation-model-id :target-type id
                                  :required common-lisp:t :member-name
                                  "computationModelId" :http-label
                                  common-lisp:t)
                                 (computation-model-name :target-type
                                  restricted-name :required common-lisp:t
                                  :member-name "computationModelName")
                                 (computation-model-description :target-type
                                  restricted-description :member-name
                                  "computationModelDescription")
                                 (computation-model-configuration :target-type
                                  computation-model-configuration :required
                                  common-lisp:t :member-name
                                  "computationModelConfiguration")
                                 (computation-model-data-binding :target-type
                                  computation-model-data-binding :required
                                  common-lisp:t :member-name
                                  "computationModelDataBinding")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateComputationModelRequest"))

(smithy/sdk/shapes:define-output update-computation-model-response
                                 common-lisp:nil
                                 ((computation-model-status :target-type
                                   computation-model-status :required
                                   common-lisp:t :member-name
                                   "computationModelStatus"))
                                 (:shape-name "UpdateComputationModelResponse"))

(smithy/sdk/shapes:define-input update-dashboard-request common-lisp:nil
                                ((dashboard-id :target-type id :required
                                  common-lisp:t :member-name "dashboardId"
                                  :http-label common-lisp:t)
                                 (dashboard-name :target-type name :required
                                  common-lisp:t :member-name "dashboardName")
                                 (dashboard-description :target-type
                                  description :member-name
                                  "dashboardDescription")
                                 (dashboard-definition :target-type
                                  dashboard-definition :required common-lisp:t
                                  :member-name "dashboardDefinition")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateDashboardRequest"))

(smithy/sdk/shapes:define-output update-dashboard-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDashboardResponse"))

(smithy/sdk/shapes:define-input update-dataset-request common-lisp:nil
                                ((dataset-id :target-type id :required
                                  common-lisp:t :member-name "datasetId"
                                  :http-label common-lisp:t)
                                 (dataset-name :target-type restricted-name
                                  :required common-lisp:t :member-name
                                  "datasetName")
                                 (dataset-description :target-type
                                  restricted-description :member-name
                                  "datasetDescription")
                                 (dataset-source :target-type dataset-source
                                  :required common-lisp:t :member-name
                                  "datasetSource")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateDatasetRequest"))

(smithy/sdk/shapes:define-output update-dataset-response common-lisp:nil
                                 ((dataset-id :target-type id :member-name
                                   "datasetId")
                                  (dataset-arn :target-type arn :member-name
                                   "datasetArn")
                                  (dataset-status :target-type dataset-status
                                   :member-name "datasetStatus"))
                                 (:shape-name "UpdateDatasetResponse"))

(smithy/sdk/shapes:define-input update-gateway-capability-configuration-request
                                common-lisp:nil
                                ((gateway-id :target-type id :required
                                  common-lisp:t :member-name "gatewayId"
                                  :http-label common-lisp:t)
                                 (capability-namespace :target-type
                                  capability-namespace :required common-lisp:t
                                  :member-name "capabilityNamespace")
                                 (capability-configuration :target-type
                                  capability-configuration :required
                                  common-lisp:t :member-name
                                  "capabilityConfiguration"))
                                (:shape-name
                                 "UpdateGatewayCapabilityConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-gateway-capability-configuration-response common-lisp:nil
 ((capability-namespace :target-type capability-namespace :required
   common-lisp:t :member-name "capabilityNamespace")
  (capability-sync-status :target-type capability-sync-status :required
   common-lisp:t :member-name "capabilitySyncStatus"))
 (:shape-name "UpdateGatewayCapabilityConfigurationResponse"))

(smithy/sdk/shapes:define-input update-gateway-request common-lisp:nil
                                ((gateway-id :target-type id :required
                                  common-lisp:t :member-name "gatewayId"
                                  :http-label common-lisp:t)
                                 (gateway-name :target-type gateway-name
                                  :required common-lisp:t :member-name
                                  "gatewayName"))
                                (:shape-name "UpdateGatewayRequest"))

(smithy/sdk/shapes:define-input update-portal-request common-lisp:nil
                                ((portal-id :target-type id :required
                                  common-lisp:t :member-name "portalId"
                                  :http-label common-lisp:t)
                                 (portal-name :target-type name :required
                                  common-lisp:t :member-name "portalName")
                                 (portal-description :target-type description
                                  :member-name "portalDescription")
                                 (portal-contact-email :target-type email
                                  :required common-lisp:t :member-name
                                  "portalContactEmail")
                                 (portal-logo-image :target-type image
                                  :member-name "portalLogoImage")
                                 (role-arn :target-type iam-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (notification-sender-email :target-type email
                                  :member-name "notificationSenderEmail")
                                 (alarms :target-type alarms :member-name
                                  "alarms")
                                 (portal-type :target-type portal-type
                                  :member-name "portalType")
                                 (portal-type-configuration :target-type
                                  portal-type-configuration :member-name
                                  "portalTypeConfiguration"))
                                (:shape-name "UpdatePortalRequest"))

(smithy/sdk/shapes:define-output update-portal-response common-lisp:nil
                                 ((portal-status :target-type portal-status
                                   :required common-lisp:t :member-name
                                   "portalStatus"))
                                 (:shape-name "UpdatePortalResponse"))

(smithy/sdk/shapes:define-input update-project-request common-lisp:nil
                                ((project-id :target-type id :required
                                  common-lisp:t :member-name "projectId"
                                  :http-label common-lisp:t)
                                 (project-name :target-type name :required
                                  common-lisp:t :member-name "projectName")
                                 (project-description :target-type description
                                  :member-name "projectDescription")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateProjectRequest"))

(smithy/sdk/shapes:define-output update-project-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateProjectResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-identity common-lisp:nil
                                    ((id :target-type identity-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "UserIdentity"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type variable-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure variable-value common-lisp:nil
                                    ((property-id :target-type macro
                                      :member-name "propertyId")
                                     (hierarchy-id :target-type macro
                                      :member-name "hierarchyId")
                                     (property-path :target-type
                                      asset-model-property-path :member-name
                                      "propertyPath"))
                                    (:shape-name "VariableValue"))

(smithy/sdk/shapes:define-structure variant common-lisp:nil
                                    ((string-value :target-type
                                      property-value-string-value :member-name
                                      "stringValue")
                                     (integer-value :target-type
                                      property-value-integer-value :member-name
                                      "integerValue")
                                     (double-value :target-type
                                      property-value-double-value :member-name
                                      "doubleValue")
                                     (boolean-value :target-type
                                      property-value-boolean-value :member-name
                                      "booleanValue")
                                     (null-value :target-type
                                      property-value-null-value :member-name
                                      "nullValue"))
                                    (:shape-name "Variant"))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure warm-tier-retention-period common-lisp:nil
                                    ((number-of-days :target-type
                                      number-of-days :member-name
                                      "numberOfDays")
                                     (unlimited :target-type unlimited
                                      :member-name "unlimited"))
                                    (:shape-name "WarmTierRetentionPeriod"))

(smithy/sdk/shapes:define-enum warm-tier-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/operation:define-operation associate-assets :shape-name
                                       "AssociateAssets" :input
                                       associate-assets-request :output
                                       common-lisp:null :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/assets/{assetId}/associate" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation associate-time-series-to-asset-property
                                       :shape-name
                                       "AssociateTimeSeriesToAssetProperty"
                                       :input
                                       associate-time-series-to-asset-property-request
                                       :output common-lisp:null :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/timeseries/associate" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation batch-associate-project-assets
                                       :shape-name
                                       "BatchAssociateProjectAssets" :input
                                       batch-associate-project-assets-request
                                       :output
                                       batch-associate-project-assets-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/projects/{projectId}/assets/associate"
                                       :code 200 :endpoint-host-prefix
                                       "monitor.")

(smithy/sdk/operation:define-operation batch-disassociate-project-assets
                                       :shape-name
                                       "BatchDisassociateProjectAssets" :input
                                       batch-disassociate-project-assets-request
                                       :output
                                       batch-disassociate-project-assets-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/projects/{projectId}/assets/disassociate"
                                       :code 200 :endpoint-host-prefix
                                       "monitor.")

(smithy/sdk/operation:define-operation batch-get-asset-property-aggregates
                                       :shape-name
                                       "BatchGetAssetPropertyAggregates" :input
                                       batch-get-asset-property-aggregates-request
                                       :output
                                       batch-get-asset-property-aggregates-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/properties/batch/aggregates" :code 200
                                       :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation batch-get-asset-property-value
                                       :shape-name "BatchGetAssetPropertyValue"
                                       :input
                                       batch-get-asset-property-value-request
                                       :output
                                       batch-get-asset-property-value-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/properties/batch/latest" :code 200
                                       :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation batch-get-asset-property-value-history
                                       :shape-name
                                       "BatchGetAssetPropertyValueHistory"
                                       :input
                                       batch-get-asset-property-value-history-request
                                       :output
                                       batch-get-asset-property-value-history-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/properties/batch/history" :code 200
                                       :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation batch-put-asset-property-value
                                       :shape-name "BatchPutAssetPropertyValue"
                                       :input
                                       batch-put-asset-property-value-request
                                       :output
                                       batch-put-asset-property-value-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/properties" :code
                                       200 :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation create-access-policy :shape-name
                                       "CreateAccessPolicy" :input
                                       create-access-policy-request :output
                                       create-access-policy-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/access-policies"
                                       :code 201 :endpoint-host-prefix
                                       "monitor.")

(smithy/sdk/operation:define-operation create-asset :shape-name "CreateAsset"
                                       :input create-asset-request :output
                                       create-asset-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/assets" :code 202
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-asset-model :shape-name
                                       "CreateAssetModel" :input
                                       create-asset-model-request :output
                                       create-asset-model-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/asset-models"
                                       :code 202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-asset-model-composite-model
                                       :shape-name
                                       "CreateAssetModelCompositeModel" :input
                                       create-asset-model-composite-model-request
                                       :output
                                       create-asset-model-composite-model-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        precondition-failed-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/asset-models/{assetModelId}/composite-models"
                                       :code 202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-bulk-import-job :shape-name
                                       "CreateBulkImportJob" :input
                                       create-bulk-import-job-request :output
                                       create-bulk-import-job-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/jobs" :code 202
                                       :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation create-computation-model :shape-name
                                       "CreateComputationModel" :input
                                       create-computation-model-request :output
                                       create-computation-model-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/computation-models" :code 202
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-dashboard :shape-name
                                       "CreateDashboard" :input
                                       create-dashboard-request :output
                                       create-dashboard-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/dashboards" :code
                                       201 :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/datasets" :code
                                       202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-gateway :shape-name
                                       "CreateGateway" :input
                                       create-gateway-request :output
                                       create-gateway-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception)
                                       :method "POST" :uri "/20200301/gateways"
                                       :code 201 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-portal :shape-name "CreatePortal"
                                       :input create-portal-request :output
                                       create-portal-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/portals" :code 202
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation create-project :shape-name
                                       "CreateProject" :input
                                       create-project-request :output
                                       create-project-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/projects" :code
                                       201 :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation delete-access-policy :shape-name
                                       "DeleteAccessPolicy" :input
                                       delete-access-policy-request :output
                                       delete-access-policy-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/access-policies/{accessPolicyId}"
                                       :code 204 :endpoint-host-prefix
                                       "monitor.")

(smithy/sdk/operation:define-operation delete-asset :shape-name "DeleteAsset"
                                       :input delete-asset-request :output
                                       delete-asset-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/assets/{assetId}" :code 202
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-asset-model :shape-name
                                       "DeleteAssetModel" :input
                                       delete-asset-model-request :output
                                       delete-asset-model-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/asset-models/{assetModelId}" :code 202
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-asset-model-composite-model
                                       :shape-name
                                       "DeleteAssetModelCompositeModel" :input
                                       delete-asset-model-composite-model-request
                                       :output
                                       delete-asset-model-composite-model-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}"
                                       :code 202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation
 delete-asset-model-interface-relationship :shape-name
 "DeleteAssetModelInterfaceRelationship" :input
 delete-asset-model-interface-relationship-request :output
 delete-asset-model-interface-relationship-response :errors
 (conflicting-operation-exception internal-failure-exception
  invalid-request-exception resource-not-found-exception throttling-exception)
 :method "DELETE" :uri
 "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship"
 :code 202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-computation-model :shape-name
                                       "DeleteComputationModel" :input
                                       delete-computation-model-request :output
                                       delete-computation-model-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/computation-models/{computationModelId}"
                                       :code 202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-dashboard :shape-name
                                       "DeleteDashboard" :input
                                       delete-dashboard-request :output
                                       delete-dashboard-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/dashboards/{dashboardId}" :code 204
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       delete-dataset-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/datasets/{datasetId}" :code 202
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-gateway :shape-name
                                       "DeleteGateway" :input
                                       delete-gateway-request :output
                                       common-lisp:null :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/20200301/gateways/{gatewayId}" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-portal :shape-name "DeletePortal"
                                       :input delete-portal-request :output
                                       delete-portal-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalId}" :code 202
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation delete-project :shape-name
                                       "DeleteProject" :input
                                       delete-project-request :output
                                       delete-project-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/projects/{projectId}" :code 204
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation delete-time-series :shape-name
                                       "DeleteTimeSeries" :input
                                       delete-time-series-request :output
                                       common-lisp:null :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/timeseries/delete"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-access-policy :shape-name
                                       "DescribeAccessPolicy" :input
                                       describe-access-policy-request :output
                                       describe-access-policy-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/access-policies/{accessPolicyId}"
                                       :code 200 :endpoint-host-prefix
                                       "monitor.")

(smithy/sdk/operation:define-operation describe-action :shape-name
                                       "DescribeAction" :input
                                       describe-action-request :output
                                       describe-action-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/actions/{actionId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-asset :shape-name
                                       "DescribeAsset" :input
                                       describe-asset-request :output
                                       describe-asset-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/assets/{assetId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-asset-composite-model
                                       :shape-name
                                       "DescribeAssetCompositeModel" :input
                                       describe-asset-composite-model-request
                                       :output
                                       describe-asset-composite-model-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/assets/{assetId}/composite-models/{assetCompositeModelId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-asset-model :shape-name
                                       "DescribeAssetModel" :input
                                       describe-asset-model-request :output
                                       describe-asset-model-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/asset-models/{assetModelId}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-asset-model-composite-model
                                       :shape-name
                                       "DescribeAssetModelCompositeModel"
                                       :input
                                       describe-asset-model-composite-model-request
                                       :output
                                       describe-asset-model-composite-model-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation
 describe-asset-model-interface-relationship :shape-name
 "DescribeAssetModelInterfaceRelationship" :input
 describe-asset-model-interface-relationship-request :output
 describe-asset-model-interface-relationship-response :errors
 (internal-failure-exception invalid-request-exception
  resource-not-found-exception throttling-exception)
 :method "GET" :uri
 "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship"
 :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-asset-property :shape-name
                                       "DescribeAssetProperty" :input
                                       describe-asset-property-request :output
                                       describe-asset-property-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/assets/{assetId}/properties/{propertyId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-bulk-import-job :shape-name
                                       "DescribeBulkImportJob" :input
                                       describe-bulk-import-job-request :output
                                       describe-bulk-import-job-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/jobs/{jobId}" :code
                                       200 :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation describe-computation-model :shape-name
                                       "DescribeComputationModel" :input
                                       describe-computation-model-request
                                       :output
                                       describe-computation-model-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/computation-models/{computationModelId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation
 describe-computation-model-execution-summary :shape-name
 "DescribeComputationModelExecutionSummary" :input
 describe-computation-model-execution-summary-request :output
 describe-computation-model-execution-summary-response :errors
 (internal-failure-exception invalid-request-exception
  resource-not-found-exception throttling-exception)
 :method "GET" :uri
 "/computation-models/{computationModelId}/execution-summary" :code 200
 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-dashboard :shape-name
                                       "DescribeDashboard" :input
                                       describe-dashboard-request :output
                                       describe-dashboard-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/dashboards/{dashboardId}" :code 200
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/datasets/{datasetId}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation
 describe-default-encryption-configuration :shape-name
 "DescribeDefaultEncryptionConfiguration" :input
 describe-default-encryption-configuration-request :output
 describe-default-encryption-configuration-response :errors
 (internal-failure-exception invalid-request-exception throttling-exception)
 :method "GET" :uri "/configuration/account/encryption" :code 200
 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-execution :shape-name
                                       "DescribeExecution" :input
                                       describe-execution-request :output
                                       describe-execution-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/executions/{executionId}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-gateway :shape-name
                                       "DescribeGateway" :input
                                       describe-gateway-request :output
                                       describe-gateway-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/20200301/gateways/{gatewayId}" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation
 describe-gateway-capability-configuration :shape-name
 "DescribeGatewayCapabilityConfiguration" :input
 describe-gateway-capability-configuration-request :output
 describe-gateway-capability-configuration-response :errors
 (internal-failure-exception invalid-request-exception
  resource-not-found-exception throttling-exception)
 :method "GET" :uri
 "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}" :code 200
 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-logging-options :shape-name
                                       "DescribeLoggingOptions" :input
                                       describe-logging-options-request :output
                                       describe-logging-options-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/logging" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-portal :shape-name
                                       "DescribePortal" :input
                                       describe-portal-request :output
                                       describe-portal-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/portals/{portalId}"
                                       :code 200 :endpoint-host-prefix
                                       "monitor.")

(smithy/sdk/operation:define-operation describe-project :shape-name
                                       "DescribeProject" :input
                                       describe-project-request :output
                                       describe-project-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/projects/{projectId}" :code 200
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation describe-storage-configuration
                                       :shape-name
                                       "DescribeStorageConfiguration" :input
                                       describe-storage-configuration-request
                                       :output
                                       describe-storage-configuration-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/configuration/account/storage" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation describe-time-series :shape-name
                                       "DescribeTimeSeries" :input
                                       describe-time-series-request :output
                                       describe-time-series-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/timeseries/describe" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation disassociate-assets :shape-name
                                       "DisassociateAssets" :input
                                       disassociate-assets-request :output
                                       common-lisp:null :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/assets/{assetId}/disassociate" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation
 disassociate-time-series-from-asset-property :shape-name
 "DisassociateTimeSeriesFromAssetProperty" :input
 disassociate-time-series-from-asset-property-request :output common-lisp:null
 :errors
 (conflicting-operation-exception internal-failure-exception
  invalid-request-exception resource-not-found-exception throttling-exception)
 :method "POST" :uri "/timeseries/disassociate" :code 200 :endpoint-host-prefix
 "api.")

(smithy/sdk/operation:define-operation execute-action :shape-name
                                       "ExecuteAction" :input
                                       execute-action-request :output
                                       execute-action-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/actions" :code 202
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation execute-query :shape-name "ExecuteQuery"
                                       :input execute-query-request :output
                                       execute-query-response :errors
                                       (access-denied-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        query-timeout-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/queries/execution"
                                       :code 200 :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation get-asset-property-aggregates
                                       :shape-name "GetAssetPropertyAggregates"
                                       :input
                                       get-asset-property-aggregates-request
                                       :output
                                       get-asset-property-aggregates-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/properties/aggregates" :code 200
                                       :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation get-asset-property-value :shape-name
                                       "GetAssetPropertyValue" :input
                                       get-asset-property-value-request :output
                                       get-asset-property-value-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/properties/latest"
                                       :code 200 :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation get-asset-property-value-history
                                       :shape-name
                                       "GetAssetPropertyValueHistory" :input
                                       get-asset-property-value-history-request
                                       :output
                                       get-asset-property-value-history-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri "/properties/history"
                                       :code 200 :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation get-interpolated-asset-property-values
                                       :shape-name
                                       "GetInterpolatedAssetPropertyValues"
                                       :input
                                       get-interpolated-asset-property-values-request
                                       :output
                                       get-interpolated-asset-property-values-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/properties/interpolated" :code 200
                                       :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation invoke-assistant :shape-name
                                       "InvokeAssistant" :input
                                       invoke-assistant-request :output
                                       invoke-assistant-response :errors
                                       (access-denied-exception
                                        conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/assistant/invocation" :code 200
                                       :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation list-access-policies :shape-name
                                       "ListAccessPolicies" :input
                                       list-access-policies-request :output
                                       list-access-policies-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/access-policies"
                                       :code 200 :endpoint-host-prefix
                                       "monitor.")

(smithy/sdk/operation:define-operation list-actions :shape-name "ListActions"
                                       :input list-actions-request :output
                                       list-actions-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/actions" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-asset-model-composite-models
                                       :shape-name
                                       "ListAssetModelCompositeModels" :input
                                       list-asset-model-composite-models-request
                                       :output
                                       list-asset-model-composite-models-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/asset-models/{assetModelId}/composite-models"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-asset-model-properties :shape-name
                                       "ListAssetModelProperties" :input
                                       list-asset-model-properties-request
                                       :output
                                       list-asset-model-properties-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/asset-models/{assetModelId}/properties"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-asset-models :shape-name
                                       "ListAssetModels" :input
                                       list-asset-models-request :output
                                       list-asset-models-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/asset-models" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-asset-properties :shape-name
                                       "ListAssetProperties" :input
                                       list-asset-properties-request :output
                                       list-asset-properties-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/assets/{assetId}/properties" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-asset-relationships :shape-name
                                       "ListAssetRelationships" :input
                                       list-asset-relationships-request :output
                                       list-asset-relationships-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/assets/{assetId}/assetRelationships"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-assets :shape-name "ListAssets"
                                       :input list-assets-request :output
                                       list-assets-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/assets" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-associated-assets :shape-name
                                       "ListAssociatedAssets" :input
                                       list-associated-assets-request :output
                                       list-associated-assets-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/assets/{assetId}/hierarchies" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-bulk-import-jobs :shape-name
                                       "ListBulkImportJobs" :input
                                       list-bulk-import-jobs-request :output
                                       list-bulk-import-jobs-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/jobs" :code 200
                                       :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation list-composition-relationships
                                       :shape-name
                                       "ListCompositionRelationships" :input
                                       list-composition-relationships-request
                                       :output
                                       list-composition-relationships-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/asset-models/{assetModelId}/composition-relationships"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation
 list-computation-model-data-binding-usages :shape-name
 "ListComputationModelDataBindingUsages" :input
 list-computation-model-data-binding-usages-request :output
 list-computation-model-data-binding-usages-response :errors
 (internal-failure-exception invalid-request-exception throttling-exception)
 :method "POST" :uri "/computation-models/data-binding-usages" :code 200
 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation
 list-computation-model-resolve-to-resources :shape-name
 "ListComputationModelResolveToResources" :input
 list-computation-model-resolve-to-resources-request :output
 list-computation-model-resolve-to-resources-response :errors
 (internal-failure-exception invalid-request-exception
  resource-not-found-exception throttling-exception)
 :method "GET" :uri
 "/computation-models/{computationModelId}/resolve-to-resources" :code 200
 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-computation-models :shape-name
                                       "ListComputationModels" :input
                                       list-computation-models-request :output
                                       list-computation-models-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/computation-models"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-dashboards :shape-name
                                       "ListDashboards" :input
                                       list-dashboards-request :output
                                       list-dashboards-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/dashboards" :code
                                       200 :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation list-datasets :shape-name "ListDatasets"
                                       :input list-datasets-request :output
                                       list-datasets-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/datasets" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-executions :shape-name
                                       "ListExecutions" :input
                                       list-executions-request :output
                                       list-executions-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/executions" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-gateways :shape-name "ListGateways"
                                       :input list-gateways-request :output
                                       list-gateways-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/20200301/gateways"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-interface-relationships :shape-name
                                       "ListInterfaceRelationships" :input
                                       list-interface-relationships-request
                                       :output
                                       list-interface-relationships-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/interface/{interfaceAssetModelId}/asset-models"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-portals :shape-name "ListPortals"
                                       :input list-portals-request :output
                                       list-portals-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/portals" :code 200
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation list-project-assets :shape-name
                                       "ListProjectAssets" :input
                                       list-project-assets-request :output
                                       list-project-assets-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/projects/{projectId}/assets" :code 200
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation list-projects :shape-name "ListProjects"
                                       :input list-projects-request :output
                                       list-projects-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "GET" :uri "/projects" :code 200
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/tags" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-time-series :shape-name
                                       "ListTimeSeries" :input
                                       list-time-series-request :output
                                       list-time-series-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/timeseries" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation put-asset-model-interface-relationship
                                       :shape-name
                                       "PutAssetModelInterfaceRelationship"
                                       :input
                                       put-asset-model-interface-relationship-request
                                       :output
                                       put-asset-model-interface-relationship-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship"
                                       :code 202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation put-default-encryption-configuration
                                       :shape-name
                                       "PutDefaultEncryptionConfiguration"
                                       :input
                                       put-default-encryption-configuration-request
                                       :output
                                       put-default-encryption-configuration-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/configuration/account/encryption"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation put-logging-options :shape-name
                                       "PutLoggingOptions" :input
                                       put-logging-options-request :output
                                       put-logging-options-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri "/logging" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation put-storage-configuration :shape-name
                                       "PutStorageConfiguration" :input
                                       put-storage-configuration-request
                                       :output
                                       put-storage-configuration-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/configuration/account/storage" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/tags" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri "/tags" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-access-policy :shape-name
                                       "UpdateAccessPolicy" :input
                                       update-access-policy-request :output
                                       update-access-policy-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/access-policies/{accessPolicyId}"
                                       :code 200 :endpoint-host-prefix
                                       "monitor.")

(smithy/sdk/operation:define-operation update-asset :shape-name "UpdateAsset"
                                       :input update-asset-request :output
                                       update-asset-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri "/assets/{assetId}"
                                       :code 202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-asset-model :shape-name
                                       "UpdateAssetModel" :input
                                       update-asset-model-request :output
                                       update-asset-model-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        precondition-failed-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/asset-models/{assetModelId}" :code 202
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-asset-model-composite-model
                                       :shape-name
                                       "UpdateAssetModelCompositeModel" :input
                                       update-asset-model-composite-model-request
                                       :output
                                       update-asset-model-composite-model-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        precondition-failed-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}"
                                       :code 202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-asset-property :shape-name
                                       "UpdateAssetProperty" :input
                                       update-asset-property-request :output
                                       common-lisp:null :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/assets/{assetId}/properties/{propertyId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-computation-model :shape-name
                                       "UpdateComputationModel" :input
                                       update-computation-model-request :output
                                       update-computation-model-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/computation-models/{computationModelId}"
                                       :code 202 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-dashboard :shape-name
                                       "UpdateDashboard" :input
                                       update-dashboard-request :output
                                       update-dashboard-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/dashboards/{dashboardId}" :code 200
                                       :endpoint-host-prefix "monitor.")

(smithy/sdk/operation:define-operation update-dataset :shape-name
                                       "UpdateDataset" :input
                                       update-dataset-request :output
                                       update-dataset-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/datasets/{datasetId}" :code 202
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-gateway :shape-name
                                       "UpdateGateway" :input
                                       update-gateway-request :output
                                       common-lisp:null :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/20200301/gateways/{gatewayId}" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-gateway-capability-configuration
                                       :shape-name
                                       "UpdateGatewayCapabilityConfiguration"
                                       :input
                                       update-gateway-capability-configuration-request
                                       :output
                                       update-gateway-capability-configuration-response
                                       :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/20200301/gateways/{gatewayId}/capability"
                                       :code 201 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-portal :shape-name "UpdatePortal"
                                       :input update-portal-request :output
                                       update-portal-response :errors
                                       (conflicting-operation-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri "/portals/{portalId}"
                                       :code 202 :endpoint-host-prefix
                                       "monitor.")

(smithy/sdk/operation:define-operation update-project :shape-name
                                       "UpdateProject" :input
                                       update-project-request :output
                                       update-project-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/projects/{projectId}" :code 200
                                       :endpoint-host-prefix "monitor.")
