(uiop/package:define-package #:pira/iotfleetwise (:use)
                             (:export #:actuator #:amazon-resource-name
                              #:associate-vehicle-fleet
                              #:associate-vehicle-fleet-request
                              #:associate-vehicle-fleet-response #:attribute
                              #:batch-create-vehicle
                              #:batch-create-vehicle-request
                              #:batch-create-vehicle-response
                              #:batch-update-vehicle
                              #:batch-update-vehicle-request
                              #:batch-update-vehicle-response #:branch
                              #:campaign-resource #:campaign-status
                              #:campaign-summary #:can-dbc-definition
                              #:can-interface #:can-interface-name #:can-signal
                              #:can-signal-name
                              #:cloud-watch-log-delivery-options
                              #:cloud-watch-log-group-name #:collection-scheme
                              #:compression #:condition-based-collection-scheme
                              #:condition-based-signal-fetch-config
                              #:create-campaign #:create-campaign-request
                              #:create-campaign-response
                              #:create-decoder-manifest
                              #:create-decoder-manifest-request
                              #:create-decoder-manifest-response #:create-fleet
                              #:create-fleet-request #:create-fleet-response
                              #:create-model-manifest
                              #:create-model-manifest-request
                              #:create-model-manifest-response
                              #:create-signal-catalog
                              #:create-signal-catalog-request
                              #:create-signal-catalog-response
                              #:create-state-template #:create-vehicle
                              #:create-vehicle-error #:create-vehicle-request
                              #:create-vehicle-request-item
                              #:create-vehicle-response
                              #:create-vehicle-response-item
                              #:custom-decoding-id #:custom-decoding-interface
                              #:custom-decoding-signal
                              #:custom-decoding-signal-interface-name
                              #:custom-property #:custom-struct
                              #:data-destination-config
                              #:data-destination-configs
                              #:data-extra-dimension-node-path-list
                              #:data-format #:data-partition
                              #:data-partition-id
                              #:data-partition-storage-options
                              #:data-partition-upload-options #:data-partitions
                              #:decoder-manifest-resource
                              #:decoder-manifest-summary
                              #:default-for-unmapped-signals-type
                              #:delete-campaign #:delete-campaign-request
                              #:delete-campaign-response
                              #:delete-decoder-manifest
                              #:delete-decoder-manifest-request
                              #:delete-decoder-manifest-response #:delete-fleet
                              #:delete-fleet-request #:delete-fleet-response
                              #:delete-model-manifest
                              #:delete-model-manifest-request
                              #:delete-model-manifest-response
                              #:delete-signal-catalog
                              #:delete-signal-catalog-request
                              #:delete-signal-catalog-response
                              #:delete-state-template #:delete-vehicle
                              #:delete-vehicle-request
                              #:delete-vehicle-response #:diagnostics-mode
                              #:disassociate-vehicle-fleet
                              #:disassociate-vehicle-fleet-request
                              #:disassociate-vehicle-fleet-response
                              #:encryption-status #:encryption-type
                              #:event-expression-list
                              #:fleet-association-resource #:fleet-resource
                              #:fleet-summary #:formatted-vss #:fqns
                              #:fully-qualified-name #:get-campaign
                              #:get-campaign-request #:get-campaign-response
                              #:get-decoder-manifest
                              #:get-decoder-manifest-request
                              #:get-decoder-manifest-response
                              #:get-encryption-configuration #:get-fleet
                              #:get-fleet-request #:get-fleet-response
                              #:get-logging-options
                              #:get-logging-options-request
                              #:get-logging-options-response
                              #:get-model-manifest #:get-model-manifest-request
                              #:get-model-manifest-response
                              #:get-register-account-status
                              #:get-register-account-status-request
                              #:get-register-account-status-response
                              #:get-signal-catalog #:get-signal-catalog-request
                              #:get-signal-catalog-response
                              #:get-state-template #:get-vehicle
                              #:get-vehicle-request #:get-vehicle-response
                              #:get-vehicle-status #:get-vehicle-status-request
                              #:get-vehicle-status-response #:iamrole-arn
                              #:iam-registration-response #:iam-resources
                              #:import-decoder-manifest
                              #:import-decoder-manifest-request
                              #:import-decoder-manifest-response
                              #:import-signal-catalog
                              #:import-signal-catalog-request
                              #:import-signal-catalog-response #:interface-id
                              #:interface-ids #:invalid-network-interface
                              #:invalid-network-interfaces #:invalid-signal
                              #:invalid-signal-decoder
                              #:invalid-signal-decoders #:invalid-signals
                              #:io-tautobahn-control-plane #:list-campaigns
                              #:list-campaigns-request
                              #:list-campaigns-response
                              #:list-decoder-manifest-network-interfaces
                              #:list-decoder-manifest-network-interfaces-request
                              #:list-decoder-manifest-network-interfaces-response
                              #:list-decoder-manifest-signals
                              #:list-decoder-manifest-signals-request
                              #:list-decoder-manifest-signals-response
                              #:list-decoder-manifests
                              #:list-decoder-manifests-request
                              #:list-decoder-manifests-response #:list-fleets
                              #:list-fleets-for-vehicle
                              #:list-fleets-for-vehicle-request
                              #:list-fleets-for-vehicle-response
                              #:list-fleets-request #:list-fleets-response
                              #:list-model-manifest-nodes
                              #:list-model-manifest-nodes-request
                              #:list-model-manifest-nodes-response
                              #:list-model-manifests
                              #:list-model-manifests-request
                              #:list-model-manifests-response
                              #:list-response-scope #:list-signal-catalog-nodes
                              #:list-signal-catalog-nodes-request
                              #:list-signal-catalog-nodes-response
                              #:list-signal-catalogs
                              #:list-signal-catalogs-request
                              #:list-signal-catalogs-response
                              #:list-state-templates #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:list-vehicles
                              #:list-vehicles-in-fleet
                              #:list-vehicles-in-fleet-request
                              #:list-vehicles-in-fleet-response
                              #:list-vehicles-request #:list-vehicles-response
                              #:log-type #:manifest-status #:message-signal
                              #:model-manifest-resource
                              #:model-manifest-summary #:model-signals-map
                              #:mqtt-topic-arn #:mqtt-topic-config
                              #:network-file-blob #:network-file-definition
                              #:network-file-definitions #:network-files-list
                              #:network-interface
                              #:network-interface-failure-reason
                              #:network-interface-type #:network-interfaces
                              #:node #:node-counts #:node-data-encoding
                              #:node-data-type #:node-path #:node-paths #:nodes
                              #:obd-bitmask-length #:obd-byte-length
                              #:obd-interface #:obd-interface-name #:obd-signal
                              #:obd-standard
                              #:on-change-state-template-update-strategy
                              #:periodic-state-template-update-strategy
                              #:prefix #:primitive-message-definition
                              #:protocol-name #:protocol-version
                              #:put-encryption-configuration
                              #:put-logging-options
                              #:put-logging-options-request
                              #:put-logging-options-response
                              #:ros2primitive-message-definition
                              #:ros2primitive-type #:register-account
                              #:register-account-request
                              #:register-account-response #:registration-status
                              #:resource-identifier #:resource-unique-id
                              #:retry-after-seconds #:s3bucket-arn #:s3config
                              #:sensor #:signal-catalog-resource
                              #:signal-catalog-summary #:signal-decoder
                              #:signal-decoder-failure-reason
                              #:signal-decoder-type #:signal-decoders
                              #:signal-fetch-config #:signal-fetch-information
                              #:signal-fetch-information-list
                              #:signal-information #:signal-information-list
                              #:signal-node-type #:signal-value-type
                              #:spooling-mode #:state-template-association
                              #:state-template-association-identifiers
                              #:state-template-associations
                              #:state-template-data-extra-dimension-node-path-list
                              #:state-template-metadata-extra-dimension-node-path-list
                              #:state-template-properties
                              #:state-template-resource
                              #:state-template-summaries
                              #:state-template-summary
                              #:state-template-update-strategy
                              #:storage-compression-format #:storage-location
                              #:storage-maximum-size
                              #:storage-maximum-size-unit
                              #:storage-maximum-size-value
                              #:storage-minimum-time-to-live
                              #:storage-minimum-time-to-live-unit
                              #:storage-minimum-time-to-live-value
                              #:structure-message-name #:structured-message
                              #:structured-message-definition
                              #:structured-message-field-name-and-data-type-pair
                              #:structured-message-list-definition
                              #:structured-message-list-type #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:time-based-collection-scheme
                              #:time-based-signal-fetch-config #:time-period
                              #:time-unit #:timestream-config
                              #:timestream-database-name
                              #:timestream-registration-response
                              #:timestream-resources #:timestream-table-arn
                              #:timestream-table-name #:topic-name
                              #:trigger-mode #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-campaign
                              #:update-campaign-action
                              #:update-campaign-request
                              #:update-campaign-response
                              #:update-decoder-manifest
                              #:update-decoder-manifest-request
                              #:update-decoder-manifest-response #:update-fleet
                              #:update-fleet-request #:update-fleet-response
                              #:update-mode #:update-model-manifest
                              #:update-model-manifest-request
                              #:update-model-manifest-response
                              #:update-signal-catalog
                              #:update-signal-catalog-request
                              #:update-signal-catalog-response
                              #:update-state-template #:update-vehicle
                              #:update-vehicle-error #:update-vehicle-request
                              #:update-vehicle-request-item
                              #:update-vehicle-response
                              #:update-vehicle-response-item
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:vehicle-association-behavior
                              #:vehicle-association-resource
                              #:vehicle-middleware #:vehicle-middleware-name
                              #:vehicle-middleware-protocol #:vehicle-resource
                              #:vehicle-state #:vehicle-status
                              #:vehicle-status-list #:vehicle-summary
                              #:action-event-expression #:arn #:attribute-name
                              #:attribute-names-list #:attribute-value
                              #:attribute-values-list #:attributes-map
                              #:campaign-arn #:campaign-name
                              #:campaign-summaries #:collection-period-ms
                              #:create-vehicle-errors
                              #:create-vehicle-request-items
                              #:create-vehicle-responses #:customer-account-id
                              #:decoder-manifest-summaries #:description
                              #:double #:error-message #:event-expression
                              #:fetch-config-event-expression #:fleet-id
                              #:fleet-summaries #:fleets #:language-version
                              #:list-of-strings #:list-vehicles-max-results
                              #:max-results #:max-sample-count
                              #:max-string-size #:message
                              #:model-manifest-summaries #:next-token
                              #:non-negative-integer #:number
                              #:positive-integer #:positive-long #:priority
                              #:resource-name #:signal-catalog-summaries
                              #:status-str #:string #:timestamp #:uint32
                              #:update-vehicle-errors
                              #:update-vehicle-request-items
                              #:update-vehicle-response-items #:vehicle-name
                              #:vehicle-summaries #:vehicles
                              #:wildcard-signal-name))
(common-lisp:in-package #:pira/iotfleetwise)

(smithy/sdk/service:define-service io-tautobahn-control-plane :shape-name
                                   "IoTAutobahnControlPlane" :version
                                   "2021-06-17" :title "AWS IoT FleetWise"
                                   :operations
                                   '(batch-create-vehicle batch-update-vehicle
                                     get-encryption-configuration
                                     get-logging-options
                                     get-register-account-status
                                     get-vehicle-status list-tags-for-resource
                                     put-encryption-configuration
                                     put-logging-options register-account
                                     tag-resource untag-resource)
                                   :errors '(internal-server-exception) :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoTFleetWise")
                                      ("arnNamespace" . "iotfleetwise"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iotfleetwise"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure actuator common-lisp:nil
                                    ((fully-qualified-name :target-type string
                                      :required common-lisp:t :member-name
                                      "fullyQualifiedName")
                                     (data-type :target-type node-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (description :target-type description
                                      :member-name "description")
                                     (unit :target-type string :member-name
                                      "unit")
                                     (allowed-values :target-type
                                      list-of-strings :member-name
                                      "allowedValues")
                                     (min :target-type double :member-name
                                      "min")
                                     (max :target-type double :member-name
                                      "max")
                                     (assigned-value :target-type string
                                      :member-name "assignedValue")
                                     (deprecation-message :target-type message
                                      :member-name "deprecationMessage")
                                     (comment :target-type message :member-name
                                      "comment")
                                     (struct-fully-qualified-name :target-type
                                      node-path :member-name
                                      "structFullyQualifiedName"))
                                    (:shape-name "Actuator"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure associate-vehicle-fleet-request
                                    common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName")
                                     (fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId"))
                                    (:shape-name
                                     "AssociateVehicleFleetRequest"))

(smithy/sdk/shapes:define-structure associate-vehicle-fleet-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "AssociateVehicleFleetResponse"))

(smithy/sdk/shapes:define-structure attribute common-lisp:nil
                                    ((fully-qualified-name :target-type string
                                      :required common-lisp:t :member-name
                                      "fullyQualifiedName")
                                     (data-type :target-type node-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (description :target-type description
                                      :member-name "description")
                                     (unit :target-type string :member-name
                                      "unit")
                                     (allowed-values :target-type
                                      list-of-strings :member-name
                                      "allowedValues")
                                     (min :target-type double :member-name
                                      "min")
                                     (max :target-type double :member-name
                                      "max")
                                     (assigned-value :target-type string
                                      :member-name "assignedValue")
                                     (default-value :target-type string
                                      :member-name "defaultValue")
                                     (deprecation-message :target-type message
                                      :member-name "deprecationMessage")
                                     (comment :target-type message :member-name
                                      "comment"))
                                    (:shape-name "Attribute"))

(smithy/sdk/shapes:define-structure batch-create-vehicle-request
                                    common-lisp:nil
                                    ((vehicles :target-type
                                      create-vehicle-request-items :required
                                      common-lisp:t :member-name "vehicles"))
                                    (:shape-name "BatchCreateVehicleRequest"))

(smithy/sdk/shapes:define-structure batch-create-vehicle-response
                                    common-lisp:nil
                                    ((vehicles :target-type
                                      create-vehicle-responses :member-name
                                      "vehicles")
                                     (errors :target-type create-vehicle-errors
                                      :member-name "errors"))
                                    (:shape-name "BatchCreateVehicleResponse"))

(smithy/sdk/shapes:define-structure batch-update-vehicle-request
                                    common-lisp:nil
                                    ((vehicles :target-type
                                      update-vehicle-request-items :required
                                      common-lisp:t :member-name "vehicles"))
                                    (:shape-name "BatchUpdateVehicleRequest"))

(smithy/sdk/shapes:define-structure batch-update-vehicle-response
                                    common-lisp:nil
                                    ((vehicles :target-type
                                      update-vehicle-response-items
                                      :member-name "vehicles")
                                     (errors :target-type update-vehicle-errors
                                      :member-name "errors"))
                                    (:shape-name "BatchUpdateVehicleResponse"))

(smithy/sdk/shapes:define-structure branch common-lisp:nil
                                    ((fully-qualified-name :target-type string
                                      :required common-lisp:t :member-name
                                      "fullyQualifiedName")
                                     (description :target-type description
                                      :member-name "description")
                                     (deprecation-message :target-type message
                                      :member-name "deprecationMessage")
                                     (comment :target-type message :member-name
                                      "comment"))
                                    (:shape-name "Branch"))

common-lisp:nil

(smithy/sdk/shapes:define-enum campaign-status
    common-lisp:nil
  (:creating "CREATING")
  (:waiting-for-approval "WAITING_FOR_APPROVAL")
  (:running "RUNNING")
  (:suspended "SUSPENDED"))

(smithy/sdk/shapes:define-structure campaign-summary common-lisp:nil
                                    ((arn :target-type campaign-arn
                                      :member-name "arn")
                                     (name :target-type campaign-name
                                      :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (signal-catalog-arn :target-type arn
                                      :member-name "signalCatalogArn")
                                     (target-arn :target-type arn :member-name
                                      "targetArn")
                                     (status :target-type campaign-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime"))
                                    (:shape-name "CampaignSummary"))

(smithy/sdk/shapes:define-structure can-dbc-definition common-lisp:nil
                                    ((network-interface :target-type
                                      interface-id :required common-lisp:t
                                      :member-name "networkInterface")
                                     (can-dbc-files :target-type
                                      network-files-list :required
                                      common-lisp:t :member-name "canDbcFiles")
                                     (signals-map :target-type
                                      model-signals-map :member-name
                                      "signalsMap"))
                                    (:shape-name "CanDbcDefinition"))

(smithy/sdk/shapes:define-structure can-interface common-lisp:nil
                                    ((name :target-type can-interface-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (protocol-name :target-type protocol-name
                                      :member-name "protocolName")
                                     (protocol-version :target-type
                                      protocol-version :member-name
                                      "protocolVersion"))
                                    (:shape-name "CanInterface"))

(smithy/sdk/shapes:define-type can-interface-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure can-signal common-lisp:nil
                                    ((message-id :target-type
                                      non-negative-integer :required
                                      common-lisp:t :member-name "messageId")
                                     (is-big-endian :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "isBigEndian")
                                     (is-signed :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "isSigned")
                                     (start-bit :target-type
                                      non-negative-integer :required
                                      common-lisp:t :member-name "startBit")
                                     (offset :target-type double :required
                                      common-lisp:t :member-name "offset")
                                     (factor :target-type double :required
                                      common-lisp:t :member-name "factor")
                                     (length :target-type non-negative-integer
                                      :required common-lisp:t :member-name
                                      "length")
                                     (name :target-type can-signal-name
                                      :member-name "name")
                                     (signal-value-type :target-type
                                      signal-value-type :member-name
                                      "signalValueType"))
                                    (:shape-name "CanSignal"))

(smithy/sdk/shapes:define-type can-signal-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-log-delivery-options
                                    common-lisp:nil
                                    ((log-type :target-type log-type :required
                                      common-lisp:t :member-name "logType")
                                     (log-group-name :target-type
                                      cloud-watch-log-group-name :member-name
                                      "logGroupName"))
                                    (:shape-name
                                     "CloudWatchLogDeliveryOptions"))

(smithy/sdk/shapes:define-type cloud-watch-log-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union collection-scheme common-lisp:nil
                                ((time-based-collection-scheme :target-type
                                  time-based-collection-scheme :member-name
                                  "timeBasedCollectionScheme")
                                 (condition-based-collection-scheme
                                  :target-type
                                  condition-based-collection-scheme
                                  :member-name
                                  "conditionBasedCollectionScheme"))
                                (:shape-name "CollectionScheme"))

(smithy/sdk/shapes:define-enum compression
    common-lisp:nil
  (:off "OFF")
  (:snappy "SNAPPY"))

(smithy/sdk/shapes:define-structure condition-based-collection-scheme
                                    common-lisp:nil
                                    ((expression :target-type event-expression
                                      :required common-lisp:t :member-name
                                      "expression")
                                     (minimum-trigger-interval-ms :target-type
                                      uint32 :member-name
                                      "minimumTriggerIntervalMs")
                                     (trigger-mode :target-type trigger-mode
                                      :member-name "triggerMode")
                                     (condition-language-version :target-type
                                      language-version :member-name
                                      "conditionLanguageVersion"))
                                    (:shape-name
                                     "ConditionBasedCollectionScheme"))

(smithy/sdk/shapes:define-structure condition-based-signal-fetch-config
                                    common-lisp:nil
                                    ((condition-expression :target-type
                                      fetch-config-event-expression :required
                                      common-lisp:t :member-name
                                      "conditionExpression")
                                     (trigger-mode :target-type trigger-mode
                                      :required common-lisp:t :member-name
                                      "triggerMode"))
                                    (:shape-name
                                     "ConditionBasedSignalFetchConfig"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource :target-type string :required
                                  common-lisp:t :member-name "resource")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-campaign-request common-lisp:nil
                                    ((name :target-type campaign-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (signal-catalog-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "signalCatalogArn")
                                     (target-arn :target-type arn :required
                                      common-lisp:t :member-name "targetArn")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (expiry-time :target-type timestamp
                                      :member-name "expiryTime")
                                     (post-trigger-collection-duration
                                      :target-type uint32 :member-name
                                      "postTriggerCollectionDuration")
                                     (diagnostics-mode :target-type
                                      diagnostics-mode :member-name
                                      "diagnosticsMode")
                                     (spooling-mode :target-type spooling-mode
                                      :member-name "spoolingMode")
                                     (compression :target-type compression
                                      :member-name "compression")
                                     (priority :target-type priority
                                      :member-name "priority")
                                     (signals-to-collect :target-type
                                      signal-information-list :member-name
                                      "signalsToCollect")
                                     (collection-scheme :target-type
                                      collection-scheme :required common-lisp:t
                                      :member-name "collectionScheme")
                                     (data-extra-dimensions :target-type
                                      data-extra-dimension-node-path-list
                                      :member-name "dataExtraDimensions")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (data-destination-configs :target-type
                                      data-destination-configs :member-name
                                      "dataDestinationConfigs")
                                     (data-partitions :target-type
                                      data-partitions :member-name
                                      "dataPartitions")
                                     (signals-to-fetch :target-type
                                      signal-fetch-information-list
                                      :member-name "signalsToFetch"))
                                    (:shape-name "CreateCampaignRequest"))

(smithy/sdk/shapes:define-structure create-campaign-response common-lisp:nil
                                    ((name :target-type campaign-name
                                      :member-name "name")
                                     (arn :target-type campaign-arn
                                      :member-name "arn"))
                                    (:shape-name "CreateCampaignResponse"))

(smithy/sdk/shapes:define-structure create-decoder-manifest-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (model-manifest-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "modelManifestArn")
                                     (signal-decoders :target-type
                                      signal-decoders :member-name
                                      "signalDecoders")
                                     (network-interfaces :target-type
                                      network-interfaces :member-name
                                      "networkInterfaces")
                                     (default-for-unmapped-signals :target-type
                                      default-for-unmapped-signals-type
                                      :member-name "defaultForUnmappedSignals")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateDecoderManifestRequest"))

(smithy/sdk/shapes:define-structure create-decoder-manifest-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name
                                     "CreateDecoderManifestResponse"))

(smithy/sdk/shapes:define-structure create-fleet-request common-lisp:nil
                                    ((fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId")
                                     (description :target-type description
                                      :member-name "description")
                                     (signal-catalog-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "signalCatalogArn")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "CreateFleetRequest"))

(smithy/sdk/shapes:define-structure create-fleet-response common-lisp:nil
                                    ((id :target-type fleet-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "CreateFleetResponse"))

(smithy/sdk/shapes:define-structure create-model-manifest-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (nodes :target-type list-of-strings
                                      :required common-lisp:t :member-name
                                      "nodes")
                                     (signal-catalog-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "signalCatalogArn")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "CreateModelManifestRequest"))

(smithy/sdk/shapes:define-structure create-model-manifest-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "CreateModelManifestResponse"))

(smithy/sdk/shapes:define-structure create-signal-catalog-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (nodes :target-type nodes :member-name
                                      "nodes")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "CreateSignalCatalogRequest"))

(smithy/sdk/shapes:define-structure create-signal-catalog-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "CreateSignalCatalogResponse"))

(smithy/sdk/shapes:define-input create-state-template-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (signal-catalog-arn :target-type arn :required
                                  common-lisp:t :member-name
                                  "signalCatalogArn")
                                 (state-template-properties :target-type
                                  state-template-properties :required
                                  common-lisp:t :member-name
                                  "stateTemplateProperties")
                                 (data-extra-dimensions :target-type
                                  state-template-data-extra-dimension-node-path-list
                                  :member-name "dataExtraDimensions")
                                 (metadata-extra-dimensions :target-type
                                  state-template-metadata-extra-dimension-node-path-list
                                  :member-name "metadataExtraDimensions")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateStateTemplateRequest"))

(smithy/sdk/shapes:define-output create-state-template-response common-lisp:nil
                                 ((name :target-type resource-name :member-name
                                   "name")
                                  (arn :target-type arn :member-name "arn")
                                  (id :target-type resource-unique-id
                                   :member-name "id"))
                                 (:shape-name "CreateStateTemplateResponse"))

(smithy/sdk/shapes:define-structure create-vehicle-error common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :member-name "vehicleName")
                                     (code :target-type string :member-name
                                      "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "CreateVehicleError"))

(smithy/sdk/shapes:define-structure create-vehicle-request common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName")
                                     (model-manifest-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "modelManifestArn")
                                     (decoder-manifest-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "decoderManifestArn")
                                     (attributes :target-type attributes-map
                                      :member-name "attributes")
                                     (association-behavior :target-type
                                      vehicle-association-behavior :member-name
                                      "associationBehavior")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (state-templates :target-type
                                      state-template-associations :member-name
                                      "stateTemplates"))
                                    (:shape-name "CreateVehicleRequest"))

(smithy/sdk/shapes:define-structure create-vehicle-request-item common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName")
                                     (model-manifest-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "modelManifestArn")
                                     (decoder-manifest-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "decoderManifestArn")
                                     (attributes :target-type attributes-map
                                      :member-name "attributes")
                                     (association-behavior :target-type
                                      vehicle-association-behavior :member-name
                                      "associationBehavior")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (state-templates :target-type
                                      state-template-associations :member-name
                                      "stateTemplates"))
                                    (:shape-name "CreateVehicleRequestItem"))

(smithy/sdk/shapes:define-structure create-vehicle-response common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :member-name "vehicleName")
                                     (arn :target-type arn :member-name "arn")
                                     (thing-arn :target-type arn :member-name
                                      "thingArn"))
                                    (:shape-name "CreateVehicleResponse"))

(smithy/sdk/shapes:define-structure create-vehicle-response-item
                                    common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :member-name "vehicleName")
                                     (arn :target-type arn :member-name "arn")
                                     (thing-arn :target-type arn :member-name
                                      "thingArn"))
                                    (:shape-name "CreateVehicleResponseItem"))

(smithy/sdk/shapes:define-type custom-decoding-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-decoding-interface common-lisp:nil
                                    ((name :target-type
                                      custom-decoding-signal-interface-name
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name "CustomDecodingInterface"))

(smithy/sdk/shapes:define-structure custom-decoding-signal common-lisp:nil
                                    ((id :target-type custom-decoding-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name "CustomDecodingSignal"))

(smithy/sdk/shapes:define-type custom-decoding-signal-interface-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-property common-lisp:nil
                                    ((fully-qualified-name :target-type string
                                      :required common-lisp:t :member-name
                                      "fullyQualifiedName")
                                     (data-type :target-type node-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (data-encoding :target-type
                                      node-data-encoding :member-name
                                      "dataEncoding")
                                     (description :target-type description
                                      :member-name "description")
                                     (deprecation-message :target-type message
                                      :member-name "deprecationMessage")
                                     (comment :target-type message :member-name
                                      "comment")
                                     (struct-fully-qualified-name :target-type
                                      node-path :member-name
                                      "structFullyQualifiedName"))
                                    (:shape-name "CustomProperty"))

(smithy/sdk/shapes:define-structure custom-struct common-lisp:nil
                                    ((fully-qualified-name :target-type string
                                      :required common-lisp:t :member-name
                                      "fullyQualifiedName")
                                     (description :target-type description
                                      :member-name "description")
                                     (deprecation-message :target-type message
                                      :member-name "deprecationMessage")
                                     (comment :target-type message :member-name
                                      "comment"))
                                    (:shape-name "CustomStruct"))

(smithy/sdk/shapes:define-union data-destination-config common-lisp:nil
                                ((s3config :target-type s3config :member-name
                                  "s3Config")
                                 (timestream-config :target-type
                                  timestream-config :member-name
                                  "timestreamConfig")
                                 (mqtt-topic-config :target-type
                                  mqtt-topic-config :member-name
                                  "mqttTopicConfig"))
                                (:shape-name "DataDestinationConfig"))

(smithy/sdk/shapes:define-list data-destination-configs :member
                               data-destination-config)

(smithy/sdk/shapes:define-list data-extra-dimension-node-path-list :member
                               node-path)

(smithy/sdk/shapes:define-enum data-format
    common-lisp:nil
  (:json "JSON")
  (:parquet "PARQUET"))

(smithy/sdk/shapes:define-structure data-partition common-lisp:nil
                                    ((id :target-type data-partition-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (storage-options :target-type
                                      data-partition-storage-options :required
                                      common-lisp:t :member-name
                                      "storageOptions")
                                     (upload-options :target-type
                                      data-partition-upload-options
                                      :member-name "uploadOptions"))
                                    (:shape-name "DataPartition"))

(smithy/sdk/shapes:define-type data-partition-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-partition-storage-options
                                    common-lisp:nil
                                    ((maximum-size :target-type
                                      storage-maximum-size :required
                                      common-lisp:t :member-name "maximumSize")
                                     (storage-location :target-type
                                      storage-location :required common-lisp:t
                                      :member-name "storageLocation")
                                     (minimum-time-to-live :target-type
                                      storage-minimum-time-to-live :required
                                      common-lisp:t :member-name
                                      "minimumTimeToLive"))
                                    (:shape-name "DataPartitionStorageOptions"))

(smithy/sdk/shapes:define-structure data-partition-upload-options
                                    common-lisp:nil
                                    ((expression :target-type event-expression
                                      :required common-lisp:t :member-name
                                      "expression")
                                     (condition-language-version :target-type
                                      language-version :member-name
                                      "conditionLanguageVersion"))
                                    (:shape-name "DataPartitionUploadOptions"))

(smithy/sdk/shapes:define-list data-partitions :member data-partition)

common-lisp:nil

(smithy/sdk/shapes:define-structure decoder-manifest-summary common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (arn :target-type arn :member-name "arn")
                                     (model-manifest-arn :target-type arn
                                      :member-name "modelManifestArn")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type manifest-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime")
                                     (message :target-type message :member-name
                                      "message"))
                                    (:shape-name "DecoderManifestSummary"))

(smithy/sdk/shapes:define-error decoder-manifest-validation-exception
                                common-lisp:nil
                                ((invalid-signals :target-type
                                  invalid-signal-decoders :member-name
                                  "invalidSignals")
                                 (invalid-network-interfaces :target-type
                                  invalid-network-interfaces :member-name
                                  "invalidNetworkInterfaces")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "DecoderManifestValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum default-for-unmapped-signals-type
    common-lisp:nil
  (:custom-decoding "CUSTOM_DECODING"))

(smithy/sdk/shapes:define-structure delete-campaign-request common-lisp:nil
                                    ((name :target-type campaign-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "DeleteCampaignRequest"))

(smithy/sdk/shapes:define-structure delete-campaign-response common-lisp:nil
                                    ((name :target-type campaign-name
                                      :member-name "name")
                                     (arn :target-type campaign-arn
                                      :member-name "arn"))
                                    (:shape-name "DeleteCampaignResponse"))

(smithy/sdk/shapes:define-structure delete-decoder-manifest-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name
                                     "DeleteDecoderManifestRequest"))

(smithy/sdk/shapes:define-structure delete-decoder-manifest-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name
                                     "DeleteDecoderManifestResponse"))

(smithy/sdk/shapes:define-structure delete-fleet-request common-lisp:nil
                                    ((fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId"))
                                    (:shape-name "DeleteFleetRequest"))

(smithy/sdk/shapes:define-structure delete-fleet-response common-lisp:nil
                                    ((id :target-type fleet-id :member-name
                                      "id")
                                     (arn :target-type arn :member-name "arn"))
                                    (:shape-name "DeleteFleetResponse"))

(smithy/sdk/shapes:define-structure delete-model-manifest-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "DeleteModelManifestRequest"))

(smithy/sdk/shapes:define-structure delete-model-manifest-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteModelManifestResponse"))

(smithy/sdk/shapes:define-structure delete-signal-catalog-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "DeleteSignalCatalogRequest"))

(smithy/sdk/shapes:define-structure delete-signal-catalog-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteSignalCatalogResponse"))

(smithy/sdk/shapes:define-input delete-state-template-request common-lisp:nil
                                ((identifier :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteStateTemplateRequest"))

(smithy/sdk/shapes:define-output delete-state-template-response common-lisp:nil
                                 ((name :target-type resource-name :member-name
                                   "name")
                                  (arn :target-type arn :member-name "arn")
                                  (id :target-type resource-unique-id
                                   :member-name "id"))
                                 (:shape-name "DeleteStateTemplateResponse"))

(smithy/sdk/shapes:define-structure delete-vehicle-request common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName"))
                                    (:shape-name "DeleteVehicleRequest"))

(smithy/sdk/shapes:define-structure delete-vehicle-response common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteVehicleResponse"))

(smithy/sdk/shapes:define-enum diagnostics-mode
    common-lisp:nil
  (:off "OFF")
  (:send-active-dtcs "SEND_ACTIVE_DTCS"))

(smithy/sdk/shapes:define-structure disassociate-vehicle-fleet-request
                                    common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName")
                                     (fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId"))
                                    (:shape-name
                                     "DisassociateVehicleFleetRequest"))

(smithy/sdk/shapes:define-structure disassociate-vehicle-fleet-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DisassociateVehicleFleetResponse"))

(smithy/sdk/shapes:define-enum encryption-status
    common-lisp:nil
  (:pending "PENDING")
  (:success "SUCCESS")
  (:failure "FAILURE"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:kms-based-encryption "KMS_BASED_ENCRYPTION")
  (:fleetwise-default-encryption "FLEETWISE_DEFAULT_ENCRYPTION"))

(smithy/sdk/shapes:define-list event-expression-list :member
                               action-event-expression)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure fleet-summary common-lisp:nil
                                    ((id :target-type fleet-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (signal-catalog-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "signalCatalogArn")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "lastModificationTime"))
                                    (:shape-name "FleetSummary"))

(smithy/sdk/shapes:define-union formatted-vss common-lisp:nil
                                ((vss-json :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "vssJson"))
                                (:shape-name "FormattedVss"))

(smithy/sdk/shapes:define-list fqns :member fully-qualified-name)

(smithy/sdk/shapes:define-type fully-qualified-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-campaign-request common-lisp:nil
                                    ((name :target-type campaign-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetCampaignRequest"))

(smithy/sdk/shapes:define-structure get-campaign-response common-lisp:nil
                                    ((name :target-type campaign-name
                                      :member-name "name")
                                     (arn :target-type campaign-arn
                                      :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (signal-catalog-arn :target-type arn
                                      :member-name "signalCatalogArn")
                                     (target-arn :target-type arn :member-name
                                      "targetArn")
                                     (status :target-type campaign-status
                                      :member-name "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (expiry-time :target-type timestamp
                                      :member-name "expiryTime")
                                     (post-trigger-collection-duration
                                      :target-type uint32 :member-name
                                      "postTriggerCollectionDuration")
                                     (diagnostics-mode :target-type
                                      diagnostics-mode :member-name
                                      "diagnosticsMode")
                                     (spooling-mode :target-type spooling-mode
                                      :member-name "spoolingMode")
                                     (compression :target-type compression
                                      :member-name "compression")
                                     (priority :target-type priority
                                      :member-name "priority")
                                     (signals-to-collect :target-type
                                      signal-information-list :member-name
                                      "signalsToCollect")
                                     (collection-scheme :target-type
                                      collection-scheme :member-name
                                      "collectionScheme")
                                     (data-extra-dimensions :target-type
                                      data-extra-dimension-node-path-list
                                      :member-name "dataExtraDimensions")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "lastModificationTime")
                                     (data-destination-configs :target-type
                                      data-destination-configs :member-name
                                      "dataDestinationConfigs")
                                     (data-partitions :target-type
                                      data-partitions :member-name
                                      "dataPartitions")
                                     (signals-to-fetch :target-type
                                      signal-fetch-information-list
                                      :member-name "signalsToFetch"))
                                    (:shape-name "GetCampaignResponse"))

(smithy/sdk/shapes:define-structure get-decoder-manifest-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetDecoderManifestRequest"))

(smithy/sdk/shapes:define-structure get-decoder-manifest-response
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (model-manifest-arn :target-type arn
                                      :member-name "modelManifestArn")
                                     (status :target-type manifest-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime")
                                     (message :target-type message :member-name
                                      "message"))
                                    (:shape-name "GetDecoderManifestResponse"))

(smithy/sdk/shapes:define-input get-encryption-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetEncryptionConfigurationRequest"))

(smithy/sdk/shapes:define-output get-encryption-configuration-response
                                 common-lisp:nil
                                 ((kms-key-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "kmsKeyId")
                                  (encryption-status :target-type
                                   encryption-status :required common-lisp:t
                                   :member-name "encryptionStatus")
                                  (encryption-type :target-type encryption-type
                                   :required common-lisp:t :member-name
                                   "encryptionType")
                                  (error-message :target-type error-message
                                   :member-name "errorMessage")
                                  (creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "lastModificationTime"))
                                 (:shape-name
                                  "GetEncryptionConfigurationResponse"))

(smithy/sdk/shapes:define-structure get-fleet-request common-lisp:nil
                                    ((fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId"))
                                    (:shape-name "GetFleetRequest"))

(smithy/sdk/shapes:define-structure get-fleet-response common-lisp:nil
                                    ((id :target-type fleet-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (signal-catalog-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "signalCatalogArn")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime"))
                                    (:shape-name "GetFleetResponse"))

(smithy/sdk/shapes:define-structure get-logging-options-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "GetLoggingOptionsRequest"))

(smithy/sdk/shapes:define-structure get-logging-options-response
                                    common-lisp:nil
                                    ((cloud-watch-log-delivery :target-type
                                      cloud-watch-log-delivery-options
                                      :required common-lisp:t :member-name
                                      "cloudWatchLogDelivery"))
                                    (:shape-name "GetLoggingOptionsResponse"))

(smithy/sdk/shapes:define-structure get-model-manifest-request common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetModelManifestRequest"))

(smithy/sdk/shapes:define-structure get-model-manifest-response common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (signal-catalog-arn :target-type arn
                                      :member-name "signalCatalogArn")
                                     (status :target-type manifest-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime"))
                                    (:shape-name "GetModelManifestResponse"))

(smithy/sdk/shapes:define-structure get-register-account-status-request
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "GetRegisterAccountStatusRequest"))

(smithy/sdk/shapes:define-structure get-register-account-status-response
                                    common-lisp:nil
                                    ((customer-account-id :target-type
                                      customer-account-id :required
                                      common-lisp:t :member-name
                                      "customerAccountId")
                                     (account-status :target-type
                                      registration-status :required
                                      common-lisp:t :member-name
                                      "accountStatus")
                                     (timestream-registration-response
                                      :target-type
                                      timestream-registration-response
                                      :member-name
                                      "timestreamRegistrationResponse")
                                     (iam-registration-response :target-type
                                      iam-registration-response :required
                                      common-lisp:t :member-name
                                      "iamRegistrationResponse")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime"))
                                    (:shape-name
                                     "GetRegisterAccountStatusResponse"))

(smithy/sdk/shapes:define-structure get-signal-catalog-request common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetSignalCatalogRequest"))

(smithy/sdk/shapes:define-structure get-signal-catalog-response common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (node-counts :target-type node-counts
                                      :member-name "nodeCounts")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime"))
                                    (:shape-name "GetSignalCatalogResponse"))

(smithy/sdk/shapes:define-input get-state-template-request common-lisp:nil
                                ((identifier :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t))
                                (:shape-name "GetStateTemplateRequest"))

(smithy/sdk/shapes:define-output get-state-template-response common-lisp:nil
                                 ((name :target-type resource-name :member-name
                                   "name")
                                  (arn :target-type arn :member-name "arn")
                                  (description :target-type description
                                   :member-name "description")
                                  (signal-catalog-arn :target-type arn
                                   :member-name "signalCatalogArn")
                                  (state-template-properties :target-type
                                   state-template-properties :member-name
                                   "stateTemplateProperties")
                                  (data-extra-dimensions :target-type
                                   state-template-data-extra-dimension-node-path-list
                                   :member-name "dataExtraDimensions")
                                  (metadata-extra-dimensions :target-type
                                   state-template-metadata-extra-dimension-node-path-list
                                   :member-name "metadataExtraDimensions")
                                  (creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (last-modification-time :target-type
                                   timestamp :member-name
                                   "lastModificationTime")
                                  (id :target-type resource-unique-id
                                   :member-name "id"))
                                 (:shape-name "GetStateTemplateResponse"))

(smithy/sdk/shapes:define-structure get-vehicle-request common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName"))
                                    (:shape-name "GetVehicleRequest"))

(smithy/sdk/shapes:define-structure get-vehicle-response common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :member-name "vehicleName")
                                     (arn :target-type arn :member-name "arn")
                                     (model-manifest-arn :target-type arn
                                      :member-name "modelManifestArn")
                                     (decoder-manifest-arn :target-type arn
                                      :member-name "decoderManifestArn")
                                     (attributes :target-type attributes-map
                                      :member-name "attributes")
                                     (state-templates :target-type
                                      state-template-associations :member-name
                                      "stateTemplates")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "lastModificationTime"))
                                    (:shape-name "GetVehicleResponse"))

(smithy/sdk/shapes:define-structure get-vehicle-status-request common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName"))
                                    (:shape-name "GetVehicleStatusRequest"))

(smithy/sdk/shapes:define-structure get-vehicle-status-response common-lisp:nil
                                    ((campaigns :target-type
                                      vehicle-status-list :member-name
                                      "campaigns")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "GetVehicleStatusResponse"))

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure iam-registration-response common-lisp:nil
                                    ((role-arn :target-type arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (registration-status :target-type
                                      registration-status :required
                                      common-lisp:t :member-name
                                      "registrationStatus")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "IamRegistrationResponse"))

(smithy/sdk/shapes:define-structure iam-resources common-lisp:nil
                                    ((role-arn :target-type iamrole-arn
                                      :required common-lisp:t :member-name
                                      "roleArn"))
                                    (:shape-name "IamResources"))

(smithy/sdk/shapes:define-structure import-decoder-manifest-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (network-file-definitions :target-type
                                      network-file-definitions :required
                                      common-lisp:t :member-name
                                      "networkFileDefinitions"))
                                    (:shape-name
                                     "ImportDecoderManifestRequest"))

(smithy/sdk/shapes:define-structure import-decoder-manifest-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name
                                     "ImportDecoderManifestResponse"))

(smithy/sdk/shapes:define-structure import-signal-catalog-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (vss :target-type formatted-vss
                                      :member-name "vss")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "ImportSignalCatalogRequest"))

(smithy/sdk/shapes:define-structure import-signal-catalog-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "ImportSignalCatalogResponse"))

(smithy/sdk/shapes:define-type interface-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list interface-ids :member interface-id)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure invalid-network-interface common-lisp:nil
                                    ((interface-id :target-type interface-id
                                      :member-name "interfaceId")
                                     (reason :target-type
                                      network-interface-failure-reason
                                      :member-name "reason"))
                                    (:shape-name "InvalidNetworkInterface"))

(smithy/sdk/shapes:define-list invalid-network-interfaces :member
                               invalid-network-interface)

(smithy/sdk/shapes:define-error invalid-node-exception common-lisp:nil
                                ((invalid-nodes :target-type nodes :member-name
                                  "invalidNodes")
                                 (reason :target-type string :member-name
                                  "reason")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidNodeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure invalid-signal common-lisp:nil
                                    ((name :target-type fully-qualified-name
                                      :member-name "name")
                                     (reason :target-type string :member-name
                                      "reason"))
                                    (:shape-name "InvalidSignal"))

(smithy/sdk/shapes:define-structure invalid-signal-decoder common-lisp:nil
                                    ((name :target-type fully-qualified-name
                                      :member-name "name")
                                     (reason :target-type
                                      signal-decoder-failure-reason
                                      :member-name "reason")
                                     (hint :target-type message :member-name
                                      "hint"))
                                    (:shape-name "InvalidSignalDecoder"))

(smithy/sdk/shapes:define-list invalid-signal-decoders :member
                               invalid-signal-decoder)

(smithy/sdk/shapes:define-list invalid-signals :member invalid-signal)

(smithy/sdk/shapes:define-error invalid-signals-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (invalid-signals :target-type invalid-signals
                                  :member-name "invalidSignals"))
                                (:shape-name "InvalidSignalsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure list-campaigns-request common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (status :target-type status-str
                                      :member-name "status" :http-query
                                      "status")
                                     (list-response-scope :target-type
                                      list-response-scope :member-name
                                      "listResponseScope" :http-query
                                      "listResponseScope"))
                                    (:shape-name "ListCampaignsRequest"))

(smithy/sdk/shapes:define-structure list-campaigns-response common-lisp:nil
                                    ((campaign-summaries :target-type
                                      campaign-summaries :member-name
                                      "campaignSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListCampaignsResponse"))

(smithy/sdk/shapes:define-structure
 list-decoder-manifest-network-interfaces-request common-lisp:nil
 ((name :target-type resource-name :required common-lisp:t :member-name "name")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListDecoderManifestNetworkInterfacesRequest"))

(smithy/sdk/shapes:define-structure
 list-decoder-manifest-network-interfaces-response common-lisp:nil
 ((network-interfaces :target-type network-interfaces :member-name
   "networkInterfaces")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListDecoderManifestNetworkInterfacesResponse"))

(smithy/sdk/shapes:define-structure list-decoder-manifest-signals-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name
                                     "ListDecoderManifestSignalsRequest"))

(smithy/sdk/shapes:define-structure list-decoder-manifest-signals-response
                                    common-lisp:nil
                                    ((signal-decoders :target-type
                                      signal-decoders :member-name
                                      "signalDecoders")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListDecoderManifestSignalsResponse"))

(smithy/sdk/shapes:define-structure list-decoder-manifests-request
                                    common-lisp:nil
                                    ((model-manifest-arn :target-type arn
                                      :member-name "modelManifestArn"
                                      :http-query "modelManifestArn")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (list-response-scope :target-type
                                      list-response-scope :member-name
                                      "listResponseScope" :http-query
                                      "listResponseScope"))
                                    (:shape-name "ListDecoderManifestsRequest"))

(smithy/sdk/shapes:define-structure list-decoder-manifests-response
                                    common-lisp:nil
                                    ((summaries :target-type
                                      decoder-manifest-summaries :member-name
                                      "summaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListDecoderManifestsResponse"))

(smithy/sdk/shapes:define-structure list-fleets-for-vehicle-request
                                    common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListFleetsForVehicleRequest"))

(smithy/sdk/shapes:define-structure list-fleets-for-vehicle-response
                                    common-lisp:nil
                                    ((fleets :target-type fleets :member-name
                                      "fleets")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListFleetsForVehicleResponse"))

(smithy/sdk/shapes:define-structure list-fleets-request common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (list-response-scope :target-type
                                      list-response-scope :member-name
                                      "listResponseScope" :http-query
                                      "listResponseScope"))
                                    (:shape-name "ListFleetsRequest"))

(smithy/sdk/shapes:define-structure list-fleets-response common-lisp:nil
                                    ((fleet-summaries :target-type
                                      fleet-summaries :member-name
                                      "fleetSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListFleetsResponse"))

(smithy/sdk/shapes:define-structure list-model-manifest-nodes-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name
                                     "ListModelManifestNodesRequest"))

(smithy/sdk/shapes:define-structure list-model-manifest-nodes-response
                                    common-lisp:nil
                                    ((nodes :target-type nodes :member-name
                                      "nodes")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListModelManifestNodesResponse"))

(smithy/sdk/shapes:define-structure list-model-manifests-request
                                    common-lisp:nil
                                    ((signal-catalog-arn :target-type arn
                                      :member-name "signalCatalogArn"
                                      :http-query "signalCatalogArn")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (list-response-scope :target-type
                                      list-response-scope :member-name
                                      "listResponseScope" :http-query
                                      "listResponseScope"))
                                    (:shape-name "ListModelManifestsRequest"))

(smithy/sdk/shapes:define-structure list-model-manifests-response
                                    common-lisp:nil
                                    ((summaries :target-type
                                      model-manifest-summaries :member-name
                                      "summaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListModelManifestsResponse"))

(smithy/sdk/shapes:define-enum list-response-scope
    common-lisp:nil
  (:metadata-only "METADATA_ONLY"))

(smithy/sdk/shapes:define-structure list-signal-catalog-nodes-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (signal-node-type :target-type
                                      signal-node-type :member-name
                                      "signalNodeType" :http-query
                                      "signalNodeType"))
                                    (:shape-name
                                     "ListSignalCatalogNodesRequest"))

(smithy/sdk/shapes:define-structure list-signal-catalog-nodes-response
                                    common-lisp:nil
                                    ((nodes :target-type nodes :member-name
                                      "nodes")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListSignalCatalogNodesResponse"))

(smithy/sdk/shapes:define-structure list-signal-catalogs-request
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListSignalCatalogsRequest"))

(smithy/sdk/shapes:define-structure list-signal-catalogs-response
                                    common-lisp:nil
                                    ((summaries :target-type
                                      signal-catalog-summaries :member-name
                                      "summaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListSignalCatalogsResponse"))

(smithy/sdk/shapes:define-input list-state-templates-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (list-response-scope :target-type
                                  list-response-scope :member-name
                                  "listResponseScope" :http-query
                                  "listResponseScope"))
                                (:shape-name "ListStateTemplatesRequest"))

(smithy/sdk/shapes:define-output list-state-templates-response common-lisp:nil
                                 ((summaries :target-type
                                   state-template-summaries :member-name
                                   "summaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListStateTemplatesResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "ResourceARN"
                                      :http-query "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-vehicles-in-fleet-request
                                    common-lisp:nil
                                    ((fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListVehiclesInFleetRequest"))

(smithy/sdk/shapes:define-structure list-vehicles-in-fleet-response
                                    common-lisp:nil
                                    ((vehicles :target-type vehicles
                                      :member-name "vehicles")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListVehiclesInFleetResponse"))

(smithy/sdk/shapes:define-structure list-vehicles-request common-lisp:nil
                                    ((model-manifest-arn :target-type arn
                                      :member-name "modelManifestArn"
                                      :http-query "modelManifestArn")
                                     (attribute-names :target-type
                                      attribute-names-list :member-name
                                      "attributeNames" :http-query
                                      "attributeNames")
                                     (attribute-values :target-type
                                      attribute-values-list :member-name
                                      "attributeValues" :http-query
                                      "attributeValues")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type
                                      list-vehicles-max-results :member-name
                                      "maxResults" :http-query "maxResults")
                                     (list-response-scope :target-type
                                      list-response-scope :member-name
                                      "listResponseScope" :http-query
                                      "listResponseScope"))
                                    (:shape-name "ListVehiclesRequest"))

(smithy/sdk/shapes:define-structure list-vehicles-response common-lisp:nil
                                    ((vehicle-summaries :target-type
                                      vehicle-summaries :member-name
                                      "vehicleSummaries")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListVehiclesResponse"))

(smithy/sdk/shapes:define-enum log-type
    common-lisp:nil
  (:off "OFF")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum manifest-status
    common-lisp:nil
  (:active "ACTIVE")
  (:draft "DRAFT")
  (:invalid "INVALID")
  (:validating "VALIDATING"))

(smithy/sdk/shapes:define-structure message-signal common-lisp:nil
                                    ((topic-name :target-type topic-name
                                      :required common-lisp:t :member-name
                                      "topicName")
                                     (structured-message :target-type
                                      structured-message :required
                                      common-lisp:t :member-name
                                      "structuredMessage"))
                                    (:shape-name "MessageSignal"))

common-lisp:nil

(smithy/sdk/shapes:define-structure model-manifest-summary common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (arn :target-type arn :member-name "arn")
                                     (signal-catalog-arn :target-type arn
                                      :member-name "signalCatalogArn")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type manifest-status
                                      :member-name "status")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime"))
                                    (:shape-name "ModelManifestSummary"))

(smithy/sdk/shapes:define-map model-signals-map :key string :value string)

(smithy/sdk/shapes:define-type mqtt-topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mqtt-topic-config common-lisp:nil
                                    ((mqtt-topic-arn :target-type
                                      mqtt-topic-arn :required common-lisp:t
                                      :member-name "mqttTopicArn")
                                     (execution-role-arn :target-type
                                      iamrole-arn :required common-lisp:t
                                      :member-name "executionRoleArn"))
                                    (:shape-name "MqttTopicConfig"))

(smithy/sdk/shapes:define-type network-file-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-union network-file-definition common-lisp:nil
                                ((can-dbc :target-type can-dbc-definition
                                  :member-name "canDbc"))
                                (:shape-name "NetworkFileDefinition"))

(smithy/sdk/shapes:define-list network-file-definitions :member
                               network-file-definition)

(smithy/sdk/shapes:define-list network-files-list :member network-file-blob)

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((interface-id :target-type interface-id
                                      :required common-lisp:t :member-name
                                      "interfaceId")
                                     (type :target-type network-interface-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (can-interface :target-type can-interface
                                      :member-name "canInterface")
                                     (obd-interface :target-type obd-interface
                                      :member-name "obdInterface")
                                     (vehicle-middleware :target-type
                                      vehicle-middleware :member-name
                                      "vehicleMiddleware")
                                     (custom-decoding-interface :target-type
                                      custom-decoding-interface :member-name
                                      "customDecodingInterface"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-enum network-interface-failure-reason
    common-lisp:nil
  (:duplicate-interface "DUPLICATE_NETWORK_INTERFACE")
  (:conflicting-network-interface "CONFLICTING_NETWORK_INTERFACE")
  (:network-interface-to-add-already-exists
   "NETWORK_INTERFACE_TO_ADD_ALREADY_EXISTS")
  (:can-network-interface-info-is-null "CAN_NETWORK_INTERFACE_INFO_IS_NULL")
  (:obd-network-interface-info-is-null "OBD_NETWORK_INTERFACE_INFO_IS_NULL")
  (:network-interface-to-remove-associated-with-signals
   "NETWORK_INTERFACE_TO_REMOVE_ASSOCIATED_WITH_SIGNALS")
  (:vehicle-middleware-network-interface-info-is-null
   "VEHICLE_MIDDLEWARE_NETWORK_INTERFACE_INFO_IS_NULL")
  (:custom-decoding-signal-network-interface-info-is-null
   "CUSTOM_DECODING_SIGNAL_NETWORK_INTERFACE_INFO_IS_NULL"))

(smithy/sdk/shapes:define-enum network-interface-type
    common-lisp:nil
  (:can-interface "CAN_INTERFACE")
  (:obd-interface "OBD_INTERFACE")
  (:vehicle-middleware "VEHICLE_MIDDLEWARE")
  (:custom-decoding-interface "CUSTOM_DECODING_INTERFACE"))

(smithy/sdk/shapes:define-list network-interfaces :member network-interface)

(smithy/sdk/shapes:define-union node common-lisp:nil
                                ((branch :target-type branch :member-name
                                  "branch")
                                 (sensor :target-type sensor :member-name
                                  "sensor")
                                 (actuator :target-type actuator :member-name
                                  "actuator")
                                 (attribute :target-type attribute :member-name
                                  "attribute")
                                 (struct :target-type custom-struct
                                  :member-name "struct")
                                 (property :target-type custom-property
                                  :member-name "property"))
                                (:shape-name "Node"))

(smithy/sdk/shapes:define-structure node-counts common-lisp:nil
                                    ((total-nodes :target-type number
                                      :member-name "totalNodes")
                                     (total-branches :target-type number
                                      :member-name "totalBranches")
                                     (total-sensors :target-type number
                                      :member-name "totalSensors")
                                     (total-attributes :target-type number
                                      :member-name "totalAttributes")
                                     (total-actuators :target-type number
                                      :member-name "totalActuators")
                                     (total-structs :target-type number
                                      :member-name "totalStructs")
                                     (total-properties :target-type number
                                      :member-name "totalProperties"))
                                    (:shape-name "NodeCounts"))

(smithy/sdk/shapes:define-enum node-data-encoding
    common-lisp:nil
  (:binary "BINARY")
  (:typed "TYPED"))

(smithy/sdk/shapes:define-enum node-data-type
    common-lisp:nil
  (:int8 "INT8")
  (:uint8 "UINT8")
  (:int16 "INT16")
  (:uint16 "UINT16")
  (:int32 "INT32")
  (:uint32 "UINT32")
  (:int64 "INT64")
  (:uint64 "UINT64")
  (:boolean "BOOLEAN")
  (:float "FLOAT")
  (:double "DOUBLE")
  (:string "STRING")
  (:unix-timestamp "UNIX_TIMESTAMP")
  (:int8-array "INT8_ARRAY")
  (:uint8-array "UINT8_ARRAY")
  (:int16-array "INT16_ARRAY")
  (:uint16-array "UINT16_ARRAY")
  (:int32-array "INT32_ARRAY")
  (:uint32-array "UINT32_ARRAY")
  (:int64-array "INT64_ARRAY")
  (:uint64-array "UINT64_ARRAY")
  (:boolean-array "BOOLEAN_ARRAY")
  (:float-array "FLOAT_ARRAY")
  (:double-array "DOUBLE_ARRAY")
  (:string-array "STRING_ARRAY")
  (:unix-timestamp-array "UNIX_TIMESTAMP_ARRAY")
  (:unknown "UNKNOWN")
  (:struct "STRUCT")
  (:struct-array "STRUCT_ARRAY"))

(smithy/sdk/shapes:define-type node-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list node-paths :member node-path)

(smithy/sdk/shapes:define-list nodes :member node)

(smithy/sdk/shapes:define-type obd-bitmask-length
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type obd-byte-length smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure obd-interface common-lisp:nil
                                    ((name :target-type obd-interface-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (request-message-id :target-type
                                      non-negative-integer :required
                                      common-lisp:t :member-name
                                      "requestMessageId")
                                     (obd-standard :target-type obd-standard
                                      :member-name "obdStandard")
                                     (pid-request-interval-seconds :target-type
                                      non-negative-integer :member-name
                                      "pidRequestIntervalSeconds")
                                     (dtc-request-interval-seconds :target-type
                                      non-negative-integer :member-name
                                      "dtcRequestIntervalSeconds")
                                     (use-extended-ids :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "useExtendedIds")
                                     (has-transmission-ecu :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "hasTransmissionEcu"))
                                    (:shape-name "ObdInterface"))

(smithy/sdk/shapes:define-type obd-interface-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure obd-signal common-lisp:nil
                                    ((pid-response-length :target-type
                                      positive-integer :required common-lisp:t
                                      :member-name "pidResponseLength")
                                     (service-mode :target-type
                                      non-negative-integer :required
                                      common-lisp:t :member-name "serviceMode")
                                     (pid :target-type non-negative-integer
                                      :required common-lisp:t :member-name
                                      "pid")
                                     (scaling :target-type double :required
                                      common-lisp:t :member-name "scaling")
                                     (offset :target-type double :required
                                      common-lisp:t :member-name "offset")
                                     (start-byte :target-type
                                      non-negative-integer :required
                                      common-lisp:t :member-name "startByte")
                                     (byte-length :target-type obd-byte-length
                                      :required common-lisp:t :member-name
                                      "byteLength")
                                     (bit-right-shift :target-type
                                      non-negative-integer :member-name
                                      "bitRightShift")
                                     (bit-mask-length :target-type
                                      obd-bitmask-length :member-name
                                      "bitMaskLength")
                                     (is-signed :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "isSigned")
                                     (signal-value-type :target-type
                                      signal-value-type :member-name
                                      "signalValueType"))
                                    (:shape-name "ObdSignal"))

(smithy/sdk/shapes:define-type obd-standard smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure on-change-state-template-update-strategy
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "OnChangeStateTemplateUpdateStrategy"))

(smithy/sdk/shapes:define-structure periodic-state-template-update-strategy
                                    common-lisp:nil
                                    ((state-template-update-rate :target-type
                                      time-period :required common-lisp:t
                                      :member-name "stateTemplateUpdateRate"))
                                    (:shape-name
                                     "PeriodicStateTemplateUpdateStrategy"))

(smithy/sdk/shapes:define-type prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union primitive-message-definition common-lisp:nil
                                ((ros2primitive-message-definition :target-type
                                  ros2primitive-message-definition :member-name
                                  "ros2PrimitiveMessageDefinition"))
                                (:shape-name "PrimitiveMessageDefinition"))

(smithy/sdk/shapes:define-type protocol-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type protocol-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-encryption-configuration-request
                                common-lisp:nil
                                ((kms-key-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "kmsKeyId")
                                 (encryption-type :target-type encryption-type
                                  :required common-lisp:t :member-name
                                  "encryptionType"))
                                (:shape-name
                                 "PutEncryptionConfigurationRequest"))

(smithy/sdk/shapes:define-output put-encryption-configuration-response
                                 common-lisp:nil
                                 ((kms-key-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "kmsKeyId")
                                  (encryption-status :target-type
                                   encryption-status :required common-lisp:t
                                   :member-name "encryptionStatus")
                                  (encryption-type :target-type encryption-type
                                   :required common-lisp:t :member-name
                                   "encryptionType"))
                                 (:shape-name
                                  "PutEncryptionConfigurationResponse"))

(smithy/sdk/shapes:define-structure put-logging-options-request common-lisp:nil
                                    ((cloud-watch-log-delivery :target-type
                                      cloud-watch-log-delivery-options
                                      :required common-lisp:t :member-name
                                      "cloudWatchLogDelivery"))
                                    (:shape-name "PutLoggingOptionsRequest"))

(smithy/sdk/shapes:define-structure put-logging-options-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "PutLoggingOptionsResponse"))

(smithy/sdk/shapes:define-structure ros2primitive-message-definition
                                    common-lisp:nil
                                    ((primitive-type :target-type
                                      ros2primitive-type :required
                                      common-lisp:t :member-name
                                      "primitiveType")
                                     (offset :target-type double :member-name
                                      "offset")
                                     (scaling :target-type double :member-name
                                      "scaling")
                                     (upper-bound :target-type max-string-size
                                      :member-name "upperBound"))
                                    (:shape-name
                                     "ROS2PrimitiveMessageDefinition"))

(smithy/sdk/shapes:define-enum ros2primitive-type
    common-lisp:nil
  (:bool "BOOL")
  (:byte "BYTE")
  (:char "CHAR")
  (:float32 "FLOAT32")
  (:float64 "FLOAT64")
  (:int8 "INT8")
  (:uint8 "UINT8")
  (:int16 "INT16")
  (:uint16 "UINT16")
  (:int32 "INT32")
  (:uint32 "UINT32")
  (:int64 "INT64")
  (:uint64 "UINT64")
  (:string "STRING")
  (:wstring "WSTRING"))

(smithy/sdk/shapes:define-structure register-account-request common-lisp:nil
                                    ((timestream-resources :target-type
                                      timestream-resources :member-name
                                      "timestreamResources")
                                     (iam-resources :target-type iam-resources
                                      :member-name "iamResources"))
                                    (:shape-name "RegisterAccountRequest"))

(smithy/sdk/shapes:define-structure register-account-response common-lisp:nil
                                    ((register-account-status :target-type
                                      registration-status :required
                                      common-lisp:t :member-name
                                      "registerAccountStatus")
                                     (timestream-resources :target-type
                                      timestream-resources :member-name
                                      "timestreamResources")
                                     (iam-resources :target-type iam-resources
                                      :required common-lisp:t :member-name
                                      "iamResources")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime"))
                                    (:shape-name "RegisterAccountResponse"))

(smithy/sdk/shapes:define-enum registration-status
    common-lisp:nil
  (:registration-pending "REGISTRATION_PENDING")
  (:registration-success "REGISTRATION_SUCCESS")
  (:registration-failure "REGISTRATION_FAILURE"))

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-unique-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type s3bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3config common-lisp:nil
                                    ((bucket-arn :target-type s3bucket-arn
                                      :required common-lisp:t :member-name
                                      "bucketArn")
                                     (data-format :target-type data-format
                                      :member-name "dataFormat")
                                     (storage-compression-format :target-type
                                      storage-compression-format :member-name
                                      "storageCompressionFormat")
                                     (prefix :target-type prefix :member-name
                                      "prefix"))
                                    (:shape-name "S3Config"))

(smithy/sdk/shapes:define-structure sensor common-lisp:nil
                                    ((fully-qualified-name :target-type string
                                      :required common-lisp:t :member-name
                                      "fullyQualifiedName")
                                     (data-type :target-type node-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (description :target-type description
                                      :member-name "description")
                                     (unit :target-type string :member-name
                                      "unit")
                                     (allowed-values :target-type
                                      list-of-strings :member-name
                                      "allowedValues")
                                     (min :target-type double :member-name
                                      "min")
                                     (max :target-type double :member-name
                                      "max")
                                     (deprecation-message :target-type message
                                      :member-name "deprecationMessage")
                                     (comment :target-type message :member-name
                                      "comment")
                                     (struct-fully-qualified-name :target-type
                                      node-path :member-name
                                      "structFullyQualifiedName"))
                                    (:shape-name "Sensor"))

common-lisp:nil

(smithy/sdk/shapes:define-structure signal-catalog-summary common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (arn :target-type arn :member-name "arn")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "lastModificationTime"))
                                    (:shape-name "SignalCatalogSummary"))

(smithy/sdk/shapes:define-structure signal-decoder common-lisp:nil
                                    ((fully-qualified-name :target-type
                                      fully-qualified-name :required
                                      common-lisp:t :member-name
                                      "fullyQualifiedName")
                                     (type :target-type signal-decoder-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (interface-id :target-type interface-id
                                      :required common-lisp:t :member-name
                                      "interfaceId")
                                     (can-signal :target-type can-signal
                                      :member-name "canSignal")
                                     (obd-signal :target-type obd-signal
                                      :member-name "obdSignal")
                                     (message-signal :target-type
                                      message-signal :member-name
                                      "messageSignal")
                                     (custom-decoding-signal :target-type
                                      custom-decoding-signal :member-name
                                      "customDecodingSignal"))
                                    (:shape-name "SignalDecoder"))

(smithy/sdk/shapes:define-enum signal-decoder-failure-reason
    common-lisp:nil
  (:duplicate-signal "DUPLICATE_SIGNAL")
  (:conflicting-signal "CONFLICTING_SIGNAL")
  (:signal-to-add-already-exists "SIGNAL_TO_ADD_ALREADY_EXISTS")
  (:signal-not-associated-with-network-interface
   "SIGNAL_NOT_ASSOCIATED_WITH_NETWORK_INTERFACE")
  (:network-interface-type-incompatible-with-signal-decoder-type
   "NETWORK_INTERFACE_TYPE_INCOMPATIBLE_WITH_SIGNAL_DECODER_TYPE")
  (:signal-not-in-model "SIGNAL_NOT_IN_MODEL")
  (:can-signal-info-is-null "CAN_SIGNAL_INFO_IS_NULL")
  (:obd-signal-info-is-null "OBD_SIGNAL_INFO_IS_NULL")
  (:no-decoder-info-for-signal-in-model "NO_DECODER_INFO_FOR_SIGNAL_IN_MODEL")
  (:message-signal-info-is-null "MESSAGE_SIGNAL_INFO_IS_NULL")
  (:signal-decoder-type-incompatible-with-message-signal-type
   "SIGNAL_DECODER_TYPE_INCOMPATIBLE_WITH_MESSAGE_SIGNAL_TYPE")
  (:struct-size-mismatch "STRUCT_SIZE_MISMATCH")
  (:no-signal-in-catalog-for-decoder-signal
   "NO_SIGNAL_IN_CATALOG_FOR_DECODER_SIGNAL")
  (:signal-decoder-incompatible-with-signal-catalog
   "SIGNAL_DECODER_INCOMPATIBLE_WITH_SIGNAL_CATALOG")
  (:empty-message-signal "EMPTY_MESSAGE_SIGNAL")
  (:custom-decoding-signal-info-is-null "CUSTOM_DECODING_SIGNAL_INFO_IS_NULL"))

(smithy/sdk/shapes:define-enum signal-decoder-type
    common-lisp:nil
  (:can-signal "CAN_SIGNAL")
  (:obd-signal "OBD_SIGNAL")
  (:message-signal "MESSAGE_SIGNAL")
  (:custom-decoding-signal "CUSTOM_DECODING_SIGNAL"))

(smithy/sdk/shapes:define-list signal-decoders :member signal-decoder)

(smithy/sdk/shapes:define-union signal-fetch-config common-lisp:nil
                                ((time-based :target-type
                                  time-based-signal-fetch-config :member-name
                                  "timeBased")
                                 (condition-based :target-type
                                  condition-based-signal-fetch-config
                                  :member-name "conditionBased"))
                                (:shape-name "SignalFetchConfig"))

(smithy/sdk/shapes:define-structure signal-fetch-information common-lisp:nil
                                    ((fully-qualified-name :target-type
                                      node-path :required common-lisp:t
                                      :member-name "fullyQualifiedName")
                                     (signal-fetch-config :target-type
                                      signal-fetch-config :required
                                      common-lisp:t :member-name
                                      "signalFetchConfig")
                                     (condition-language-version :target-type
                                      language-version :member-name
                                      "conditionLanguageVersion")
                                     (actions :target-type
                                      event-expression-list :required
                                      common-lisp:t :member-name "actions"))
                                    (:shape-name "SignalFetchInformation"))

(smithy/sdk/shapes:define-list signal-fetch-information-list :member
                               signal-fetch-information)

(smithy/sdk/shapes:define-structure signal-information common-lisp:nil
                                    ((name :target-type wildcard-signal-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (max-sample-count :target-type
                                      max-sample-count :member-name
                                      "maxSampleCount")
                                     (minimum-sampling-interval-ms :target-type
                                      uint32 :member-name
                                      "minimumSamplingIntervalMs")
                                     (data-partition-id :target-type
                                      data-partition-id :member-name
                                      "dataPartitionId"))
                                    (:shape-name "SignalInformation"))

(smithy/sdk/shapes:define-list signal-information-list :member
                               signal-information)

(smithy/sdk/shapes:define-enum signal-node-type
    common-lisp:nil
  (:sensor "SENSOR")
  (:actuator "ACTUATOR")
  (:attribute "ATTRIBUTE")
  (:branch "BRANCH")
  (:custom-struct "CUSTOM_STRUCT")
  (:custom-property "CUSTOM_PROPERTY"))

(smithy/sdk/shapes:define-enum signal-value-type
    common-lisp:nil
  (:integer "INTEGER")
  (:floating-point "FLOATING_POINT"))

(smithy/sdk/shapes:define-enum spooling-mode
    common-lisp:nil
  (:off "OFF")
  (:to-disk "TO_DISK"))

(smithy/sdk/shapes:define-structure state-template-association common-lisp:nil
                                    ((identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name "identifier")
                                     (state-template-update-strategy
                                      :target-type
                                      state-template-update-strategy :required
                                      common-lisp:t :member-name
                                      "stateTemplateUpdateStrategy"))
                                    (:shape-name "StateTemplateAssociation"))

(smithy/sdk/shapes:define-list state-template-association-identifiers :member
                               resource-identifier)

(smithy/sdk/shapes:define-list state-template-associations :member
                               state-template-association)

(smithy/sdk/shapes:define-list
 state-template-data-extra-dimension-node-path-list :member node-path)

(smithy/sdk/shapes:define-list
 state-template-metadata-extra-dimension-node-path-list :member node-path)

(smithy/sdk/shapes:define-list state-template-properties :member node-path)

common-lisp:nil

(smithy/sdk/shapes:define-list state-template-summaries :member
                               state-template-summary)

(smithy/sdk/shapes:define-structure state-template-summary common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (arn :target-type arn :member-name "arn")
                                     (signal-catalog-arn :target-type arn
                                      :member-name "signalCatalogArn")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :member-name
                                      "lastModificationTime")
                                     (id :target-type resource-unique-id
                                      :member-name "id"))
                                    (:shape-name "StateTemplateSummary"))

(smithy/sdk/shapes:define-union state-template-update-strategy common-lisp:nil
                                ((periodic :target-type
                                  periodic-state-template-update-strategy
                                  :member-name "periodic")
                                 (on-change :target-type
                                  on-change-state-template-update-strategy
                                  :member-name "onChange"))
                                (:shape-name "StateTemplateUpdateStrategy"))

(smithy/sdk/shapes:define-enum storage-compression-format
    common-lisp:nil
  (:none "NONE")
  (:gzip "GZIP"))

(smithy/sdk/shapes:define-type storage-location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure storage-maximum-size common-lisp:nil
                                    ((unit :target-type
                                      storage-maximum-size-unit :required
                                      common-lisp:t :member-name "unit")
                                     (value :target-type
                                      storage-maximum-size-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "StorageMaximumSize"))

(smithy/sdk/shapes:define-enum storage-maximum-size-unit
    common-lisp:nil
  (:mb "MB")
  (:gb "GB")
  (:tb "TB"))

(smithy/sdk/shapes:define-type storage-maximum-size-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure storage-minimum-time-to-live
                                    common-lisp:nil
                                    ((unit :target-type
                                      storage-minimum-time-to-live-unit
                                      :required common-lisp:t :member-name
                                      "unit")
                                     (value :target-type
                                      storage-minimum-time-to-live-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "StorageMinimumTimeToLive"))

(smithy/sdk/shapes:define-enum storage-minimum-time-to-live-unit
    common-lisp:nil
  (:hours "HOURS")
  (:days "DAYS")
  (:weeks "WEEKS"))

(smithy/sdk/shapes:define-type storage-minimum-time-to-live-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type structure-message-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union structured-message common-lisp:nil
                                ((primitive-message-definition :target-type
                                  primitive-message-definition :member-name
                                  "primitiveMessageDefinition")
                                 (structured-message-list-definition
                                  :target-type
                                  structured-message-list-definition
                                  :member-name
                                  "structuredMessageListDefinition")
                                 (structured-message-definition :target-type
                                  structured-message-definition :member-name
                                  "structuredMessageDefinition"))
                                (:shape-name "StructuredMessage"))

(smithy/sdk/shapes:define-list structured-message-definition :member
                               structured-message-field-name-and-data-type-pair)

(smithy/sdk/shapes:define-structure
 structured-message-field-name-and-data-type-pair common-lisp:nil
 ((field-name :target-type structure-message-name :required common-lisp:t
   :member-name "fieldName")
  (data-type :target-type structured-message :required common-lisp:t
   :member-name "dataType"))
 (:shape-name "StructuredMessageFieldNameAndDataTypePair"))

(smithy/sdk/shapes:define-structure structured-message-list-definition
                                    common-lisp:nil
                                    ((name :target-type structure-message-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (member-type :target-type
                                      structured-message :required
                                      common-lisp:t :member-name "memberType")
                                     (list-type :target-type
                                      structured-message-list-type :required
                                      common-lisp:t :member-name "listType")
                                     (capacity :target-type
                                      non-negative-integer :member-name
                                      "capacity"))
                                    (:shape-name
                                     "StructuredMessageListDefinition"))

(smithy/sdk/shapes:define-enum structured-message-list-type
    common-lisp:nil
  (:fixed-capacity "FIXED_CAPACITY")
  (:dynamic-unbounded-capacity "DYNAMIC_UNBOUNDED_CAPACITY")
  (:dynamic-bounded-capacity "DYNAMIC_BOUNDED_CAPACITY"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "ResourceARN"
                                      :http-query "resourceArn")
                                     (tags :target-type tag-list :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (quota-code :target-type string :member-name
                                  "quotaCode")
                                 (service-code :target-type string :member-name
                                  "serviceCode")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-based-collection-scheme
                                    common-lisp:nil
                                    ((period-ms :target-type
                                      collection-period-ms :required
                                      common-lisp:t :member-name "periodMs"))
                                    (:shape-name "TimeBasedCollectionScheme"))

(smithy/sdk/shapes:define-structure time-based-signal-fetch-config
                                    common-lisp:nil
                                    ((execution-frequency-ms :target-type
                                      positive-long :required common-lisp:t
                                      :member-name "executionFrequencyMs"))
                                    (:shape-name "TimeBasedSignalFetchConfig"))

(smithy/sdk/shapes:define-structure time-period common-lisp:nil
                                    ((unit :target-type time-unit :required
                                      common-lisp:t :member-name "unit")
                                     (value :target-type positive-integer
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "TimePeriod"))

(smithy/sdk/shapes:define-enum time-unit
    common-lisp:nil
  (:millisecond "MILLISECOND")
  (:second "SECOND")
  (:minute "MINUTE")
  (:hour "HOUR"))

(smithy/sdk/shapes:define-structure timestream-config common-lisp:nil
                                    ((timestream-table-arn :target-type
                                      timestream-table-arn :required
                                      common-lisp:t :member-name
                                      "timestreamTableArn")
                                     (execution-role-arn :target-type
                                      iamrole-arn :required common-lisp:t
                                      :member-name "executionRoleArn"))
                                    (:shape-name "TimestreamConfig"))

(smithy/sdk/shapes:define-type timestream-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure timestream-registration-response
                                    common-lisp:nil
                                    ((timestream-database-name :target-type
                                      timestream-database-name :required
                                      common-lisp:t :member-name
                                      "timestreamDatabaseName")
                                     (timestream-table-name :target-type
                                      timestream-table-name :required
                                      common-lisp:t :member-name
                                      "timestreamTableName")
                                     (timestream-database-arn :target-type arn
                                      :member-name "timestreamDatabaseArn")
                                     (timestream-table-arn :target-type arn
                                      :member-name "timestreamTableArn")
                                     (registration-status :target-type
                                      registration-status :required
                                      common-lisp:t :member-name
                                      "registrationStatus")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name
                                     "TimestreamRegistrationResponse"))

(smithy/sdk/shapes:define-structure timestream-resources common-lisp:nil
                                    ((timestream-database-name :target-type
                                      timestream-database-name :required
                                      common-lisp:t :member-name
                                      "timestreamDatabaseName")
                                     (timestream-table-name :target-type
                                      timestream-table-name :required
                                      common-lisp:t :member-name
                                      "timestreamTableName"))
                                    (:shape-name "TimestreamResources"))

(smithy/sdk/shapes:define-type timestream-table-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestream-table-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type topic-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum trigger-mode
    common-lisp:nil
  (:always "ALWAYS")
  (:rising-edge "RISING_EDGE"))

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "ResourceARN"
                                      :http-query "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "TagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-enum update-campaign-action
    common-lisp:nil
  (:approve "APPROVE")
  (:suspend "SUSPEND")
  (:resume "RESUME")
  (:update "UPDATE"))

(smithy/sdk/shapes:define-structure update-campaign-request common-lisp:nil
                                    ((name :target-type campaign-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (data-extra-dimensions :target-type
                                      data-extra-dimension-node-path-list
                                      :member-name "dataExtraDimensions")
                                     (action :target-type
                                      update-campaign-action :required
                                      common-lisp:t :member-name "action"))
                                    (:shape-name "UpdateCampaignRequest"))

(smithy/sdk/shapes:define-structure update-campaign-response common-lisp:nil
                                    ((arn :target-type campaign-arn
                                      :member-name "arn")
                                     (name :target-type campaign-name
                                      :member-name "name")
                                     (status :target-type campaign-status
                                      :member-name "status"))
                                    (:shape-name "UpdateCampaignResponse"))

(smithy/sdk/shapes:define-structure update-decoder-manifest-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (signal-decoders-to-add :target-type
                                      signal-decoders :member-name
                                      "signalDecodersToAdd")
                                     (signal-decoders-to-update :target-type
                                      signal-decoders :member-name
                                      "signalDecodersToUpdate")
                                     (signal-decoders-to-remove :target-type
                                      fqns :member-name
                                      "signalDecodersToRemove")
                                     (network-interfaces-to-add :target-type
                                      network-interfaces :member-name
                                      "networkInterfacesToAdd")
                                     (network-interfaces-to-update :target-type
                                      network-interfaces :member-name
                                      "networkInterfacesToUpdate")
                                     (network-interfaces-to-remove :target-type
                                      interface-ids :member-name
                                      "networkInterfacesToRemove")
                                     (status :target-type manifest-status
                                      :member-name "status")
                                     (default-for-unmapped-signals :target-type
                                      default-for-unmapped-signals-type
                                      :member-name
                                      "defaultForUnmappedSignals"))
                                    (:shape-name
                                     "UpdateDecoderManifestRequest"))

(smithy/sdk/shapes:define-structure update-decoder-manifest-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name
                                     "UpdateDecoderManifestResponse"))

(smithy/sdk/shapes:define-structure update-fleet-request common-lisp:nil
                                    ((fleet-id :target-type fleet-id :required
                                      common-lisp:t :member-name "fleetId")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "UpdateFleetRequest"))

(smithy/sdk/shapes:define-structure update-fleet-response common-lisp:nil
                                    ((id :target-type fleet-id :member-name
                                      "id")
                                     (arn :target-type arn :member-name "arn"))
                                    (:shape-name "UpdateFleetResponse"))

(smithy/sdk/shapes:define-enum update-mode
    common-lisp:nil
  (:overwrite "Overwrite")
  (:merge "Merge"))

(smithy/sdk/shapes:define-structure update-model-manifest-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (nodes-to-add :target-type node-paths
                                      :member-name "nodesToAdd")
                                     (nodes-to-remove :target-type node-paths
                                      :member-name "nodesToRemove")
                                     (status :target-type manifest-status
                                      :member-name "status"))
                                    (:shape-name "UpdateModelManifestRequest"))

(smithy/sdk/shapes:define-structure update-model-manifest-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "UpdateModelManifestResponse"))

(smithy/sdk/shapes:define-structure update-signal-catalog-request
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (nodes-to-add :target-type nodes
                                      :member-name "nodesToAdd")
                                     (nodes-to-update :target-type nodes
                                      :member-name "nodesToUpdate")
                                     (nodes-to-remove :target-type node-paths
                                      :member-name "nodesToRemove"))
                                    (:shape-name "UpdateSignalCatalogRequest"))

(smithy/sdk/shapes:define-structure update-signal-catalog-response
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "UpdateSignalCatalogResponse"))

(smithy/sdk/shapes:define-input update-state-template-request common-lisp:nil
                                ((identifier :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "identifier" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (state-template-properties-to-add :target-type
                                  state-template-properties :member-name
                                  "stateTemplatePropertiesToAdd")
                                 (state-template-properties-to-remove
                                  :target-type state-template-properties
                                  :member-name
                                  "stateTemplatePropertiesToRemove")
                                 (data-extra-dimensions :target-type
                                  state-template-data-extra-dimension-node-path-list
                                  :member-name "dataExtraDimensions")
                                 (metadata-extra-dimensions :target-type
                                  state-template-metadata-extra-dimension-node-path-list
                                  :member-name "metadataExtraDimensions"))
                                (:shape-name "UpdateStateTemplateRequest"))

(smithy/sdk/shapes:define-output update-state-template-response common-lisp:nil
                                 ((name :target-type resource-name :member-name
                                   "name")
                                  (arn :target-type arn :member-name "arn")
                                  (id :target-type resource-unique-id
                                   :member-name "id"))
                                 (:shape-name "UpdateStateTemplateResponse"))

(smithy/sdk/shapes:define-structure update-vehicle-error common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :member-name "vehicleName")
                                     (code :target-type number :member-name
                                      "code")
                                     (message :target-type string :member-name
                                      "message"))
                                    (:shape-name "UpdateVehicleError"))

(smithy/sdk/shapes:define-structure update-vehicle-request common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName")
                                     (model-manifest-arn :target-type arn
                                      :member-name "modelManifestArn")
                                     (decoder-manifest-arn :target-type arn
                                      :member-name "decoderManifestArn")
                                     (attributes :target-type attributes-map
                                      :member-name "attributes")
                                     (attribute-update-mode :target-type
                                      update-mode :member-name
                                      "attributeUpdateMode")
                                     (state-templates-to-add :target-type
                                      state-template-associations :member-name
                                      "stateTemplatesToAdd")
                                     (state-templates-to-remove :target-type
                                      state-template-association-identifiers
                                      :member-name "stateTemplatesToRemove")
                                     (state-templates-to-update :target-type
                                      state-template-associations :member-name
                                      "stateTemplatesToUpdate"))
                                    (:shape-name "UpdateVehicleRequest"))

(smithy/sdk/shapes:define-structure update-vehicle-request-item common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName")
                                     (model-manifest-arn :target-type arn
                                      :member-name "modelManifestArn")
                                     (decoder-manifest-arn :target-type arn
                                      :member-name "decoderManifestArn")
                                     (attributes :target-type attributes-map
                                      :member-name "attributes")
                                     (attribute-update-mode :target-type
                                      update-mode :member-name
                                      "attributeUpdateMode")
                                     (state-templates-to-add :target-type
                                      state-template-associations :member-name
                                      "stateTemplatesToAdd")
                                     (state-templates-to-remove :target-type
                                      state-template-association-identifiers
                                      :member-name "stateTemplatesToRemove")
                                     (state-templates-to-update :target-type
                                      state-template-associations :member-name
                                      "stateTemplatesToUpdate"))
                                    (:shape-name "UpdateVehicleRequestItem"))

(smithy/sdk/shapes:define-structure update-vehicle-response common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :member-name "vehicleName")
                                     (arn :target-type arn :member-name "arn"))
                                    (:shape-name "UpdateVehicleResponse"))

(smithy/sdk/shapes:define-structure update-vehicle-response-item
                                    common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :member-name "vehicleName")
                                     (arn :target-type arn :member-name "arn"))
                                    (:shape-name "UpdateVehicleResponseItem"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:other "other"))

(smithy/sdk/shapes:define-enum vehicle-association-behavior
    common-lisp:nil
  (:create-iot-thing "CreateIotThing")
  (:validate-iot-thing-exists "ValidateIotThingExists"))

common-lisp:nil

(smithy/sdk/shapes:define-structure vehicle-middleware common-lisp:nil
                                    ((name :target-type vehicle-middleware-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (protocol-name :target-type
                                      vehicle-middleware-protocol :required
                                      common-lisp:t :member-name
                                      "protocolName"))
                                    (:shape-name "VehicleMiddleware"))

(smithy/sdk/shapes:define-type vehicle-middleware-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum vehicle-middleware-protocol
    common-lisp:nil
  (:ros-2 "ROS_2"))

common-lisp:nil

(smithy/sdk/shapes:define-enum vehicle-state
    common-lisp:nil
  (:created "CREATED")
  (:ready "READY")
  (:healthy "HEALTHY")
  (:suspended "SUSPENDED")
  (:deleting "DELETING")
  (:ready-for-checkin "READY_FOR_CHECKIN"))

(smithy/sdk/shapes:define-structure vehicle-status common-lisp:nil
                                    ((campaign-name :target-type campaign-name
                                      :member-name "campaignName")
                                     (vehicle-name :target-type vehicle-name
                                      :member-name "vehicleName")
                                     (status :target-type vehicle-state
                                      :member-name "status"))
                                    (:shape-name "VehicleStatus"))

(smithy/sdk/shapes:define-list vehicle-status-list :member vehicle-status)

(smithy/sdk/shapes:define-structure vehicle-summary common-lisp:nil
                                    ((vehicle-name :target-type vehicle-name
                                      :required common-lisp:t :member-name
                                      "vehicleName")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (model-manifest-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "modelManifestArn")
                                     (decoder-manifest-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "decoderManifestArn")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-modification-time :target-type
                                      timestamp :required common-lisp:t
                                      :member-name "lastModificationTime")
                                     (attributes :target-type attributes-map
                                      :member-name "attributes"))
                                    (:shape-name "VehicleSummary"))

(smithy/sdk/shapes:define-type action-event-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-names-list :member attribute-name)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-values-list :member attribute-value)

(smithy/sdk/shapes:define-map attributes-map :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type campaign-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type campaign-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list campaign-summaries :member campaign-summary)

(smithy/sdk/shapes:define-type collection-period-ms
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list create-vehicle-errors :member
                               create-vehicle-error)

(smithy/sdk/shapes:define-list create-vehicle-request-items :member
                               create-vehicle-request-item)

(smithy/sdk/shapes:define-list create-vehicle-responses :member
                               create-vehicle-response-item)

(smithy/sdk/shapes:define-type customer-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list decoder-manifest-summaries :member
                               decoder-manifest-summary)

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fetch-config-event-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fleet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fleet-summaries :member fleet-summary)

(smithy/sdk/shapes:define-list fleets :member fleet-id)

(smithy/sdk/shapes:define-type language-version smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-strings :member string)

(smithy/sdk/shapes:define-type list-vehicles-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-sample-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-string-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list model-manifest-summaries :member
                               model-manifest-summary)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-negative-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type positive-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list signal-catalog-summaries :member
                               signal-catalog-summary)

(smithy/sdk/shapes:define-type status-str smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type uint32 smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list update-vehicle-errors :member
                               update-vehicle-error)

(smithy/sdk/shapes:define-list update-vehicle-request-items :member
                               update-vehicle-request-item)

(smithy/sdk/shapes:define-list update-vehicle-response-items :member
                               update-vehicle-response-item)

(smithy/sdk/shapes:define-type vehicle-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vehicle-summaries :member vehicle-summary)

(smithy/sdk/shapes:define-list vehicles :member vehicle-name)

(smithy/sdk/shapes:define-type wildcard-signal-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-vehicle-fleet :shape-name
                                       "AssociateVehicleFleet" :input
                                       associate-vehicle-fleet-request :output
                                       associate-vehicle-fleet-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/vehicles/{vehicleName}/associate"
                                       :code 204)

(smithy/sdk/operation:define-operation batch-create-vehicle :shape-name
                                       "BatchCreateVehicle" :input
                                       batch-create-vehicle-request :output
                                       batch-create-vehicle-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/vehicles" :code
                                       200)

(smithy/sdk/operation:define-operation batch-update-vehicle :shape-name
                                       "BatchUpdateVehicle" :input
                                       batch-update-vehicle-request :output
                                       batch-update-vehicle-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/vehicles" :code 200)

(smithy/sdk/operation:define-operation create-campaign :shape-name
                                       "CreateCampaign" :input
                                       create-campaign-request :output
                                       create-campaign-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/campaigns/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-decoder-manifest :shape-name
                                       "CreateDecoderManifest" :input
                                       create-decoder-manifest-request :output
                                       create-decoder-manifest-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        decoder-manifest-validation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/decoder-manifests/{name}" :code 200)

(smithy/sdk/operation:define-operation create-fleet :shape-name "CreateFleet"
                                       :input create-fleet-request :output
                                       create-fleet-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/fleets/{fleetId}"
                                       :code 201)

(smithy/sdk/operation:define-operation create-model-manifest :shape-name
                                       "CreateModelManifest" :input
                                       create-model-manifest-request :output
                                       create-model-manifest-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        invalid-signals-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/model-manifests/{name}" :code 200)

(smithy/sdk/operation:define-operation create-signal-catalog :shape-name
                                       "CreateSignalCatalog" :input
                                       create-signal-catalog-request :output
                                       create-signal-catalog-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        invalid-node-exception
                                        invalid-signals-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/signal-catalogs/{name}" :code 200)

(smithy/sdk/operation:define-operation create-state-template :shape-name
                                       "CreateStateTemplate" :input
                                       create-state-template-request :output
                                       create-state-template-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-signals-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/state-templates/{name}" :code 200)

(smithy/sdk/operation:define-operation create-vehicle :shape-name
                                       "CreateVehicle" :input
                                       create-vehicle-request :output
                                       create-vehicle-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/vehicles/{vehicleName}" :code 201)

(smithy/sdk/operation:define-operation delete-campaign :shape-name
                                       "DeleteCampaign" :input
                                       delete-campaign-request :output
                                       delete-campaign-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/campaigns/{name}" :code 204)

(smithy/sdk/operation:define-operation delete-decoder-manifest :shape-name
                                       "DeleteDecoderManifest" :input
                                       delete-decoder-manifest-request :output
                                       delete-decoder-manifest-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/decoder-manifests/{name}" :code 200)

(smithy/sdk/operation:define-operation delete-fleet :shape-name "DeleteFleet"
                                       :input delete-fleet-request :output
                                       delete-fleet-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/fleets/{fleetId}" :code 200)

(smithy/sdk/operation:define-operation delete-model-manifest :shape-name
                                       "DeleteModelManifest" :input
                                       delete-model-manifest-request :output
                                       delete-model-manifest-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/model-manifests/{name}" :code 200)

(smithy/sdk/operation:define-operation delete-signal-catalog :shape-name
                                       "DeleteSignalCatalog" :input
                                       delete-signal-catalog-request :output
                                       delete-signal-catalog-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/signal-catalogs/{name}" :code 200)

(smithy/sdk/operation:define-operation delete-state-template :shape-name
                                       "DeleteStateTemplate" :input
                                       delete-state-template-request :output
                                       delete-state-template-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/state-templates/{identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-vehicle :shape-name
                                       "DeleteVehicle" :input
                                       delete-vehicle-request :output
                                       delete-vehicle-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/vehicles/{vehicleName}" :code 204)

(smithy/sdk/operation:define-operation disassociate-vehicle-fleet :shape-name
                                       "DisassociateVehicleFleet" :input
                                       disassociate-vehicle-fleet-request
                                       :output
                                       disassociate-vehicle-fleet-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/vehicles/{vehicleName}/disassociate"
                                       :code 204)

(smithy/sdk/operation:define-operation get-campaign :shape-name "GetCampaign"
                                       :input get-campaign-request :output
                                       get-campaign-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/campaigns/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-decoder-manifest :shape-name
                                       "GetDecoderManifest" :input
                                       get-decoder-manifest-request :output
                                       get-decoder-manifest-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/decoder-manifests/{name}" :code 200)

(smithy/sdk/operation:define-operation get-encryption-configuration :shape-name
                                       "GetEncryptionConfiguration" :input
                                       get-encryption-configuration-request
                                       :output
                                       get-encryption-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/encryptionConfiguration" :code 200)

(smithy/sdk/operation:define-operation get-fleet :shape-name "GetFleet" :input
                                       get-fleet-request :output
                                       get-fleet-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/fleets/{fleetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-logging-options :shape-name
                                       "GetLoggingOptions" :input
                                       get-logging-options-request :output
                                       get-logging-options-response :errors
                                       (access-denied-exception
                                        throttling-exception)
                                       :method "GET" :uri "/loggingOptions"
                                       :code 200)

(smithy/sdk/operation:define-operation get-model-manifest :shape-name
                                       "GetModelManifest" :input
                                       get-model-manifest-request :output
                                       get-model-manifest-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-manifests/{name}" :code 200)

(smithy/sdk/operation:define-operation get-register-account-status :shape-name
                                       "GetRegisterAccountStatus" :input
                                       get-register-account-status-request
                                       :output
                                       get-register-account-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/account/registration_status" :code 200)

(smithy/sdk/operation:define-operation get-signal-catalog :shape-name
                                       "GetSignalCatalog" :input
                                       get-signal-catalog-request :output
                                       get-signal-catalog-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/signal-catalogs/{name}" :code 200)

(smithy/sdk/operation:define-operation get-state-template :shape-name
                                       "GetStateTemplate" :input
                                       get-state-template-request :output
                                       get-state-template-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/state-templates/{identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-vehicle :shape-name "GetVehicle"
                                       :input get-vehicle-request :output
                                       get-vehicle-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/vehicles/{vehicleName}" :code 200)

(smithy/sdk/operation:define-operation get-vehicle-status :shape-name
                                       "GetVehicleStatus" :input
                                       get-vehicle-status-request :output
                                       get-vehicle-status-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/vehicles/{vehicleName}/status" :code
                                       200)

(smithy/sdk/operation:define-operation import-decoder-manifest :shape-name
                                       "ImportDecoderManifest" :input
                                       import-decoder-manifest-request :output
                                       import-decoder-manifest-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        decoder-manifest-validation-exception
                                        invalid-signals-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/decoder-manifests/{name}" :code 200)

(smithy/sdk/operation:define-operation import-signal-catalog :shape-name
                                       "ImportSignalCatalog" :input
                                       import-signal-catalog-request :output
                                       import-signal-catalog-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-signals-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/signal-catalogs/{name}/nodes" :code
                                       200)

(smithy/sdk/operation:define-operation list-campaigns :shape-name
                                       "ListCampaigns" :input
                                       list-campaigns-request :output
                                       list-campaigns-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/campaigns" :code
                                       200)

(smithy/sdk/operation:define-operation list-decoder-manifest-network-interfaces
                                       :shape-name
                                       "ListDecoderManifestNetworkInterfaces"
                                       :input
                                       list-decoder-manifest-network-interfaces-request
                                       :output
                                       list-decoder-manifest-network-interfaces-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/decoder-manifests/{name}/network-interfaces"
                                       :code 200)

(smithy/sdk/operation:define-operation list-decoder-manifest-signals
                                       :shape-name "ListDecoderManifestSignals"
                                       :input
                                       list-decoder-manifest-signals-request
                                       :output
                                       list-decoder-manifest-signals-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/decoder-manifests/{name}/signals"
                                       :code 200)

(smithy/sdk/operation:define-operation list-decoder-manifests :shape-name
                                       "ListDecoderManifests" :input
                                       list-decoder-manifests-request :output
                                       list-decoder-manifests-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/decoder-manifests"
                                       :code 200)

(smithy/sdk/operation:define-operation list-fleets :shape-name "ListFleets"
                                       :input list-fleets-request :output
                                       list-fleets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/fleets" :code 200)

(smithy/sdk/operation:define-operation list-fleets-for-vehicle :shape-name
                                       "ListFleetsForVehicle" :input
                                       list-fleets-for-vehicle-request :output
                                       list-fleets-for-vehicle-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/vehicles/{vehicleName}/fleets" :code
                                       200)

(smithy/sdk/operation:define-operation list-model-manifest-nodes :shape-name
                                       "ListModelManifestNodes" :input
                                       list-model-manifest-nodes-request
                                       :output
                                       list-model-manifest-nodes-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/model-manifests/{name}/nodes" :code
                                       200)

(smithy/sdk/operation:define-operation list-model-manifests :shape-name
                                       "ListModelManifests" :input
                                       list-model-manifests-request :output
                                       list-model-manifests-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/model-manifests"
                                       :code 200)

(smithy/sdk/operation:define-operation list-signal-catalog-nodes :shape-name
                                       "ListSignalCatalogNodes" :input
                                       list-signal-catalog-nodes-request
                                       :output
                                       list-signal-catalog-nodes-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/signal-catalogs/{name}/nodes" :code
                                       200)

(smithy/sdk/operation:define-operation list-signal-catalogs :shape-name
                                       "ListSignalCatalogs" :input
                                       list-signal-catalogs-request :output
                                       list-signal-catalogs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/signal-catalogs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-state-templates :shape-name
                                       "ListStateTemplates" :input
                                       list-state-templates-request :output
                                       list-state-templates-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/state-templates"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation list-vehicles :shape-name "ListVehicles"
                                       :input list-vehicles-request :output
                                       list-vehicles-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/vehicles" :code 200)

(smithy/sdk/operation:define-operation list-vehicles-in-fleet :shape-name
                                       "ListVehiclesInFleet" :input
                                       list-vehicles-in-fleet-request :output
                                       list-vehicles-in-fleet-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/fleets/{fleetId}/vehicles" :code 200)

(smithy/sdk/operation:define-operation put-encryption-configuration :shape-name
                                       "PutEncryptionConfiguration" :input
                                       put-encryption-configuration-request
                                       :output
                                       put-encryption-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/encryptionConfiguration" :code 200)

(smithy/sdk/operation:define-operation put-logging-options :shape-name
                                       "PutLoggingOptions" :input
                                       put-logging-options-request :output
                                       put-logging-options-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/loggingOptions"
                                       :code 204)

(smithy/sdk/operation:define-operation register-account :shape-name
                                       "RegisterAccount" :input
                                       register-account-request :output
                                       register-account-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/account/registration" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/tags" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/tags" :code 204)

(smithy/sdk/operation:define-operation update-campaign :shape-name
                                       "UpdateCampaign" :input
                                       update-campaign-request :output
                                       update-campaign-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/campaigns/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-decoder-manifest :shape-name
                                       "UpdateDecoderManifest" :input
                                       update-decoder-manifest-request :output
                                       update-decoder-manifest-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        decoder-manifest-validation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/decoder-manifests/{name}" :code 200)

(smithy/sdk/operation:define-operation update-fleet :shape-name "UpdateFleet"
                                       :input update-fleet-request :output
                                       update-fleet-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/fleets/{fleetId}"
                                       :code 204)

(smithy/sdk/operation:define-operation update-model-manifest :shape-name
                                       "UpdateModelManifest" :input
                                       update-model-manifest-request :output
                                       update-model-manifest-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-signals-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/model-manifests/{name}" :code 200)

(smithy/sdk/operation:define-operation update-signal-catalog :shape-name
                                       "UpdateSignalCatalog" :input
                                       update-signal-catalog-request :output
                                       update-signal-catalog-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-node-exception
                                        invalid-signals-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/signal-catalogs/{name}" :code 200)

(smithy/sdk/operation:define-operation update-state-template :shape-name
                                       "UpdateStateTemplate" :input
                                       update-state-template-request :output
                                       update-state-template-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-signals-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/state-templates/{identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation update-vehicle :shape-name
                                       "UpdateVehicle" :input
                                       update-vehicle-request :output
                                       update-vehicle-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/vehicles/{vehicleName}" :code 204)
