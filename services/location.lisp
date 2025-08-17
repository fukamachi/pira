(uiop/package:define-package #:pira/location (:use)
                             (:export #:api-key #:api-key-action
                              #:api-key-action-list #:api-key-filter
                              #:api-key-resource #:api-key-restrictions #:arn
                              #:arn-list #:associate-tracker-consumer
                              #:associate-tracker-consumer-request
                              #:associate-tracker-consumer-response
                              #:base64encoded-geobuf
                              #:batch-delete-device-position-history
                              #:batch-delete-device-position-history-error
                              #:batch-delete-device-position-history-error-list
                              #:batch-delete-device-position-history-request
                              #:batch-delete-device-position-history-response
                              #:batch-delete-geofence
                              #:batch-delete-geofence-error
                              #:batch-delete-geofence-error-list
                              #:batch-delete-geofence-request
                              #:batch-delete-geofence-response
                              #:batch-evaluate-geofences
                              #:batch-evaluate-geofences-error
                              #:batch-evaluate-geofences-error-list
                              #:batch-evaluate-geofences-request
                              #:batch-evaluate-geofences-response
                              #:batch-get-device-position
                              #:batch-get-device-position-error
                              #:batch-get-device-position-error-list
                              #:batch-get-device-position-request
                              #:batch-get-device-position-response
                              #:batch-item-error #:batch-item-error-code
                              #:batch-put-geofence #:batch-put-geofence-error
                              #:batch-put-geofence-error-list
                              #:batch-put-geofence-request
                              #:batch-put-geofence-request-entry
                              #:batch-put-geofence-request-entry-list
                              #:batch-put-geofence-response
                              #:batch-put-geofence-success
                              #:batch-put-geofence-success-list
                              #:batch-update-device-position
                              #:batch-update-device-position-error
                              #:batch-update-device-position-error-list
                              #:batch-update-device-position-request
                              #:batch-update-device-position-response
                              #:bounding-box #:calculate-route
                              #:calculate-route-car-mode-options
                              #:calculate-route-matrix
                              #:calculate-route-matrix-request
                              #:calculate-route-matrix-response
                              #:calculate-route-matrix-summary
                              #:calculate-route-request
                              #:calculate-route-response
                              #:calculate-route-summary
                              #:calculate-route-truck-mode-options
                              #:cell-signals #:circle #:country-code3
                              #:country-code3or-empty #:country-code-list
                              #:create-geofence-collection
                              #:create-geofence-collection-request
                              #:create-geofence-collection-response
                              #:create-key #:create-key-request
                              #:create-key-response #:create-map
                              #:create-map-request #:create-map-response
                              #:create-place-index #:create-place-index-request
                              #:create-place-index-response
                              #:create-route-calculator
                              #:create-route-calculator-request
                              #:create-route-calculator-response
                              #:create-tracker #:create-tracker-request
                              #:create-tracker-response #:custom-layer
                              #:custom-layer-list #:data-source-configuration
                              #:delete-geofence-collection
                              #:delete-geofence-collection-request
                              #:delete-geofence-collection-response
                              #:delete-key #:delete-key-request
                              #:delete-key-response #:delete-map
                              #:delete-map-request #:delete-map-response
                              #:delete-place-index #:delete-place-index-request
                              #:delete-place-index-response
                              #:delete-route-calculator
                              #:delete-route-calculator-request
                              #:delete-route-calculator-response
                              #:delete-tracker #:delete-tracker-request
                              #:delete-tracker-response
                              #:describe-geofence-collection
                              #:describe-geofence-collection-request
                              #:describe-geofence-collection-response
                              #:describe-key #:describe-key-request
                              #:describe-key-response #:describe-map
                              #:describe-map-request #:describe-map-response
                              #:describe-place-index
                              #:describe-place-index-request
                              #:describe-place-index-response
                              #:describe-route-calculator
                              #:describe-route-calculator-request
                              #:describe-route-calculator-response
                              #:describe-tracker #:describe-tracker-request
                              #:describe-tracker-response #:device-ids-list
                              #:device-position #:device-position-list
                              #:device-position-update
                              #:device-position-update-list #:device-state
                              #:dimension-unit #:disassociate-tracker-consumer
                              #:disassociate-tracker-consumer-request
                              #:disassociate-tracker-consumer-response
                              #:distance-unit #:earfcn #:eutran-cell-id
                              #:filter-place-category-list
                              #:forecast-geofence-events
                              #:forecast-geofence-events-device-state
                              #:forecasted-event #:forecasted-events-list
                              #:forecasted-geofence-event-type
                              #:generic-resource #:geo-arn #:geo-arn-list
                              #:geo-arn-v2 #:geofence-collection-resource
                              #:geofence-geometry #:get-device-position
                              #:get-device-position-history
                              #:get-device-position-history-request
                              #:get-device-position-history-response
                              #:get-device-position-request
                              #:get-device-position-response #:get-geofence
                              #:get-geofence-request #:get-geofence-response
                              #:get-map-glyphs #:get-map-glyphs-request
                              #:get-map-glyphs-response #:get-map-sprites
                              #:get-map-sprites-request
                              #:get-map-sprites-response
                              #:get-map-style-descriptor
                              #:get-map-style-descriptor-request
                              #:get-map-style-descriptor-response
                              #:get-map-tile #:get-map-tile-request
                              #:get-map-tile-response #:get-place
                              #:get-place-request #:get-place-response #:id
                              #:id-list #:inferred-state #:intended-use
                              #:kms-key-id #:language-tag #:large-token #:leg
                              #:leg-geometry #:leg-list #:line-string
                              #:linear-ring #:linear-rings
                              #:list-device-positions
                              #:list-device-positions-request
                              #:list-device-positions-response
                              #:list-device-positions-response-entry
                              #:list-device-positions-response-entry-list
                              #:list-geofence-collections
                              #:list-geofence-collections-request
                              #:list-geofence-collections-response
                              #:list-geofence-collections-response-entry
                              #:list-geofence-collections-response-entry-list
                              #:list-geofence-response-entry
                              #:list-geofence-response-entry-list
                              #:list-geofences #:list-geofences-request
                              #:list-geofences-response #:list-keys
                              #:list-keys-request #:list-keys-response
                              #:list-keys-response-entry
                              #:list-keys-response-entry-list #:list-maps
                              #:list-maps-request #:list-maps-response
                              #:list-maps-response-entry
                              #:list-maps-response-entry-list
                              #:list-place-indexes #:list-place-indexes-request
                              #:list-place-indexes-response
                              #:list-place-indexes-response-entry
                              #:list-place-indexes-response-entry-list
                              #:list-route-calculators
                              #:list-route-calculators-request
                              #:list-route-calculators-response
                              #:list-route-calculators-response-entry
                              #:list-route-calculators-response-entry-list
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-tracker-consumers
                              #:list-tracker-consumers-request
                              #:list-tracker-consumers-response #:list-trackers
                              #:list-trackers-request #:list-trackers-response
                              #:list-trackers-response-entry
                              #:list-trackers-response-entry-list
                              #:location-service #:lte-cell-details
                              #:lte-cell-details-list #:lte-local-id
                              #:lte-network-measurements
                              #:lte-network-measurements-list
                              #:map-configuration #:map-configuration-update
                              #:map-resource #:map-style #:multi-linear-rings
                              #:nearest-distance #:optimization-mode #:pci
                              #:place #:place-category #:place-category-list
                              #:place-geometry #:place-id
                              #:place-index-resource
                              #:place-index-search-result-limit
                              #:place-supplemental-category
                              #:place-supplemental-category-list #:position
                              #:position-filtering #:position-list
                              #:position-property-map #:positional-accuracy
                              #:pricing-plan #:property-map #:put-geofence
                              #:put-geofence-request #:put-geofence-response
                              #:referer-pattern #:referer-pattern-list
                              #:resource-description #:resource-name
                              #:route-calculator-resource #:route-matrix
                              #:route-matrix-entry #:route-matrix-entry-error
                              #:route-matrix-error-code #:route-matrix-row
                              #:rsrp #:rsrq #:search-for-position-result
                              #:search-for-position-result-list
                              #:search-for-suggestions-result
                              #:search-for-suggestions-result-list
                              #:search-for-text-result
                              #:search-for-text-result-list
                              #:search-place-index-for-position
                              #:search-place-index-for-position-request
                              #:search-place-index-for-position-response
                              #:search-place-index-for-position-summary
                              #:search-place-index-for-suggestions
                              #:search-place-index-for-suggestions-request
                              #:search-place-index-for-suggestions-response
                              #:search-place-index-for-suggestions-summary
                              #:search-place-index-for-text
                              #:search-place-index-for-text-request
                              #:search-place-index-for-text-response
                              #:search-place-index-for-text-summary
                              #:sensitive-double #:sensitive-string
                              #:speed-unit #:status #:step #:step-list
                              #:tag-key #:tag-keys #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:time-zone #:timestamp #:token
                              #:tracker-resource #:tracking-filter-geometry
                              #:travel-mode #:truck-dimensions #:truck-weight
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-geofence-collection
                              #:update-geofence-collection-request
                              #:update-geofence-collection-response
                              #:update-key #:update-key-request
                              #:update-key-response #:update-map
                              #:update-map-request #:update-map-response
                              #:update-place-index #:update-place-index-request
                              #:update-place-index-response
                              #:update-route-calculator
                              #:update-route-calculator-request
                              #:update-route-calculator-response
                              #:update-tracker #:update-tracker-request
                              #:update-tracker-response #:uuid
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:vehicle-weight-unit #:verify-device-position
                              #:waypoint-position-list #:wi-fi-access-point
                              #:wi-fi-access-point-list))
(common-lisp:in-package #:pira/location)

(smithy/sdk/service:define-service location-service :shape-name
                                   "LocationService" :version "2020-11-19"
                                   :title "Amazon Location Service" :operations
                                   'common-lisp:nil :traits
                                   '(("aws.api#service" ("sdkId" . "Location")
                                      ("arnNamespace" . "geo"))
                                     ("aws.auth#sigv4" ("name" . "geo"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type api-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type api-key-action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list api-key-action-list :member api-key-action)

(smithy/sdk/shapes:define-structure api-key-filter common-lisp:nil
                                    ((key-status :target-type status
                                      :member-name "KeyStatus"))
                                    (:shape-name "ApiKeyFilter"))

common-lisp:nil

(smithy/sdk/shapes:define-structure api-key-restrictions common-lisp:nil
                                    ((allow-actions :target-type
                                      api-key-action-list :required
                                      common-lisp:t :member-name
                                      "AllowActions")
                                     (allow-resources :target-type geo-arn-list
                                      :required common-lisp:t :member-name
                                      "AllowResources")
                                     (allow-referers :target-type
                                      referer-pattern-list :member-name
                                      "AllowReferers"))
                                    (:shape-name "ApiKeyRestrictions"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arn-list :member arn)

(smithy/sdk/shapes:define-structure associate-tracker-consumer-request
                                    common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (consumer-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ConsumerArn"))
                                    (:shape-name
                                     "AssociateTrackerConsumerRequest"))

(smithy/sdk/shapes:define-structure associate-tracker-consumer-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "AssociateTrackerConsumerResponse"))

(smithy/sdk/shapes:define-type base64encoded-geobuf
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure batch-delete-device-position-history-error
                                    common-lisp:nil
                                    ((device-id :target-type id :required
                                      common-lisp:t :member-name "DeviceId")
                                     (error :target-type batch-item-error
                                      :required common-lisp:t :member-name
                                      "Error"))
                                    (:shape-name
                                     "BatchDeleteDevicePositionHistoryError"))

(smithy/sdk/shapes:define-list batch-delete-device-position-history-error-list
                               :member
                               batch-delete-device-position-history-error)

(smithy/sdk/shapes:define-structure
 batch-delete-device-position-history-request common-lisp:nil
 ((tracker-name :target-type resource-name :required common-lisp:t :member-name
   "TrackerName")
  (device-ids :target-type device-ids-list :required common-lisp:t :member-name
   "DeviceIds"))
 (:shape-name "BatchDeleteDevicePositionHistoryRequest"))

(smithy/sdk/shapes:define-structure
 batch-delete-device-position-history-response common-lisp:nil
 ((errors :target-type batch-delete-device-position-history-error-list
   :required common-lisp:t :member-name "Errors"))
 (:shape-name "BatchDeleteDevicePositionHistoryResponse"))

(smithy/sdk/shapes:define-structure batch-delete-geofence-error common-lisp:nil
                                    ((geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId")
                                     (error :target-type batch-item-error
                                      :required common-lisp:t :member-name
                                      "Error"))
                                    (:shape-name "BatchDeleteGeofenceError"))

(smithy/sdk/shapes:define-list batch-delete-geofence-error-list :member
                               batch-delete-geofence-error)

(smithy/sdk/shapes:define-structure batch-delete-geofence-request
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (geofence-ids :target-type id-list
                                      :required common-lisp:t :member-name
                                      "GeofenceIds"))
                                    (:shape-name "BatchDeleteGeofenceRequest"))

(smithy/sdk/shapes:define-structure batch-delete-geofence-response
                                    common-lisp:nil
                                    ((errors :target-type
                                      batch-delete-geofence-error-list
                                      :required common-lisp:t :member-name
                                      "Errors"))
                                    (:shape-name "BatchDeleteGeofenceResponse"))

(smithy/sdk/shapes:define-structure batch-evaluate-geofences-error
                                    common-lisp:nil
                                    ((device-id :target-type id :required
                                      common-lisp:t :member-name "DeviceId")
                                     (sample-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SampleTime")
                                     (error :target-type batch-item-error
                                      :required common-lisp:t :member-name
                                      "Error"))
                                    (:shape-name "BatchEvaluateGeofencesError"))

(smithy/sdk/shapes:define-list batch-evaluate-geofences-error-list :member
                               batch-evaluate-geofences-error)

(smithy/sdk/shapes:define-structure batch-evaluate-geofences-request
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (device-position-updates :target-type
                                      device-position-update-list :required
                                      common-lisp:t :member-name
                                      "DevicePositionUpdates"))
                                    (:shape-name
                                     "BatchEvaluateGeofencesRequest"))

(smithy/sdk/shapes:define-structure batch-evaluate-geofences-response
                                    common-lisp:nil
                                    ((errors :target-type
                                      batch-evaluate-geofences-error-list
                                      :required common-lisp:t :member-name
                                      "Errors"))
                                    (:shape-name
                                     "BatchEvaluateGeofencesResponse"))

(smithy/sdk/shapes:define-structure batch-get-device-position-error
                                    common-lisp:nil
                                    ((device-id :target-type id :required
                                      common-lisp:t :member-name "DeviceId")
                                     (error :target-type batch-item-error
                                      :required common-lisp:t :member-name
                                      "Error"))
                                    (:shape-name "BatchGetDevicePositionError"))

(smithy/sdk/shapes:define-list batch-get-device-position-error-list :member
                               batch-get-device-position-error)

(smithy/sdk/shapes:define-structure batch-get-device-position-request
                                    common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (device-ids :target-type id-list :required
                                      common-lisp:t :member-name "DeviceIds"))
                                    (:shape-name
                                     "BatchGetDevicePositionRequest"))

(smithy/sdk/shapes:define-structure batch-get-device-position-response
                                    common-lisp:nil
                                    ((errors :target-type
                                      batch-get-device-position-error-list
                                      :required common-lisp:t :member-name
                                      "Errors")
                                     (device-positions :target-type
                                      device-position-list :required
                                      common-lisp:t :member-name
                                      "DevicePositions"))
                                    (:shape-name
                                     "BatchGetDevicePositionResponse"))

(smithy/sdk/shapes:define-structure batch-item-error common-lisp:nil
                                    ((code :target-type batch-item-error-code
                                      :member-name "Code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Message"))
                                    (:shape-name "BatchItemError"))

(smithy/sdk/shapes:define-type batch-item-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-put-geofence-error common-lisp:nil
                                    ((geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId")
                                     (error :target-type batch-item-error
                                      :required common-lisp:t :member-name
                                      "Error"))
                                    (:shape-name "BatchPutGeofenceError"))

(smithy/sdk/shapes:define-list batch-put-geofence-error-list :member
                               batch-put-geofence-error)

(smithy/sdk/shapes:define-structure batch-put-geofence-request common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (entries :target-type
                                      batch-put-geofence-request-entry-list
                                      :required common-lisp:t :member-name
                                      "Entries"))
                                    (:shape-name "BatchPutGeofenceRequest"))

(smithy/sdk/shapes:define-structure batch-put-geofence-request-entry
                                    common-lisp:nil
                                    ((geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId")
                                     (geometry :target-type geofence-geometry
                                      :required common-lisp:t :member-name
                                      "Geometry")
                                     (geofence-properties :target-type
                                      property-map :member-name
                                      "GeofenceProperties"))
                                    (:shape-name
                                     "BatchPutGeofenceRequestEntry"))

(smithy/sdk/shapes:define-list batch-put-geofence-request-entry-list :member
                               batch-put-geofence-request-entry)

(smithy/sdk/shapes:define-structure batch-put-geofence-response common-lisp:nil
                                    ((successes :target-type
                                      batch-put-geofence-success-list :required
                                      common-lisp:t :member-name "Successes")
                                     (errors :target-type
                                      batch-put-geofence-error-list :required
                                      common-lisp:t :member-name "Errors"))
                                    (:shape-name "BatchPutGeofenceResponse"))

(smithy/sdk/shapes:define-structure batch-put-geofence-success common-lisp:nil
                                    ((geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "BatchPutGeofenceSuccess"))

(smithy/sdk/shapes:define-list batch-put-geofence-success-list :member
                               batch-put-geofence-success)

(smithy/sdk/shapes:define-structure batch-update-device-position-error
                                    common-lisp:nil
                                    ((device-id :target-type id :required
                                      common-lisp:t :member-name "DeviceId")
                                     (sample-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SampleTime")
                                     (error :target-type batch-item-error
                                      :required common-lisp:t :member-name
                                      "Error"))
                                    (:shape-name
                                     "BatchUpdateDevicePositionError"))

(smithy/sdk/shapes:define-list batch-update-device-position-error-list :member
                               batch-update-device-position-error)

(smithy/sdk/shapes:define-structure batch-update-device-position-request
                                    common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (updates :target-type
                                      device-position-update-list :required
                                      common-lisp:t :member-name "Updates"))
                                    (:shape-name
                                     "BatchUpdateDevicePositionRequest"))

(smithy/sdk/shapes:define-structure batch-update-device-position-response
                                    common-lisp:nil
                                    ((errors :target-type
                                      batch-update-device-position-error-list
                                      :required common-lisp:t :member-name
                                      "Errors"))
                                    (:shape-name
                                     "BatchUpdateDevicePositionResponse"))

(smithy/sdk/shapes:define-list bounding-box :member
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure calculate-route-car-mode-options
                                    common-lisp:nil
                                    ((avoid-ferries :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AvoidFerries")
                                     (avoid-tolls :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AvoidTolls"))
                                    (:shape-name
                                     "CalculateRouteCarModeOptions"))

(smithy/sdk/shapes:define-structure calculate-route-matrix-request
                                    common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName")
                                     (departure-positions :target-type
                                      position-list :required common-lisp:t
                                      :member-name "DeparturePositions")
                                     (destination-positions :target-type
                                      position-list :required common-lisp:t
                                      :member-name "DestinationPositions")
                                     (travel-mode :target-type travel-mode
                                      :member-name "TravelMode")
                                     (departure-time :target-type timestamp
                                      :member-name "DepartureTime")
                                     (depart-now :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "DepartNow")
                                     (distance-unit :target-type distance-unit
                                      :member-name "DistanceUnit")
                                     (car-mode-options :target-type
                                      calculate-route-car-mode-options
                                      :member-name "CarModeOptions")
                                     (truck-mode-options :target-type
                                      calculate-route-truck-mode-options
                                      :member-name "TruckModeOptions")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name "CalculateRouteMatrixRequest"))

(smithy/sdk/shapes:define-structure calculate-route-matrix-response
                                    common-lisp:nil
                                    ((route-matrix :target-type route-matrix
                                      :required common-lisp:t :member-name
                                      "RouteMatrix")
                                     (snapped-departure-positions :target-type
                                      position-list :member-name
                                      "SnappedDeparturePositions")
                                     (snapped-destination-positions
                                      :target-type position-list :member-name
                                      "SnappedDestinationPositions")
                                     (summary :target-type
                                      calculate-route-matrix-summary :required
                                      common-lisp:t :member-name "Summary"))
                                    (:shape-name
                                     "CalculateRouteMatrixResponse"))

(smithy/sdk/shapes:define-structure calculate-route-matrix-summary
                                    common-lisp:nil
                                    ((data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (route-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "RouteCount")
                                     (error-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "ErrorCount")
                                     (distance-unit :target-type distance-unit
                                      :required common-lisp:t :member-name
                                      "DistanceUnit"))
                                    (:shape-name "CalculateRouteMatrixSummary"))

(smithy/sdk/shapes:define-structure calculate-route-request common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName")
                                     (departure-position :target-type position
                                      :required common-lisp:t :member-name
                                      "DeparturePosition")
                                     (destination-position :target-type
                                      position :required common-lisp:t
                                      :member-name "DestinationPosition")
                                     (waypoint-positions :target-type
                                      waypoint-position-list :member-name
                                      "WaypointPositions")
                                     (travel-mode :target-type travel-mode
                                      :member-name "TravelMode")
                                     (departure-time :target-type timestamp
                                      :member-name "DepartureTime")
                                     (depart-now :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "DepartNow")
                                     (distance-unit :target-type distance-unit
                                      :member-name "DistanceUnit")
                                     (include-leg-geometry :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "IncludeLegGeometry")
                                     (car-mode-options :target-type
                                      calculate-route-car-mode-options
                                      :member-name "CarModeOptions")
                                     (truck-mode-options :target-type
                                      calculate-route-truck-mode-options
                                      :member-name "TruckModeOptions")
                                     (arrival-time :target-type timestamp
                                      :member-name "ArrivalTime")
                                     (optimize-for :target-type
                                      optimization-mode :member-name
                                      "OptimizeFor")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name "CalculateRouteRequest"))

(smithy/sdk/shapes:define-structure calculate-route-response common-lisp:nil
                                    ((legs :target-type leg-list :required
                                      common-lisp:t :member-name "Legs")
                                     (summary :target-type
                                      calculate-route-summary :required
                                      common-lisp:t :member-name "Summary"))
                                    (:shape-name "CalculateRouteResponse"))

(smithy/sdk/shapes:define-structure calculate-route-summary common-lisp:nil
                                    ((route-bbox :target-type bounding-box
                                      :required common-lisp:t :member-name
                                      "RouteBBox")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (distance :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Distance")
                                     (duration-seconds :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "DurationSeconds")
                                     (distance-unit :target-type distance-unit
                                      :required common-lisp:t :member-name
                                      "DistanceUnit"))
                                    (:shape-name "CalculateRouteSummary"))

(smithy/sdk/shapes:define-structure calculate-route-truck-mode-options
                                    common-lisp:nil
                                    ((avoid-ferries :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AvoidFerries")
                                     (avoid-tolls :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AvoidTolls")
                                     (dimensions :target-type truck-dimensions
                                      :member-name "Dimensions")
                                     (weight :target-type truck-weight
                                      :member-name "Weight"))
                                    (:shape-name
                                     "CalculateRouteTruckModeOptions"))

(smithy/sdk/shapes:define-structure cell-signals common-lisp:nil
                                    ((lte-cell-details :target-type
                                      lte-cell-details-list :required
                                      common-lisp:t :member-name
                                      "LteCellDetails"))
                                    (:shape-name "CellSignals"))

(smithy/sdk/shapes:define-structure circle common-lisp:nil
                                    ((center :target-type position :required
                                      common-lisp:t :member-name "Center")
                                     (radius :target-type sensitive-double
                                      :required common-lisp:t :member-name
                                      "Radius"))
                                    (:shape-name "Circle"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type country-code3 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type country-code3or-empty
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list country-code-list :member country-code3)

(smithy/sdk/shapes:define-structure create-geofence-collection-request
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (pricing-plan-data-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PricingPlanDataSource")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId"))
                                    (:shape-name
                                     "CreateGeofenceCollectionRequest"))

(smithy/sdk/shapes:define-structure create-geofence-collection-response
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (collection-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "CollectionArn")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime"))
                                    (:shape-name
                                     "CreateGeofenceCollectionResponse"))

(smithy/sdk/shapes:define-structure create-key-request common-lisp:nil
                                    ((key-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "KeyName")
                                     (restrictions :target-type
                                      api-key-restrictions :required
                                      common-lisp:t :member-name
                                      "Restrictions")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (expire-time :target-type timestamp
                                      :member-name "ExpireTime")
                                     (no-expiry :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "NoExpiry")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "CreateKeyRequest"))

(smithy/sdk/shapes:define-structure create-key-response common-lisp:nil
                                    ((key :target-type api-key :required
                                      common-lisp:t :member-name "Key")
                                     (key-arn :target-type arn :required
                                      common-lisp:t :member-name "KeyArn")
                                     (key-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "KeyName")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime"))
                                    (:shape-name "CreateKeyResponse"))

(smithy/sdk/shapes:define-structure create-map-request common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (configuration :target-type
                                      map-configuration :required common-lisp:t
                                      :member-name "Configuration")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "CreateMapRequest"))

(smithy/sdk/shapes:define-structure create-map-response common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (map-arn :target-type geo-arn :required
                                      common-lisp:t :member-name "MapArn")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime"))
                                    (:shape-name "CreateMapResponse"))

(smithy/sdk/shapes:define-structure create-place-index-request common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (data-source-configuration :target-type
                                      data-source-configuration :member-name
                                      "DataSourceConfiguration")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "CreatePlaceIndexRequest"))

(smithy/sdk/shapes:define-structure create-place-index-response common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (index-arn :target-type geo-arn :required
                                      common-lisp:t :member-name "IndexArn")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime"))
                                    (:shape-name "CreatePlaceIndexResponse"))

(smithy/sdk/shapes:define-structure create-route-calculator-request
                                    common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name
                                     "CreateRouteCalculatorRequest"))

(smithy/sdk/shapes:define-structure create-route-calculator-response
                                    common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName")
                                     (calculator-arn :target-type geo-arn
                                      :required common-lisp:t :member-name
                                      "CalculatorArn")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime"))
                                    (:shape-name
                                     "CreateRouteCalculatorResponse"))

(smithy/sdk/shapes:define-structure create-tracker-request common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (pricing-plan-data-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PricingPlanDataSource")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (position-filtering :target-type
                                      position-filtering :member-name
                                      "PositionFiltering")
                                     (event-bridge-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "EventBridgeEnabled")
                                     (kms-key-enable-geospatial-queries
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "KmsKeyEnableGeospatialQueries"))
                                    (:shape-name "CreateTrackerRequest"))

(smithy/sdk/shapes:define-structure create-tracker-response common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (tracker-arn :target-type arn :required
                                      common-lisp:t :member-name "TrackerArn")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime"))
                                    (:shape-name "CreateTrackerResponse"))

(smithy/sdk/shapes:define-type custom-layer smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-layer-list :member custom-layer)

(smithy/sdk/shapes:define-structure data-source-configuration common-lisp:nil
                                    ((intended-use :target-type intended-use
                                      :member-name "IntendedUse"))
                                    (:shape-name "DataSourceConfiguration"))

(smithy/sdk/shapes:define-structure delete-geofence-collection-request
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName"))
                                    (:shape-name
                                     "DeleteGeofenceCollectionRequest"))

(smithy/sdk/shapes:define-structure delete-geofence-collection-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteGeofenceCollectionResponse"))

(smithy/sdk/shapes:define-structure delete-key-request common-lisp:nil
                                    ((key-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "KeyName")
                                     (force-delete :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ForceDelete" :http-query
                                      "forceDelete"))
                                    (:shape-name "DeleteKeyRequest"))

(smithy/sdk/shapes:define-structure delete-key-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteKeyResponse"))

(smithy/sdk/shapes:define-structure delete-map-request common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName"))
                                    (:shape-name "DeleteMapRequest"))

(smithy/sdk/shapes:define-structure delete-map-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteMapResponse"))

(smithy/sdk/shapes:define-structure delete-place-index-request common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName"))
                                    (:shape-name "DeletePlaceIndexRequest"))

(smithy/sdk/shapes:define-structure delete-place-index-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeletePlaceIndexResponse"))

(smithy/sdk/shapes:define-structure delete-route-calculator-request
                                    common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName"))
                                    (:shape-name
                                     "DeleteRouteCalculatorRequest"))

(smithy/sdk/shapes:define-structure delete-route-calculator-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteRouteCalculatorResponse"))

(smithy/sdk/shapes:define-structure delete-tracker-request common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName"))
                                    (:shape-name "DeleteTrackerRequest"))

(smithy/sdk/shapes:define-structure delete-tracker-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteTrackerResponse"))

(smithy/sdk/shapes:define-structure describe-geofence-collection-request
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName"))
                                    (:shape-name
                                     "DescribeGeofenceCollectionRequest"))

(smithy/sdk/shapes:define-structure describe-geofence-collection-response
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (collection-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "CollectionArn")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (pricing-plan-data-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PricingPlanDataSource")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime")
                                     (geofence-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "GeofenceCount"))
                                    (:shape-name
                                     "DescribeGeofenceCollectionResponse"))

(smithy/sdk/shapes:define-structure describe-key-request common-lisp:nil
                                    ((key-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "KeyName"))
                                    (:shape-name "DescribeKeyRequest"))

(smithy/sdk/shapes:define-structure describe-key-response common-lisp:nil
                                    ((key :target-type api-key :required
                                      common-lisp:t :member-name "Key")
                                     (key-arn :target-type arn :required
                                      common-lisp:t :member-name "KeyArn")
                                     (key-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "KeyName")
                                     (restrictions :target-type
                                      api-key-restrictions :required
                                      common-lisp:t :member-name
                                      "Restrictions")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (expire-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "ExpireTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "DescribeKeyResponse"))

(smithy/sdk/shapes:define-structure describe-map-request common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName"))
                                    (:shape-name "DescribeMapRequest"))

(smithy/sdk/shapes:define-structure describe-map-response common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (map-arn :target-type geo-arn :required
                                      common-lisp:t :member-name "MapArn")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (configuration :target-type
                                      map-configuration :required common-lisp:t
                                      :member-name "Configuration")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "DescribeMapResponse"))

(smithy/sdk/shapes:define-structure describe-place-index-request
                                    common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName"))
                                    (:shape-name "DescribePlaceIndexRequest"))

(smithy/sdk/shapes:define-structure describe-place-index-response
                                    common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (index-arn :target-type geo-arn :required
                                      common-lisp:t :member-name "IndexArn")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (data-source-configuration :target-type
                                      data-source-configuration :required
                                      common-lisp:t :member-name
                                      "DataSourceConfiguration")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "DescribePlaceIndexResponse"))

(smithy/sdk/shapes:define-structure describe-route-calculator-request
                                    common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName"))
                                    (:shape-name
                                     "DescribeRouteCalculatorRequest"))

(smithy/sdk/shapes:define-structure describe-route-calculator-response
                                    common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName")
                                     (calculator-arn :target-type geo-arn
                                      :required common-lisp:t :member-name
                                      "CalculatorArn")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name
                                     "DescribeRouteCalculatorResponse"))

(smithy/sdk/shapes:define-structure describe-tracker-request common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName"))
                                    (:shape-name "DescribeTrackerRequest"))

(smithy/sdk/shapes:define-structure describe-tracker-response common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (tracker-arn :target-type arn :required
                                      common-lisp:t :member-name "TrackerArn")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (pricing-plan-data-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PricingPlanDataSource")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (position-filtering :target-type
                                      position-filtering :member-name
                                      "PositionFiltering")
                                     (event-bridge-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "EventBridgeEnabled")
                                     (kms-key-enable-geospatial-queries
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "KmsKeyEnableGeospatialQueries"))
                                    (:shape-name "DescribeTrackerResponse"))

(smithy/sdk/shapes:define-list device-ids-list :member id)

(smithy/sdk/shapes:define-structure device-position common-lisp:nil
                                    ((device-id :target-type id :member-name
                                      "DeviceId")
                                     (sample-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SampleTime")
                                     (received-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "ReceivedTime")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (accuracy :target-type positional-accuracy
                                      :member-name "Accuracy")
                                     (position-properties :target-type
                                      position-property-map :member-name
                                      "PositionProperties"))
                                    (:shape-name "DevicePosition"))

(smithy/sdk/shapes:define-list device-position-list :member device-position)

(smithy/sdk/shapes:define-structure device-position-update common-lisp:nil
                                    ((device-id :target-type id :required
                                      common-lisp:t :member-name "DeviceId")
                                     (sample-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SampleTime")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (accuracy :target-type positional-accuracy
                                      :member-name "Accuracy")
                                     (position-properties :target-type
                                      position-property-map :member-name
                                      "PositionProperties"))
                                    (:shape-name "DevicePositionUpdate"))

(smithy/sdk/shapes:define-list device-position-update-list :member
                               device-position-update)

(smithy/sdk/shapes:define-structure device-state common-lisp:nil
                                    ((device-id :target-type id :required
                                      common-lisp:t :member-name "DeviceId")
                                     (sample-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SampleTime")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (accuracy :target-type positional-accuracy
                                      :member-name "Accuracy")
                                     (ipv4address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Ipv4Address")
                                     (wi-fi-access-points :target-type
                                      wi-fi-access-point-list :member-name
                                      "WiFiAccessPoints")
                                     (cell-signals :target-type cell-signals
                                      :member-name "CellSignals"))
                                    (:shape-name "DeviceState"))

(smithy/sdk/shapes:define-type dimension-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure disassociate-tracker-consumer-request
                                    common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (consumer-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ConsumerArn"))
                                    (:shape-name
                                     "DisassociateTrackerConsumerRequest"))

(smithy/sdk/shapes:define-structure disassociate-tracker-consumer-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DisassociateTrackerConsumerResponse"))

(smithy/sdk/shapes:define-type distance-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type earfcn smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type eutran-cell-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list filter-place-category-list :member
                               place-category)

(smithy/sdk/shapes:define-structure forecast-geofence-events-device-state
                                    common-lisp:nil
                                    ((position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (speed :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Speed"))
                                    (:shape-name
                                     "ForecastGeofenceEventsDeviceState"))

(smithy/sdk/shapes:define-input forecast-geofence-events-request
                                common-lisp:nil
                                ((collection-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "CollectionName" :http-label common-lisp:t)
                                 (device-state :target-type
                                  forecast-geofence-events-device-state
                                  :required common-lisp:t :member-name
                                  "DeviceState")
                                 (time-horizon-minutes :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "TimeHorizonMinutes")
                                 (distance-unit :target-type distance-unit
                                  :member-name "DistanceUnit")
                                 (speed-unit :target-type speed-unit
                                  :member-name "SpeedUnit")
                                 (next-token :target-type large-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults"))
                                (:shape-name "ForecastGeofenceEventsRequest"))

(smithy/sdk/shapes:define-output forecast-geofence-events-response
                                 common-lisp:nil
                                 ((forecasted-events :target-type
                                   forecasted-events-list :required
                                   common-lisp:t :member-name
                                   "ForecastedEvents")
                                  (next-token :target-type large-token
                                   :member-name "NextToken")
                                  (distance-unit :target-type distance-unit
                                   :required common-lisp:t :member-name
                                   "DistanceUnit")
                                  (speed-unit :target-type speed-unit :required
                                   common-lisp:t :member-name "SpeedUnit"))
                                 (:shape-name "ForecastGeofenceEventsResponse"))

(smithy/sdk/shapes:define-structure forecasted-event common-lisp:nil
                                    ((event-id :target-type uuid :required
                                      common-lisp:t :member-name "EventId")
                                     (geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId")
                                     (is-device-in-geofence :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "IsDeviceInGeofence")
                                     (nearest-distance :target-type
                                      nearest-distance :required common-lisp:t
                                      :member-name "NearestDistance")
                                     (event-type :target-type
                                      forecasted-geofence-event-type :required
                                      common-lisp:t :member-name "EventType")
                                     (forecasted-breach-time :target-type
                                      timestamp :member-name
                                      "ForecastedBreachTime")
                                     (geofence-properties :target-type
                                      property-map :member-name
                                      "GeofenceProperties"))
                                    (:shape-name "ForecastedEvent"))

(smithy/sdk/shapes:define-list forecasted-events-list :member forecasted-event)

(smithy/sdk/shapes:define-type forecasted-geofence-event-type
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type geo-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list geo-arn-list :member geo-arn-v2)

(smithy/sdk/shapes:define-type geo-arn-v2 smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure geofence-geometry common-lisp:nil
                                    ((polygon :target-type linear-rings
                                      :member-name "Polygon")
                                     (circle :target-type circle :member-name
                                      "Circle")
                                     (geobuf :target-type base64encoded-geobuf
                                      :member-name "Geobuf")
                                     (multi-polygon :target-type
                                      multi-linear-rings :member-name
                                      "MultiPolygon"))
                                    (:shape-name "GeofenceGeometry"))

(smithy/sdk/shapes:define-structure get-device-position-history-request
                                    common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (device-id :target-type id :required
                                      common-lisp:t :member-name "DeviceId")
                                     (next-token :target-type token
                                      :member-name "NextToken")
                                     (start-time-inclusive :target-type
                                      timestamp :member-name
                                      "StartTimeInclusive")
                                     (end-time-exclusive :target-type timestamp
                                      :member-name "EndTimeExclusive")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults"))
                                    (:shape-name
                                     "GetDevicePositionHistoryRequest"))

(smithy/sdk/shapes:define-structure get-device-position-history-response
                                    common-lisp:nil
                                    ((device-positions :target-type
                                      device-position-list :required
                                      common-lisp:t :member-name
                                      "DevicePositions")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "GetDevicePositionHistoryResponse"))

(smithy/sdk/shapes:define-structure get-device-position-request common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (device-id :target-type id :required
                                      common-lisp:t :member-name "DeviceId"))
                                    (:shape-name "GetDevicePositionRequest"))

(smithy/sdk/shapes:define-structure get-device-position-response
                                    common-lisp:nil
                                    ((device-id :target-type id :member-name
                                      "DeviceId")
                                     (sample-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SampleTime")
                                     (received-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "ReceivedTime")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (accuracy :target-type positional-accuracy
                                      :member-name "Accuracy")
                                     (position-properties :target-type
                                      position-property-map :member-name
                                      "PositionProperties"))
                                    (:shape-name "GetDevicePositionResponse"))

(smithy/sdk/shapes:define-structure get-geofence-request common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId"))
                                    (:shape-name "GetGeofenceRequest"))

(smithy/sdk/shapes:define-structure get-geofence-response common-lisp:nil
                                    ((geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId")
                                     (geometry :target-type geofence-geometry
                                      :required common-lisp:t :member-name
                                      "Geometry")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Status")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime")
                                     (geofence-properties :target-type
                                      property-map :member-name
                                      "GeofenceProperties"))
                                    (:shape-name "GetGeofenceResponse"))

(smithy/sdk/shapes:define-structure get-map-glyphs-request common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (font-stack :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "FontStack")
                                     (font-unicode-range :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "FontUnicodeRange")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name "GetMapGlyphsRequest"))

(smithy/sdk/shapes:define-structure get-map-glyphs-response common-lisp:nil
                                    ((blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "Blob" :http-payload common-lisp:t)
                                     (content-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ContentType" :http-header
                                      "Content-Type")
                                     (cache-control :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CacheControl" :http-header
                                      "Cache-Control"))
                                    (:shape-name "GetMapGlyphsResponse"))

(smithy/sdk/shapes:define-structure get-map-sprites-request common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (file-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "FileName")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name "GetMapSpritesRequest"))

(smithy/sdk/shapes:define-structure get-map-sprites-response common-lisp:nil
                                    ((blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "Blob" :http-payload common-lisp:t)
                                     (content-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ContentType" :http-header
                                      "Content-Type")
                                     (cache-control :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CacheControl" :http-header
                                      "Cache-Control"))
                                    (:shape-name "GetMapSpritesResponse"))

(smithy/sdk/shapes:define-structure get-map-style-descriptor-request
                                    common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name
                                     "GetMapStyleDescriptorRequest"))

(smithy/sdk/shapes:define-structure get-map-style-descriptor-response
                                    common-lisp:nil
                                    ((blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "Blob" :http-payload common-lisp:t)
                                     (content-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ContentType" :http-header
                                      "Content-Type")
                                     (cache-control :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CacheControl" :http-header
                                      "Cache-Control"))
                                    (:shape-name
                                     "GetMapStyleDescriptorResponse"))

(smithy/sdk/shapes:define-structure get-map-tile-request common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (z :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Z")
                                     (x :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "X")
                                     (y :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Y")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name "GetMapTileRequest"))

(smithy/sdk/shapes:define-structure get-map-tile-response common-lisp:nil
                                    ((blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "Blob" :http-payload common-lisp:t)
                                     (content-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ContentType" :http-header
                                      "Content-Type")
                                     (cache-control :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CacheControl" :http-header
                                      "Cache-Control"))
                                    (:shape-name "GetMapTileResponse"))

(smithy/sdk/shapes:define-structure get-place-request common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (place-id :target-type place-id :required
                                      common-lisp:t :member-name "PlaceId")
                                     (language :target-type language-tag
                                      :member-name "Language" :http-query
                                      "language")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name "GetPlaceRequest"))

(smithy/sdk/shapes:define-structure get-place-response common-lisp:nil
                                    ((place :target-type place :required
                                      common-lisp:t :member-name "Place"))
                                    (:shape-name "GetPlaceResponse"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list id-list :member id)

(smithy/sdk/shapes:define-structure inferred-state common-lisp:nil
                                    ((position :target-type position
                                      :member-name "Position")
                                     (accuracy :target-type positional-accuracy
                                      :member-name "Accuracy")
                                     (deviation-distance :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "DeviationDistance")
                                     (proxy-detected :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "ProxyDetected"))
                                    (:shape-name "InferredState"))

(smithy/sdk/shapes:define-type intended-use smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type language-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type large-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure leg common-lisp:nil
                                    ((start-position :target-type position
                                      :required common-lisp:t :member-name
                                      "StartPosition")
                                     (end-position :target-type position
                                      :required common-lisp:t :member-name
                                      "EndPosition")
                                     (distance :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Distance")
                                     (duration-seconds :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "DurationSeconds")
                                     (geometry :target-type leg-geometry
                                      :member-name "Geometry")
                                     (steps :target-type step-list :required
                                      common-lisp:t :member-name "Steps"))
                                    (:shape-name "Leg"))

(smithy/sdk/shapes:define-structure leg-geometry common-lisp:nil
                                    ((line-string :target-type line-string
                                      :member-name "LineString"))
                                    (:shape-name "LegGeometry"))

(smithy/sdk/shapes:define-list leg-list :member leg)

(smithy/sdk/shapes:define-list line-string :member position)

(smithy/sdk/shapes:define-list linear-ring :member position)

(smithy/sdk/shapes:define-list linear-rings :member linear-ring)

(smithy/sdk/shapes:define-structure list-device-positions-request
                                    common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken")
                                     (filter-geometry :target-type
                                      tracking-filter-geometry :member-name
                                      "FilterGeometry"))
                                    (:shape-name "ListDevicePositionsRequest"))

(smithy/sdk/shapes:define-structure list-device-positions-response
                                    common-lisp:nil
                                    ((entries :target-type
                                      list-device-positions-response-entry-list
                                      :required common-lisp:t :member-name
                                      "Entries")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListDevicePositionsResponse"))

(smithy/sdk/shapes:define-structure list-device-positions-response-entry
                                    common-lisp:nil
                                    ((device-id :target-type id :required
                                      common-lisp:t :member-name "DeviceId")
                                     (sample-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "SampleTime")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (accuracy :target-type positional-accuracy
                                      :member-name "Accuracy")
                                     (position-properties :target-type
                                      position-property-map :member-name
                                      "PositionProperties"))
                                    (:shape-name
                                     "ListDevicePositionsResponseEntry"))

(smithy/sdk/shapes:define-list list-device-positions-response-entry-list
                               :member list-device-positions-response-entry)

(smithy/sdk/shapes:define-structure list-geofence-collections-request
                                    common-lisp:nil
                                    ((max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListGeofenceCollectionsRequest"))

(smithy/sdk/shapes:define-structure list-geofence-collections-response
                                    common-lisp:nil
                                    ((entries :target-type
                                      list-geofence-collections-response-entry-list
                                      :required common-lisp:t :member-name
                                      "Entries")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListGeofenceCollectionsResponse"))

(smithy/sdk/shapes:define-structure list-geofence-collections-response-entry
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (pricing-plan-data-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PricingPlanDataSource")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name
                                     "ListGeofenceCollectionsResponseEntry"))

(smithy/sdk/shapes:define-list list-geofence-collections-response-entry-list
                               :member list-geofence-collections-response-entry)

(smithy/sdk/shapes:define-structure list-geofence-response-entry
                                    common-lisp:nil
                                    ((geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId")
                                     (geometry :target-type geofence-geometry
                                      :required common-lisp:t :member-name
                                      "Geometry")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Status")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime")
                                     (geofence-properties :target-type
                                      property-map :member-name
                                      "GeofenceProperties"))
                                    (:shape-name "ListGeofenceResponseEntry"))

(smithy/sdk/shapes:define-list list-geofence-response-entry-list :member
                               list-geofence-response-entry)

(smithy/sdk/shapes:define-structure list-geofences-request common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (next-token :target-type large-token
                                      :member-name "NextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults"))
                                    (:shape-name "ListGeofencesRequest"))

(smithy/sdk/shapes:define-structure list-geofences-response common-lisp:nil
                                    ((entries :target-type
                                      list-geofence-response-entry-list
                                      :required common-lisp:t :member-name
                                      "Entries")
                                     (next-token :target-type large-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListGeofencesResponse"))

(smithy/sdk/shapes:define-structure list-keys-request common-lisp:nil
                                    ((max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken")
                                     (filter :target-type api-key-filter
                                      :member-name "Filter"))
                                    (:shape-name "ListKeysRequest"))

(smithy/sdk/shapes:define-structure list-keys-response common-lisp:nil
                                    ((entries :target-type
                                      list-keys-response-entry-list :required
                                      common-lisp:t :member-name "Entries")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListKeysResponse"))

(smithy/sdk/shapes:define-structure list-keys-response-entry common-lisp:nil
                                    ((key-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "KeyName")
                                     (expire-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "ExpireTime")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (restrictions :target-type
                                      api-key-restrictions :required
                                      common-lisp:t :member-name
                                      "Restrictions")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "ListKeysResponseEntry"))

(smithy/sdk/shapes:define-list list-keys-response-entry-list :member
                               list-keys-response-entry)

(smithy/sdk/shapes:define-structure list-maps-request common-lisp:nil
                                    ((max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListMapsRequest"))

(smithy/sdk/shapes:define-structure list-maps-response common-lisp:nil
                                    ((entries :target-type
                                      list-maps-response-entry-list :required
                                      common-lisp:t :member-name "Entries")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListMapsResponse"))

(smithy/sdk/shapes:define-structure list-maps-response-entry common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "ListMapsResponseEntry"))

(smithy/sdk/shapes:define-list list-maps-response-entry-list :member
                               list-maps-response-entry)

(smithy/sdk/shapes:define-structure list-place-indexes-request common-lisp:nil
                                    ((max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListPlaceIndexesRequest"))

(smithy/sdk/shapes:define-structure list-place-indexes-response common-lisp:nil
                                    ((entries :target-type
                                      list-place-indexes-response-entry-list
                                      :required common-lisp:t :member-name
                                      "Entries")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListPlaceIndexesResponse"))

(smithy/sdk/shapes:define-structure list-place-indexes-response-entry
                                    common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name
                                     "ListPlaceIndexesResponseEntry"))

(smithy/sdk/shapes:define-list list-place-indexes-response-entry-list :member
                               list-place-indexes-response-entry)

(smithy/sdk/shapes:define-structure list-route-calculators-request
                                    common-lisp:nil
                                    ((max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListRouteCalculatorsRequest"))

(smithy/sdk/shapes:define-structure list-route-calculators-response
                                    common-lisp:nil
                                    ((entries :target-type
                                      list-route-calculators-response-entry-list
                                      :required common-lisp:t :member-name
                                      "Entries")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListRouteCalculatorsResponse"))

(smithy/sdk/shapes:define-structure list-route-calculators-response-entry
                                    common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name
                                     "ListRouteCalculatorsResponseEntry"))

(smithy/sdk/shapes:define-list list-route-calculators-response-entry-list
                               :member list-route-calculators-response-entry)

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-tracker-consumers-request
                                    common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListTrackerConsumersRequest"))

(smithy/sdk/shapes:define-structure list-tracker-consumers-response
                                    common-lisp:nil
                                    ((consumer-arns :target-type arn-list
                                      :required common-lisp:t :member-name
                                      "ConsumerArns")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListTrackerConsumersResponse"))

(smithy/sdk/shapes:define-structure list-trackers-request common-lisp:nil
                                    ((max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListTrackersRequest"))

(smithy/sdk/shapes:define-structure list-trackers-response common-lisp:nil
                                    ((entries :target-type
                                      list-trackers-response-entry-list
                                      :required common-lisp:t :member-name
                                      "Entries")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListTrackersResponse"))

(smithy/sdk/shapes:define-structure list-trackers-response-entry
                                    common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name "Description")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (pricing-plan-data-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PricingPlanDataSource")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "ListTrackersResponseEntry"))

(smithy/sdk/shapes:define-list list-trackers-response-entry-list :member
                               list-trackers-response-entry)

(smithy/sdk/shapes:define-structure lte-cell-details common-lisp:nil
                                    ((cell-id :target-type eutran-cell-id
                                      :required common-lisp:t :member-name
                                      "CellId")
                                     (mcc :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Mcc")
                                     (mnc :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Mnc")
                                     (local-id :target-type lte-local-id
                                      :member-name "LocalId")
                                     (network-measurements :target-type
                                      lte-network-measurements-list
                                      :member-name "NetworkMeasurements")
                                     (timing-advance :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TimingAdvance")
                                     (nr-capable :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "NrCapable")
                                     (rsrp :target-type rsrp :member-name
                                      "Rsrp")
                                     (rsrq :target-type rsrq :member-name
                                      "Rsrq")
                                     (tac :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Tac"))
                                    (:shape-name "LteCellDetails"))

(smithy/sdk/shapes:define-list lte-cell-details-list :member lte-cell-details)

(smithy/sdk/shapes:define-structure lte-local-id common-lisp:nil
                                    ((earfcn :target-type earfcn :required
                                      common-lisp:t :member-name "Earfcn")
                                     (pci :target-type pci :required
                                      common-lisp:t :member-name "Pci"))
                                    (:shape-name "LteLocalId"))

(smithy/sdk/shapes:define-structure lte-network-measurements common-lisp:nil
                                    ((earfcn :target-type earfcn :required
                                      common-lisp:t :member-name "Earfcn")
                                     (cell-id :target-type eutran-cell-id
                                      :required common-lisp:t :member-name
                                      "CellId")
                                     (pci :target-type pci :required
                                      common-lisp:t :member-name "Pci")
                                     (rsrp :target-type rsrp :member-name
                                      "Rsrp")
                                     (rsrq :target-type rsrq :member-name
                                      "Rsrq"))
                                    (:shape-name "LteNetworkMeasurements"))

(smithy/sdk/shapes:define-list lte-network-measurements-list :member
                               lte-network-measurements)

(smithy/sdk/shapes:define-structure map-configuration common-lisp:nil
                                    ((style :target-type map-style :required
                                      common-lisp:t :member-name "Style")
                                     (political-view :target-type country-code3
                                      :member-name "PoliticalView")
                                     (custom-layers :target-type
                                      custom-layer-list :member-name
                                      "CustomLayers"))
                                    (:shape-name "MapConfiguration"))

(smithy/sdk/shapes:define-structure map-configuration-update common-lisp:nil
                                    ((political-view :target-type
                                      country-code3or-empty :member-name
                                      "PoliticalView")
                                     (custom-layers :target-type
                                      custom-layer-list :member-name
                                      "CustomLayers"))
                                    (:shape-name "MapConfigurationUpdate"))

common-lisp:nil

(smithy/sdk/shapes:define-type map-style smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list multi-linear-rings :member linear-rings)

(smithy/sdk/shapes:define-type nearest-distance smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type optimization-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pci smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure place common-lisp:nil
                                    ((label :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Label")
                                     (geometry :target-type place-geometry
                                      :required common-lisp:t :member-name
                                      "Geometry")
                                     (address-number :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "AddressNumber")
                                     (street :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Street")
                                     (neighborhood :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Neighborhood")
                                     (municipality :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Municipality")
                                     (sub-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SubRegion")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region")
                                     (country :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Country")
                                     (postal-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PostalCode")
                                     (interpolated :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Interpolated")
                                     (time-zone :target-type time-zone
                                      :member-name "TimeZone")
                                     (unit-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "UnitType")
                                     (unit-number :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "UnitNumber")
                                     (categories :target-type
                                      place-category-list :member-name
                                      "Categories")
                                     (supplemental-categories :target-type
                                      place-supplemental-category-list
                                      :member-name "SupplementalCategories")
                                     (sub-municipality :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SubMunicipality"))
                                    (:shape-name "Place"))

(smithy/sdk/shapes:define-type place-category smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list place-category-list :member place-category)

(smithy/sdk/shapes:define-structure place-geometry common-lisp:nil
                                    ((point :target-type position :member-name
                                      "Point"))
                                    (:shape-name "PlaceGeometry"))

(smithy/sdk/shapes:define-type place-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type place-index-search-result-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type place-supplemental-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list place-supplemental-category-list :member
                               place-supplemental-category)

(smithy/sdk/shapes:define-list position :member smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type position-filtering
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list position-list :member position)

(smithy/sdk/shapes:define-map position-property-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure positional-accuracy common-lisp:nil
                                    ((horizontal :target-type sensitive-double
                                      :required common-lisp:t :member-name
                                      "Horizontal"))
                                    (:shape-name "PositionalAccuracy"))

(smithy/sdk/shapes:define-type pricing-plan smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map property-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure put-geofence-request common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId")
                                     (geometry :target-type geofence-geometry
                                      :required common-lisp:t :member-name
                                      "Geometry")
                                     (geofence-properties :target-type
                                      property-map :member-name
                                      "GeofenceProperties"))
                                    (:shape-name "PutGeofenceRequest"))

(smithy/sdk/shapes:define-structure put-geofence-response common-lisp:nil
                                    ((geofence-id :target-type id :required
                                      common-lisp:t :member-name "GeofenceId")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "PutGeofenceResponse"))

(smithy/sdk/shapes:define-type referer-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list referer-pattern-list :member referer-pattern)

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

common-lisp:nil

(smithy/sdk/shapes:define-list route-matrix :member route-matrix-row)

(smithy/sdk/shapes:define-structure route-matrix-entry common-lisp:nil
                                    ((distance :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Distance")
                                     (duration-seconds :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "DurationSeconds")
                                     (error :target-type
                                      route-matrix-entry-error :member-name
                                      "Error"))
                                    (:shape-name "RouteMatrixEntry"))

(smithy/sdk/shapes:define-structure route-matrix-entry-error common-lisp:nil
                                    ((code :target-type route-matrix-error-code
                                      :required common-lisp:t :member-name
                                      "Code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Message"))
                                    (:shape-name "RouteMatrixEntryError"))

(smithy/sdk/shapes:define-type route-matrix-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-matrix-row :member route-matrix-entry)

(smithy/sdk/shapes:define-type rsrp smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rsrq smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure search-for-position-result common-lisp:nil
                                    ((place :target-type place :required
                                      common-lisp:t :member-name "Place")
                                     (distance :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Distance")
                                     (place-id :target-type place-id
                                      :member-name "PlaceId"))
                                    (:shape-name "SearchForPositionResult"))

(smithy/sdk/shapes:define-list search-for-position-result-list :member
                               search-for-position-result)

(smithy/sdk/shapes:define-structure search-for-suggestions-result
                                    common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Text")
                                     (place-id :target-type place-id
                                      :member-name "PlaceId")
                                     (categories :target-type
                                      place-category-list :member-name
                                      "Categories")
                                     (supplemental-categories :target-type
                                      place-supplemental-category-list
                                      :member-name "SupplementalCategories"))
                                    (:shape-name "SearchForSuggestionsResult"))

(smithy/sdk/shapes:define-list search-for-suggestions-result-list :member
                               search-for-suggestions-result)

(smithy/sdk/shapes:define-structure search-for-text-result common-lisp:nil
                                    ((place :target-type place :required
                                      common-lisp:t :member-name "Place")
                                     (distance :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Distance")
                                     (relevance :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Relevance")
                                     (place-id :target-type place-id
                                      :member-name "PlaceId"))
                                    (:shape-name "SearchForTextResult"))

(smithy/sdk/shapes:define-list search-for-text-result-list :member
                               search-for-text-result)

(smithy/sdk/shapes:define-structure search-place-index-for-position-request
                                    common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (max-results :target-type
                                      place-index-search-result-limit
                                      :member-name "MaxResults")
                                     (language :target-type language-tag
                                      :member-name "Language")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name
                                     "SearchPlaceIndexForPositionRequest"))

(smithy/sdk/shapes:define-structure search-place-index-for-position-response
                                    common-lisp:nil
                                    ((summary :target-type
                                      search-place-index-for-position-summary
                                      :required common-lisp:t :member-name
                                      "Summary")
                                     (results :target-type
                                      search-for-position-result-list :required
                                      common-lisp:t :member-name "Results"))
                                    (:shape-name
                                     "SearchPlaceIndexForPositionResponse"))

(smithy/sdk/shapes:define-structure search-place-index-for-position-summary
                                    common-lisp:nil
                                    ((position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (max-results :target-type
                                      place-index-search-result-limit
                                      :member-name "MaxResults")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (language :target-type language-tag
                                      :member-name "Language"))
                                    (:shape-name
                                     "SearchPlaceIndexForPositionSummary"))

(smithy/sdk/shapes:define-structure search-place-index-for-suggestions-request
                                    common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (text :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Text")
                                     (bias-position :target-type position
                                      :member-name "BiasPosition")
                                     (filter-bbox :target-type bounding-box
                                      :member-name "FilterBBox")
                                     (filter-countries :target-type
                                      country-code-list :member-name
                                      "FilterCountries")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (language :target-type language-tag
                                      :member-name "Language")
                                     (filter-categories :target-type
                                      filter-place-category-list :member-name
                                      "FilterCategories")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name
                                     "SearchPlaceIndexForSuggestionsRequest"))

(smithy/sdk/shapes:define-structure search-place-index-for-suggestions-response
                                    common-lisp:nil
                                    ((summary :target-type
                                      search-place-index-for-suggestions-summary
                                      :required common-lisp:t :member-name
                                      "Summary")
                                     (results :target-type
                                      search-for-suggestions-result-list
                                      :required common-lisp:t :member-name
                                      "Results"))
                                    (:shape-name
                                     "SearchPlaceIndexForSuggestionsResponse"))

(smithy/sdk/shapes:define-structure search-place-index-for-suggestions-summary
                                    common-lisp:nil
                                    ((text :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Text")
                                     (bias-position :target-type position
                                      :member-name "BiasPosition")
                                     (filter-bbox :target-type bounding-box
                                      :member-name "FilterBBox")
                                     (filter-countries :target-type
                                      country-code-list :member-name
                                      "FilterCountries")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (language :target-type language-tag
                                      :member-name "Language")
                                     (filter-categories :target-type
                                      filter-place-category-list :member-name
                                      "FilterCategories"))
                                    (:shape-name
                                     "SearchPlaceIndexForSuggestionsSummary"))

(smithy/sdk/shapes:define-structure search-place-index-for-text-request
                                    common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (text :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Text")
                                     (bias-position :target-type position
                                      :member-name "BiasPosition")
                                     (filter-bbox :target-type bounding-box
                                      :member-name "FilterBBox")
                                     (filter-countries :target-type
                                      country-code-list :member-name
                                      "FilterCountries")
                                     (max-results :target-type
                                      place-index-search-result-limit
                                      :member-name "MaxResults")
                                     (language :target-type language-tag
                                      :member-name "Language")
                                     (filter-categories :target-type
                                      filter-place-category-list :member-name
                                      "FilterCategories")
                                     (key :target-type api-key :member-name
                                      "Key" :http-query "key"))
                                    (:shape-name
                                     "SearchPlaceIndexForTextRequest"))

(smithy/sdk/shapes:define-structure search-place-index-for-text-response
                                    common-lisp:nil
                                    ((summary :target-type
                                      search-place-index-for-text-summary
                                      :required common-lisp:t :member-name
                                      "Summary")
                                     (results :target-type
                                      search-for-text-result-list :required
                                      common-lisp:t :member-name "Results"))
                                    (:shape-name
                                     "SearchPlaceIndexForTextResponse"))

(smithy/sdk/shapes:define-structure search-place-index-for-text-summary
                                    common-lisp:nil
                                    ((text :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Text")
                                     (bias-position :target-type position
                                      :member-name "BiasPosition")
                                     (filter-bbox :target-type bounding-box
                                      :member-name "FilterBBox")
                                     (filter-countries :target-type
                                      country-code-list :member-name
                                      "FilterCountries")
                                     (max-results :target-type
                                      place-index-search-result-limit
                                      :member-name "MaxResults")
                                     (result-bbox :target-type bounding-box
                                      :member-name "ResultBBox")
                                     (data-source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "DataSource")
                                     (language :target-type language-tag
                                      :member-name "Language")
                                     (filter-categories :target-type
                                      filter-place-category-list :member-name
                                      "FilterCategories"))
                                    (:shape-name
                                     "SearchPlaceIndexForTextSummary"))

(smithy/sdk/shapes:define-type sensitive-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type speed-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure step common-lisp:nil
                                    ((start-position :target-type position
                                      :required common-lisp:t :member-name
                                      "StartPosition")
                                     (end-position :target-type position
                                      :required common-lisp:t :member-name
                                      "EndPosition")
                                     (distance :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Distance")
                                     (duration-seconds :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "DurationSeconds")
                                     (geometry-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "GeometryOffset"))
                                    (:shape-name "Step"))

(smithy/sdk/shapes:define-list step-list :member step)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-zone common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Offset"))
                                    (:shape-name "TimeZone"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure tracking-filter-geometry common-lisp:nil
                                    ((polygon :target-type linear-rings
                                      :member-name "Polygon"))
                                    (:shape-name "TrackingFilterGeometry"))

(smithy/sdk/shapes:define-type travel-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure truck-dimensions common-lisp:nil
                                    ((length :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Length")
                                     (height :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Height")
                                     (width :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Width")
                                     (unit :target-type dimension-unit
                                      :member-name "Unit"))
                                    (:shape-name "TruckDimensions"))

(smithy/sdk/shapes:define-structure truck-weight common-lisp:nil
                                    ((total :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Total")
                                     (unit :target-type vehicle-weight-unit
                                      :member-name "Unit"))
                                    (:shape-name "TruckWeight"))

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tag-keys :target-type tag-keys :required
                                      common-lisp:t :member-name "TagKeys"
                                      :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-geofence-collection-request
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (pricing-plan-data-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PricingPlanDataSource")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description"))
                                    (:shape-name
                                     "UpdateGeofenceCollectionRequest"))

(smithy/sdk/shapes:define-structure update-geofence-collection-response
                                    common-lisp:nil
                                    ((collection-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CollectionName")
                                     (collection-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "CollectionArn")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name
                                     "UpdateGeofenceCollectionResponse"))

(smithy/sdk/shapes:define-structure update-key-request common-lisp:nil
                                    ((key-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "KeyName")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (expire-time :target-type timestamp
                                      :member-name "ExpireTime")
                                     (no-expiry :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "NoExpiry")
                                     (force-update :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ForceUpdate")
                                     (restrictions :target-type
                                      api-key-restrictions :member-name
                                      "Restrictions"))
                                    (:shape-name "UpdateKeyRequest"))

(smithy/sdk/shapes:define-structure update-key-response common-lisp:nil
                                    ((key-arn :target-type arn :required
                                      common-lisp:t :member-name "KeyArn")
                                     (key-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "KeyName")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "UpdateKeyResponse"))

(smithy/sdk/shapes:define-structure update-map-request common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (configuration-update :target-type
                                      map-configuration-update :member-name
                                      "ConfigurationUpdate"))
                                    (:shape-name "UpdateMapRequest"))

(smithy/sdk/shapes:define-structure update-map-response common-lisp:nil
                                    ((map-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MapName")
                                     (map-arn :target-type geo-arn :required
                                      common-lisp:t :member-name "MapArn")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "UpdateMapResponse"))

(smithy/sdk/shapes:define-structure update-place-index-request common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (data-source-configuration :target-type
                                      data-source-configuration :member-name
                                      "DataSourceConfiguration"))
                                    (:shape-name "UpdatePlaceIndexRequest"))

(smithy/sdk/shapes:define-structure update-place-index-response common-lisp:nil
                                    ((index-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "IndexName")
                                     (index-arn :target-type geo-arn :required
                                      common-lisp:t :member-name "IndexArn")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "UpdatePlaceIndexResponse"))

(smithy/sdk/shapes:define-structure update-route-calculator-request
                                    common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description"))
                                    (:shape-name
                                     "UpdateRouteCalculatorRequest"))

(smithy/sdk/shapes:define-structure update-route-calculator-response
                                    common-lisp:nil
                                    ((calculator-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "CalculatorName")
                                     (calculator-arn :target-type geo-arn
                                      :required common-lisp:t :member-name
                                      "CalculatorArn")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name
                                     "UpdateRouteCalculatorResponse"))

(smithy/sdk/shapes:define-structure update-tracker-request common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (pricing-plan :target-type pricing-plan
                                      :member-name "PricingPlan")
                                     (pricing-plan-data-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PricingPlanDataSource")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (position-filtering :target-type
                                      position-filtering :member-name
                                      "PositionFiltering")
                                     (event-bridge-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "EventBridgeEnabled")
                                     (kms-key-enable-geospatial-queries
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "KmsKeyEnableGeospatialQueries"))
                                    (:shape-name "UpdateTrackerRequest"))

(smithy/sdk/shapes:define-structure update-tracker-response common-lisp:nil
                                    ((tracker-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "TrackerName")
                                     (tracker-arn :target-type arn :required
                                      common-lisp:t :member-name "TrackerArn")
                                     (update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdateTime"))
                                    (:shape-name "UpdateTrackerResponse"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "Reason"
                                  :json-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :required
                                  common-lisp:t :member-name "FieldList"
                                  :json-name "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Message"
                                      :json-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vehicle-weight-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input verify-device-position-request common-lisp:nil
                                ((tracker-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "TrackerName" :http-label common-lisp:t)
                                 (device-state :target-type device-state
                                  :required common-lisp:t :member-name
                                  "DeviceState")
                                 (distance-unit :target-type distance-unit
                                  :member-name "DistanceUnit"))
                                (:shape-name "VerifyDevicePositionRequest"))

(smithy/sdk/shapes:define-output verify-device-position-response
                                 common-lisp:nil
                                 ((inferred-state :target-type inferred-state
                                   :required common-lisp:t :member-name
                                   "InferredState")
                                  (device-id :target-type id :required
                                   common-lisp:t :member-name "DeviceId")
                                  (sample-time :target-type timestamp :required
                                   common-lisp:t :member-name "SampleTime")
                                  (received-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "ReceivedTime")
                                  (distance-unit :target-type distance-unit
                                   :required common-lisp:t :member-name
                                   "DistanceUnit"))
                                 (:shape-name "VerifyDevicePositionResponse"))

(smithy/sdk/shapes:define-list waypoint-position-list :member position)

(smithy/sdk/shapes:define-structure wi-fi-access-point common-lisp:nil
                                    ((mac-address :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "MacAddress")
                                     (rss :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Rss"))
                                    (:shape-name "WiFiAccessPoint"))

(smithy/sdk/shapes:define-list wi-fi-access-point-list :member
                               wi-fi-access-point)

(smithy/sdk/operation:define-operation associate-tracker-consumer :shape-name
                                       "AssociateTrackerConsumer" :input
                                       associate-tracker-consumer-request
                                       :output
                                       associate-tracker-consumer-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/trackers/{TrackerName}/consumers"
                                       :endpoint-host-prefix "cp.tracking.")

(smithy/sdk/operation:define-operation batch-delete-device-position-history
                                       :shape-name
                                       "BatchDeleteDevicePositionHistory"
                                       :input
                                       batch-delete-device-position-history-request
                                       :output
                                       batch-delete-device-position-history-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/trackers/{TrackerName}/delete-positions"
                                       :endpoint-host-prefix "tracking.")

(smithy/sdk/operation:define-operation batch-delete-geofence :shape-name
                                       "BatchDeleteGeofence" :input
                                       batch-delete-geofence-request :output
                                       batch-delete-geofence-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/geofencing/v0/collections/{CollectionName}/delete-geofences"
                                       :endpoint-host-prefix "geofencing.")

(smithy/sdk/operation:define-operation batch-evaluate-geofences :shape-name
                                       "BatchEvaluateGeofences" :input
                                       batch-evaluate-geofences-request :output
                                       batch-evaluate-geofences-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/geofencing/v0/collections/{CollectionName}/positions"
                                       :endpoint-host-prefix "geofencing.")

(smithy/sdk/operation:define-operation batch-get-device-position :shape-name
                                       "BatchGetDevicePosition" :input
                                       batch-get-device-position-request
                                       :output
                                       batch-get-device-position-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/trackers/{TrackerName}/get-positions"
                                       :endpoint-host-prefix "tracking.")

(smithy/sdk/operation:define-operation batch-put-geofence :shape-name
                                       "BatchPutGeofence" :input
                                       batch-put-geofence-request :output
                                       batch-put-geofence-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/geofencing/v0/collections/{CollectionName}/put-geofences"
                                       :endpoint-host-prefix "geofencing.")

(smithy/sdk/operation:define-operation batch-update-device-position :shape-name
                                       "BatchUpdateDevicePosition" :input
                                       batch-update-device-position-request
                                       :output
                                       batch-update-device-position-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/trackers/{TrackerName}/positions"
                                       :endpoint-host-prefix "tracking.")

(smithy/sdk/operation:define-operation calculate-route :shape-name
                                       "CalculateRoute" :input
                                       calculate-route-request :output
                                       calculate-route-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/routes/v0/calculators/{CalculatorName}/calculate/route"
                                       :endpoint-host-prefix "routes.")

(smithy/sdk/operation:define-operation calculate-route-matrix :shape-name
                                       "CalculateRouteMatrix" :input
                                       calculate-route-matrix-request :output
                                       calculate-route-matrix-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/routes/v0/calculators/{CalculatorName}/calculate/route-matrix"
                                       :endpoint-host-prefix "routes.")

(smithy/sdk/operation:define-operation create-geofence-collection :shape-name
                                       "CreateGeofenceCollection" :input
                                       create-geofence-collection-request
                                       :output
                                       create-geofence-collection-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/geofencing/v0/collections"
                                       :endpoint-host-prefix "cp.geofencing.")

(smithy/sdk/operation:define-operation create-key :shape-name "CreateKey"
                                       :input create-key-request :output
                                       create-key-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/metadata/v0/keys"
                                       :endpoint-host-prefix "cp.metadata.")

(smithy/sdk/operation:define-operation create-map :shape-name "CreateMap"
                                       :input create-map-request :output
                                       create-map-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/maps/v0/maps"
                                       :endpoint-host-prefix "cp.maps.")

(smithy/sdk/operation:define-operation create-place-index :shape-name
                                       "CreatePlaceIndex" :input
                                       create-place-index-request :output
                                       create-place-index-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/places/v0/indexes"
                                       :endpoint-host-prefix "cp.places.")

(smithy/sdk/operation:define-operation create-route-calculator :shape-name
                                       "CreateRouteCalculator" :input
                                       create-route-calculator-request :output
                                       create-route-calculator-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/routes/v0/calculators"
                                       :endpoint-host-prefix "cp.routes.")

(smithy/sdk/operation:define-operation create-tracker :shape-name
                                       "CreateTracker" :input
                                       create-tracker-request :output
                                       create-tracker-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/trackers"
                                       :endpoint-host-prefix "cp.tracking.")

(smithy/sdk/operation:define-operation delete-geofence-collection :shape-name
                                       "DeleteGeofenceCollection" :input
                                       delete-geofence-collection-request
                                       :output
                                       delete-geofence-collection-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/geofencing/v0/collections/{CollectionName}"
                                       :endpoint-host-prefix "cp.geofencing.")

(smithy/sdk/operation:define-operation delete-key :shape-name "DeleteKey"
                                       :input delete-key-request :output
                                       delete-key-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/metadata/v0/keys/{KeyName}"
                                       :endpoint-host-prefix "cp.metadata.")

(smithy/sdk/operation:define-operation delete-map :shape-name "DeleteMap"
                                       :input delete-map-request :output
                                       delete-map-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/maps/v0/maps/{MapName}" :code 200
                                       :endpoint-host-prefix "cp.maps.")

(smithy/sdk/operation:define-operation delete-place-index :shape-name
                                       "DeletePlaceIndex" :input
                                       delete-place-index-request :output
                                       delete-place-index-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/places/v0/indexes/{IndexName}" :code
                                       200 :endpoint-host-prefix "cp.places.")

(smithy/sdk/operation:define-operation delete-route-calculator :shape-name
                                       "DeleteRouteCalculator" :input
                                       delete-route-calculator-request :output
                                       delete-route-calculator-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/routes/v0/calculators/{CalculatorName}"
                                       :code 200 :endpoint-host-prefix
                                       "cp.routes.")

(smithy/sdk/operation:define-operation delete-tracker :shape-name
                                       "DeleteTracker" :input
                                       delete-tracker-request :output
                                       delete-tracker-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tracking/v0/trackers/{TrackerName}"
                                       :endpoint-host-prefix "cp.tracking.")

(smithy/sdk/operation:define-operation describe-geofence-collection :shape-name
                                       "DescribeGeofenceCollection" :input
                                       describe-geofence-collection-request
                                       :output
                                       describe-geofence-collection-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/geofencing/v0/collections/{CollectionName}"
                                       :endpoint-host-prefix "cp.geofencing.")

(smithy/sdk/operation:define-operation describe-key :shape-name "DescribeKey"
                                       :input describe-key-request :output
                                       describe-key-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/metadata/v0/keys/{KeyName}"
                                       :endpoint-host-prefix "cp.metadata.")

(smithy/sdk/operation:define-operation describe-map :shape-name "DescribeMap"
                                       :input describe-map-request :output
                                       describe-map-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/maps/v0/maps/{MapName}"
                                       :endpoint-host-prefix "cp.maps.")

(smithy/sdk/operation:define-operation describe-place-index :shape-name
                                       "DescribePlaceIndex" :input
                                       describe-place-index-request :output
                                       describe-place-index-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/places/v0/indexes/{IndexName}"
                                       :endpoint-host-prefix "cp.places.")

(smithy/sdk/operation:define-operation describe-route-calculator :shape-name
                                       "DescribeRouteCalculator" :input
                                       describe-route-calculator-request
                                       :output
                                       describe-route-calculator-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/routes/v0/calculators/{CalculatorName}"
                                       :endpoint-host-prefix "cp.routes.")

(smithy/sdk/operation:define-operation describe-tracker :shape-name
                                       "DescribeTracker" :input
                                       describe-tracker-request :output
                                       describe-tracker-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/tracking/v0/trackers/{TrackerName}"
                                       :endpoint-host-prefix "cp.tracking.")

(smithy/sdk/operation:define-operation disassociate-tracker-consumer
                                       :shape-name
                                       "DisassociateTrackerConsumer" :input
                                       disassociate-tracker-consumer-request
                                       :output
                                       disassociate-tracker-consumer-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tracking/v0/trackers/{TrackerName}/consumers/{ConsumerArn}"
                                       :endpoint-host-prefix "cp.tracking.")

(smithy/sdk/operation:define-operation forecast-geofence-events :shape-name
                                       "ForecastGeofenceEvents" :input
                                       forecast-geofence-events-request :output
                                       forecast-geofence-events-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/geofencing/v0/collections/{CollectionName}/forecast-geofence-events"
                                       :endpoint-host-prefix "geofencing.")

(smithy/sdk/operation:define-operation get-device-position :shape-name
                                       "GetDevicePosition" :input
                                       get-device-position-request :output
                                       get-device-position-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/positions/latest"
                                       :endpoint-host-prefix "tracking.")

(smithy/sdk/operation:define-operation get-device-position-history :shape-name
                                       "GetDevicePositionHistory" :input
                                       get-device-position-history-request
                                       :output
                                       get-device-position-history-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/list-positions"
                                       :endpoint-host-prefix "tracking.")

(smithy/sdk/operation:define-operation get-geofence :shape-name "GetGeofence"
                                       :input get-geofence-request :output
                                       get-geofence-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}"
                                       :endpoint-host-prefix "geofencing.")

(smithy/sdk/operation:define-operation get-map-glyphs :shape-name
                                       "GetMapGlyphs" :input
                                       get-map-glyphs-request :output
                                       get-map-glyphs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/maps/v0/maps/{MapName}/glyphs/{FontStack}/{FontUnicodeRange}"
                                       :endpoint-host-prefix "maps.")

(smithy/sdk/operation:define-operation get-map-sprites :shape-name
                                       "GetMapSprites" :input
                                       get-map-sprites-request :output
                                       get-map-sprites-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/maps/v0/maps/{MapName}/sprites/{FileName}"
                                       :endpoint-host-prefix "maps.")

(smithy/sdk/operation:define-operation get-map-style-descriptor :shape-name
                                       "GetMapStyleDescriptor" :input
                                       get-map-style-descriptor-request :output
                                       get-map-style-descriptor-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/maps/v0/maps/{MapName}/style-descriptor"
                                       :endpoint-host-prefix "maps.")

(smithy/sdk/operation:define-operation get-map-tile :shape-name "GetMapTile"
                                       :input get-map-tile-request :output
                                       get-map-tile-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/maps/v0/maps/{MapName}/tiles/{Z}/{X}/{Y}"
                                       :endpoint-host-prefix "maps.")

(smithy/sdk/operation:define-operation get-place :shape-name "GetPlace" :input
                                       get-place-request :output
                                       get-place-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/places/v0/indexes/{IndexName}/places/{PlaceId}"
                                       :endpoint-host-prefix "places.")

(smithy/sdk/operation:define-operation list-device-positions :shape-name
                                       "ListDevicePositions" :input
                                       list-device-positions-request :output
                                       list-device-positions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/trackers/{TrackerName}/list-positions"
                                       :endpoint-host-prefix "tracking.")

(smithy/sdk/operation:define-operation list-geofence-collections :shape-name
                                       "ListGeofenceCollections" :input
                                       list-geofence-collections-request
                                       :output
                                       list-geofence-collections-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/geofencing/v0/list-collections"
                                       :endpoint-host-prefix "cp.geofencing.")

(smithy/sdk/operation:define-operation list-geofences :shape-name
                                       "ListGeofences" :input
                                       list-geofences-request :output
                                       list-geofences-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/geofencing/v0/collections/{CollectionName}/list-geofences"
                                       :endpoint-host-prefix "geofencing.")

(smithy/sdk/operation:define-operation list-keys :shape-name "ListKeys" :input
                                       list-keys-request :output
                                       list-keys-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/metadata/v0/list-keys"
                                       :endpoint-host-prefix "cp.metadata.")

(smithy/sdk/operation:define-operation list-maps :shape-name "ListMaps" :input
                                       list-maps-request :output
                                       list-maps-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/maps/v0/list-maps"
                                       :endpoint-host-prefix "cp.maps.")

(smithy/sdk/operation:define-operation list-place-indexes :shape-name
                                       "ListPlaceIndexes" :input
                                       list-place-indexes-request :output
                                       list-place-indexes-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/places/v0/list-indexes"
                                       :endpoint-host-prefix "cp.places.")

(smithy/sdk/operation:define-operation list-route-calculators :shape-name
                                       "ListRouteCalculators" :input
                                       list-route-calculators-request :output
                                       list-route-calculators-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/routes/v0/list-calculators"
                                       :endpoint-host-prefix "cp.routes.")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :endpoint-host-prefix "cp.metadata.")

(smithy/sdk/operation:define-operation list-tracker-consumers :shape-name
                                       "ListTrackerConsumers" :input
                                       list-tracker-consumers-request :output
                                       list-tracker-consumers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/trackers/{TrackerName}/list-consumers"
                                       :endpoint-host-prefix "cp.tracking.")

(smithy/sdk/operation:define-operation list-trackers :shape-name "ListTrackers"
                                       :input list-trackers-request :output
                                       list-trackers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/list-trackers"
                                       :endpoint-host-prefix "cp.tracking.")

(smithy/sdk/operation:define-operation put-geofence :shape-name "PutGeofence"
                                       :input put-geofence-request :output
                                       put-geofence-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}"
                                       :endpoint-host-prefix "geofencing.")

(smithy/sdk/operation:define-operation search-place-index-for-position
                                       :shape-name
                                       "SearchPlaceIndexForPosition" :input
                                       search-place-index-for-position-request
                                       :output
                                       search-place-index-for-position-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/places/v0/indexes/{IndexName}/search/position"
                                       :endpoint-host-prefix "places.")

(smithy/sdk/operation:define-operation search-place-index-for-suggestions
                                       :shape-name
                                       "SearchPlaceIndexForSuggestions" :input
                                       search-place-index-for-suggestions-request
                                       :output
                                       search-place-index-for-suggestions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/places/v0/indexes/{IndexName}/search/suggestions"
                                       :endpoint-host-prefix "places.")

(smithy/sdk/operation:define-operation search-place-index-for-text :shape-name
                                       "SearchPlaceIndexForText" :input
                                       search-place-index-for-text-request
                                       :output
                                       search-place-index-for-text-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/places/v0/indexes/{IndexName}/search/text"
                                       :endpoint-host-prefix "places.")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}"
                                       :endpoint-host-prefix "cp.metadata.")

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
                                       "/tags/{ResourceArn}"
                                       :endpoint-host-prefix "cp.metadata.")

(smithy/sdk/operation:define-operation update-geofence-collection :shape-name
                                       "UpdateGeofenceCollection" :input
                                       update-geofence-collection-request
                                       :output
                                       update-geofence-collection-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/geofencing/v0/collections/{CollectionName}"
                                       :endpoint-host-prefix "cp.geofencing.")

(smithy/sdk/operation:define-operation update-key :shape-name "UpdateKey"
                                       :input update-key-request :output
                                       update-key-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/metadata/v0/keys/{KeyName}"
                                       :endpoint-host-prefix "cp.metadata.")

(smithy/sdk/operation:define-operation update-map :shape-name "UpdateMap"
                                       :input update-map-request :output
                                       update-map-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/maps/v0/maps/{MapName}"
                                       :endpoint-host-prefix "cp.maps.")

(smithy/sdk/operation:define-operation update-place-index :shape-name
                                       "UpdatePlaceIndex" :input
                                       update-place-index-request :output
                                       update-place-index-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/places/v0/indexes/{IndexName}"
                                       :endpoint-host-prefix "cp.places.")

(smithy/sdk/operation:define-operation update-route-calculator :shape-name
                                       "UpdateRouteCalculator" :input
                                       update-route-calculator-request :output
                                       update-route-calculator-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/routes/v0/calculators/{CalculatorName}"
                                       :endpoint-host-prefix "cp.routes.")

(smithy/sdk/operation:define-operation update-tracker :shape-name
                                       "UpdateTracker" :input
                                       update-tracker-request :output
                                       update-tracker-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/tracking/v0/trackers/{TrackerName}"
                                       :endpoint-host-prefix "cp.tracking.")

(smithy/sdk/operation:define-operation verify-device-position :shape-name
                                       "VerifyDevicePosition" :input
                                       verify-device-position-request :output
                                       verify-device-position-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tracking/v0/trackers/{TrackerName}/positions/verify"
                                       :endpoint-host-prefix "tracking.")
