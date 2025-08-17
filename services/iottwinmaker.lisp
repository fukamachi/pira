(uiop/package:define-package #:pira/iottwinmaker (:use)
                             (:export #:awsio-ttwin-maker
                              #:batch-put-property-error
                              #:batch-put-property-error-entry
                              #:batch-put-property-values
                              #:batch-put-property-values-request
                              #:batch-put-property-values-response #:boolean
                              #:bundle-information #:bundle-name
                              #:cancel-metadata-transfer-job
                              #:column-description #:column-descriptions
                              #:column-name #:column-type #:component-path
                              #:component-property-group-request
                              #:component-property-group-requests
                              #:component-property-group-response
                              #:component-property-group-responses
                              #:component-request #:component-response
                              #:component-summaries #:component-summary
                              #:component-type-id #:component-type-name
                              #:component-type-summaries
                              #:component-type-summary
                              #:component-update-request
                              #:component-update-type
                              #:component-updates-map-request #:components-map
                              #:components-map-request
                              #:composite-component-request
                              #:composite-component-response
                              #:composite-component-type-request
                              #:composite-component-type-response
                              #:composite-component-types-request
                              #:composite-component-types-response
                              #:composite-component-update-request
                              #:composite-component-updates-map-request
                              #:composite-components-map-request
                              #:configuration #:create-component-type
                              #:create-component-type-request
                              #:create-component-type-response #:create-entity
                              #:create-entity-request #:create-entity-response
                              #:create-metadata-transfer-job #:create-scene
                              #:create-scene-request #:create-scene-response
                              #:create-sync-job #:create-sync-job-request
                              #:create-sync-job-response #:create-workspace
                              #:create-workspace-request
                              #:create-workspace-response #:data-connector
                              #:data-type #:data-value #:data-value-list
                              #:data-value-map #:delete-component-type
                              #:delete-component-type-request
                              #:delete-component-type-response #:delete-entity
                              #:delete-entity-request #:delete-entity-response
                              #:delete-scene #:delete-scene-request
                              #:delete-scene-response #:delete-sync-job
                              #:delete-sync-job-request
                              #:delete-sync-job-response #:delete-workspace
                              #:delete-workspace-request
                              #:delete-workspace-response #:description
                              #:destination-configuration #:destination-type
                              #:double #:entity-id #:entity-name
                              #:entity-property-reference #:entity-summaries
                              #:entity-summary #:entries #:error-code
                              #:error-details #:error-entries #:error-message
                              #:errors #:exception-message #:execute-query
                              #:execute-query-request #:execute-query-response
                              #:expression #:extends-from
                              #:external-id-property #:filter-by-asset
                              #:filter-by-asset-model
                              #:filter-by-component-type #:filter-by-entity
                              #:function-request #:function-response
                              #:functions-request #:functions-response
                              #:generated-scene-metadata-map
                              #:get-component-type #:get-component-type-request
                              #:get-component-type-response #:get-entity
                              #:get-entity-request #:get-entity-response
                              #:get-metadata-transfer-job #:get-pricing-plan
                              #:get-pricing-plan-request
                              #:get-pricing-plan-response #:get-property-value
                              #:get-property-value-history
                              #:get-property-value-history-request
                              #:get-property-value-history-response
                              #:get-property-value-request
                              #:get-property-value-response #:get-scene
                              #:get-scene-request #:get-scene-response
                              #:get-sync-job #:get-sync-job-request
                              #:get-sync-job-response #:get-workspace
                              #:get-workspace-request #:get-workspace-response
                              #:group-type #:id #:id-or-arn #:integer
                              #:interpolation-parameters #:interpolation-type
                              #:interval-in-seconds
                              #:iot-site-wise-source-configuration
                              #:iot-site-wise-source-configuration-filter
                              #:iot-site-wise-source-configuration-filters
                              #:iot-twin-maker-destination-configuration
                              #:iot-twin-maker-source-configuration
                              #:iot-twin-maker-source-configuration-filter
                              #:iot-twin-maker-source-configuration-filters
                              #:lambda-arn #:lambda-function #:linked-service
                              #:linked-services #:list-component-types
                              #:list-component-types-filter
                              #:list-component-types-filters
                              #:list-component-types-request
                              #:list-component-types-response #:list-components
                              #:list-entities #:list-entities-filter
                              #:list-entities-filters #:list-entities-request
                              #:list-entities-response
                              #:list-metadata-transfer-jobs
                              #:list-metadata-transfer-jobs-filter
                              #:list-metadata-transfer-jobs-filters
                              #:list-properties #:list-scenes
                              #:list-scenes-request #:list-scenes-response
                              #:list-sync-jobs #:list-sync-jobs-request
                              #:list-sync-jobs-response #:list-sync-resources
                              #:list-sync-resources-request
                              #:list-sync-resources-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-workspaces #:list-workspaces-request
                              #:list-workspaces-response #:long #:max-results
                              #:metadata-transfer-job-progress
                              #:metadata-transfer-job-state
                              #:metadata-transfer-job-status
                              #:metadata-transfer-job-summaries
                              #:metadata-transfer-job-summary #:name
                              #:next-token #:order #:order-by #:order-by-list
                              #:order-by-time #:parent-entity-id
                              #:parent-entity-update-request
                              #:parent-entity-update-type #:pricing-bundles
                              #:pricing-mode #:pricing-plan #:pricing-tier
                              #:property-definition-request
                              #:property-definition-response
                              #:property-definitions-request
                              #:property-definitions-response
                              #:property-display-name #:property-filter
                              #:property-filters #:property-group-request
                              #:property-group-response
                              #:property-group-update-type
                              #:property-groups-request
                              #:property-groups-response
                              #:property-latest-value
                              #:property-latest-value-map #:property-names
                              #:property-request #:property-requests
                              #:property-response #:property-responses
                              #:property-summaries #:property-summary
                              #:property-table-value #:property-update-type
                              #:property-value #:property-value-entry
                              #:property-value-history #:property-value-list
                              #:property-values #:query-result-value
                              #:query-service-max-results #:query-statement
                              #:relationship #:relationship-value
                              #:required-properties #:role-arn #:row #:row-data
                              #:rows #:s3destination-configuration
                              #:s3destination-location #:s3location
                              #:s3source-configuration #:s3source-location
                              #:s3url #:scene-capabilities #:scene-capability
                              #:scene-error #:scene-error-code
                              #:scene-metadata-map #:scene-metadata-value
                              #:scene-summaries #:scene-summary #:scope
                              #:selected-property-list #:site-wise-external-id
                              #:source-configuration #:source-configurations
                              #:source-type #:state #:status #:string
                              #:sync-job-state #:sync-job-status
                              #:sync-job-summaries #:sync-job-summary
                              #:sync-resource-filter #:sync-resource-filters
                              #:sync-resource-state #:sync-resource-status
                              #:sync-resource-summaries #:sync-resource-summary
                              #:sync-resource-type #:sync-source
                              #:tabular-conditions #:tabular-property-value
                              #:tabular-property-values #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:time #:timestamp #:twin-maker-arn
                              #:type #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-component-type
                              #:update-component-type-request
                              #:update-component-type-response #:update-entity
                              #:update-entity-request #:update-entity-response
                              #:update-pricing-plan
                              #:update-pricing-plan-request
                              #:update-pricing-plan-response #:update-reason
                              #:update-scene #:update-scene-request
                              #:update-scene-response #:update-workspace
                              #:update-workspace-request
                              #:update-workspace-response #:uuid #:value
                              #:values #:workspace-delete-message
                              #:workspace-summaries #:workspace-summary))
(common-lisp:in-package #:pira/iottwinmaker)

(smithy/sdk/service:define-service awsio-ttwin-maker :shape-name
                                   "AWSIoTTwinMaker" :version "2021-11-29"
                                   :title "AWS IoT TwinMaker" :operations
                                   '(batch-put-property-values
                                     cancel-metadata-transfer-job
                                     create-component-type create-entity
                                     create-metadata-transfer-job create-scene
                                     create-sync-job create-workspace
                                     delete-component-type delete-entity
                                     delete-scene delete-sync-job
                                     delete-workspace execute-query
                                     get-component-type get-entity
                                     get-metadata-transfer-job get-pricing-plan
                                     get-property-value
                                     get-property-value-history get-scene
                                     get-sync-job get-workspace list-components
                                     list-component-types list-entities
                                     list-metadata-transfer-jobs
                                     list-properties list-scenes list-sync-jobs
                                     list-sync-resources list-tags-for-resource
                                     list-workspaces tag-resource
                                     untag-resource update-component-type
                                     update-entity update-pricing-plan
                                     update-scene update-workspace)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoTTwinMaker")
                                      ("endpointPrefix" . "iottwinmaker"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iottwinmaker"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure batch-put-property-error common-lisp:nil
                                    ((error-code :target-type string :required
                                      common-lisp:t :member-name "errorCode")
                                     (error-message :target-type string
                                      :required common-lisp:t :member-name
                                      "errorMessage")
                                     (entry :target-type property-value-entry
                                      :required common-lisp:t :member-name
                                      "entry"))
                                    (:shape-name "BatchPutPropertyError"))

(smithy/sdk/shapes:define-structure batch-put-property-error-entry
                                    common-lisp:nil
                                    ((errors :target-type errors :required
                                      common-lisp:t :member-name "errors"))
                                    (:shape-name "BatchPutPropertyErrorEntry"))

(smithy/sdk/shapes:define-structure batch-put-property-values-request
                                    common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (entries :target-type entries :required
                                      common-lisp:t :member-name "entries"))
                                    (:shape-name
                                     "BatchPutPropertyValuesRequest"))

(smithy/sdk/shapes:define-structure batch-put-property-values-response
                                    common-lisp:nil
                                    ((error-entries :target-type error-entries
                                      :required common-lisp:t :member-name
                                      "errorEntries"))
                                    (:shape-name
                                     "BatchPutPropertyValuesResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure bundle-information common-lisp:nil
                                    ((bundle-names :target-type pricing-bundles
                                      :required common-lisp:t :member-name
                                      "bundleNames")
                                     (pricing-tier :target-type pricing-tier
                                      :member-name "pricingTier"))
                                    (:shape-name "BundleInformation"))

(smithy/sdk/shapes:define-type bundle-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-metadata-transfer-job-request
                                common-lisp:nil
                                ((metadata-transfer-job-id :target-type id
                                  :required common-lisp:t :member-name
                                  "metadataTransferJobId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "CancelMetadataTransferJobRequest"))

(smithy/sdk/shapes:define-output cancel-metadata-transfer-job-response
                                 common-lisp:nil
                                 ((metadata-transfer-job-id :target-type id
                                   :required common-lisp:t :member-name
                                   "metadataTransferJobId")
                                  (arn :target-type twin-maker-arn :required
                                   common-lisp:t :member-name "arn")
                                  (update-date-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "updateDateTime")
                                  (status :target-type
                                   metadata-transfer-job-status :required
                                   common-lisp:t :member-name "status")
                                  (progress :target-type
                                   metadata-transfer-job-progress :member-name
                                   "progress"))
                                 (:shape-name
                                  "CancelMetadataTransferJobResponse"))

(smithy/sdk/shapes:define-structure column-description common-lisp:nil
                                    ((name :target-type column-name
                                      :member-name "name")
                                     (type :target-type column-type
                                      :member-name "type"))
                                    (:shape-name "ColumnDescription"))

(smithy/sdk/shapes:define-list column-descriptions :member column-description)

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type column-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component-property-group-request
                                    common-lisp:nil
                                    ((group-type :target-type group-type
                                      :member-name "groupType")
                                     (property-names :target-type
                                      property-names :member-name
                                      "propertyNames")
                                     (update-type :target-type
                                      property-group-update-type :member-name
                                      "updateType"))
                                    (:shape-name
                                     "ComponentPropertyGroupRequest"))

(smithy/sdk/shapes:define-map component-property-group-requests :key name
                              :value component-property-group-request)

(smithy/sdk/shapes:define-structure component-property-group-response
                                    common-lisp:nil
                                    ((group-type :target-type group-type
                                      :required common-lisp:t :member-name
                                      "groupType")
                                     (property-names :target-type
                                      property-names :required common-lisp:t
                                      :member-name "propertyNames")
                                     (is-inherited :target-type boolean
                                      :required common-lisp:t :member-name
                                      "isInherited"))
                                    (:shape-name
                                     "ComponentPropertyGroupResponse"))

(smithy/sdk/shapes:define-map component-property-group-responses :key name
                              :value component-property-group-response)

(smithy/sdk/shapes:define-structure component-request common-lisp:nil
                                    ((description :target-type description
                                      :member-name "description")
                                     (component-type-id :target-type
                                      component-type-id :member-name
                                      "componentTypeId")
                                     (properties :target-type property-requests
                                      :member-name "properties")
                                     (property-groups :target-type
                                      component-property-group-requests
                                      :member-name "propertyGroups"))
                                    (:shape-name "ComponentRequest"))

(smithy/sdk/shapes:define-structure component-response common-lisp:nil
                                    ((component-name :target-type name
                                      :member-name "componentName")
                                     (description :target-type description
                                      :member-name "description")
                                     (component-type-id :target-type
                                      component-type-id :member-name
                                      "componentTypeId")
                                     (status :target-type status :member-name
                                      "status")
                                     (defined-in :target-type string
                                      :member-name "definedIn")
                                     (properties :target-type
                                      property-responses :member-name
                                      "properties")
                                     (property-groups :target-type
                                      component-property-group-responses
                                      :member-name "propertyGroups")
                                     (sync-source :target-type sync-source
                                      :member-name "syncSource")
                                     (are-all-properties-returned :target-type
                                      boolean :member-name
                                      "areAllPropertiesReturned")
                                     (composite-components :target-type
                                      composite-component-response :member-name
                                      "compositeComponents")
                                     (are-all-composite-components-returned
                                      :target-type boolean :member-name
                                      "areAllCompositeComponentsReturned"))
                                    (:shape-name "ComponentResponse"))

(smithy/sdk/shapes:define-list component-summaries :member component-summary)

(smithy/sdk/shapes:define-structure component-summary common-lisp:nil
                                    ((component-name :target-type name
                                      :required common-lisp:t :member-name
                                      "componentName")
                                     (component-type-id :target-type
                                      component-type-id :required common-lisp:t
                                      :member-name "componentTypeId")
                                     (defined-in :target-type string
                                      :member-name "definedIn")
                                     (description :target-type description
                                      :member-name "description")
                                     (property-groups :target-type
                                      component-property-group-responses
                                      :member-name "propertyGroups")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "status")
                                     (sync-source :target-type sync-source
                                      :member-name "syncSource")
                                     (component-path :target-type
                                      component-path :member-name
                                      "componentPath"))
                                    (:shape-name "ComponentSummary"))

(smithy/sdk/shapes:define-type component-type-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list component-type-summaries :member
                               component-type-summary)

(smithy/sdk/shapes:define-structure component-type-summary common-lisp:nil
                                    ((arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (component-type-id :target-type
                                      component-type-id :required common-lisp:t
                                      :member-name "componentTypeId")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type status :member-name
                                      "status")
                                     (component-type-name :target-type
                                      component-type-name :member-name
                                      "componentTypeName"))
                                    (:shape-name "ComponentTypeSummary"))

(smithy/sdk/shapes:define-structure component-update-request common-lisp:nil
                                    ((update-type :target-type
                                      component-update-type :member-name
                                      "updateType")
                                     (description :target-type description
                                      :member-name "description")
                                     (component-type-id :target-type
                                      component-type-id :member-name
                                      "componentTypeId")
                                     (property-updates :target-type
                                      property-requests :member-name
                                      "propertyUpdates")
                                     (property-group-updates :target-type
                                      component-property-group-requests
                                      :member-name "propertyGroupUpdates"))
                                    (:shape-name "ComponentUpdateRequest"))

(smithy/sdk/shapes:define-type component-update-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map component-updates-map-request :key name :value
                              component-update-request)

(smithy/sdk/shapes:define-map components-map :key name :value
                              component-response)

(smithy/sdk/shapes:define-map components-map-request :key name :value
                              component-request)

(smithy/sdk/shapes:define-structure composite-component-request common-lisp:nil
                                    ((description :target-type description
                                      :member-name "description")
                                     (properties :target-type property-requests
                                      :member-name "properties")
                                     (property-groups :target-type
                                      component-property-group-requests
                                      :member-name "propertyGroups"))
                                    (:shape-name "CompositeComponentRequest"))

(smithy/sdk/shapes:define-map composite-component-response :key name :value
                              component-summary)

(smithy/sdk/shapes:define-structure composite-component-type-request
                                    common-lisp:nil
                                    ((component-type-id :target-type
                                      component-type-id :member-name
                                      "componentTypeId"))
                                    (:shape-name
                                     "CompositeComponentTypeRequest"))

(smithy/sdk/shapes:define-structure composite-component-type-response
                                    common-lisp:nil
                                    ((component-type-id :target-type
                                      component-type-id :member-name
                                      "componentTypeId")
                                     (is-inherited :target-type boolean
                                      :member-name "isInherited"))
                                    (:shape-name
                                     "CompositeComponentTypeResponse"))

(smithy/sdk/shapes:define-map composite-component-types-request :key name
                              :value composite-component-type-request)

(smithy/sdk/shapes:define-map composite-component-types-response :key name
                              :value composite-component-type-response)

(smithy/sdk/shapes:define-structure composite-component-update-request
                                    common-lisp:nil
                                    ((update-type :target-type
                                      component-update-type :member-name
                                      "updateType")
                                     (description :target-type description
                                      :member-name "description")
                                     (property-updates :target-type
                                      property-requests :member-name
                                      "propertyUpdates")
                                     (property-group-updates :target-type
                                      component-property-group-requests
                                      :member-name "propertyGroupUpdates"))
                                    (:shape-name
                                     "CompositeComponentUpdateRequest"))

(smithy/sdk/shapes:define-map composite-component-updates-map-request :key
                              component-path :value
                              composite-component-update-request)

(smithy/sdk/shapes:define-map composite-components-map-request :key
                              component-path :value composite-component-request)

(smithy/sdk/shapes:define-map configuration :key name :value value)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error connector-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConnectorFailureException")
                                (:error-code 424))

(smithy/sdk/shapes:define-error connector-timeout-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConnectorTimeoutException")
                                (:error-code 424))

(smithy/sdk/shapes:define-structure create-component-type-request
                                    common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (is-singleton :target-type boolean
                                      :member-name "isSingleton")
                                     (component-type-id :target-type
                                      component-type-id :required common-lisp:t
                                      :member-name "componentTypeId")
                                     (description :target-type description
                                      :member-name "description")
                                     (property-definitions :target-type
                                      property-definitions-request :member-name
                                      "propertyDefinitions")
                                     (extends-from :target-type extends-from
                                      :member-name "extendsFrom")
                                     (functions :target-type functions-request
                                      :member-name "functions")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (property-groups :target-type
                                      property-groups-request :member-name
                                      "propertyGroups")
                                     (component-type-name :target-type
                                      component-type-name :member-name
                                      "componentTypeName")
                                     (composite-component-types :target-type
                                      composite-component-types-request
                                      :member-name "compositeComponentTypes"))
                                    (:shape-name "CreateComponentTypeRequest"))

(smithy/sdk/shapes:define-structure create-component-type-response
                                    common-lisp:nil
                                    ((arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "CreateComponentTypeResponse"))

(smithy/sdk/shapes:define-structure create-entity-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (entity-id :target-type entity-id
                                      :member-name "entityId")
                                     (entity-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "entityName")
                                     (description :target-type description
                                      :member-name "description")
                                     (components :target-type
                                      components-map-request :member-name
                                      "components")
                                     (composite-components :target-type
                                      composite-components-map-request
                                      :member-name "compositeComponents")
                                     (parent-entity-id :target-type
                                      parent-entity-id :member-name
                                      "parentEntityId")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateEntityRequest"))

(smithy/sdk/shapes:define-structure create-entity-response common-lisp:nil
                                    ((entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "CreateEntityResponse"))

(smithy/sdk/shapes:define-input create-metadata-transfer-job-request
                                common-lisp:nil
                                ((metadata-transfer-job-id :target-type id
                                  :member-name "metadataTransferJobId")
                                 (description :target-type description
                                  :member-name "description")
                                 (sources :target-type source-configurations
                                  :required common-lisp:t :member-name
                                  "sources")
                                 (destination :target-type
                                  destination-configuration :required
                                  common-lisp:t :member-name "destination"))
                                (:shape-name
                                 "CreateMetadataTransferJobRequest"))

(smithy/sdk/shapes:define-output create-metadata-transfer-job-response
                                 common-lisp:nil
                                 ((metadata-transfer-job-id :target-type id
                                   :required common-lisp:t :member-name
                                   "metadataTransferJobId")
                                  (arn :target-type twin-maker-arn :required
                                   common-lisp:t :member-name "arn")
                                  (creation-date-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationDateTime")
                                  (status :target-type
                                   metadata-transfer-job-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name
                                  "CreateMetadataTransferJobResponse"))

(smithy/sdk/shapes:define-structure create-scene-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (scene-id :target-type id :required
                                      common-lisp:t :member-name "sceneId")
                                     (content-location :target-type s3url
                                      :required common-lisp:t :member-name
                                      "contentLocation")
                                     (description :target-type description
                                      :member-name "description")
                                     (capabilities :target-type
                                      scene-capabilities :member-name
                                      "capabilities")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (scene-metadata :target-type
                                      scene-metadata-map :member-name
                                      "sceneMetadata"))
                                    (:shape-name "CreateSceneRequest"))

(smithy/sdk/shapes:define-structure create-scene-response common-lisp:nil
                                    ((arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime"))
                                    (:shape-name "CreateSceneResponse"))

(smithy/sdk/shapes:define-structure create-sync-job-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (sync-source :target-type sync-source
                                      :required common-lisp:t :member-name
                                      "syncSource")
                                     (sync-role :target-type role-arn :required
                                      common-lisp:t :member-name "syncRole")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateSyncJobRequest"))

(smithy/sdk/shapes:define-structure create-sync-job-response common-lisp:nil
                                    ((arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (state :target-type sync-job-state
                                      :required common-lisp:t :member-name
                                      "state"))
                                    (:shape-name "CreateSyncJobResponse"))

(smithy/sdk/shapes:define-structure create-workspace-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (description :target-type description
                                      :member-name "description")
                                     (s3location :target-type s3location
                                      :member-name "s3Location")
                                     (role :target-type role-arn :member-name
                                      "role")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateWorkspaceRequest"))

(smithy/sdk/shapes:define-structure create-workspace-response common-lisp:nil
                                    ((arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime"))
                                    (:shape-name "CreateWorkspaceResponse"))

(smithy/sdk/shapes:define-structure data-connector common-lisp:nil
                                    ((lambda :target-type lambda-function
                                      :member-name "lambda")
                                     (is-native :target-type boolean
                                      :member-name "isNative"))
                                    (:shape-name "DataConnector"))

(smithy/sdk/shapes:define-structure data-type common-lisp:nil
                                    ((type :target-type type :required
                                      common-lisp:t :member-name "type")
                                     (nested-type :target-type data-type
                                      :member-name "nestedType")
                                     (allowed-values :target-type
                                      data-value-list :member-name
                                      "allowedValues")
                                     (unit-of-measure :target-type string
                                      :member-name "unitOfMeasure")
                                     (relationship :target-type relationship
                                      :member-name "relationship"))
                                    (:shape-name "DataType"))

(smithy/sdk/shapes:define-structure data-value common-lisp:nil
                                    ((boolean-value :target-type boolean
                                      :member-name "booleanValue")
                                     (double-value :target-type double
                                      :member-name "doubleValue")
                                     (integer-value :target-type integer
                                      :member-name "integerValue")
                                     (long-value :target-type long :member-name
                                      "longValue")
                                     (string-value :target-type string
                                      :member-name "stringValue")
                                     (list-value :target-type data-value-list
                                      :member-name "listValue")
                                     (map-value :target-type data-value-map
                                      :member-name "mapValue")
                                     (relationship-value :target-type
                                      relationship-value :member-name
                                      "relationshipValue")
                                     (expression :target-type expression
                                      :member-name "expression"))
                                    (:shape-name "DataValue"))

(smithy/sdk/shapes:define-list data-value-list :member data-value)

(smithy/sdk/shapes:define-map data-value-map :key string :value data-value)

(smithy/sdk/shapes:define-structure delete-component-type-request
                                    common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (component-type-id :target-type
                                      component-type-id :required common-lisp:t
                                      :member-name "componentTypeId"))
                                    (:shape-name "DeleteComponentTypeRequest"))

(smithy/sdk/shapes:define-structure delete-component-type-response
                                    common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "DeleteComponentTypeResponse"))

(smithy/sdk/shapes:define-structure delete-entity-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId")
                                     (is-recursive :target-type boolean
                                      :member-name "isRecursive" :http-query
                                      "isRecursive"))
                                    (:shape-name "DeleteEntityRequest"))

(smithy/sdk/shapes:define-structure delete-entity-response common-lisp:nil
                                    ((state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "DeleteEntityResponse"))

(smithy/sdk/shapes:define-structure delete-scene-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (scene-id :target-type id :required
                                      common-lisp:t :member-name "sceneId"))
                                    (:shape-name "DeleteSceneRequest"))

(smithy/sdk/shapes:define-structure delete-scene-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteSceneResponse"))

(smithy/sdk/shapes:define-structure delete-sync-job-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (sync-source :target-type sync-source
                                      :required common-lisp:t :member-name
                                      "syncSource"))
                                    (:shape-name "DeleteSyncJobRequest"))

(smithy/sdk/shapes:define-structure delete-sync-job-response common-lisp:nil
                                    ((state :target-type sync-job-state
                                      :required common-lisp:t :member-name
                                      "state"))
                                    (:shape-name "DeleteSyncJobResponse"))

(smithy/sdk/shapes:define-structure delete-workspace-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name "DeleteWorkspaceRequest"))

(smithy/sdk/shapes:define-structure delete-workspace-response common-lisp:nil
                                    ((message :target-type
                                      workspace-delete-message :member-name
                                      "message"))
                                    (:shape-name "DeleteWorkspaceResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-configuration common-lisp:nil
                                    ((type :target-type destination-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (s3configuration :target-type
                                      s3destination-configuration :member-name
                                      "s3Configuration")
                                     (iot-twin-maker-configuration :target-type
                                      iot-twin-maker-destination-configuration
                                      :member-name
                                      "iotTwinMakerConfiguration"))
                                    (:shape-name "DestinationConfiguration"))

(smithy/sdk/shapes:define-type destination-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure entity-property-reference common-lisp:nil
                                    ((component-name :target-type name
                                      :member-name "componentName")
                                     (component-path :target-type
                                      component-path :member-name
                                      "componentPath")
                                     (external-id-property :target-type
                                      external-id-property :member-name
                                      "externalIdProperty")
                                     (entity-id :target-type entity-id
                                      :member-name "entityId")
                                     (property-name :target-type name :required
                                      common-lisp:t :member-name
                                      "propertyName"))
                                    (:shape-name "EntityPropertyReference"))

(smithy/sdk/shapes:define-list entity-summaries :member entity-summary)

(smithy/sdk/shapes:define-structure entity-summary common-lisp:nil
                                    ((entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId")
                                     (entity-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "entityName")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (parent-entity-id :target-type
                                      parent-entity-id :member-name
                                      "parentEntityId")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (has-child-entities :target-type boolean
                                      :member-name "hasChildEntities")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime"))
                                    (:shape-name "EntitySummary"))

(smithy/sdk/shapes:define-list entries :member property-value-entry)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((code :target-type error-code :member-name
                                      "code")
                                     (message :target-type error-message
                                      :member-name "message"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-list error-entries :member
                               batch-put-property-error-entry)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list errors :member batch-put-property-error)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execute-query-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (query-statement :target-type
                                      query-statement :required common-lisp:t
                                      :member-name "queryStatement")
                                     (max-results :target-type
                                      query-service-max-results :member-name
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ExecuteQueryRequest"))

(smithy/sdk/shapes:define-structure execute-query-response common-lisp:nil
                                    ((column-descriptions :target-type
                                      column-descriptions :member-name
                                      "columnDescriptions")
                                     (rows :target-type rows :member-name
                                      "rows")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ExecuteQueryResponse"))

(smithy/sdk/shapes:define-type expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list extends-from :member component-type-id)

(smithy/sdk/shapes:define-map external-id-property :key string :value string)

(smithy/sdk/shapes:define-structure filter-by-asset common-lisp:nil
                                    ((asset-id :target-type uuid :member-name
                                      "assetId")
                                     (asset-external-id :target-type
                                      site-wise-external-id :member-name
                                      "assetExternalId")
                                     (include-offspring :target-type boolean
                                      :member-name "includeOffspring")
                                     (include-asset-model :target-type boolean
                                      :member-name "includeAssetModel"))
                                    (:shape-name "FilterByAsset"))

(smithy/sdk/shapes:define-structure filter-by-asset-model common-lisp:nil
                                    ((asset-model-id :target-type uuid
                                      :member-name "assetModelId")
                                     (asset-model-external-id :target-type
                                      site-wise-external-id :member-name
                                      "assetModelExternalId")
                                     (include-offspring :target-type boolean
                                      :member-name "includeOffspring")
                                     (include-assets :target-type boolean
                                      :member-name "includeAssets"))
                                    (:shape-name "FilterByAssetModel"))

(smithy/sdk/shapes:define-structure filter-by-component-type common-lisp:nil
                                    ((component-type-id :target-type
                                      component-type-id :required common-lisp:t
                                      :member-name "componentTypeId"))
                                    (:shape-name "FilterByComponentType"))

(smithy/sdk/shapes:define-structure filter-by-entity common-lisp:nil
                                    ((entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId"))
                                    (:shape-name "FilterByEntity"))

(smithy/sdk/shapes:define-structure function-request common-lisp:nil
                                    ((required-properties :target-type
                                      required-properties :member-name
                                      "requiredProperties")
                                     (scope :target-type scope :member-name
                                      "scope")
                                     (implemented-by :target-type
                                      data-connector :member-name
                                      "implementedBy"))
                                    (:shape-name "FunctionRequest"))

(smithy/sdk/shapes:define-structure function-response common-lisp:nil
                                    ((required-properties :target-type
                                      required-properties :member-name
                                      "requiredProperties")
                                     (scope :target-type scope :member-name
                                      "scope")
                                     (implemented-by :target-type
                                      data-connector :member-name
                                      "implementedBy")
                                     (is-inherited :target-type boolean
                                      :member-name "isInherited"))
                                    (:shape-name "FunctionResponse"))

(smithy/sdk/shapes:define-map functions-request :key name :value
                              function-request)

(smithy/sdk/shapes:define-map functions-response :key name :value
                              function-response)

(smithy/sdk/shapes:define-map generated-scene-metadata-map :key name :value
                              scene-metadata-value)

(smithy/sdk/shapes:define-structure get-component-type-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (component-type-id :target-type
                                      component-type-id :required common-lisp:t
                                      :member-name "componentTypeId"))
                                    (:shape-name "GetComponentTypeRequest"))

(smithy/sdk/shapes:define-structure get-component-type-response common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (is-singleton :target-type boolean
                                      :member-name "isSingleton")
                                     (component-type-id :target-type
                                      component-type-id :required common-lisp:t
                                      :member-name "componentTypeId")
                                     (description :target-type description
                                      :member-name "description")
                                     (property-definitions :target-type
                                      property-definitions-response
                                      :member-name "propertyDefinitions")
                                     (extends-from :target-type extends-from
                                      :member-name "extendsFrom")
                                     (functions :target-type functions-response
                                      :member-name "functions")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (is-abstract :target-type boolean
                                      :member-name "isAbstract")
                                     (is-schema-initialized :target-type
                                      boolean :member-name
                                      "isSchemaInitialized")
                                     (status :target-type status :member-name
                                      "status")
                                     (property-groups :target-type
                                      property-groups-response :member-name
                                      "propertyGroups")
                                     (sync-source :target-type sync-source
                                      :member-name "syncSource")
                                     (component-type-name :target-type
                                      component-type-name :member-name
                                      "componentTypeName")
                                     (composite-component-types :target-type
                                      composite-component-types-response
                                      :member-name "compositeComponentTypes"))
                                    (:shape-name "GetComponentTypeResponse"))

(smithy/sdk/shapes:define-structure get-entity-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId"))
                                    (:shape-name "GetEntityRequest"))

(smithy/sdk/shapes:define-structure get-entity-response common-lisp:nil
                                    ((entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId")
                                     (entity-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "entityName")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "status")
                                     (workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (description :target-type description
                                      :member-name "description")
                                     (components :target-type components-map
                                      :member-name "components")
                                     (parent-entity-id :target-type
                                      parent-entity-id :required common-lisp:t
                                      :member-name "parentEntityId")
                                     (has-child-entities :target-type boolean
                                      :required common-lisp:t :member-name
                                      "hasChildEntities")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime")
                                     (sync-source :target-type sync-source
                                      :member-name "syncSource")
                                     (are-all-components-returned :target-type
                                      boolean :member-name
                                      "areAllComponentsReturned"))
                                    (:shape-name "GetEntityResponse"))

(smithy/sdk/shapes:define-input get-metadata-transfer-job-request
                                common-lisp:nil
                                ((metadata-transfer-job-id :target-type id
                                  :required common-lisp:t :member-name
                                  "metadataTransferJobId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetMetadataTransferJobRequest"))

(smithy/sdk/shapes:define-output get-metadata-transfer-job-response
                                 common-lisp:nil
                                 ((metadata-transfer-job-id :target-type id
                                   :required common-lisp:t :member-name
                                   "metadataTransferJobId")
                                  (arn :target-type twin-maker-arn :required
                                   common-lisp:t :member-name "arn")
                                  (description :target-type description
                                   :member-name "description")
                                  (sources :target-type source-configurations
                                   :required common-lisp:t :member-name
                                   "sources")
                                  (destination :target-type
                                   destination-configuration :required
                                   common-lisp:t :member-name "destination")
                                  (metadata-transfer-job-role :target-type
                                   role-arn :required common-lisp:t
                                   :member-name "metadataTransferJobRole")
                                  (report-url :target-type string :member-name
                                   "reportUrl")
                                  (creation-date-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationDateTime")
                                  (update-date-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "updateDateTime")
                                  (status :target-type
                                   metadata-transfer-job-status :required
                                   common-lisp:t :member-name "status")
                                  (progress :target-type
                                   metadata-transfer-job-progress :member-name
                                   "progress"))
                                 (:shape-name "GetMetadataTransferJobResponse"))

(smithy/sdk/shapes:define-structure get-pricing-plan-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "GetPricingPlanRequest"))

(smithy/sdk/shapes:define-structure get-pricing-plan-response common-lisp:nil
                                    ((current-pricing-plan :target-type
                                      pricing-plan :required common-lisp:t
                                      :member-name "currentPricingPlan")
                                     (pending-pricing-plan :target-type
                                      pricing-plan :member-name
                                      "pendingPricingPlan"))
                                    (:shape-name "GetPricingPlanResponse"))

(smithy/sdk/shapes:define-structure get-property-value-history-request
                                    common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (entity-id :target-type entity-id
                                      :member-name "entityId")
                                     (component-name :target-type name
                                      :member-name "componentName")
                                     (component-path :target-type
                                      component-path :member-name
                                      "componentPath")
                                     (component-type-id :target-type
                                      component-type-id :member-name
                                      "componentTypeId")
                                     (selected-properties :target-type
                                      selected-property-list :required
                                      common-lisp:t :member-name
                                      "selectedProperties")
                                     (property-filters :target-type
                                      property-filters :member-name
                                      "propertyFilters")
                                     (start-date-time :target-type timestamp
                                      :member-name "startDateTime")
                                     (end-date-time :target-type timestamp
                                      :member-name "endDateTime")
                                     (interpolation :target-type
                                      interpolation-parameters :member-name
                                      "interpolation")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (order-by-time :target-type order-by-time
                                      :member-name "orderByTime")
                                     (start-time :target-type time :member-name
                                      "startTime")
                                     (end-time :target-type time :member-name
                                      "endTime"))
                                    (:shape-name
                                     "GetPropertyValueHistoryRequest"))

(smithy/sdk/shapes:define-structure get-property-value-history-response
                                    common-lisp:nil
                                    ((property-values :target-type
                                      property-value-list :required
                                      common-lisp:t :member-name
                                      "propertyValues")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "GetPropertyValueHistoryResponse"))

(smithy/sdk/shapes:define-structure get-property-value-request common-lisp:nil
                                    ((component-name :target-type name
                                      :member-name "componentName")
                                     (component-path :target-type
                                      component-path :member-name
                                      "componentPath")
                                     (component-type-id :target-type
                                      component-type-id :member-name
                                      "componentTypeId")
                                     (entity-id :target-type entity-id
                                      :member-name "entityId")
                                     (selected-properties :target-type
                                      selected-property-list :required
                                      common-lisp:t :member-name
                                      "selectedProperties")
                                     (workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (property-group-name :target-type name
                                      :member-name "propertyGroupName")
                                     (tabular-conditions :target-type
                                      tabular-conditions :member-name
                                      "tabularConditions"))
                                    (:shape-name "GetPropertyValueRequest"))

(smithy/sdk/shapes:define-structure get-property-value-response common-lisp:nil
                                    ((property-values :target-type
                                      property-latest-value-map :member-name
                                      "propertyValues")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (tabular-property-values :target-type
                                      tabular-property-values :member-name
                                      "tabularPropertyValues"))
                                    (:shape-name "GetPropertyValueResponse"))

(smithy/sdk/shapes:define-structure get-scene-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (scene-id :target-type id :required
                                      common-lisp:t :member-name "sceneId"))
                                    (:shape-name "GetSceneRequest"))

(smithy/sdk/shapes:define-structure get-scene-response common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (scene-id :target-type id :required
                                      common-lisp:t :member-name "sceneId")
                                     (content-location :target-type s3url
                                      :required common-lisp:t :member-name
                                      "contentLocation")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime")
                                     (description :target-type description
                                      :member-name "description")
                                     (capabilities :target-type
                                      scene-capabilities :member-name
                                      "capabilities")
                                     (scene-metadata :target-type
                                      scene-metadata-map :member-name
                                      "sceneMetadata")
                                     (generated-scene-metadata :target-type
                                      generated-scene-metadata-map :member-name
                                      "generatedSceneMetadata")
                                     (error :target-type scene-error
                                      :member-name "error"))
                                    (:shape-name "GetSceneResponse"))

(smithy/sdk/shapes:define-structure get-sync-job-request common-lisp:nil
                                    ((sync-source :target-type sync-source
                                      :required common-lisp:t :member-name
                                      "syncSource")
                                     (workspace-id :target-type id :member-name
                                      "workspaceId" :http-query "workspace"))
                                    (:shape-name "GetSyncJobRequest"))

(smithy/sdk/shapes:define-structure get-sync-job-response common-lisp:nil
                                    ((arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (sync-source :target-type sync-source
                                      :required common-lisp:t :member-name
                                      "syncSource")
                                     (sync-role :target-type role-arn :required
                                      common-lisp:t :member-name "syncRole")
                                     (status :target-type sync-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime"))
                                    (:shape-name "GetSyncJobResponse"))

(smithy/sdk/shapes:define-structure get-workspace-request common-lisp:nil
                                    ((workspace-id :target-type id-or-arn
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name "GetWorkspaceRequest"))

(smithy/sdk/shapes:define-structure get-workspace-response common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (linked-services :target-type
                                      linked-services :member-name
                                      "linkedServices")
                                     (s3location :target-type s3location
                                      :member-name "s3Location")
                                     (role :target-type role-arn :member-name
                                      "role")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime"))
                                    (:shape-name "GetWorkspaceResponse"))

(smithy/sdk/shapes:define-type group-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure interpolation-parameters common-lisp:nil
                                    ((interpolation-type :target-type
                                      interpolation-type :member-name
                                      "interpolationType")
                                     (interval-in-seconds :target-type
                                      interval-in-seconds :member-name
                                      "intervalInSeconds"))
                                    (:shape-name "InterpolationParameters"))

(smithy/sdk/shapes:define-type interpolation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type interval-in-seconds smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure iot-site-wise-source-configuration
                                    common-lisp:nil
                                    ((filters :target-type
                                      iot-site-wise-source-configuration-filters
                                      :member-name "filters"))
                                    (:shape-name
                                     "IotSiteWiseSourceConfiguration"))

(smithy/sdk/shapes:define-union iot-site-wise-source-configuration-filter
                                common-lisp:nil
                                ((filter-by-asset-model :target-type
                                  filter-by-asset-model :member-name
                                  "filterByAssetModel")
                                 (filter-by-asset :target-type filter-by-asset
                                  :member-name "filterByAsset"))
                                (:shape-name
                                 "IotSiteWiseSourceConfigurationFilter"))

(smithy/sdk/shapes:define-list iot-site-wise-source-configuration-filters
                               :member
                               iot-site-wise-source-configuration-filter)

(smithy/sdk/shapes:define-structure iot-twin-maker-destination-configuration
                                    common-lisp:nil
                                    ((workspace :target-type twin-maker-arn
                                      :required common-lisp:t :member-name
                                      "workspace"))
                                    (:shape-name
                                     "IotTwinMakerDestinationConfiguration"))

(smithy/sdk/shapes:define-structure iot-twin-maker-source-configuration
                                    common-lisp:nil
                                    ((workspace :target-type twin-maker-arn
                                      :required common-lisp:t :member-name
                                      "workspace")
                                     (filters :target-type
                                      iot-twin-maker-source-configuration-filters
                                      :member-name "filters"))
                                    (:shape-name
                                     "IotTwinMakerSourceConfiguration"))

(smithy/sdk/shapes:define-union iot-twin-maker-source-configuration-filter
                                common-lisp:nil
                                ((filter-by-component-type :target-type
                                  filter-by-component-type :member-name
                                  "filterByComponentType")
                                 (filter-by-entity :target-type
                                  filter-by-entity :member-name
                                  "filterByEntity"))
                                (:shape-name
                                 "IotTwinMakerSourceConfigurationFilter"))

(smithy/sdk/shapes:define-list iot-twin-maker-source-configuration-filters
                               :member
                               iot-twin-maker-source-configuration-filter)

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-function common-lisp:nil
                                    ((arn :target-type lambda-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "LambdaFunction"))

(smithy/sdk/shapes:define-type linked-service smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list linked-services :member linked-service)

(smithy/sdk/shapes:define-union list-component-types-filter common-lisp:nil
                                ((extends-from :target-type component-type-id
                                  :member-name "extendsFrom")
                                 (namespace :target-type string :member-name
                                  "namespace")
                                 (is-abstract :target-type boolean :member-name
                                  "isAbstract"))
                                (:shape-name "ListComponentTypesFilter"))

(smithy/sdk/shapes:define-list list-component-types-filters :member
                               list-component-types-filter)

(smithy/sdk/shapes:define-structure list-component-types-request
                                    common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (filters :target-type
                                      list-component-types-filters :member-name
                                      "filters")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListComponentTypesRequest"))

(smithy/sdk/shapes:define-structure list-component-types-response
                                    common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (component-type-summaries :target-type
                                      component-type-summaries :required
                                      common-lisp:t :member-name
                                      "componentTypeSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListComponentTypesResponse"))

(smithy/sdk/shapes:define-input list-components-request common-lisp:nil
                                ((workspace-id :target-type id :required
                                  common-lisp:t :member-name "workspaceId"
                                  :http-label common-lisp:t)
                                 (entity-id :target-type entity-id :required
                                  common-lisp:t :member-name "entityId"
                                  :http-label common-lisp:t)
                                 (component-path :target-type component-path
                                  :member-name "componentPath")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListComponentsRequest"))

(smithy/sdk/shapes:define-output list-components-response common-lisp:nil
                                 ((component-summaries :target-type
                                   component-summaries :required common-lisp:t
                                   :member-name "componentSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListComponentsResponse"))

(smithy/sdk/shapes:define-union list-entities-filter common-lisp:nil
                                ((parent-entity-id :target-type
                                  parent-entity-id :member-name
                                  "parentEntityId")
                                 (component-type-id :target-type
                                  component-type-id :member-name
                                  "componentTypeId")
                                 (external-id :target-type string :member-name
                                  "externalId"))
                                (:shape-name "ListEntitiesFilter"))

(smithy/sdk/shapes:define-list list-entities-filters :member
                               list-entities-filter)

(smithy/sdk/shapes:define-structure list-entities-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (filters :target-type
                                      list-entities-filters :member-name
                                      "filters")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListEntitiesRequest"))

(smithy/sdk/shapes:define-structure list-entities-response common-lisp:nil
                                    ((entity-summaries :target-type
                                      entity-summaries :member-name
                                      "entitySummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListEntitiesResponse"))

(smithy/sdk/shapes:define-union list-metadata-transfer-jobs-filter
                                common-lisp:nil
                                ((workspace-id :target-type id :member-name
                                  "workspaceId")
                                 (state :target-type
                                  metadata-transfer-job-state :member-name
                                  "state"))
                                (:shape-name "ListMetadataTransferJobsFilter"))

(smithy/sdk/shapes:define-list list-metadata-transfer-jobs-filters :member
                               list-metadata-transfer-jobs-filter)

(smithy/sdk/shapes:define-input list-metadata-transfer-jobs-request
                                common-lisp:nil
                                ((source-type :target-type source-type
                                  :required common-lisp:t :member-name
                                  "sourceType")
                                 (destination-type :target-type
                                  destination-type :required common-lisp:t
                                  :member-name "destinationType")
                                 (filters :target-type
                                  list-metadata-transfer-jobs-filters
                                  :member-name "filters")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListMetadataTransferJobsRequest"))

(smithy/sdk/shapes:define-output list-metadata-transfer-jobs-response
                                 common-lisp:nil
                                 ((metadata-transfer-job-summaries :target-type
                                   metadata-transfer-job-summaries :required
                                   common-lisp:t :member-name
                                   "metadataTransferJobSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListMetadataTransferJobsResponse"))

(smithy/sdk/shapes:define-input list-properties-request common-lisp:nil
                                ((workspace-id :target-type id :required
                                  common-lisp:t :member-name "workspaceId"
                                  :http-label common-lisp:t)
                                 (component-name :target-type name :member-name
                                  "componentName")
                                 (component-path :target-type component-path
                                  :member-name "componentPath")
                                 (entity-id :target-type entity-id :required
                                  common-lisp:t :member-name "entityId")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListPropertiesRequest"))

(smithy/sdk/shapes:define-output list-properties-response common-lisp:nil
                                 ((property-summaries :target-type
                                   property-summaries :required common-lisp:t
                                   :member-name "propertySummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPropertiesResponse"))

(smithy/sdk/shapes:define-structure list-scenes-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListScenesRequest"))

(smithy/sdk/shapes:define-structure list-scenes-response common-lisp:nil
                                    ((scene-summaries :target-type
                                      scene-summaries :member-name
                                      "sceneSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListScenesResponse"))

(smithy/sdk/shapes:define-structure list-sync-jobs-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListSyncJobsRequest"))

(smithy/sdk/shapes:define-structure list-sync-jobs-response common-lisp:nil
                                    ((sync-job-summaries :target-type
                                      sync-job-summaries :member-name
                                      "syncJobSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListSyncJobsResponse"))

(smithy/sdk/shapes:define-structure list-sync-resources-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (sync-source :target-type sync-source
                                      :required common-lisp:t :member-name
                                      "syncSource")
                                     (filters :target-type
                                      sync-resource-filters :member-name
                                      "filters")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListSyncResourcesRequest"))

(smithy/sdk/shapes:define-structure list-sync-resources-response
                                    common-lisp:nil
                                    ((sync-resources :target-type
                                      sync-resource-summaries :member-name
                                      "syncResources")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListSyncResourcesResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type twin-maker-arn
                                      :required common-lisp:t :member-name
                                      "resourceARN")
                                     (max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-workspaces-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListWorkspacesRequest"))

(smithy/sdk/shapes:define-structure list-workspaces-response common-lisp:nil
                                    ((workspace-summaries :target-type
                                      workspace-summaries :member-name
                                      "workspaceSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListWorkspacesResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metadata-transfer-job-progress
                                    common-lisp:nil
                                    ((total-count :target-type integer
                                      :member-name "totalCount")
                                     (succeeded-count :target-type integer
                                      :member-name "succeededCount")
                                     (skipped-count :target-type integer
                                      :member-name "skippedCount")
                                     (failed-count :target-type integer
                                      :member-name "failedCount"))
                                    (:shape-name "MetadataTransferJobProgress"))

(smithy/sdk/shapes:define-type metadata-transfer-job-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metadata-transfer-job-status
                                    common-lisp:nil
                                    ((state :target-type
                                      metadata-transfer-job-state :member-name
                                      "state")
                                     (error :target-type error-details
                                      :member-name "error")
                                     (queued-position :target-type integer
                                      :member-name "queuedPosition"))
                                    (:shape-name "MetadataTransferJobStatus"))

(smithy/sdk/shapes:define-list metadata-transfer-job-summaries :member
                               metadata-transfer-job-summary)

(smithy/sdk/shapes:define-structure metadata-transfer-job-summary
                                    common-lisp:nil
                                    ((metadata-transfer-job-id :target-type id
                                      :required common-lisp:t :member-name
                                      "metadataTransferJobId")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime")
                                     (status :target-type
                                      metadata-transfer-job-status :required
                                      common-lisp:t :member-name "status")
                                     (progress :target-type
                                      metadata-transfer-job-progress
                                      :member-name "progress"))
                                    (:shape-name "MetadataTransferJobSummary"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure order-by common-lisp:nil
                                    ((order :target-type order :member-name
                                      "order")
                                     (property-name :target-type string
                                      :required common-lisp:t :member-name
                                      "propertyName"))
                                    (:shape-name "OrderBy"))

(smithy/sdk/shapes:define-list order-by-list :member order-by)

(smithy/sdk/shapes:define-type order-by-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parent-entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parent-entity-update-request
                                    common-lisp:nil
                                    ((update-type :target-type
                                      parent-entity-update-type :required
                                      common-lisp:t :member-name "updateType")
                                     (parent-entity-id :target-type
                                      parent-entity-id :member-name
                                      "parentEntityId"))
                                    (:shape-name "ParentEntityUpdateRequest"))

(smithy/sdk/shapes:define-type parent-entity-update-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pricing-bundles :member bundle-name)

(smithy/sdk/shapes:define-type pricing-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pricing-plan common-lisp:nil
                                    ((billable-entity-count :target-type long
                                      :member-name "billableEntityCount")
                                     (bundle-information :target-type
                                      bundle-information :member-name
                                      "bundleInformation")
                                     (effective-date-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "effectiveDateTime")
                                     (pricing-mode :target-type pricing-mode
                                      :required common-lisp:t :member-name
                                      "pricingMode")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime")
                                     (update-reason :target-type update-reason
                                      :required common-lisp:t :member-name
                                      "updateReason"))
                                    (:shape-name "PricingPlan"))

(smithy/sdk/shapes:define-type pricing-tier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure property-definition-request common-lisp:nil
                                    ((data-type :target-type data-type
                                      :member-name "dataType")
                                     (is-required-in-entity :target-type
                                      boolean :member-name
                                      "isRequiredInEntity")
                                     (is-external-id :target-type boolean
                                      :member-name "isExternalId")
                                     (is-stored-externally :target-type boolean
                                      :member-name "isStoredExternally")
                                     (is-time-series :target-type boolean
                                      :member-name "isTimeSeries")
                                     (default-value :target-type data-value
                                      :member-name "defaultValue")
                                     (configuration :target-type configuration
                                      :member-name "configuration")
                                     (display-name :target-type
                                      property-display-name :member-name
                                      "displayName"))
                                    (:shape-name "PropertyDefinitionRequest"))

(smithy/sdk/shapes:define-structure property-definition-response
                                    common-lisp:nil
                                    ((data-type :target-type data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (is-time-series :target-type boolean
                                      :required common-lisp:t :member-name
                                      "isTimeSeries")
                                     (is-required-in-entity :target-type
                                      boolean :required common-lisp:t
                                      :member-name "isRequiredInEntity")
                                     (is-external-id :target-type boolean
                                      :required common-lisp:t :member-name
                                      "isExternalId")
                                     (is-stored-externally :target-type boolean
                                      :required common-lisp:t :member-name
                                      "isStoredExternally")
                                     (is-imported :target-type boolean
                                      :required common-lisp:t :member-name
                                      "isImported")
                                     (is-final :target-type boolean :required
                                      common-lisp:t :member-name "isFinal")
                                     (is-inherited :target-type boolean
                                      :required common-lisp:t :member-name
                                      "isInherited")
                                     (default-value :target-type data-value
                                      :member-name "defaultValue")
                                     (configuration :target-type configuration
                                      :member-name "configuration")
                                     (display-name :target-type
                                      property-display-name :member-name
                                      "displayName"))
                                    (:shape-name "PropertyDefinitionResponse"))

(smithy/sdk/shapes:define-map property-definitions-request :key name :value
                              property-definition-request)

(smithy/sdk/shapes:define-map property-definitions-response :key name :value
                              property-definition-response)

(smithy/sdk/shapes:define-type property-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure property-filter common-lisp:nil
                                    ((property-name :target-type string
                                      :member-name "propertyName")
                                     (operator :target-type string :member-name
                                      "operator")
                                     (value :target-type data-value
                                      :member-name "value"))
                                    (:shape-name "PropertyFilter"))

(smithy/sdk/shapes:define-list property-filters :member property-filter)

(smithy/sdk/shapes:define-structure property-group-request common-lisp:nil
                                    ((group-type :target-type group-type
                                      :member-name "groupType")
                                     (property-names :target-type
                                      property-names :member-name
                                      "propertyNames"))
                                    (:shape-name "PropertyGroupRequest"))

(smithy/sdk/shapes:define-structure property-group-response common-lisp:nil
                                    ((group-type :target-type group-type
                                      :required common-lisp:t :member-name
                                      "groupType")
                                     (property-names :target-type
                                      property-names :required common-lisp:t
                                      :member-name "propertyNames")
                                     (is-inherited :target-type boolean
                                      :required common-lisp:t :member-name
                                      "isInherited"))
                                    (:shape-name "PropertyGroupResponse"))

(smithy/sdk/shapes:define-type property-group-update-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map property-groups-request :key name :value
                              property-group-request)

(smithy/sdk/shapes:define-map property-groups-response :key name :value
                              property-group-response)

(smithy/sdk/shapes:define-structure property-latest-value common-lisp:nil
                                    ((property-reference :target-type
                                      entity-property-reference :required
                                      common-lisp:t :member-name
                                      "propertyReference")
                                     (property-value :target-type data-value
                                      :member-name "propertyValue"))
                                    (:shape-name "PropertyLatestValue"))

(smithy/sdk/shapes:define-map property-latest-value-map :key name :value
                              property-latest-value)

(smithy/sdk/shapes:define-list property-names :member name)

(smithy/sdk/shapes:define-structure property-request common-lisp:nil
                                    ((definition :target-type
                                      property-definition-request :member-name
                                      "definition")
                                     (value :target-type data-value
                                      :member-name "value")
                                     (update-type :target-type
                                      property-update-type :member-name
                                      "updateType"))
                                    (:shape-name "PropertyRequest"))

(smithy/sdk/shapes:define-map property-requests :key name :value
                              property-request)

(smithy/sdk/shapes:define-structure property-response common-lisp:nil
                                    ((definition :target-type
                                      property-definition-response :member-name
                                      "definition")
                                     (value :target-type data-value
                                      :member-name "value")
                                     (are-all-property-values-returned
                                      :target-type boolean :member-name
                                      "areAllPropertyValuesReturned"))
                                    (:shape-name "PropertyResponse"))

(smithy/sdk/shapes:define-map property-responses :key name :value
                              property-response)

(smithy/sdk/shapes:define-list property-summaries :member property-summary)

(smithy/sdk/shapes:define-structure property-summary common-lisp:nil
                                    ((definition :target-type
                                      property-definition-response :member-name
                                      "definition")
                                     (property-name :target-type name :required
                                      common-lisp:t :member-name
                                      "propertyName")
                                     (value :target-type data-value
                                      :member-name "value")
                                     (are-all-property-values-returned
                                      :target-type boolean :member-name
                                      "areAllPropertyValuesReturned"))
                                    (:shape-name "PropertySummary"))

(smithy/sdk/shapes:define-map property-table-value :key name :value data-value)

(smithy/sdk/shapes:define-type property-update-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure property-value common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "timestamp")
                                     (value :target-type data-value :required
                                      common-lisp:t :member-name "value")
                                     (time :target-type time :member-name
                                      "time"))
                                    (:shape-name "PropertyValue"))

(smithy/sdk/shapes:define-structure property-value-entry common-lisp:nil
                                    ((entity-property-reference :target-type
                                      entity-property-reference :required
                                      common-lisp:t :member-name
                                      "entityPropertyReference")
                                     (property-values :target-type
                                      property-values :member-name
                                      "propertyValues"))
                                    (:shape-name "PropertyValueEntry"))

(smithy/sdk/shapes:define-structure property-value-history common-lisp:nil
                                    ((entity-property-reference :target-type
                                      entity-property-reference :required
                                      common-lisp:t :member-name
                                      "entityPropertyReference")
                                     (values :target-type values :member-name
                                      "values"))
                                    (:shape-name "PropertyValueHistory"))

(smithy/sdk/shapes:define-list property-value-list :member
                               property-value-history)

(smithy/sdk/shapes:define-list property-values :member property-value)

(smithy/sdk/shapes:define-type query-result-value
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-type query-service-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type query-statement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error query-timeout-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "QueryTimeoutException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure relationship common-lisp:nil
                                    ((target-component-type-id :target-type
                                      component-type-id :member-name
                                      "targetComponentTypeId")
                                     (relationship-type :target-type string
                                      :member-name "relationshipType"))
                                    (:shape-name "Relationship"))

(smithy/sdk/shapes:define-structure relationship-value common-lisp:nil
                                    ((target-entity-id :target-type entity-id
                                      :member-name "targetEntityId")
                                     (target-component-name :target-type name
                                      :member-name "targetComponentName"))
                                    (:shape-name "RelationshipValue"))

(smithy/sdk/shapes:define-list required-properties :member name)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure row common-lisp:nil
                                    ((row-data :target-type row-data
                                      :member-name "rowData"))
                                    (:shape-name "Row"))

(smithy/sdk/shapes:define-list row-data :member query-result-value)

(smithy/sdk/shapes:define-list rows :member row)

(smithy/sdk/shapes:define-structure s3destination-configuration common-lisp:nil
                                    ((location :target-type
                                      s3destination-location :required
                                      common-lisp:t :member-name "location"))
                                    (:shape-name "S3DestinationConfiguration"))

(smithy/sdk/shapes:define-type s3destination-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3source-configuration common-lisp:nil
                                    ((location :target-type s3source-location
                                      :required common-lisp:t :member-name
                                      "location"))
                                    (:shape-name "S3SourceConfiguration"))

(smithy/sdk/shapes:define-type s3source-location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scene-capabilities :member scene-capability)

(smithy/sdk/shapes:define-type scene-capability smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scene-error common-lisp:nil
                                    ((code :target-type scene-error-code
                                      :member-name "code")
                                     (message :target-type error-message
                                      :member-name "message"))
                                    (:shape-name "SceneError"))

(smithy/sdk/shapes:define-type scene-error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map scene-metadata-map :key name :value
                              scene-metadata-value)

(smithy/sdk/shapes:define-type scene-metadata-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scene-summaries :member scene-summary)

(smithy/sdk/shapes:define-structure scene-summary common-lisp:nil
                                    ((scene-id :target-type id :required
                                      common-lisp:t :member-name "sceneId")
                                     (content-location :target-type s3url
                                      :required common-lisp:t :member-name
                                      "contentLocation")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "SceneSummary"))

(smithy/sdk/shapes:define-type scope smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list selected-property-list :member string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type site-wise-external-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-configuration common-lisp:nil
                                    ((type :target-type source-type :required
                                      common-lisp:t :member-name "type")
                                     (s3configuration :target-type
                                      s3source-configuration :member-name
                                      "s3Configuration")
                                     (iot-site-wise-configuration :target-type
                                      iot-site-wise-source-configuration
                                      :member-name "iotSiteWiseConfiguration")
                                     (iot-twin-maker-configuration :target-type
                                      iot-twin-maker-source-configuration
                                      :member-name
                                      "iotTwinMakerConfiguration"))
                                    (:shape-name "SourceConfiguration"))

(smithy/sdk/shapes:define-list source-configurations :member
                               source-configuration)

(smithy/sdk/shapes:define-type source-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure status common-lisp:nil
                                    ((state :target-type state :member-name
                                      "state")
                                     (error :target-type error-details
                                      :member-name "error"))
                                    (:shape-name "Status"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sync-job-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sync-job-status common-lisp:nil
                                    ((state :target-type sync-job-state
                                      :member-name "state")
                                     (error :target-type error-details
                                      :member-name "error"))
                                    (:shape-name "SyncJobStatus"))

(smithy/sdk/shapes:define-list sync-job-summaries :member sync-job-summary)

(smithy/sdk/shapes:define-structure sync-job-summary common-lisp:nil
                                    ((arn :target-type twin-maker-arn
                                      :member-name "arn")
                                     (workspace-id :target-type id :member-name
                                      "workspaceId")
                                     (sync-source :target-type sync-source
                                      :member-name "syncSource")
                                     (status :target-type sync-job-status
                                      :member-name "status")
                                     (creation-date-time :target-type timestamp
                                      :member-name "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :member-name "updateDateTime"))
                                    (:shape-name "SyncJobSummary"))

(smithy/sdk/shapes:define-union sync-resource-filter common-lisp:nil
                                ((state :target-type sync-resource-state
                                  :member-name "state")
                                 (resource-type :target-type sync-resource-type
                                  :member-name "resourceType")
                                 (resource-id :target-type id :member-name
                                  "resourceId")
                                 (external-id :target-type id :member-name
                                  "externalId"))
                                (:shape-name "SyncResourceFilter"))

(smithy/sdk/shapes:define-list sync-resource-filters :member
                               sync-resource-filter)

(smithy/sdk/shapes:define-type sync-resource-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sync-resource-status common-lisp:nil
                                    ((state :target-type sync-resource-state
                                      :member-name "state")
                                     (error :target-type error-details
                                      :member-name "error"))
                                    (:shape-name "SyncResourceStatus"))

(smithy/sdk/shapes:define-list sync-resource-summaries :member
                               sync-resource-summary)

(smithy/sdk/shapes:define-structure sync-resource-summary common-lisp:nil
                                    ((resource-type :target-type
                                      sync-resource-type :member-name
                                      "resourceType")
                                     (external-id :target-type id :member-name
                                      "externalId")
                                     (resource-id :target-type id :member-name
                                      "resourceId")
                                     (status :target-type sync-resource-status
                                      :member-name "status")
                                     (update-date-time :target-type timestamp
                                      :member-name "updateDateTime"))
                                    (:shape-name "SyncResourceSummary"))

(smithy/sdk/shapes:define-type sync-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sync-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tabular-conditions common-lisp:nil
                                    ((order-by :target-type order-by-list
                                      :member-name "orderBy")
                                     (property-filters :target-type
                                      property-filters :member-name
                                      "propertyFilters"))
                                    (:shape-name "TabularConditions"))

(smithy/sdk/shapes:define-list tabular-property-value :member
                               property-table-value)

(smithy/sdk/shapes:define-list tabular-property-values :member
                               tabular-property-value)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type twin-maker-arn
                                      :required common-lisp:t :member-name
                                      "resourceARN")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type twin-maker-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type twin-maker-arn
                                      :required common-lisp:t :member-name
                                      "resourceARN" :http-query "resourceARN")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-component-type-request
                                    common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (is-singleton :target-type boolean
                                      :member-name "isSingleton")
                                     (component-type-id :target-type
                                      component-type-id :required common-lisp:t
                                      :member-name "componentTypeId")
                                     (description :target-type description
                                      :member-name "description")
                                     (property-definitions :target-type
                                      property-definitions-request :member-name
                                      "propertyDefinitions")
                                     (extends-from :target-type extends-from
                                      :member-name "extendsFrom")
                                     (functions :target-type functions-request
                                      :member-name "functions")
                                     (property-groups :target-type
                                      property-groups-request :member-name
                                      "propertyGroups")
                                     (component-type-name :target-type
                                      component-type-name :member-name
                                      "componentTypeName")
                                     (composite-component-types :target-type
                                      composite-component-types-request
                                      :member-name "compositeComponentTypes"))
                                    (:shape-name "UpdateComponentTypeRequest"))

(smithy/sdk/shapes:define-structure update-component-type-response
                                    common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (component-type-id :target-type
                                      component-type-id :required common-lisp:t
                                      :member-name "componentTypeId")
                                     (state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "UpdateComponentTypeResponse"))

(smithy/sdk/shapes:define-structure update-entity-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId")
                                     (entity-name :target-type entity-name
                                      :member-name "entityName")
                                     (description :target-type description
                                      :member-name "description")
                                     (component-updates :target-type
                                      component-updates-map-request
                                      :member-name "componentUpdates")
                                     (composite-component-updates :target-type
                                      composite-component-updates-map-request
                                      :member-name "compositeComponentUpdates")
                                     (parent-entity-update :target-type
                                      parent-entity-update-request :member-name
                                      "parentEntityUpdate"))
                                    (:shape-name "UpdateEntityRequest"))

(smithy/sdk/shapes:define-structure update-entity-response common-lisp:nil
                                    ((update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime")
                                     (state :target-type state :required
                                      common-lisp:t :member-name "state"))
                                    (:shape-name "UpdateEntityResponse"))

(smithy/sdk/shapes:define-structure update-pricing-plan-request common-lisp:nil
                                    ((pricing-mode :target-type pricing-mode
                                      :required common-lisp:t :member-name
                                      "pricingMode")
                                     (bundle-names :target-type pricing-bundles
                                      :member-name "bundleNames"))
                                    (:shape-name "UpdatePricingPlanRequest"))

(smithy/sdk/shapes:define-structure update-pricing-plan-response
                                    common-lisp:nil
                                    ((current-pricing-plan :target-type
                                      pricing-plan :required common-lisp:t
                                      :member-name "currentPricingPlan")
                                     (pending-pricing-plan :target-type
                                      pricing-plan :member-name
                                      "pendingPricingPlan"))
                                    (:shape-name "UpdatePricingPlanResponse"))

(smithy/sdk/shapes:define-type update-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure update-scene-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (scene-id :target-type id :required
                                      common-lisp:t :member-name "sceneId")
                                     (content-location :target-type s3url
                                      :member-name "contentLocation")
                                     (description :target-type description
                                      :member-name "description")
                                     (capabilities :target-type
                                      scene-capabilities :member-name
                                      "capabilities")
                                     (scene-metadata :target-type
                                      scene-metadata-map :member-name
                                      "sceneMetadata"))
                                    (:shape-name "UpdateSceneRequest"))

(smithy/sdk/shapes:define-structure update-scene-response common-lisp:nil
                                    ((update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime"))
                                    (:shape-name "UpdateSceneResponse"))

(smithy/sdk/shapes:define-structure update-workspace-request common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (description :target-type description
                                      :member-name "description")
                                     (role :target-type role-arn :member-name
                                      "role")
                                     (s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name "UpdateWorkspaceRequest"))

(smithy/sdk/shapes:define-structure update-workspace-response common-lisp:nil
                                    ((update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime"))
                                    (:shape-name "UpdateWorkspaceResponse"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list values :member property-value)

(smithy/sdk/shapes:define-type workspace-delete-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workspace-summaries :member workspace-summary)

(smithy/sdk/shapes:define-structure workspace-summary common-lisp:nil
                                    ((workspace-id :target-type id :required
                                      common-lisp:t :member-name "workspaceId")
                                     (arn :target-type twin-maker-arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (linked-services :target-type
                                      linked-services :member-name
                                      "linkedServices")
                                     (creation-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationDateTime")
                                     (update-date-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "updateDateTime"))
                                    (:shape-name "WorkspaceSummary"))

(smithy/sdk/operation:define-operation batch-put-property-values :shape-name
                                       "BatchPutPropertyValues" :input
                                       batch-put-property-values-request
                                       :output
                                       batch-put-property-values-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/entity-properties"
                                       :code 200 :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation cancel-metadata-transfer-job :shape-name
                                       "CancelMetadataTransferJob" :input
                                       cancel-metadata-transfer-job-request
                                       :output
                                       cancel-metadata-transfer-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/metadata-transfer-jobs/{metadataTransferJobId}/cancel"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-component-type :shape-name
                                       "CreateComponentType" :input
                                       create-component-type-request :output
                                       create-component-type-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/component-types/{componentTypeId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-entity :shape-name "CreateEntity"
                                       :input create-entity-request :output
                                       create-entity-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/entities"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-metadata-transfer-job :shape-name
                                       "CreateMetadataTransferJob" :input
                                       create-metadata-transfer-job-request
                                       :output
                                       create-metadata-transfer-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/metadata-transfer-jobs" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-scene :shape-name "CreateScene"
                                       :input create-scene-request :output
                                       create-scene-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/scenes" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-sync-job :shape-name
                                       "CreateSyncJob" :input
                                       create-sync-job-request :output
                                       create-sync-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/sync-jobs/{syncSource}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation create-workspace :shape-name
                                       "CreateWorkspace" :input
                                       create-workspace-request :output
                                       create-workspace-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-component-type :shape-name
                                       "DeleteComponentType" :input
                                       delete-component-type-request :output
                                       delete-component-type-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/component-types/{componentTypeId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-entity :shape-name "DeleteEntity"
                                       :input delete-entity-request :output
                                       delete-entity-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/entities/{entityId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-scene :shape-name "DeleteScene"
                                       :input delete-scene-request :output
                                       delete-scene-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/scenes/{sceneId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-sync-job :shape-name
                                       "DeleteSyncJob" :input
                                       delete-sync-job-request :output
                                       delete-sync-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/sync-jobs/{syncSource}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-workspace :shape-name
                                       "DeleteWorkspace" :input
                                       delete-workspace-request :output
                                       delete-workspace-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation execute-query :shape-name "ExecuteQuery"
                                       :input execute-query-request :output
                                       execute-query-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        query-timeout-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/queries/execution"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-component-type :shape-name
                                       "GetComponentType" :input
                                       get-component-type-request :output
                                       get-component-type-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/component-types/{componentTypeId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-entity :shape-name "GetEntity"
                                       :input get-entity-request :output
                                       get-entity-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/entities/{entityId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-metadata-transfer-job :shape-name
                                       "GetMetadataTransferJob" :input
                                       get-metadata-transfer-job-request
                                       :output
                                       get-metadata-transfer-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/metadata-transfer-jobs/{metadataTransferJobId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-pricing-plan :shape-name
                                       "GetPricingPlan" :input
                                       get-pricing-plan-request :output
                                       get-pricing-plan-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/pricingplan" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-property-value :shape-name
                                       "GetPropertyValue" :input
                                       get-property-value-request :output
                                       get-property-value-response :errors
                                       (access-denied-exception
                                        connector-failure-exception
                                        connector-timeout-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/entity-properties/value"
                                       :code 200 :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation get-property-value-history :shape-name
                                       "GetPropertyValueHistory" :input
                                       get-property-value-history-request
                                       :output
                                       get-property-value-history-response
                                       :errors
                                       (access-denied-exception
                                        connector-failure-exception
                                        connector-timeout-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/entity-properties/history"
                                       :code 200 :endpoint-host-prefix "data.")

(smithy/sdk/operation:define-operation get-scene :shape-name "GetScene" :input
                                       get-scene-request :output
                                       get-scene-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/scenes/{sceneId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-sync-job :shape-name "GetSyncJob"
                                       :input get-sync-job-request :output
                                       get-sync-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sync-jobs/{syncSource}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-workspace :shape-name "GetWorkspace"
                                       :input get-workspace-request :output
                                       get-workspace-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-component-types :shape-name
                                       "ListComponentTypes" :input
                                       list-component-types-request :output
                                       list-component-types-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/component-types-list"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-components :shape-name
                                       "ListComponents" :input
                                       list-components-request :output
                                       list-components-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/entities/{entityId}/components-list"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-entities :shape-name "ListEntities"
                                       :input list-entities-request :output
                                       list-entities-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/entities-list"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-metadata-transfer-jobs :shape-name
                                       "ListMetadataTransferJobs" :input
                                       list-metadata-transfer-jobs-request
                                       :output
                                       list-metadata-transfer-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/metadata-transfer-jobs-list" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-properties :shape-name
                                       "ListProperties" :input
                                       list-properties-request :output
                                       list-properties-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/properties-list"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-scenes :shape-name "ListScenes"
                                       :input list-scenes-request :output
                                       list-scenes-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/scenes-list"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-sync-jobs :shape-name
                                       "ListSyncJobs" :input
                                       list-sync-jobs-request :output
                                       list-sync-jobs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/sync-jobs-list"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-sync-resources :shape-name
                                       "ListSyncResources" :input
                                       list-sync-resources-request :output
                                       list-sync-resources-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/sync-jobs/{syncSource}/resources-list"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/tags-list" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-workspaces :shape-name
                                       "ListWorkspaces" :input
                                       list-workspaces-request :output
                                       list-workspaces-response :errors
                                       (internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/workspaces-list"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri "/tags" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri "/tags" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-component-type :shape-name
                                       "UpdateComponentType" :input
                                       update-component-type-request :output
                                       update-component-type-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}/component-types/{componentTypeId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-entity :shape-name "UpdateEntity"
                                       :input update-entity-request :output
                                       update-entity-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}/entities/{entityId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-pricing-plan :shape-name
                                       "UpdatePricingPlan" :input
                                       update-pricing-plan-request :output
                                       update-pricing-plan-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/pricingplan" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-scene :shape-name "UpdateScene"
                                       :input update-scene-request :output
                                       update-scene-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}/scenes/{sceneId}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-workspace :shape-name
                                       "UpdateWorkspace" :input
                                       update-workspace-request :output
                                       update-workspace-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}" :code 200
                                       :endpoint-host-prefix "api.")
