(uiop/package:define-package #:pira/geo-routes (:use)
                             (:export #:api-key #:before-waypoints-list
                              #:bounding-box #:calculate-isolines
                              #:calculate-route-matrix #:calculate-routes
                              #:circle #:cluster-index #:corridor
                              #:country-code #:country-code3
                              #:country-code-list #:currency-code #:day-of-week
                              #:dimension-centimeters #:distance-meters
                              #:distance-threshold-list #:duration-seconds
                              #:geometry-format #:heading #:index-list
                              #:isoline #:isoline-allow-options
                              #:isoline-avoidance-area
                              #:isoline-avoidance-area-geometry
                              #:isoline-avoidance-area-geometry-list
                              #:isoline-avoidance-area-list
                              #:isoline-avoidance-options
                              #:isoline-avoidance-zone-category
                              #:isoline-avoidance-zone-category-list
                              #:isoline-car-options #:isoline-connection
                              #:isoline-connection-geometry
                              #:isoline-connection-list
                              #:isoline-destination-options
                              #:isoline-engine-type
                              #:isoline-granularity-options
                              #:isoline-hazardous-cargo-type
                              #:isoline-hazardous-cargo-type-list
                              #:isoline-list #:isoline-matching-options
                              #:isoline-optimization-objective
                              #:isoline-origin-options
                              #:isoline-scooter-options
                              #:isoline-shape-geometry
                              #:isoline-shape-geometry-list
                              #:isoline-side-of-street-options
                              #:isoline-thresholds #:isoline-traffic-options
                              #:isoline-trailer-options #:isoline-travel-mode
                              #:isoline-travel-mode-options
                              #:isoline-truck-options #:isoline-truck-type
                              #:isoline-vehicle-license-plate
                              #:isoline-zone-category #:language-tag
                              #:language-tag-list #:line-string #:linear-ring
                              #:linear-rings #:localized-string
                              #:localized-string-list #:matching-strategy
                              #:measurement-system #:optimize-waypoints
                              #:polyline #:polyline-corridor #:polyline-ring
                              #:polyline-ring-list #:position #:position23
                              #:provider-resource
                              #:road-snap-hazardous-cargo-type
                              #:road-snap-hazardous-cargo-type-list
                              #:road-snap-notice #:road-snap-notice-code
                              #:road-snap-notice-list
                              #:road-snap-snapped-geometry
                              #:road-snap-snapped-trace-point
                              #:road-snap-snapped-trace-point-list
                              #:road-snap-trace-point
                              #:road-snap-trace-point-index-list
                              #:road-snap-trace-point-list
                              #:road-snap-trailer-options
                              #:road-snap-travel-mode
                              #:road-snap-travel-mode-options
                              #:road-snap-truck-options #:roundabout-angle
                              #:route #:route-allow-options
                              #:route-avoidance-area
                              #:route-avoidance-area-geometry
                              #:route-avoidance-area-geometry-list
                              #:route-avoidance-area-list
                              #:route-avoidance-options
                              #:route-avoidance-zone-category
                              #:route-avoidance-zone-category-list
                              #:route-car-options
                              #:route-continue-highway-step-details
                              #:route-continue-step-details
                              #:route-destination-options #:route-direction
                              #:route-driver-options
                              #:route-driver-schedule-interval
                              #:route-driver-schedule-interval-list
                              #:route-emission-type #:route-engine-type
                              #:route-enter-highway-step-details
                              #:route-exclusion-options
                              #:route-exit-step-details
                              #:route-ferry-after-travel-step
                              #:route-ferry-after-travel-step-list
                              #:route-ferry-after-travel-step-type
                              #:route-ferry-arrival
                              #:route-ferry-before-travel-step
                              #:route-ferry-before-travel-step-list
                              #:route-ferry-before-travel-step-type
                              #:route-ferry-departure #:route-ferry-leg-details
                              #:route-ferry-notice #:route-ferry-notice-code
                              #:route-ferry-notice-list
                              #:route-ferry-overview-summary
                              #:route-ferry-place #:route-ferry-span
                              #:route-ferry-span-list #:route-ferry-summary
                              #:route-ferry-travel-only-summary
                              #:route-ferry-travel-step
                              #:route-ferry-travel-step-list
                              #:route-ferry-travel-step-type
                              #:route-hazardous-cargo-type
                              #:route-hazardous-cargo-type-list
                              #:route-keep-step-details #:route-leg
                              #:route-leg-additional-feature
                              #:route-leg-additional-feature-list
                              #:route-leg-geometry #:route-leg-list
                              #:route-leg-travel-mode #:route-leg-type
                              #:route-list #:route-major-road-label
                              #:route-major-road-label-list
                              #:route-matching-options #:route-matrix
                              #:route-matrix-allow-options
                              #:route-matrix-auto-circle
                              #:route-matrix-avoidance-area
                              #:route-matrix-avoidance-area-geometry
                              #:route-matrix-avoidance-area-list
                              #:route-matrix-avoidance-options
                              #:route-matrix-avoidance-zone-category
                              #:route-matrix-avoidance-zone-category-list
                              #:route-matrix-boundary
                              #:route-matrix-boundary-geometry
                              #:route-matrix-car-options
                              #:route-matrix-destination
                              #:route-matrix-destination-list
                              #:route-matrix-destination-options
                              #:route-matrix-entry #:route-matrix-error-code
                              #:route-matrix-exclusion-options
                              #:route-matrix-hazardous-cargo-type
                              #:route-matrix-hazardous-cargo-type-list
                              #:route-matrix-matching-options
                              #:route-matrix-origin #:route-matrix-origin-list
                              #:route-matrix-origin-options #:route-matrix-row
                              #:route-matrix-scooter-options
                              #:route-matrix-side-of-street-options
                              #:route-matrix-traffic-options
                              #:route-matrix-trailer-options
                              #:route-matrix-travel-mode
                              #:route-matrix-travel-mode-options
                              #:route-matrix-truck-options
                              #:route-matrix-truck-type
                              #:route-matrix-vehicle-license-plate
                              #:route-matrix-zone-category
                              #:route-notice-detail-range #:route-notice-impact
                              #:route-number #:route-number-list
                              #:route-origin-options #:route-pass-through-place
                              #:route-pass-through-waypoint
                              #:route-pass-through-waypoint-list
                              #:route-pedestrian-arrival
                              #:route-pedestrian-departure
                              #:route-pedestrian-leg-details
                              #:route-pedestrian-notice
                              #:route-pedestrian-notice-code
                              #:route-pedestrian-notice-list
                              #:route-pedestrian-options
                              #:route-pedestrian-overview-summary
                              #:route-pedestrian-place #:route-pedestrian-span
                              #:route-pedestrian-span-list
                              #:route-pedestrian-summary
                              #:route-pedestrian-travel-only-summary
                              #:route-pedestrian-travel-step
                              #:route-pedestrian-travel-step-list
                              #:route-pedestrian-travel-step-type
                              #:route-ramp-step-details #:route-response-notice
                              #:route-response-notice-code
                              #:route-response-notice-list #:route-road
                              #:route-road-type
                              #:route-roundabout-enter-step-details
                              #:route-roundabout-exit-step-details
                              #:route-roundabout-pass-step-details
                              #:route-scooter-options #:route-side-of-street
                              #:route-side-of-street-options #:route-signpost
                              #:route-signpost-label
                              #:route-signpost-label-list
                              #:route-span-additional-feature
                              #:route-span-additional-feature-list
                              #:route-span-car-access-attribute
                              #:route-span-car-access-attribute-list
                              #:route-span-dynamic-speed-details
                              #:route-span-gate-attribute
                              #:route-span-pedestrian-access-attribute
                              #:route-span-pedestrian-access-attribute-list
                              #:route-span-railway-crossing-attribute
                              #:route-span-road-attribute
                              #:route-span-road-attribute-list
                              #:route-span-scooter-access-attribute
                              #:route-span-scooter-access-attribute-list
                              #:route-span-speed-limit-details
                              #:route-span-truck-access-attribute
                              #:route-span-truck-access-attribute-list
                              #:route-steering-direction #:route-summary
                              #:route-toll #:route-toll-list
                              #:route-toll-options #:route-toll-pass
                              #:route-toll-pass-validity-period
                              #:route-toll-pass-validity-period-type
                              #:route-toll-payment-method
                              #:route-toll-payment-method-list
                              #:route-toll-payment-site
                              #:route-toll-payment-site-list #:route-toll-price
                              #:route-toll-price-summary
                              #:route-toll-price-value-range #:route-toll-rate
                              #:route-toll-rate-list #:route-toll-summary
                              #:route-toll-system #:route-toll-system-list
                              #:route-toll-vehicle-category
                              #:route-traffic-options #:route-trailer-options
                              #:route-transponder #:route-transponder-list
                              #:route-travel-mode #:route-travel-mode-options
                              #:route-travel-step-type #:route-truck-options
                              #:route-truck-type #:route-turn-intensity
                              #:route-turn-step-details
                              #:route-uturn-step-details
                              #:route-vehicle-arrival #:route-vehicle-departure
                              #:route-vehicle-incident
                              #:route-vehicle-incident-list
                              #:route-vehicle-incident-severity
                              #:route-vehicle-incident-type
                              #:route-vehicle-leg-details
                              #:route-vehicle-license-plate
                              #:route-vehicle-notice
                              #:route-vehicle-notice-code
                              #:route-vehicle-notice-detail
                              #:route-vehicle-notice-detail-list
                              #:route-vehicle-notice-list
                              #:route-vehicle-overview-summary
                              #:route-vehicle-place #:route-vehicle-span
                              #:route-vehicle-span-list #:route-vehicle-summary
                              #:route-vehicle-travel-only-summary
                              #:route-vehicle-travel-step
                              #:route-vehicle-travel-step-list
                              #:route-vehicle-travel-step-type
                              #:route-violated-constraints #:route-waypoint
                              #:route-waypoint-list #:route-weight-constraint
                              #:route-weight-constraint-type #:route-zone
                              #:route-zone-category #:route-zone-list
                              #:routes-service #:routing-objective
                              #:sensitive-string
                              #:side-of-street-matching-strategy
                              #:snap-to-roads #:speed-kilometers-per-hour
                              #:time-of-day #:time-threshold-list
                              #:timestamp-with-timezone-offset #:traffic-usage
                              #:truck-road-type #:truck-road-type-list
                              #:tunnel-restriction-code #:turn-angle
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:waypoint-id
                              #:waypoint-index
                              #:waypoint-optimization-access-hours
                              #:waypoint-optimization-access-hours-entry
                              #:waypoint-optimization-avoidance-area
                              #:waypoint-optimization-avoidance-area-geometry
                              #:waypoint-optimization-avoidance-area-list
                              #:waypoint-optimization-avoidance-options
                              #:waypoint-optimization-clustering-algorithm
                              #:waypoint-optimization-clustering-options
                              #:waypoint-optimization-connection
                              #:waypoint-optimization-connection-list
                              #:waypoint-optimization-constraint
                              #:waypoint-optimization-destination-options
                              #:waypoint-optimization-driver-options
                              #:waypoint-optimization-driving-distance-options
                              #:waypoint-optimization-exclusion-options
                              #:waypoint-optimization-failed-constraint
                              #:waypoint-optimization-failed-constraint-list
                              #:waypoint-optimization-hazardous-cargo-type
                              #:waypoint-optimization-hazardous-cargo-type-list
                              #:waypoint-optimization-impeding-waypoint
                              #:waypoint-optimization-impeding-waypoint-list
                              #:waypoint-optimization-optimized-waypoint
                              #:waypoint-optimization-optimized-waypoint-list
                              #:waypoint-optimization-origin-options
                              #:waypoint-optimization-pedestrian-options
                              #:waypoint-optimization-rest-cycle-durations
                              #:waypoint-optimization-rest-cycles
                              #:waypoint-optimization-rest-profile
                              #:waypoint-optimization-sequencing-objective
                              #:waypoint-optimization-service-time-treatment
                              #:waypoint-optimization-side-of-street-options
                              #:waypoint-optimization-time-breakdown
                              #:waypoint-optimization-traffic-options
                              #:waypoint-optimization-trailer-options
                              #:waypoint-optimization-travel-mode
                              #:waypoint-optimization-travel-mode-options
                              #:waypoint-optimization-truck-options
                              #:waypoint-optimization-truck-type
                              #:waypoint-optimization-waypoint
                              #:waypoint-optimization-waypoint-list
                              #:weight-kilograms #:weight-per-axle-group))
(common-lisp:in-package #:pira/geo-routes)

(smithy/sdk/service:define-service routes-service :shape-name "RoutesService"
                                   :version "2020-11-19" :title
                                   "Amazon Location Service Routes V2" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Geo Routes")
                                      ("arnNamespace" . "geo-routes")
                                      ("cloudTrailEventSource"
                                       . "geo-routes.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "geo-routes"))
                                     ("aws.endpoints#standardRegionalEndpoints"
                                      ("partitionSpecialCases"
                                       ("aws"
                                        . #((("endpoint"
                                              . "https://routes.geo.{region}.{dnsSuffix}/v2"))
                                            (("endpoint"
                                              . "https://routes.geo-fips.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))
                                            (("endpoint"
                                              . "https://routes.geo-fips.{region}.{dnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))
                                            (("endpoint"
                                              . "https://routes.geo.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))))
                                       ("aws-us-gov"
                                        . #((("endpoint"
                                              . "https://routes.geo.{region}.us-gov.{dnsSuffix}/v2"))
                                            (("endpoint"
                                              . "https://routes.geo-fips.{region}.us-gov.{dualStackDnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))
                                            (("endpoint"
                                              . "https://routes.geo-fips.{region}.us-gov.{dnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))
                                            (("endpoint"
                                              . "https://routes.geo.{region}.us-gov.{dualStackDnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))))))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type api-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list before-waypoints-list :member waypoint-index)

(smithy/sdk/shapes:define-list bounding-box :member
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input calculate-isolines-request common-lisp:nil
                                ((allow :target-type isoline-allow-options
                                  :member-name "Allow")
                                 (arrival-time :target-type
                                  timestamp-with-timezone-offset :member-name
                                  "ArrivalTime")
                                 (avoid :target-type isoline-avoidance-options
                                  :member-name "Avoid")
                                 (depart-now :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DepartNow")
                                 (departure-time :target-type
                                  timestamp-with-timezone-offset :member-name
                                  "DepartureTime")
                                 (destination :target-type position
                                  :member-name "Destination")
                                 (destination-options :target-type
                                  isoline-destination-options :member-name
                                  "DestinationOptions")
                                 (isoline-geometry-format :target-type
                                  geometry-format :member-name
                                  "IsolineGeometryFormat")
                                 (isoline-granularity :target-type
                                  isoline-granularity-options :member-name
                                  "IsolineGranularity")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key")
                                 (optimize-isoline-for :target-type
                                  isoline-optimization-objective :member-name
                                  "OptimizeIsolineFor")
                                 (optimize-routing-for :target-type
                                  routing-objective :member-name
                                  "OptimizeRoutingFor")
                                 (origin :target-type position :member-name
                                  "Origin")
                                 (origin-options :target-type
                                  isoline-origin-options :member-name
                                  "OriginOptions")
                                 (thresholds :target-type isoline-thresholds
                                  :required common-lisp:t :member-name
                                  "Thresholds")
                                 (traffic :target-type isoline-traffic-options
                                  :member-name "Traffic")
                                 (travel-mode :target-type isoline-travel-mode
                                  :member-name "TravelMode")
                                 (travel-mode-options :target-type
                                  isoline-travel-mode-options :member-name
                                  "TravelModeOptions"))
                                (:shape-name "CalculateIsolinesRequest"))

(smithy/sdk/shapes:define-output calculate-isolines-response common-lisp:nil
                                 ((arrival-time :target-type
                                   timestamp-with-timezone-offset :member-name
                                   "ArrivalTime")
                                  (departure-time :target-type
                                   timestamp-with-timezone-offset :member-name
                                   "DepartureTime")
                                  (isoline-geometry-format :target-type
                                   geometry-format :required common-lisp:t
                                   :member-name "IsolineGeometryFormat")
                                  (isolines :target-type isoline-list :required
                                   common-lisp:t :member-name "Isolines")
                                  (pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (snapped-destination :target-type position
                                   :member-name "SnappedDestination")
                                  (snapped-origin :target-type position
                                   :member-name "SnappedOrigin"))
                                 (:shape-name "CalculateIsolinesResponse"))

(smithy/sdk/shapes:define-input calculate-route-matrix-request common-lisp:nil
                                ((allow :target-type route-matrix-allow-options
                                  :member-name "Allow")
                                 (avoid :target-type
                                  route-matrix-avoidance-options :member-name
                                  "Avoid")
                                 (depart-now :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DepartNow")
                                 (departure-time :target-type
                                  timestamp-with-timezone-offset :member-name
                                  "DepartureTime")
                                 (destinations :target-type
                                  route-matrix-destination-list :required
                                  common-lisp:t :member-name "Destinations")
                                 (exclude :target-type
                                  route-matrix-exclusion-options :member-name
                                  "Exclude")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key")
                                 (optimize-routing-for :target-type
                                  routing-objective :member-name
                                  "OptimizeRoutingFor")
                                 (origins :target-type route-matrix-origin-list
                                  :required common-lisp:t :member-name
                                  "Origins")
                                 (routing-boundary :target-type
                                  route-matrix-boundary :required common-lisp:t
                                  :member-name "RoutingBoundary")
                                 (traffic :target-type
                                  route-matrix-traffic-options :member-name
                                  "Traffic")
                                 (travel-mode :target-type
                                  route-matrix-travel-mode :member-name
                                  "TravelMode")
                                 (travel-mode-options :target-type
                                  route-matrix-travel-mode-options :member-name
                                  "TravelModeOptions"))
                                (:shape-name "CalculateRouteMatrixRequest"))

(smithy/sdk/shapes:define-output calculate-route-matrix-response
                                 common-lisp:nil
                                 ((error-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "ErrorCount")
                                  (pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (route-matrix :target-type route-matrix
                                   :required common-lisp:t :member-name
                                   "RouteMatrix")
                                  (routing-boundary :target-type
                                   route-matrix-boundary :required
                                   common-lisp:t :member-name
                                   "RoutingBoundary"))
                                 (:shape-name "CalculateRouteMatrixResponse"))

(smithy/sdk/shapes:define-input calculate-routes-request common-lisp:nil
                                ((allow :target-type route-allow-options
                                  :member-name "Allow")
                                 (arrival-time :target-type
                                  timestamp-with-timezone-offset :member-name
                                  "ArrivalTime")
                                 (avoid :target-type route-avoidance-options
                                  :member-name "Avoid")
                                 (depart-now :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DepartNow")
                                 (departure-time :target-type
                                  timestamp-with-timezone-offset :member-name
                                  "DepartureTime")
                                 (destination :target-type position :required
                                  common-lisp:t :member-name "Destination")
                                 (destination-options :target-type
                                  route-destination-options :member-name
                                  "DestinationOptions")
                                 (driver :target-type route-driver-options
                                  :member-name "Driver")
                                 (exclude :target-type route-exclusion-options
                                  :member-name "Exclude")
                                 (instructions-measurement-system :target-type
                                  measurement-system :member-name
                                  "InstructionsMeasurementSystem")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key")
                                 (languages :target-type language-tag-list
                                  :member-name "Languages")
                                 (leg-additional-features :target-type
                                  route-leg-additional-feature-list
                                  :member-name "LegAdditionalFeatures")
                                 (leg-geometry-format :target-type
                                  geometry-format :member-name
                                  "LegGeometryFormat")
                                 (max-alternatives :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxAlternatives")
                                 (optimize-routing-for :target-type
                                  routing-objective :member-name
                                  "OptimizeRoutingFor")
                                 (origin :target-type position :required
                                  common-lisp:t :member-name "Origin")
                                 (origin-options :target-type
                                  route-origin-options :member-name
                                  "OriginOptions")
                                 (span-additional-features :target-type
                                  route-span-additional-feature-list
                                  :member-name "SpanAdditionalFeatures")
                                 (tolls :target-type route-toll-options
                                  :member-name "Tolls")
                                 (traffic :target-type route-traffic-options
                                  :member-name "Traffic")
                                 (travel-mode :target-type route-travel-mode
                                  :member-name "TravelMode")
                                 (travel-mode-options :target-type
                                  route-travel-mode-options :member-name
                                  "TravelModeOptions")
                                 (travel-step-type :target-type
                                  route-travel-step-type :member-name
                                  "TravelStepType")
                                 (waypoints :target-type route-waypoint-list
                                  :member-name "Waypoints"))
                                (:shape-name "CalculateRoutesRequest"))

(smithy/sdk/shapes:define-output calculate-routes-response common-lisp:nil
                                 ((leg-geometry-format :target-type
                                   geometry-format :required common-lisp:t
                                   :member-name "LegGeometryFormat")
                                  (notices :target-type
                                   route-response-notice-list :required
                                   common-lisp:t :member-name "Notices")
                                  (pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (routes :target-type route-list :required
                                   common-lisp:t :member-name "Routes"))
                                 (:shape-name "CalculateRoutesResponse"))

(smithy/sdk/shapes:define-structure circle common-lisp:nil
                                    ((center :target-type position :required
                                      common-lisp:t :member-name "Center")
                                     (radius :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Radius"))
                                    (:shape-name "Circle"))

(smithy/sdk/shapes:define-type cluster-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure corridor common-lisp:nil
                                    ((line-string :target-type line-string
                                      :required common-lisp:t :member-name
                                      "LineString")
                                     (radius :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Radius"))
                                    (:shape-name "Corridor"))

(smithy/sdk/shapes:define-type country-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type country-code3 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list country-code-list :member country-code)

(smithy/sdk/shapes:define-type currency-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type day-of-week smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-centimeters
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type distance-meters smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list distance-threshold-list :member distance-meters)

(smithy/sdk/shapes:define-type duration-seconds smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type geometry-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type heading smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list index-list :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure isoline common-lisp:nil
                                    ((connections :target-type
                                      isoline-connection-list :required
                                      common-lisp:t :member-name "Connections")
                                     (distance-threshold :target-type
                                      distance-meters :member-name
                                      "DistanceThreshold")
                                     (geometries :target-type
                                      isoline-shape-geometry-list :required
                                      common-lisp:t :member-name "Geometries")
                                     (time-threshold :target-type
                                      duration-seconds :member-name
                                      "TimeThreshold"))
                                    (:shape-name "Isoline"))

(smithy/sdk/shapes:define-structure isoline-allow-options common-lisp:nil
                                    ((hot :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Hot")
                                     (hov :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Hov"))
                                    (:shape-name "IsolineAllowOptions"))

(smithy/sdk/shapes:define-structure isoline-avoidance-area common-lisp:nil
                                    ((except :target-type
                                      isoline-avoidance-area-geometry-list
                                      :member-name "Except")
                                     (geometry :target-type
                                      isoline-avoidance-area-geometry :required
                                      common-lisp:t :member-name "Geometry"))
                                    (:shape-name "IsolineAvoidanceArea"))

(smithy/sdk/shapes:define-structure isoline-avoidance-area-geometry
                                    common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (corridor :target-type corridor
                                      :member-name "Corridor")
                                     (polygon :target-type linear-rings
                                      :member-name "Polygon")
                                     (polyline-corridor :target-type
                                      polyline-corridor :member-name
                                      "PolylineCorridor")
                                     (polyline-polygon :target-type
                                      polyline-ring-list :member-name
                                      "PolylinePolygon"))
                                    (:shape-name
                                     "IsolineAvoidanceAreaGeometry"))

(smithy/sdk/shapes:define-list isoline-avoidance-area-geometry-list :member
                               isoline-avoidance-area-geometry)

(smithy/sdk/shapes:define-list isoline-avoidance-area-list :member
                               isoline-avoidance-area)

(smithy/sdk/shapes:define-structure isoline-avoidance-options common-lisp:nil
                                    ((areas :target-type
                                      isoline-avoidance-area-list :member-name
                                      "Areas")
                                     (car-shuttle-trains :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "CarShuttleTrains")
                                     (controlled-access-highways :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ControlledAccessHighways")
                                     (dirt-roads :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "DirtRoads")
                                     (ferries :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Ferries")
                                     (seasonal-closure :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SeasonalClosure")
                                     (toll-roads :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TollRoads")
                                     (toll-transponders :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TollTransponders")
                                     (truck-road-types :target-type
                                      truck-road-type-list :member-name
                                      "TruckRoadTypes")
                                     (tunnels :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Tunnels")
                                     (uturns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UTurns")
                                     (zone-categories :target-type
                                      isoline-avoidance-zone-category-list
                                      :member-name "ZoneCategories"))
                                    (:shape-name "IsolineAvoidanceOptions"))

(smithy/sdk/shapes:define-structure isoline-avoidance-zone-category
                                    common-lisp:nil
                                    ((category :target-type
                                      isoline-zone-category :member-name
                                      "Category"))
                                    (:shape-name
                                     "IsolineAvoidanceZoneCategory"))

(smithy/sdk/shapes:define-list isoline-avoidance-zone-category-list :member
                               isoline-avoidance-zone-category)

(smithy/sdk/shapes:define-structure isoline-car-options common-lisp:nil
                                    ((engine-type :target-type
                                      isoline-engine-type :member-name
                                      "EngineType")
                                     (license-plate :target-type
                                      isoline-vehicle-license-plate
                                      :member-name "LicensePlate")
                                     (max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (occupancy :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Occupancy"))
                                    (:shape-name "IsolineCarOptions"))

(smithy/sdk/shapes:define-structure isoline-connection common-lisp:nil
                                    ((from-polygon-index :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "FromPolygonIndex")
                                     (geometry :target-type
                                      isoline-connection-geometry :required
                                      common-lisp:t :member-name "Geometry")
                                     (to-polygon-index :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "ToPolygonIndex"))
                                    (:shape-name "IsolineConnection"))

(smithy/sdk/shapes:define-structure isoline-connection-geometry common-lisp:nil
                                    ((line-string :target-type line-string
                                      :member-name "LineString")
                                     (polyline :target-type polyline
                                      :member-name "Polyline"))
                                    (:shape-name "IsolineConnectionGeometry"))

(smithy/sdk/shapes:define-list isoline-connection-list :member
                               isoline-connection)

(smithy/sdk/shapes:define-structure isoline-destination-options common-lisp:nil
                                    ((avoid-actions-for-distance :target-type
                                      distance-meters :member-name
                                      "AvoidActionsForDistance")
                                     (heading :target-type heading :member-name
                                      "Heading")
                                     (matching :target-type
                                      isoline-matching-options :member-name
                                      "Matching")
                                     (side-of-street :target-type
                                      isoline-side-of-street-options
                                      :member-name "SideOfStreet"))
                                    (:shape-name "IsolineDestinationOptions"))

(smithy/sdk/shapes:define-type isoline-engine-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure isoline-granularity-options common-lisp:nil
                                    ((max-points :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxPoints")
                                     (max-resolution :target-type
                                      distance-meters :member-name
                                      "MaxResolution"))
                                    (:shape-name "IsolineGranularityOptions"))

(smithy/sdk/shapes:define-type isoline-hazardous-cargo-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list isoline-hazardous-cargo-type-list :member
                               isoline-hazardous-cargo-type)

(smithy/sdk/shapes:define-list isoline-list :member isoline)

(smithy/sdk/shapes:define-structure isoline-matching-options common-lisp:nil
                                    ((name-hint :target-type sensitive-string
                                      :member-name "NameHint")
                                     (on-road-threshold :target-type
                                      distance-meters :member-name
                                      "OnRoadThreshold")
                                     (radius :target-type distance-meters
                                      :member-name "Radius")
                                     (strategy :target-type matching-strategy
                                      :member-name "Strategy"))
                                    (:shape-name "IsolineMatchingOptions"))

(smithy/sdk/shapes:define-type isoline-optimization-objective
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure isoline-origin-options common-lisp:nil
                                    ((avoid-actions-for-distance :target-type
                                      distance-meters :member-name
                                      "AvoidActionsForDistance")
                                     (heading :target-type heading :member-name
                                      "Heading")
                                     (matching :target-type
                                      isoline-matching-options :member-name
                                      "Matching")
                                     (side-of-street :target-type
                                      isoline-side-of-street-options
                                      :member-name "SideOfStreet"))
                                    (:shape-name "IsolineOriginOptions"))

(smithy/sdk/shapes:define-structure isoline-scooter-options common-lisp:nil
                                    ((engine-type :target-type
                                      isoline-engine-type :member-name
                                      "EngineType")
                                     (license-plate :target-type
                                      isoline-vehicle-license-plate
                                      :member-name "LicensePlate")
                                     (max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (occupancy :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Occupancy"))
                                    (:shape-name "IsolineScooterOptions"))

(smithy/sdk/shapes:define-structure isoline-shape-geometry common-lisp:nil
                                    ((polygon :target-type linear-rings
                                      :member-name "Polygon")
                                     (polyline-polygon :target-type
                                      polyline-ring-list :member-name
                                      "PolylinePolygon"))
                                    (:shape-name "IsolineShapeGeometry"))

(smithy/sdk/shapes:define-list isoline-shape-geometry-list :member
                               isoline-shape-geometry)

(smithy/sdk/shapes:define-structure isoline-side-of-street-options
                                    common-lisp:nil
                                    ((position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (use-with :target-type
                                      side-of-street-matching-strategy
                                      :member-name "UseWith"))
                                    (:shape-name "IsolineSideOfStreetOptions"))

(smithy/sdk/shapes:define-structure isoline-thresholds common-lisp:nil
                                    ((distance :target-type
                                      distance-threshold-list :member-name
                                      "Distance")
                                     (time :target-type time-threshold-list
                                      :member-name "Time"))
                                    (:shape-name "IsolineThresholds"))

(smithy/sdk/shapes:define-structure isoline-traffic-options common-lisp:nil
                                    ((flow-event-threshold-override
                                      :target-type duration-seconds
                                      :member-name
                                      "FlowEventThresholdOverride")
                                     (usage :target-type traffic-usage
                                      :member-name "Usage"))
                                    (:shape-name "IsolineTrafficOptions"))

(smithy/sdk/shapes:define-structure isoline-trailer-options common-lisp:nil
                                    ((axle-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "AxleCount")
                                     (trailer-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TrailerCount"))
                                    (:shape-name "IsolineTrailerOptions"))

(smithy/sdk/shapes:define-type isoline-travel-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure isoline-travel-mode-options common-lisp:nil
                                    ((car :target-type isoline-car-options
                                      :member-name "Car")
                                     (scooter :target-type
                                      isoline-scooter-options :member-name
                                      "Scooter")
                                     (truck :target-type isoline-truck-options
                                      :member-name "Truck"))
                                    (:shape-name "IsolineTravelModeOptions"))

(smithy/sdk/shapes:define-structure isoline-truck-options common-lisp:nil
                                    ((axle-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "AxleCount")
                                     (engine-type :target-type
                                      isoline-engine-type :member-name
                                      "EngineType")
                                     (gross-weight :target-type
                                      weight-kilograms :member-name
                                      "GrossWeight")
                                     (hazardous-cargos :target-type
                                      isoline-hazardous-cargo-type-list
                                      :member-name "HazardousCargos")
                                     (height :target-type dimension-centimeters
                                      :member-name "Height")
                                     (height-above-first-axle :target-type
                                      dimension-centimeters :member-name
                                      "HeightAboveFirstAxle")
                                     (kpra-length :target-type
                                      dimension-centimeters :member-name
                                      "KpraLength")
                                     (length :target-type dimension-centimeters
                                      :member-name "Length")
                                     (license-plate :target-type
                                      isoline-vehicle-license-plate
                                      :member-name "LicensePlate")
                                     (max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (occupancy :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Occupancy")
                                     (payload-capacity :target-type
                                      weight-kilograms :member-name
                                      "PayloadCapacity")
                                     (tire-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TireCount")
                                     (trailer :target-type
                                      isoline-trailer-options :member-name
                                      "Trailer")
                                     (truck-type :target-type
                                      isoline-truck-type :member-name
                                      "TruckType")
                                     (tunnel-restriction-code :target-type
                                      tunnel-restriction-code :member-name
                                      "TunnelRestrictionCode")
                                     (weight-per-axle :target-type
                                      weight-kilograms :member-name
                                      "WeightPerAxle")
                                     (weight-per-axle-group :target-type
                                      weight-per-axle-group :member-name
                                      "WeightPerAxleGroup")
                                     (width :target-type dimension-centimeters
                                      :member-name "Width"))
                                    (:shape-name "IsolineTruckOptions"))

(smithy/sdk/shapes:define-type isoline-truck-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure isoline-vehicle-license-plate
                                    common-lisp:nil
                                    ((last-character :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LastCharacter"))
                                    (:shape-name "IsolineVehicleLicensePlate"))

(smithy/sdk/shapes:define-type isoline-zone-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type language-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list language-tag-list :member language-tag)

(smithy/sdk/shapes:define-list line-string :member position)

(smithy/sdk/shapes:define-list linear-ring :member position)

(smithy/sdk/shapes:define-list linear-rings :member linear-ring)

(smithy/sdk/shapes:define-structure localized-string common-lisp:nil
                                    ((language :target-type language-tag
                                      :member-name "Language")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "LocalizedString"))

(smithy/sdk/shapes:define-list localized-string-list :member localized-string)

(smithy/sdk/shapes:define-type matching-strategy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type measurement-system
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input optimize-waypoints-request common-lisp:nil
                                ((avoid :target-type
                                  waypoint-optimization-avoidance-options
                                  :member-name "Avoid")
                                 (clustering :target-type
                                  waypoint-optimization-clustering-options
                                  :member-name "Clustering")
                                 (departure-time :target-type
                                  timestamp-with-timezone-offset :member-name
                                  "DepartureTime")
                                 (destination :target-type position
                                  :member-name "Destination")
                                 (destination-options :target-type
                                  waypoint-optimization-destination-options
                                  :member-name "DestinationOptions")
                                 (driver :target-type
                                  waypoint-optimization-driver-options
                                  :member-name "Driver")
                                 (exclude :target-type
                                  waypoint-optimization-exclusion-options
                                  :member-name "Exclude")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key")
                                 (optimize-sequencing-for :target-type
                                  waypoint-optimization-sequencing-objective
                                  :member-name "OptimizeSequencingFor")
                                 (origin :target-type position :required
                                  common-lisp:t :member-name "Origin")
                                 (origin-options :target-type
                                  waypoint-optimization-origin-options
                                  :member-name "OriginOptions")
                                 (traffic :target-type
                                  waypoint-optimization-traffic-options
                                  :member-name "Traffic")
                                 (travel-mode :target-type
                                  waypoint-optimization-travel-mode
                                  :member-name "TravelMode")
                                 (travel-mode-options :target-type
                                  waypoint-optimization-travel-mode-options
                                  :member-name "TravelModeOptions")
                                 (waypoints :target-type
                                  waypoint-optimization-waypoint-list
                                  :member-name "Waypoints"))
                                (:shape-name "OptimizeWaypointsRequest"))

(smithy/sdk/shapes:define-output optimize-waypoints-response common-lisp:nil
                                 ((connections :target-type
                                   waypoint-optimization-connection-list
                                   :required common-lisp:t :member-name
                                   "Connections")
                                  (distance :target-type distance-meters
                                   :required common-lisp:t :member-name
                                   "Distance")
                                  (duration :target-type duration-seconds
                                   :required common-lisp:t :member-name
                                   "Duration")
                                  (impeding-waypoints :target-type
                                   waypoint-optimization-impeding-waypoint-list
                                   :required common-lisp:t :member-name
                                   "ImpedingWaypoints")
                                  (optimized-waypoints :target-type
                                   waypoint-optimization-optimized-waypoint-list
                                   :required common-lisp:t :member-name
                                   "OptimizedWaypoints")
                                  (pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (time-breakdown :target-type
                                   waypoint-optimization-time-breakdown
                                   :required common-lisp:t :member-name
                                   "TimeBreakdown"))
                                 (:shape-name "OptimizeWaypointsResponse"))

(smithy/sdk/shapes:define-type polyline smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure polyline-corridor common-lisp:nil
                                    ((polyline :target-type polyline :required
                                      common-lisp:t :member-name "Polyline")
                                     (radius :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Radius"))
                                    (:shape-name "PolylineCorridor"))

(smithy/sdk/shapes:define-type polyline-ring smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list polyline-ring-list :member polyline-ring)

(smithy/sdk/shapes:define-list position :member smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list position23 :member
                               smithy/sdk/smithy-types:double)

common-lisp:nil

(smithy/sdk/shapes:define-type road-snap-hazardous-cargo-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list road-snap-hazardous-cargo-type-list :member
                               road-snap-hazardous-cargo-type)

(smithy/sdk/shapes:define-structure road-snap-notice common-lisp:nil
                                    ((code :target-type road-snap-notice-code
                                      :required common-lisp:t :member-name
                                      "Code")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Title")
                                     (trace-point-indexes :target-type
                                      road-snap-trace-point-index-list
                                      :required common-lisp:t :member-name
                                      "TracePointIndexes"))
                                    (:shape-name "RoadSnapNotice"))

(smithy/sdk/shapes:define-type road-snap-notice-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list road-snap-notice-list :member road-snap-notice)

(smithy/sdk/shapes:define-structure road-snap-snapped-geometry common-lisp:nil
                                    ((line-string :target-type line-string
                                      :member-name "LineString")
                                     (polyline :target-type polyline
                                      :member-name "Polyline"))
                                    (:shape-name "RoadSnapSnappedGeometry"))

(smithy/sdk/shapes:define-structure road-snap-snapped-trace-point
                                    common-lisp:nil
                                    ((confidence :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Confidence")
                                     (original-position :target-type position
                                      :required common-lisp:t :member-name
                                      "OriginalPosition")
                                     (snapped-position :target-type position
                                      :required common-lisp:t :member-name
                                      "SnappedPosition"))
                                    (:shape-name "RoadSnapSnappedTracePoint"))

(smithy/sdk/shapes:define-list road-snap-snapped-trace-point-list :member
                               road-snap-snapped-trace-point)

(smithy/sdk/shapes:define-structure road-snap-trace-point common-lisp:nil
                                    ((heading :target-type heading :member-name
                                      "Heading")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "Speed")
                                     (timestamp :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "Timestamp"))
                                    (:shape-name "RoadSnapTracePoint"))

(smithy/sdk/shapes:define-list road-snap-trace-point-index-list :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list road-snap-trace-point-list :member
                               road-snap-trace-point)

(smithy/sdk/shapes:define-structure road-snap-trailer-options common-lisp:nil
                                    ((trailer-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TrailerCount"))
                                    (:shape-name "RoadSnapTrailerOptions"))

(smithy/sdk/shapes:define-type road-snap-travel-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure road-snap-travel-mode-options
                                    common-lisp:nil
                                    ((truck :target-type
                                      road-snap-truck-options :member-name
                                      "Truck"))
                                    (:shape-name "RoadSnapTravelModeOptions"))

(smithy/sdk/shapes:define-structure road-snap-truck-options common-lisp:nil
                                    ((gross-weight :target-type
                                      weight-kilograms :member-name
                                      "GrossWeight")
                                     (hazardous-cargos :target-type
                                      road-snap-hazardous-cargo-type-list
                                      :member-name "HazardousCargos")
                                     (height :target-type dimension-centimeters
                                      :member-name "Height")
                                     (length :target-type dimension-centimeters
                                      :member-name "Length")
                                     (trailer :target-type
                                      road-snap-trailer-options :member-name
                                      "Trailer")
                                     (tunnel-restriction-code :target-type
                                      tunnel-restriction-code :member-name
                                      "TunnelRestrictionCode")
                                     (width :target-type dimension-centimeters
                                      :member-name "Width"))
                                    (:shape-name "RoadSnapTruckOptions"))

(smithy/sdk/shapes:define-type roundabout-angle smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure route common-lisp:nil
                                    ((legs :target-type route-leg-list
                                      :required common-lisp:t :member-name
                                      "Legs")
                                     (major-road-labels :target-type
                                      route-major-road-label-list :required
                                      common-lisp:t :member-name
                                      "MajorRoadLabels")
                                     (summary :target-type route-summary
                                      :member-name "Summary"))
                                    (:shape-name "Route"))

(smithy/sdk/shapes:define-structure route-allow-options common-lisp:nil
                                    ((hot :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Hot")
                                     (hov :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Hov"))
                                    (:shape-name "RouteAllowOptions"))

(smithy/sdk/shapes:define-structure route-avoidance-area common-lisp:nil
                                    ((except :target-type
                                      route-avoidance-area-geometry-list
                                      :member-name "Except")
                                     (geometry :target-type
                                      route-avoidance-area-geometry :required
                                      common-lisp:t :member-name "Geometry"))
                                    (:shape-name "RouteAvoidanceArea"))

(smithy/sdk/shapes:define-structure route-avoidance-area-geometry
                                    common-lisp:nil
                                    ((corridor :target-type corridor
                                      :member-name "Corridor")
                                     (bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (polygon :target-type linear-rings
                                      :member-name "Polygon")
                                     (polyline-corridor :target-type
                                      polyline-corridor :member-name
                                      "PolylineCorridor")
                                     (polyline-polygon :target-type
                                      polyline-ring-list :member-name
                                      "PolylinePolygon"))
                                    (:shape-name "RouteAvoidanceAreaGeometry"))

(smithy/sdk/shapes:define-list route-avoidance-area-geometry-list :member
                               route-avoidance-area-geometry)

(smithy/sdk/shapes:define-list route-avoidance-area-list :member
                               route-avoidance-area)

(smithy/sdk/shapes:define-structure route-avoidance-options common-lisp:nil
                                    ((areas :target-type
                                      route-avoidance-area-list :member-name
                                      "Areas")
                                     (car-shuttle-trains :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "CarShuttleTrains")
                                     (controlled-access-highways :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ControlledAccessHighways")
                                     (dirt-roads :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "DirtRoads")
                                     (ferries :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Ferries")
                                     (seasonal-closure :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SeasonalClosure")
                                     (toll-roads :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TollRoads")
                                     (toll-transponders :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TollTransponders")
                                     (truck-road-types :target-type
                                      truck-road-type-list :member-name
                                      "TruckRoadTypes")
                                     (tunnels :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Tunnels")
                                     (uturns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UTurns")
                                     (zone-categories :target-type
                                      route-avoidance-zone-category-list
                                      :member-name "ZoneCategories"))
                                    (:shape-name "RouteAvoidanceOptions"))

(smithy/sdk/shapes:define-structure route-avoidance-zone-category
                                    common-lisp:nil
                                    ((category :target-type route-zone-category
                                      :required common-lisp:t :member-name
                                      "Category"))
                                    (:shape-name "RouteAvoidanceZoneCategory"))

(smithy/sdk/shapes:define-list route-avoidance-zone-category-list :member
                               route-avoidance-zone-category)

(smithy/sdk/shapes:define-structure route-car-options common-lisp:nil
                                    ((engine-type :target-type
                                      route-engine-type :member-name
                                      "EngineType")
                                     (license-plate :target-type
                                      route-vehicle-license-plate :member-name
                                      "LicensePlate")
                                     (max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (occupancy :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Occupancy"))
                                    (:shape-name "RouteCarOptions"))

(smithy/sdk/shapes:define-structure route-continue-highway-step-details
                                    common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection")
                                     (turn-angle :target-type turn-angle
                                      :member-name "TurnAngle")
                                     (turn-intensity :target-type
                                      route-turn-intensity :member-name
                                      "TurnIntensity"))
                                    (:shape-name
                                     "RouteContinueHighwayStepDetails"))

(smithy/sdk/shapes:define-structure route-continue-step-details common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection"))
                                    (:shape-name "RouteContinueStepDetails"))

(smithy/sdk/shapes:define-structure route-destination-options common-lisp:nil
                                    ((avoid-actions-for-distance :target-type
                                      distance-meters :member-name
                                      "AvoidActionsForDistance")
                                     (avoid-uturns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AvoidUTurns")
                                     (heading :target-type heading :member-name
                                      "Heading")
                                     (matching :target-type
                                      route-matching-options :member-name
                                      "Matching")
                                     (side-of-street :target-type
                                      route-side-of-street-options :member-name
                                      "SideOfStreet")
                                     (stop-duration :target-type
                                      duration-seconds :member-name
                                      "StopDuration"))
                                    (:shape-name "RouteDestinationOptions"))

(smithy/sdk/shapes:define-type route-direction smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-driver-options common-lisp:nil
                                    ((schedule :target-type
                                      route-driver-schedule-interval-list
                                      :member-name "Schedule"))
                                    (:shape-name "RouteDriverOptions"))

(smithy/sdk/shapes:define-structure route-driver-schedule-interval
                                    common-lisp:nil
                                    ((drive-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "DriveDuration")
                                     (rest-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "RestDuration"))
                                    (:shape-name "RouteDriverScheduleInterval"))

(smithy/sdk/shapes:define-list route-driver-schedule-interval-list :member
                               route-driver-schedule-interval)

(smithy/sdk/shapes:define-structure route-emission-type common-lisp:nil
                                    ((co2emission-class :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Co2EmissionClass")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "RouteEmissionType"))

(smithy/sdk/shapes:define-type route-engine-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-enter-highway-step-details
                                    common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection")
                                     (turn-angle :target-type turn-angle
                                      :member-name "TurnAngle")
                                     (turn-intensity :target-type
                                      route-turn-intensity :member-name
                                      "TurnIntensity"))
                                    (:shape-name
                                     "RouteEnterHighwayStepDetails"))

(smithy/sdk/shapes:define-structure route-exclusion-options common-lisp:nil
                                    ((countries :target-type country-code-list
                                      :required common-lisp:t :member-name
                                      "Countries"))
                                    (:shape-name "RouteExclusionOptions"))

(smithy/sdk/shapes:define-structure route-exit-step-details common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (relative-exit :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "RelativeExit")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection")
                                     (turn-angle :target-type turn-angle
                                      :member-name "TurnAngle")
                                     (turn-intensity :target-type
                                      route-turn-intensity :member-name
                                      "TurnIntensity"))
                                    (:shape-name "RouteExitStepDetails"))

(smithy/sdk/shapes:define-structure route-ferry-after-travel-step
                                    common-lisp:nil
                                    ((duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration")
                                     (instruction :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Instruction")
                                     (type :target-type
                                      route-ferry-after-travel-step-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "RouteFerryAfterTravelStep"))

(smithy/sdk/shapes:define-list route-ferry-after-travel-step-list :member
                               route-ferry-after-travel-step)

(smithy/sdk/shapes:define-type route-ferry-after-travel-step-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-ferry-arrival common-lisp:nil
                                    ((place :target-type route-ferry-place
                                      :required common-lisp:t :member-name
                                      "Place")
                                     (time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "Time"))
                                    (:shape-name "RouteFerryArrival"))

(smithy/sdk/shapes:define-structure route-ferry-before-travel-step
                                    common-lisp:nil
                                    ((duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration")
                                     (instruction :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Instruction")
                                     (type :target-type
                                      route-ferry-before-travel-step-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "RouteFerryBeforeTravelStep"))

(smithy/sdk/shapes:define-list route-ferry-before-travel-step-list :member
                               route-ferry-before-travel-step)

(smithy/sdk/shapes:define-type route-ferry-before-travel-step-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-ferry-departure common-lisp:nil
                                    ((place :target-type route-ferry-place
                                      :required common-lisp:t :member-name
                                      "Place")
                                     (time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "Time"))
                                    (:shape-name "RouteFerryDeparture"))

(smithy/sdk/shapes:define-structure route-ferry-leg-details common-lisp:nil
                                    ((after-travel-steps :target-type
                                      route-ferry-after-travel-step-list
                                      :required common-lisp:t :member-name
                                      "AfterTravelSteps")
                                     (arrival :target-type route-ferry-arrival
                                      :required common-lisp:t :member-name
                                      "Arrival")
                                     (before-travel-steps :target-type
                                      route-ferry-before-travel-step-list
                                      :required common-lisp:t :member-name
                                      "BeforeTravelSteps")
                                     (departure :target-type
                                      route-ferry-departure :required
                                      common-lisp:t :member-name "Departure")
                                     (notices :target-type
                                      route-ferry-notice-list :required
                                      common-lisp:t :member-name "Notices")
                                     (pass-through-waypoints :target-type
                                      route-pass-through-waypoint-list
                                      :required common-lisp:t :member-name
                                      "PassThroughWaypoints")
                                     (route-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "RouteName")
                                     (spans :target-type route-ferry-span-list
                                      :required common-lisp:t :member-name
                                      "Spans")
                                     (summary :target-type route-ferry-summary
                                      :member-name "Summary")
                                     (travel-steps :target-type
                                      route-ferry-travel-step-list :required
                                      common-lisp:t :member-name
                                      "TravelSteps"))
                                    (:shape-name "RouteFerryLegDetails"))

(smithy/sdk/shapes:define-structure route-ferry-notice common-lisp:nil
                                    ((code :target-type route-ferry-notice-code
                                      :required common-lisp:t :member-name
                                      "Code")
                                     (impact :target-type route-notice-impact
                                      :member-name "Impact"))
                                    (:shape-name "RouteFerryNotice"))

(smithy/sdk/shapes:define-type route-ferry-notice-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-ferry-notice-list :member
                               route-ferry-notice)

(smithy/sdk/shapes:define-structure route-ferry-overview-summary
                                    common-lisp:nil
                                    ((distance :target-type distance-meters
                                      :required common-lisp:t :member-name
                                      "Distance")
                                     (duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration"))
                                    (:shape-name "RouteFerryOverviewSummary"))

(smithy/sdk/shapes:define-structure route-ferry-place common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (original-position :target-type position23
                                      :member-name "OriginalPosition")
                                     (position :target-type position23
                                      :required common-lisp:t :member-name
                                      "Position")
                                     (waypoint-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "WaypointIndex"))
                                    (:shape-name "RouteFerryPlace"))

(smithy/sdk/shapes:define-structure route-ferry-span common-lisp:nil
                                    ((country :target-type country-code3
                                      :member-name "Country")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (duration :target-type duration-seconds
                                      :member-name "Duration")
                                     (geometry-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "GeometryOffset")
                                     (names :target-type localized-string-list
                                      :member-name "Names")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region"))
                                    (:shape-name "RouteFerrySpan"))

(smithy/sdk/shapes:define-list route-ferry-span-list :member route-ferry-span)

(smithy/sdk/shapes:define-structure route-ferry-summary common-lisp:nil
                                    ((overview :target-type
                                      route-ferry-overview-summary :member-name
                                      "Overview")
                                     (travel-only :target-type
                                      route-ferry-travel-only-summary
                                      :member-name "TravelOnly"))
                                    (:shape-name "RouteFerrySummary"))

(smithy/sdk/shapes:define-structure route-ferry-travel-only-summary
                                    common-lisp:nil
                                    ((duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration"))
                                    (:shape-name "RouteFerryTravelOnlySummary"))

(smithy/sdk/shapes:define-structure route-ferry-travel-step common-lisp:nil
                                    ((distance :target-type distance-meters
                                      :member-name "Distance")
                                     (duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration")
                                     (geometry-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "GeometryOffset")
                                     (instruction :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Instruction")
                                     (type :target-type
                                      route-ferry-travel-step-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "RouteFerryTravelStep"))

(smithy/sdk/shapes:define-list route-ferry-travel-step-list :member
                               route-ferry-travel-step)

(smithy/sdk/shapes:define-type route-ferry-travel-step-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route-hazardous-cargo-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-hazardous-cargo-type-list :member
                               route-hazardous-cargo-type)

(smithy/sdk/shapes:define-structure route-keep-step-details common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection")
                                     (turn-angle :target-type turn-angle
                                      :member-name "TurnAngle")
                                     (turn-intensity :target-type
                                      route-turn-intensity :member-name
                                      "TurnIntensity"))
                                    (:shape-name "RouteKeepStepDetails"))

(smithy/sdk/shapes:define-structure route-leg common-lisp:nil
                                    ((ferry-leg-details :target-type
                                      route-ferry-leg-details :member-name
                                      "FerryLegDetails")
                                     (geometry :target-type route-leg-geometry
                                      :required common-lisp:t :member-name
                                      "Geometry")
                                     (language :target-type language-tag
                                      :member-name "Language")
                                     (pedestrian-leg-details :target-type
                                      route-pedestrian-leg-details :member-name
                                      "PedestrianLegDetails")
                                     (travel-mode :target-type
                                      route-leg-travel-mode :required
                                      common-lisp:t :member-name "TravelMode")
                                     (type :target-type route-leg-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (vehicle-leg-details :target-type
                                      route-vehicle-leg-details :member-name
                                      "VehicleLegDetails"))
                                    (:shape-name "RouteLeg"))

(smithy/sdk/shapes:define-type route-leg-additional-feature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-leg-additional-feature-list :member
                               route-leg-additional-feature)

(smithy/sdk/shapes:define-structure route-leg-geometry common-lisp:nil
                                    ((line-string :target-type line-string
                                      :member-name "LineString")
                                     (polyline :target-type polyline
                                      :member-name "Polyline"))
                                    (:shape-name "RouteLegGeometry"))

(smithy/sdk/shapes:define-list route-leg-list :member route-leg)

(smithy/sdk/shapes:define-type route-leg-travel-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route-leg-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-list :member route)

(smithy/sdk/shapes:define-structure route-major-road-label common-lisp:nil
                                    ((road-name :target-type localized-string
                                      :member-name "RoadName")
                                     (route-number :target-type route-number
                                      :member-name "RouteNumber"))
                                    (:shape-name "RouteMajorRoadLabel"))

(smithy/sdk/shapes:define-list route-major-road-label-list :member
                               route-major-road-label)

(smithy/sdk/shapes:define-structure route-matching-options common-lisp:nil
                                    ((name-hint :target-type sensitive-string
                                      :member-name "NameHint")
                                     (on-road-threshold :target-type
                                      distance-meters :member-name
                                      "OnRoadThreshold")
                                     (radius :target-type distance-meters
                                      :member-name "Radius")
                                     (strategy :target-type matching-strategy
                                      :member-name "Strategy"))
                                    (:shape-name "RouteMatchingOptions"))

(smithy/sdk/shapes:define-list route-matrix :member route-matrix-row)

(smithy/sdk/shapes:define-structure route-matrix-allow-options common-lisp:nil
                                    ((hot :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Hot")
                                     (hov :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Hov"))
                                    (:shape-name "RouteMatrixAllowOptions"))

(smithy/sdk/shapes:define-structure route-matrix-auto-circle common-lisp:nil
                                    ((margin :target-type distance-meters
                                      :member-name "Margin")
                                     (max-radius :target-type distance-meters
                                      :member-name "MaxRadius"))
                                    (:shape-name "RouteMatrixAutoCircle"))

(smithy/sdk/shapes:define-structure route-matrix-avoidance-area common-lisp:nil
                                    ((geometry :target-type
                                      route-matrix-avoidance-area-geometry
                                      :required common-lisp:t :member-name
                                      "Geometry"))
                                    (:shape-name "RouteMatrixAvoidanceArea"))

(smithy/sdk/shapes:define-structure route-matrix-avoidance-area-geometry
                                    common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (polygon :target-type linear-rings
                                      :member-name "Polygon")
                                     (polyline-polygon :target-type
                                      polyline-ring-list :member-name
                                      "PolylinePolygon"))
                                    (:shape-name
                                     "RouteMatrixAvoidanceAreaGeometry"))

(smithy/sdk/shapes:define-list route-matrix-avoidance-area-list :member
                               route-matrix-avoidance-area)

(smithy/sdk/shapes:define-structure route-matrix-avoidance-options
                                    common-lisp:nil
                                    ((areas :target-type
                                      route-matrix-avoidance-area-list
                                      :member-name "Areas")
                                     (car-shuttle-trains :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "CarShuttleTrains")
                                     (controlled-access-highways :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ControlledAccessHighways")
                                     (dirt-roads :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "DirtRoads")
                                     (ferries :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Ferries")
                                     (toll-roads :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TollRoads")
                                     (toll-transponders :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TollTransponders")
                                     (truck-road-types :target-type
                                      truck-road-type-list :member-name
                                      "TruckRoadTypes")
                                     (tunnels :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Tunnels")
                                     (uturns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UTurns")
                                     (zone-categories :target-type
                                      route-matrix-avoidance-zone-category-list
                                      :member-name "ZoneCategories"))
                                    (:shape-name "RouteMatrixAvoidanceOptions"))

(smithy/sdk/shapes:define-structure route-matrix-avoidance-zone-category
                                    common-lisp:nil
                                    ((category :target-type
                                      route-matrix-zone-category :member-name
                                      "Category"))
                                    (:shape-name
                                     "RouteMatrixAvoidanceZoneCategory"))

(smithy/sdk/shapes:define-list route-matrix-avoidance-zone-category-list
                               :member route-matrix-avoidance-zone-category)

(smithy/sdk/shapes:define-structure route-matrix-boundary common-lisp:nil
                                    ((geometry :target-type
                                      route-matrix-boundary-geometry
                                      :member-name "Geometry")
                                     (unbounded :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Unbounded"))
                                    (:shape-name "RouteMatrixBoundary"))

(smithy/sdk/shapes:define-structure route-matrix-boundary-geometry
                                    common-lisp:nil
                                    ((auto-circle :target-type
                                      route-matrix-auto-circle :member-name
                                      "AutoCircle")
                                     (circle :target-type circle :member-name
                                      "Circle")
                                     (bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (polygon :target-type linear-rings
                                      :member-name "Polygon"))
                                    (:shape-name "RouteMatrixBoundaryGeometry"))

(smithy/sdk/shapes:define-structure route-matrix-car-options common-lisp:nil
                                    ((license-plate :target-type
                                      route-matrix-vehicle-license-plate
                                      :member-name "LicensePlate")
                                     (max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (occupancy :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Occupancy"))
                                    (:shape-name "RouteMatrixCarOptions"))

(smithy/sdk/shapes:define-structure route-matrix-destination common-lisp:nil
                                    ((options :target-type
                                      route-matrix-destination-options
                                      :member-name "Options")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position"))
                                    (:shape-name "RouteMatrixDestination"))

(smithy/sdk/shapes:define-list route-matrix-destination-list :member
                               route-matrix-destination)

(smithy/sdk/shapes:define-structure route-matrix-destination-options
                                    common-lisp:nil
                                    ((avoid-actions-for-distance :target-type
                                      distance-meters :member-name
                                      "AvoidActionsForDistance")
                                     (heading :target-type heading :member-name
                                      "Heading")
                                     (matching :target-type
                                      route-matrix-matching-options
                                      :member-name "Matching")
                                     (side-of-street :target-type
                                      route-matrix-side-of-street-options
                                      :member-name "SideOfStreet"))
                                    (:shape-name
                                     "RouteMatrixDestinationOptions"))

(smithy/sdk/shapes:define-structure route-matrix-entry common-lisp:nil
                                    ((distance :target-type distance-meters
                                      :required common-lisp:t :member-name
                                      "Distance")
                                     (duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration")
                                     (error :target-type
                                      route-matrix-error-code :member-name
                                      "Error"))
                                    (:shape-name "RouteMatrixEntry"))

(smithy/sdk/shapes:define-type route-matrix-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-matrix-exclusion-options
                                    common-lisp:nil
                                    ((countries :target-type country-code-list
                                      :required common-lisp:t :member-name
                                      "Countries"))
                                    (:shape-name "RouteMatrixExclusionOptions"))

(smithy/sdk/shapes:define-type route-matrix-hazardous-cargo-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-matrix-hazardous-cargo-type-list :member
                               route-matrix-hazardous-cargo-type)

(smithy/sdk/shapes:define-structure route-matrix-matching-options
                                    common-lisp:nil
                                    ((name-hint :target-type sensitive-string
                                      :member-name "NameHint")
                                     (on-road-threshold :target-type
                                      distance-meters :member-name
                                      "OnRoadThreshold")
                                     (radius :target-type distance-meters
                                      :member-name "Radius")
                                     (strategy :target-type matching-strategy
                                      :member-name "Strategy"))
                                    (:shape-name "RouteMatrixMatchingOptions"))

(smithy/sdk/shapes:define-structure route-matrix-origin common-lisp:nil
                                    ((options :target-type
                                      route-matrix-origin-options :member-name
                                      "Options")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position"))
                                    (:shape-name "RouteMatrixOrigin"))

(smithy/sdk/shapes:define-list route-matrix-origin-list :member
                               route-matrix-origin)

(smithy/sdk/shapes:define-structure route-matrix-origin-options common-lisp:nil
                                    ((avoid-actions-for-distance :target-type
                                      distance-meters :member-name
                                      "AvoidActionsForDistance")
                                     (heading :target-type heading :member-name
                                      "Heading")
                                     (matching :target-type
                                      route-matrix-matching-options
                                      :member-name "Matching")
                                     (side-of-street :target-type
                                      route-matrix-side-of-street-options
                                      :member-name "SideOfStreet"))
                                    (:shape-name "RouteMatrixOriginOptions"))

(smithy/sdk/shapes:define-list route-matrix-row :member route-matrix-entry)

(smithy/sdk/shapes:define-structure route-matrix-scooter-options
                                    common-lisp:nil
                                    ((license-plate :target-type
                                      route-matrix-vehicle-license-plate
                                      :member-name "LicensePlate")
                                     (max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (occupancy :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Occupancy"))
                                    (:shape-name "RouteMatrixScooterOptions"))

(smithy/sdk/shapes:define-structure route-matrix-side-of-street-options
                                    common-lisp:nil
                                    ((position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (use-with :target-type
                                      side-of-street-matching-strategy
                                      :member-name "UseWith"))
                                    (:shape-name
                                     "RouteMatrixSideOfStreetOptions"))

(smithy/sdk/shapes:define-structure route-matrix-traffic-options
                                    common-lisp:nil
                                    ((flow-event-threshold-override
                                      :target-type duration-seconds
                                      :member-name
                                      "FlowEventThresholdOverride")
                                     (usage :target-type traffic-usage
                                      :member-name "Usage"))
                                    (:shape-name "RouteMatrixTrafficOptions"))

(smithy/sdk/shapes:define-structure route-matrix-trailer-options
                                    common-lisp:nil
                                    ((trailer-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TrailerCount"))
                                    (:shape-name "RouteMatrixTrailerOptions"))

(smithy/sdk/shapes:define-type route-matrix-travel-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-matrix-travel-mode-options
                                    common-lisp:nil
                                    ((car :target-type route-matrix-car-options
                                      :member-name "Car")
                                     (scooter :target-type
                                      route-matrix-scooter-options :member-name
                                      "Scooter")
                                     (truck :target-type
                                      route-matrix-truck-options :member-name
                                      "Truck"))
                                    (:shape-name
                                     "RouteMatrixTravelModeOptions"))

(smithy/sdk/shapes:define-structure route-matrix-truck-options common-lisp:nil
                                    ((axle-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "AxleCount")
                                     (gross-weight :target-type
                                      weight-kilograms :member-name
                                      "GrossWeight")
                                     (hazardous-cargos :target-type
                                      route-matrix-hazardous-cargo-type-list
                                      :member-name "HazardousCargos")
                                     (height :target-type dimension-centimeters
                                      :member-name "Height")
                                     (kpra-length :target-type
                                      dimension-centimeters :member-name
                                      "KpraLength")
                                     (length :target-type dimension-centimeters
                                      :member-name "Length")
                                     (license-plate :target-type
                                      route-matrix-vehicle-license-plate
                                      :member-name "LicensePlate")
                                     (max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (occupancy :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Occupancy")
                                     (payload-capacity :target-type
                                      weight-kilograms :member-name
                                      "PayloadCapacity")
                                     (trailer :target-type
                                      route-matrix-trailer-options :member-name
                                      "Trailer")
                                     (truck-type :target-type
                                      route-matrix-truck-type :member-name
                                      "TruckType")
                                     (tunnel-restriction-code :target-type
                                      tunnel-restriction-code :member-name
                                      "TunnelRestrictionCode")
                                     (weight-per-axle :target-type
                                      weight-kilograms :member-name
                                      "WeightPerAxle")
                                     (weight-per-axle-group :target-type
                                      weight-per-axle-group :member-name
                                      "WeightPerAxleGroup")
                                     (width :target-type dimension-centimeters
                                      :member-name "Width"))
                                    (:shape-name "RouteMatrixTruckOptions"))

(smithy/sdk/shapes:define-type route-matrix-truck-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-matrix-vehicle-license-plate
                                    common-lisp:nil
                                    ((last-character :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LastCharacter"))
                                    (:shape-name
                                     "RouteMatrixVehicleLicensePlate"))

(smithy/sdk/shapes:define-type route-matrix-zone-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-notice-detail-range common-lisp:nil
                                    ((min :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Min")
                                     (max :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Max"))
                                    (:shape-name "RouteNoticeDetailRange"))

(smithy/sdk/shapes:define-type route-notice-impact
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-number common-lisp:nil
                                    ((direction :target-type route-direction
                                      :member-name "Direction")
                                     (language :target-type language-tag
                                      :member-name "Language")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "RouteNumber"))

(smithy/sdk/shapes:define-list route-number-list :member route-number)

(smithy/sdk/shapes:define-structure route-origin-options common-lisp:nil
                                    ((avoid-actions-for-distance :target-type
                                      distance-meters :member-name
                                      "AvoidActionsForDistance")
                                     (avoid-uturns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AvoidUTurns")
                                     (heading :target-type heading :member-name
                                      "Heading")
                                     (matching :target-type
                                      route-matching-options :member-name
                                      "Matching")
                                     (side-of-street :target-type
                                      route-side-of-street-options :member-name
                                      "SideOfStreet"))
                                    (:shape-name "RouteOriginOptions"))

(smithy/sdk/shapes:define-structure route-pass-through-place common-lisp:nil
                                    ((original-position :target-type position23
                                      :member-name "OriginalPosition")
                                     (position :target-type position23
                                      :required common-lisp:t :member-name
                                      "Position")
                                     (waypoint-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "WaypointIndex"))
                                    (:shape-name "RoutePassThroughPlace"))

(smithy/sdk/shapes:define-structure route-pass-through-waypoint common-lisp:nil
                                    ((geometry-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "GeometryOffset")
                                     (place :target-type
                                      route-pass-through-place :required
                                      common-lisp:t :member-name "Place"))
                                    (:shape-name "RoutePassThroughWaypoint"))

(smithy/sdk/shapes:define-list route-pass-through-waypoint-list :member
                               route-pass-through-waypoint)

(smithy/sdk/shapes:define-structure route-pedestrian-arrival common-lisp:nil
                                    ((place :target-type route-pedestrian-place
                                      :required common-lisp:t :member-name
                                      "Place")
                                     (time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "Time"))
                                    (:shape-name "RoutePedestrianArrival"))

(smithy/sdk/shapes:define-structure route-pedestrian-departure common-lisp:nil
                                    ((place :target-type route-pedestrian-place
                                      :required common-lisp:t :member-name
                                      "Place")
                                     (time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "Time"))
                                    (:shape-name "RoutePedestrianDeparture"))

(smithy/sdk/shapes:define-structure route-pedestrian-leg-details
                                    common-lisp:nil
                                    ((arrival :target-type
                                      route-pedestrian-arrival :required
                                      common-lisp:t :member-name "Arrival")
                                     (departure :target-type
                                      route-pedestrian-departure :required
                                      common-lisp:t :member-name "Departure")
                                     (notices :target-type
                                      route-pedestrian-notice-list :required
                                      common-lisp:t :member-name "Notices")
                                     (pass-through-waypoints :target-type
                                      route-pass-through-waypoint-list
                                      :required common-lisp:t :member-name
                                      "PassThroughWaypoints")
                                     (spans :target-type
                                      route-pedestrian-span-list :required
                                      common-lisp:t :member-name "Spans")
                                     (summary :target-type
                                      route-pedestrian-summary :member-name
                                      "Summary")
                                     (travel-steps :target-type
                                      route-pedestrian-travel-step-list
                                      :required common-lisp:t :member-name
                                      "TravelSteps"))
                                    (:shape-name "RoutePedestrianLegDetails"))

(smithy/sdk/shapes:define-structure route-pedestrian-notice common-lisp:nil
                                    ((code :target-type
                                      route-pedestrian-notice-code :required
                                      common-lisp:t :member-name "Code")
                                     (impact :target-type route-notice-impact
                                      :member-name "Impact"))
                                    (:shape-name "RoutePedestrianNotice"))

(smithy/sdk/shapes:define-type route-pedestrian-notice-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-pedestrian-notice-list :member
                               route-pedestrian-notice)

(smithy/sdk/shapes:define-structure route-pedestrian-options common-lisp:nil
                                    ((speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "Speed"))
                                    (:shape-name "RoutePedestrianOptions"))

(smithy/sdk/shapes:define-structure route-pedestrian-overview-summary
                                    common-lisp:nil
                                    ((distance :target-type distance-meters
                                      :required common-lisp:t :member-name
                                      "Distance")
                                     (duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration"))
                                    (:shape-name
                                     "RoutePedestrianOverviewSummary"))

(smithy/sdk/shapes:define-structure route-pedestrian-place common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (original-position :target-type position23
                                      :member-name "OriginalPosition")
                                     (position :target-type position23
                                      :required common-lisp:t :member-name
                                      "Position")
                                     (side-of-street :target-type
                                      route-side-of-street :member-name
                                      "SideOfStreet")
                                     (waypoint-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "WaypointIndex"))
                                    (:shape-name "RoutePedestrianPlace"))

(smithy/sdk/shapes:define-structure route-pedestrian-span common-lisp:nil
                                    ((best-case-duration :target-type
                                      duration-seconds :member-name
                                      "BestCaseDuration")
                                     (country :target-type country-code3
                                      :member-name "Country")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (duration :target-type duration-seconds
                                      :member-name "Duration")
                                     (dynamic-speed :target-type
                                      route-span-dynamic-speed-details
                                      :member-name "DynamicSpeed")
                                     (functional-classification :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "FunctionalClassification")
                                     (geometry-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "GeometryOffset")
                                     (incidents :target-type index-list
                                      :member-name "Incidents")
                                     (names :target-type localized-string-list
                                      :member-name "Names")
                                     (pedestrian-access :target-type
                                      route-span-pedestrian-access-attribute-list
                                      :member-name "PedestrianAccess")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region")
                                     (road-attributes :target-type
                                      route-span-road-attribute-list
                                      :member-name "RoadAttributes")
                                     (route-numbers :target-type
                                      route-number-list :member-name
                                      "RouteNumbers")
                                     (speed-limit :target-type
                                      route-span-speed-limit-details
                                      :member-name "SpeedLimit")
                                     (typical-duration :target-type
                                      duration-seconds :member-name
                                      "TypicalDuration"))
                                    (:shape-name "RoutePedestrianSpan"))

(smithy/sdk/shapes:define-list route-pedestrian-span-list :member
                               route-pedestrian-span)

(smithy/sdk/shapes:define-structure route-pedestrian-summary common-lisp:nil
                                    ((overview :target-type
                                      route-pedestrian-overview-summary
                                      :member-name "Overview")
                                     (travel-only :target-type
                                      route-pedestrian-travel-only-summary
                                      :member-name "TravelOnly"))
                                    (:shape-name "RoutePedestrianSummary"))

(smithy/sdk/shapes:define-structure route-pedestrian-travel-only-summary
                                    common-lisp:nil
                                    ((duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration"))
                                    (:shape-name
                                     "RoutePedestrianTravelOnlySummary"))

(smithy/sdk/shapes:define-structure route-pedestrian-travel-step
                                    common-lisp:nil
                                    ((continue-step-details :target-type
                                      route-continue-step-details :member-name
                                      "ContinueStepDetails")
                                     (current-road :target-type route-road
                                      :member-name "CurrentRoad")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration")
                                     (exit-number :target-type
                                      localized-string-list :member-name
                                      "ExitNumber")
                                     (geometry-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "GeometryOffset")
                                     (instruction :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Instruction")
                                     (keep-step-details :target-type
                                      route-keep-step-details :member-name
                                      "KeepStepDetails")
                                     (next-road :target-type route-road
                                      :member-name "NextRoad")
                                     (roundabout-enter-step-details
                                      :target-type
                                      route-roundabout-enter-step-details
                                      :member-name
                                      "RoundaboutEnterStepDetails")
                                     (roundabout-exit-step-details :target-type
                                      route-roundabout-exit-step-details
                                      :member-name "RoundaboutExitStepDetails")
                                     (roundabout-pass-step-details :target-type
                                      route-roundabout-pass-step-details
                                      :member-name "RoundaboutPassStepDetails")
                                     (signpost :target-type route-signpost
                                      :member-name "Signpost")
                                     (turn-step-details :target-type
                                      route-turn-step-details :member-name
                                      "TurnStepDetails")
                                     (type :target-type
                                      route-pedestrian-travel-step-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "RoutePedestrianTravelStep"))

(smithy/sdk/shapes:define-list route-pedestrian-travel-step-list :member
                               route-pedestrian-travel-step)

(smithy/sdk/shapes:define-type route-pedestrian-travel-step-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-ramp-step-details common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection")
                                     (turn-angle :target-type turn-angle
                                      :member-name "TurnAngle")
                                     (turn-intensity :target-type
                                      route-turn-intensity :member-name
                                      "TurnIntensity"))
                                    (:shape-name "RouteRampStepDetails"))

(smithy/sdk/shapes:define-structure route-response-notice common-lisp:nil
                                    ((code :target-type
                                      route-response-notice-code :required
                                      common-lisp:t :member-name "Code")
                                     (impact :target-type route-notice-impact
                                      :member-name "Impact"))
                                    (:shape-name "RouteResponseNotice"))

(smithy/sdk/shapes:define-type route-response-notice-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-response-notice-list :member
                               route-response-notice)

(smithy/sdk/shapes:define-structure route-road common-lisp:nil
                                    ((road-name :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name "RoadName")
                                     (route-number :target-type
                                      route-number-list :required common-lisp:t
                                      :member-name "RouteNumber")
                                     (towards :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name "Towards")
                                     (type :target-type route-road-type
                                      :member-name "Type"))
                                    (:shape-name "RouteRoad"))

(smithy/sdk/shapes:define-type route-road-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-roundabout-enter-step-details
                                    common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection")
                                     (turn-angle :target-type turn-angle
                                      :member-name "TurnAngle")
                                     (turn-intensity :target-type
                                      route-turn-intensity :member-name
                                      "TurnIntensity"))
                                    (:shape-name
                                     "RouteRoundaboutEnterStepDetails"))

(smithy/sdk/shapes:define-structure route-roundabout-exit-step-details
                                    common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (relative-exit :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "RelativeExit")
                                     (roundabout-angle :target-type
                                      roundabout-angle :member-name
                                      "RoundaboutAngle")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection"))
                                    (:shape-name
                                     "RouteRoundaboutExitStepDetails"))

(smithy/sdk/shapes:define-structure route-roundabout-pass-step-details
                                    common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection")
                                     (turn-angle :target-type turn-angle
                                      :member-name "TurnAngle")
                                     (turn-intensity :target-type
                                      route-turn-intensity :member-name
                                      "TurnIntensity"))
                                    (:shape-name
                                     "RouteRoundaboutPassStepDetails"))

(smithy/sdk/shapes:define-structure route-scooter-options common-lisp:nil
                                    ((engine-type :target-type
                                      route-engine-type :member-name
                                      "EngineType")
                                     (license-plate :target-type
                                      route-vehicle-license-plate :member-name
                                      "LicensePlate")
                                     (max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (occupancy :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Occupancy"))
                                    (:shape-name "RouteScooterOptions"))

(smithy/sdk/shapes:define-type route-side-of-street
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-side-of-street-options
                                    common-lisp:nil
                                    ((position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (use-with :target-type
                                      side-of-street-matching-strategy
                                      :member-name "UseWith"))
                                    (:shape-name "RouteSideOfStreetOptions"))

(smithy/sdk/shapes:define-structure route-signpost common-lisp:nil
                                    ((labels :target-type
                                      route-signpost-label-list :required
                                      common-lisp:t :member-name "Labels"))
                                    (:shape-name "RouteSignpost"))

(smithy/sdk/shapes:define-structure route-signpost-label common-lisp:nil
                                    ((route-number :target-type route-number
                                      :member-name "RouteNumber")
                                     (text :target-type localized-string
                                      :member-name "Text"))
                                    (:shape-name "RouteSignpostLabel"))

(smithy/sdk/shapes:define-list route-signpost-label-list :member
                               route-signpost-label)

(smithy/sdk/shapes:define-type route-span-additional-feature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-span-additional-feature-list :member
                               route-span-additional-feature)

(smithy/sdk/shapes:define-type route-span-car-access-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-span-car-access-attribute-list :member
                               route-span-car-access-attribute)

(smithy/sdk/shapes:define-structure route-span-dynamic-speed-details
                                    common-lisp:nil
                                    ((best-case-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "BestCaseSpeed")
                                     (turn-duration :target-type
                                      duration-seconds :member-name
                                      "TurnDuration")
                                     (typical-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "TypicalSpeed"))
                                    (:shape-name
                                     "RouteSpanDynamicSpeedDetails"))

(smithy/sdk/shapes:define-type route-span-gate-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route-span-pedestrian-access-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-span-pedestrian-access-attribute-list
                               :member route-span-pedestrian-access-attribute)

(smithy/sdk/shapes:define-type route-span-railway-crossing-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route-span-road-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-span-road-attribute-list :member
                               route-span-road-attribute)

(smithy/sdk/shapes:define-type route-span-scooter-access-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-span-scooter-access-attribute-list :member
                               route-span-scooter-access-attribute)

(smithy/sdk/shapes:define-structure route-span-speed-limit-details
                                    common-lisp:nil
                                    ((max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (unlimited :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Unlimited"))
                                    (:shape-name "RouteSpanSpeedLimitDetails"))

(smithy/sdk/shapes:define-type route-span-truck-access-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-span-truck-access-attribute-list :member
                               route-span-truck-access-attribute)

(smithy/sdk/shapes:define-type route-steering-direction
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-summary common-lisp:nil
                                    ((distance :target-type distance-meters
                                      :member-name "Distance")
                                     (duration :target-type duration-seconds
                                      :member-name "Duration")
                                     (tolls :target-type route-toll-summary
                                      :member-name "Tolls"))
                                    (:shape-name "RouteSummary"))

(smithy/sdk/shapes:define-structure route-toll common-lisp:nil
                                    ((country :target-type country-code3
                                      :member-name "Country")
                                     (payment-sites :target-type
                                      route-toll-payment-site-list :required
                                      common-lisp:t :member-name
                                      "PaymentSites")
                                     (rates :target-type route-toll-rate-list
                                      :required common-lisp:t :member-name
                                      "Rates")
                                     (systems :target-type index-list :required
                                      common-lisp:t :member-name "Systems"))
                                    (:shape-name "RouteToll"))

(smithy/sdk/shapes:define-list route-toll-list :member route-toll)

(smithy/sdk/shapes:define-structure route-toll-options common-lisp:nil
                                    ((all-transponders :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AllTransponders")
                                     (all-vignettes :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AllVignettes")
                                     (currency :target-type currency-code
                                      :member-name "Currency")
                                     (emission-type :target-type
                                      route-emission-type :member-name
                                      "EmissionType")
                                     (vehicle-category :target-type
                                      route-toll-vehicle-category :member-name
                                      "VehicleCategory"))
                                    (:shape-name "RouteTollOptions"))

(smithy/sdk/shapes:define-structure route-toll-pass common-lisp:nil
                                    ((includes-return-trip :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "IncludesReturnTrip")
                                     (senior-pass :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SeniorPass")
                                     (transfer-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TransferCount")
                                     (trip-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TripCount")
                                     (validity-period :target-type
                                      route-toll-pass-validity-period
                                      :member-name "ValidityPeriod"))
                                    (:shape-name "RouteTollPass"))

(smithy/sdk/shapes:define-structure route-toll-pass-validity-period
                                    common-lisp:nil
                                    ((period :target-type
                                      route-toll-pass-validity-period-type
                                      :required common-lisp:t :member-name
                                      "Period")
                                     (period-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "PeriodCount"))
                                    (:shape-name "RouteTollPassValidityPeriod"))

(smithy/sdk/shapes:define-type route-toll-pass-validity-period-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route-toll-payment-method
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-toll-payment-method-list :member
                               route-toll-payment-method)

(smithy/sdk/shapes:define-structure route-toll-payment-site common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (position :target-type position23
                                      :required common-lisp:t :member-name
                                      "Position"))
                                    (:shape-name "RouteTollPaymentSite"))

(smithy/sdk/shapes:define-list route-toll-payment-site-list :member
                               route-toll-payment-site)

(smithy/sdk/shapes:define-structure route-toll-price common-lisp:nil
                                    ((currency :target-type currency-code
                                      :required common-lisp:t :member-name
                                      "Currency")
                                     (estimate :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Estimate")
                                     (per-duration :target-type
                                      duration-seconds :member-name
                                      "PerDuration")
                                     (range :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Range")
                                     (range-value :target-type
                                      route-toll-price-value-range :member-name
                                      "RangeValue")
                                     (value :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "RouteTollPrice"))

(smithy/sdk/shapes:define-structure route-toll-price-summary common-lisp:nil
                                    ((currency :target-type currency-code
                                      :required common-lisp:t :member-name
                                      "Currency")
                                     (estimate :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Estimate")
                                     (range :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Range")
                                     (range-value :target-type
                                      route-toll-price-value-range :member-name
                                      "RangeValue")
                                     (value :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "RouteTollPriceSummary"))

(smithy/sdk/shapes:define-structure route-toll-price-value-range
                                    common-lisp:nil
                                    ((min :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Min")
                                     (max :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Max"))
                                    (:shape-name "RouteTollPriceValueRange"))

(smithy/sdk/shapes:define-structure route-toll-rate common-lisp:nil
                                    ((applicable-times :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ApplicableTimes")
                                     (converted-price :target-type
                                      route-toll-price :member-name
                                      "ConvertedPrice")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Id")
                                     (local-price :target-type route-toll-price
                                      :required common-lisp:t :member-name
                                      "LocalPrice")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (pass :target-type route-toll-pass
                                      :member-name "Pass")
                                     (payment-methods :target-type
                                      route-toll-payment-method-list :required
                                      common-lisp:t :member-name
                                      "PaymentMethods")
                                     (transponders :target-type
                                      route-transponder-list :required
                                      common-lisp:t :member-name
                                      "Transponders"))
                                    (:shape-name "RouteTollRate"))

(smithy/sdk/shapes:define-list route-toll-rate-list :member route-toll-rate)

(smithy/sdk/shapes:define-structure route-toll-summary common-lisp:nil
                                    ((total :target-type
                                      route-toll-price-summary :member-name
                                      "Total"))
                                    (:shape-name "RouteTollSummary"))

(smithy/sdk/shapes:define-structure route-toll-system common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name"))
                                    (:shape-name "RouteTollSystem"))

(smithy/sdk/shapes:define-list route-toll-system-list :member route-toll-system)

(smithy/sdk/shapes:define-type route-toll-vehicle-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-traffic-options common-lisp:nil
                                    ((flow-event-threshold-override
                                      :target-type duration-seconds
                                      :member-name
                                      "FlowEventThresholdOverride")
                                     (usage :target-type traffic-usage
                                      :member-name "Usage"))
                                    (:shape-name "RouteTrafficOptions"))

(smithy/sdk/shapes:define-structure route-trailer-options common-lisp:nil
                                    ((axle-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "AxleCount")
                                     (trailer-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TrailerCount"))
                                    (:shape-name "RouteTrailerOptions"))

(smithy/sdk/shapes:define-structure route-transponder common-lisp:nil
                                    ((system-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SystemName"))
                                    (:shape-name "RouteTransponder"))

(smithy/sdk/shapes:define-list route-transponder-list :member route-transponder)

(smithy/sdk/shapes:define-type route-travel-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-travel-mode-options common-lisp:nil
                                    ((car :target-type route-car-options
                                      :member-name "Car")
                                     (pedestrian :target-type
                                      route-pedestrian-options :member-name
                                      "Pedestrian")
                                     (scooter :target-type
                                      route-scooter-options :member-name
                                      "Scooter")
                                     (truck :target-type route-truck-options
                                      :member-name "Truck"))
                                    (:shape-name "RouteTravelModeOptions"))

(smithy/sdk/shapes:define-type route-travel-step-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-truck-options common-lisp:nil
                                    ((axle-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "AxleCount")
                                     (engine-type :target-type
                                      route-engine-type :member-name
                                      "EngineType")
                                     (gross-weight :target-type
                                      weight-kilograms :member-name
                                      "GrossWeight")
                                     (hazardous-cargos :target-type
                                      route-hazardous-cargo-type-list
                                      :member-name "HazardousCargos")
                                     (height :target-type dimension-centimeters
                                      :member-name "Height")
                                     (height-above-first-axle :target-type
                                      dimension-centimeters :member-name
                                      "HeightAboveFirstAxle")
                                     (kpra-length :target-type
                                      dimension-centimeters :member-name
                                      "KpraLength")
                                     (length :target-type dimension-centimeters
                                      :member-name "Length")
                                     (license-plate :target-type
                                      route-vehicle-license-plate :member-name
                                      "LicensePlate")
                                     (max-speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "MaxSpeed")
                                     (occupancy :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Occupancy")
                                     (payload-capacity :target-type
                                      weight-kilograms :member-name
                                      "PayloadCapacity")
                                     (tire-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TireCount")
                                     (trailer :target-type
                                      route-trailer-options :member-name
                                      "Trailer")
                                     (truck-type :target-type route-truck-type
                                      :member-name "TruckType")
                                     (tunnel-restriction-code :target-type
                                      tunnel-restriction-code :member-name
                                      "TunnelRestrictionCode")
                                     (weight-per-axle :target-type
                                      weight-kilograms :member-name
                                      "WeightPerAxle")
                                     (weight-per-axle-group :target-type
                                      weight-per-axle-group :member-name
                                      "WeightPerAxleGroup")
                                     (width :target-type dimension-centimeters
                                      :member-name "Width"))
                                    (:shape-name "RouteTruckOptions"))

(smithy/sdk/shapes:define-type route-truck-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route-turn-intensity
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-turn-step-details common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection")
                                     (turn-angle :target-type turn-angle
                                      :member-name "TurnAngle")
                                     (turn-intensity :target-type
                                      route-turn-intensity :member-name
                                      "TurnIntensity"))
                                    (:shape-name "RouteTurnStepDetails"))

(smithy/sdk/shapes:define-structure route-uturn-step-details common-lisp:nil
                                    ((intersection :target-type
                                      localized-string-list :required
                                      common-lisp:t :member-name
                                      "Intersection")
                                     (steering-direction :target-type
                                      route-steering-direction :member-name
                                      "SteeringDirection")
                                     (turn-angle :target-type turn-angle
                                      :member-name "TurnAngle")
                                     (turn-intensity :target-type
                                      route-turn-intensity :member-name
                                      "TurnIntensity"))
                                    (:shape-name "RouteUTurnStepDetails"))

(smithy/sdk/shapes:define-structure route-vehicle-arrival common-lisp:nil
                                    ((place :target-type route-vehicle-place
                                      :required common-lisp:t :member-name
                                      "Place")
                                     (time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "Time"))
                                    (:shape-name "RouteVehicleArrival"))

(smithy/sdk/shapes:define-structure route-vehicle-departure common-lisp:nil
                                    ((place :target-type route-vehicle-place
                                      :required common-lisp:t :member-name
                                      "Place")
                                     (time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "Time"))
                                    (:shape-name "RouteVehicleDeparture"))

(smithy/sdk/shapes:define-structure route-vehicle-incident common-lisp:nil
                                    ((description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description")
                                     (end-time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "EndTime")
                                     (severity :target-type
                                      route-vehicle-incident-severity
                                      :member-name "Severity")
                                     (start-time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "StartTime")
                                     (type :target-type
                                      route-vehicle-incident-type :member-name
                                      "Type"))
                                    (:shape-name "RouteVehicleIncident"))

(smithy/sdk/shapes:define-list route-vehicle-incident-list :member
                               route-vehicle-incident)

(smithy/sdk/shapes:define-type route-vehicle-incident-severity
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route-vehicle-incident-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-vehicle-leg-details common-lisp:nil
                                    ((arrival :target-type
                                      route-vehicle-arrival :required
                                      common-lisp:t :member-name "Arrival")
                                     (departure :target-type
                                      route-vehicle-departure :required
                                      common-lisp:t :member-name "Departure")
                                     (incidents :target-type
                                      route-vehicle-incident-list :required
                                      common-lisp:t :member-name "Incidents")
                                     (notices :target-type
                                      route-vehicle-notice-list :required
                                      common-lisp:t :member-name "Notices")
                                     (pass-through-waypoints :target-type
                                      route-pass-through-waypoint-list
                                      :required common-lisp:t :member-name
                                      "PassThroughWaypoints")
                                     (spans :target-type
                                      route-vehicle-span-list :required
                                      common-lisp:t :member-name "Spans")
                                     (summary :target-type
                                      route-vehicle-summary :member-name
                                      "Summary")
                                     (tolls :target-type route-toll-list
                                      :required common-lisp:t :member-name
                                      "Tolls")
                                     (toll-systems :target-type
                                      route-toll-system-list :required
                                      common-lisp:t :member-name "TollSystems")
                                     (travel-steps :target-type
                                      route-vehicle-travel-step-list :required
                                      common-lisp:t :member-name "TravelSteps")
                                     (truck-road-types :target-type
                                      truck-road-type-list :required
                                      common-lisp:t :member-name
                                      "TruckRoadTypes")
                                     (zones :target-type route-zone-list
                                      :required common-lisp:t :member-name
                                      "Zones"))
                                    (:shape-name "RouteVehicleLegDetails"))

(smithy/sdk/shapes:define-structure route-vehicle-license-plate common-lisp:nil
                                    ((last-character :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LastCharacter"))
                                    (:shape-name "RouteVehicleLicensePlate"))

(smithy/sdk/shapes:define-structure route-vehicle-notice common-lisp:nil
                                    ((code :target-type
                                      route-vehicle-notice-code :required
                                      common-lisp:t :member-name "Code")
                                     (details :target-type
                                      route-vehicle-notice-detail-list
                                      :required common-lisp:t :member-name
                                      "Details")
                                     (impact :target-type route-notice-impact
                                      :member-name "Impact"))
                                    (:shape-name "RouteVehicleNotice"))

(smithy/sdk/shapes:define-type route-vehicle-notice-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-vehicle-notice-detail common-lisp:nil
                                    ((title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Title")
                                     (violated-constraints :target-type
                                      route-violated-constraints :member-name
                                      "ViolatedConstraints"))
                                    (:shape-name "RouteVehicleNoticeDetail"))

(smithy/sdk/shapes:define-list route-vehicle-notice-detail-list :member
                               route-vehicle-notice-detail)

(smithy/sdk/shapes:define-list route-vehicle-notice-list :member
                               route-vehicle-notice)

(smithy/sdk/shapes:define-structure route-vehicle-overview-summary
                                    common-lisp:nil
                                    ((best-case-duration :target-type
                                      duration-seconds :member-name
                                      "BestCaseDuration")
                                     (distance :target-type distance-meters
                                      :required common-lisp:t :member-name
                                      "Distance")
                                     (duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration")
                                     (typical-duration :target-type
                                      duration-seconds :member-name
                                      "TypicalDuration"))
                                    (:shape-name "RouteVehicleOverviewSummary"))

(smithy/sdk/shapes:define-structure route-vehicle-place common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (original-position :target-type position23
                                      :member-name "OriginalPosition")
                                     (position :target-type position23
                                      :required common-lisp:t :member-name
                                      "Position")
                                     (side-of-street :target-type
                                      route-side-of-street :member-name
                                      "SideOfStreet")
                                     (waypoint-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "WaypointIndex"))
                                    (:shape-name "RouteVehiclePlace"))

(smithy/sdk/shapes:define-structure route-vehicle-span common-lisp:nil
                                    ((best-case-duration :target-type
                                      duration-seconds :member-name
                                      "BestCaseDuration")
                                     (car-access :target-type
                                      route-span-car-access-attribute-list
                                      :member-name "CarAccess")
                                     (country :target-type country-code3
                                      :member-name "Country")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (duration :target-type duration-seconds
                                      :member-name "Duration")
                                     (dynamic-speed :target-type
                                      route-span-dynamic-speed-details
                                      :member-name "DynamicSpeed")
                                     (functional-classification :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "FunctionalClassification")
                                     (gate :target-type
                                      route-span-gate-attribute :member-name
                                      "Gate")
                                     (geometry-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "GeometryOffset")
                                     (incidents :target-type index-list
                                      :member-name "Incidents")
                                     (names :target-type localized-string-list
                                      :member-name "Names")
                                     (notices :target-type index-list
                                      :member-name "Notices")
                                     (railway-crossing :target-type
                                      route-span-railway-crossing-attribute
                                      :member-name "RailwayCrossing")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region")
                                     (road-attributes :target-type
                                      route-span-road-attribute-list
                                      :member-name "RoadAttributes")
                                     (route-numbers :target-type
                                      route-number-list :member-name
                                      "RouteNumbers")
                                     (scooter-access :target-type
                                      route-span-scooter-access-attribute-list
                                      :member-name "ScooterAccess")
                                     (speed-limit :target-type
                                      route-span-speed-limit-details
                                      :member-name "SpeedLimit")
                                     (toll-systems :target-type index-list
                                      :member-name "TollSystems")
                                     (truck-access :target-type
                                      route-span-truck-access-attribute-list
                                      :member-name "TruckAccess")
                                     (truck-road-types :target-type index-list
                                      :member-name "TruckRoadTypes")
                                     (typical-duration :target-type
                                      duration-seconds :member-name
                                      "TypicalDuration")
                                     (zones :target-type index-list
                                      :member-name "Zones"))
                                    (:shape-name "RouteVehicleSpan"))

(smithy/sdk/shapes:define-list route-vehicle-span-list :member
                               route-vehicle-span)

(smithy/sdk/shapes:define-structure route-vehicle-summary common-lisp:nil
                                    ((overview :target-type
                                      route-vehicle-overview-summary
                                      :member-name "Overview")
                                     (travel-only :target-type
                                      route-vehicle-travel-only-summary
                                      :member-name "TravelOnly"))
                                    (:shape-name "RouteVehicleSummary"))

(smithy/sdk/shapes:define-structure route-vehicle-travel-only-summary
                                    common-lisp:nil
                                    ((best-case-duration :target-type
                                      duration-seconds :member-name
                                      "BestCaseDuration")
                                     (duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration")
                                     (typical-duration :target-type
                                      duration-seconds :member-name
                                      "TypicalDuration"))
                                    (:shape-name
                                     "RouteVehicleTravelOnlySummary"))

(smithy/sdk/shapes:define-structure route-vehicle-travel-step common-lisp:nil
                                    ((continue-highway-step-details
                                      :target-type
                                      route-continue-highway-step-details
                                      :member-name
                                      "ContinueHighwayStepDetails")
                                     (continue-step-details :target-type
                                      route-continue-step-details :member-name
                                      "ContinueStepDetails")
                                     (current-road :target-type route-road
                                      :member-name "CurrentRoad")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (duration :target-type duration-seconds
                                      :required common-lisp:t :member-name
                                      "Duration")
                                     (enter-highway-step-details :target-type
                                      route-enter-highway-step-details
                                      :member-name "EnterHighwayStepDetails")
                                     (exit-number :target-type
                                      localized-string-list :member-name
                                      "ExitNumber")
                                     (exit-step-details :target-type
                                      route-exit-step-details :member-name
                                      "ExitStepDetails")
                                     (geometry-offset :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "GeometryOffset")
                                     (instruction :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Instruction")
                                     (keep-step-details :target-type
                                      route-keep-step-details :member-name
                                      "KeepStepDetails")
                                     (next-road :target-type route-road
                                      :member-name "NextRoad")
                                     (ramp-step-details :target-type
                                      route-ramp-step-details :member-name
                                      "RampStepDetails")
                                     (roundabout-enter-step-details
                                      :target-type
                                      route-roundabout-enter-step-details
                                      :member-name
                                      "RoundaboutEnterStepDetails")
                                     (roundabout-exit-step-details :target-type
                                      route-roundabout-exit-step-details
                                      :member-name "RoundaboutExitStepDetails")
                                     (roundabout-pass-step-details :target-type
                                      route-roundabout-pass-step-details
                                      :member-name "RoundaboutPassStepDetails")
                                     (signpost :target-type route-signpost
                                      :member-name "Signpost")
                                     (turn-step-details :target-type
                                      route-turn-step-details :member-name
                                      "TurnStepDetails")
                                     (type :target-type
                                      route-vehicle-travel-step-type :required
                                      common-lisp:t :member-name "Type")
                                     (uturn-step-details :target-type
                                      route-uturn-step-details :member-name
                                      "UTurnStepDetails"))
                                    (:shape-name "RouteVehicleTravelStep"))

(smithy/sdk/shapes:define-list route-vehicle-travel-step-list :member
                               route-vehicle-travel-step)

(smithy/sdk/shapes:define-type route-vehicle-travel-step-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-violated-constraints common-lisp:nil
                                    ((all-hazards-restricted :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AllHazardsRestricted")
                                     (axle-count :target-type
                                      route-notice-detail-range :member-name
                                      "AxleCount")
                                     (hazardous-cargos :target-type
                                      route-hazardous-cargo-type-list :required
                                      common-lisp:t :member-name
                                      "HazardousCargos")
                                     (max-height :target-type
                                      dimension-centimeters :member-name
                                      "MaxHeight")
                                     (max-kpra-length :target-type
                                      dimension-centimeters :member-name
                                      "MaxKpraLength")
                                     (max-length :target-type
                                      dimension-centimeters :member-name
                                      "MaxLength")
                                     (max-payload-capacity :target-type
                                      weight-kilograms :member-name
                                      "MaxPayloadCapacity")
                                     (max-weight :target-type
                                      route-weight-constraint :member-name
                                      "MaxWeight")
                                     (max-weight-per-axle :target-type
                                      weight-kilograms :member-name
                                      "MaxWeightPerAxle")
                                     (max-weight-per-axle-group :target-type
                                      weight-per-axle-group :member-name
                                      "MaxWeightPerAxleGroup")
                                     (max-width :target-type
                                      dimension-centimeters :member-name
                                      "MaxWidth")
                                     (occupancy :target-type
                                      route-notice-detail-range :member-name
                                      "Occupancy")
                                     (restricted-times :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "RestrictedTimes")
                                     (time-dependent :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TimeDependent")
                                     (trailer-count :target-type
                                      route-notice-detail-range :member-name
                                      "TrailerCount")
                                     (travel-mode :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TravelMode")
                                     (truck-road-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TruckRoadType")
                                     (truck-type :target-type route-truck-type
                                      :member-name "TruckType")
                                     (tunnel-restriction-code :target-type
                                      tunnel-restriction-code :member-name
                                      "TunnelRestrictionCode"))
                                    (:shape-name "RouteViolatedConstraints"))

(smithy/sdk/shapes:define-structure route-waypoint common-lisp:nil
                                    ((avoid-actions-for-distance :target-type
                                      distance-meters :member-name
                                      "AvoidActionsForDistance")
                                     (avoid-uturns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AvoidUTurns")
                                     (heading :target-type heading :member-name
                                      "Heading")
                                     (matching :target-type
                                      route-matching-options :member-name
                                      "Matching")
                                     (pass-through :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "PassThrough")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (side-of-street :target-type
                                      route-side-of-street-options :member-name
                                      "SideOfStreet")
                                     (stop-duration :target-type
                                      duration-seconds :member-name
                                      "StopDuration"))
                                    (:shape-name "RouteWaypoint"))

(smithy/sdk/shapes:define-list route-waypoint-list :member route-waypoint)

(smithy/sdk/shapes:define-structure route-weight-constraint common-lisp:nil
                                    ((type :target-type
                                      route-weight-constraint-type :required
                                      common-lisp:t :member-name "Type")
                                     (value :target-type weight-kilograms
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "RouteWeightConstraint"))

(smithy/sdk/shapes:define-type route-weight-constraint-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure route-zone common-lisp:nil
                                    ((category :target-type route-zone-category
                                      :member-name "Category")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name"))
                                    (:shape-name "RouteZone"))

(smithy/sdk/shapes:define-type route-zone-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-zone-list :member route-zone)

(smithy/sdk/shapes:define-type routing-objective smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type side-of-street-matching-strategy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input snap-to-roads-request common-lisp:nil
                                ((key :target-type api-key :member-name "Key"
                                  :http-query "key")
                                 (snapped-geometry-format :target-type
                                  geometry-format :member-name
                                  "SnappedGeometryFormat")
                                 (snap-radius :target-type distance-meters
                                  :member-name "SnapRadius")
                                 (trace-points :target-type
                                  road-snap-trace-point-list :required
                                  common-lisp:t :member-name "TracePoints")
                                 (travel-mode :target-type
                                  road-snap-travel-mode :member-name
                                  "TravelMode")
                                 (travel-mode-options :target-type
                                  road-snap-travel-mode-options :member-name
                                  "TravelModeOptions"))
                                (:shape-name "SnapToRoadsRequest"))

(smithy/sdk/shapes:define-output snap-to-roads-response common-lisp:nil
                                 ((notices :target-type road-snap-notice-list
                                   :required common-lisp:t :member-name
                                   "Notices")
                                  (pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (snapped-geometry :target-type
                                   road-snap-snapped-geometry :member-name
                                   "SnappedGeometry")
                                  (snapped-geometry-format :target-type
                                   geometry-format :required common-lisp:t
                                   :member-name "SnappedGeometryFormat")
                                  (snapped-trace-points :target-type
                                   road-snap-snapped-trace-point-list :required
                                   common-lisp:t :member-name
                                   "SnappedTracePoints"))
                                 (:shape-name "SnapToRoadsResponse"))

(smithy/sdk/shapes:define-type speed-kilometers-per-hour
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time-of-day smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list time-threshold-list :member duration-seconds)

(smithy/sdk/shapes:define-type timestamp-with-timezone-offset
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type traffic-usage smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type truck-road-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list truck-road-type-list :member truck-road-type)

(smithy/sdk/shapes:define-type tunnel-restriction-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type turn-angle smithy/sdk/smithy-types:double)

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

(smithy/sdk/shapes:define-type waypoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type waypoint-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure waypoint-optimization-access-hours
                                    common-lisp:nil
                                    ((from :target-type
                                      waypoint-optimization-access-hours-entry
                                      :required common-lisp:t :member-name
                                      "From")
                                     (to :target-type
                                      waypoint-optimization-access-hours-entry
                                      :required common-lisp:t :member-name
                                      "To"))
                                    (:shape-name
                                     "WaypointOptimizationAccessHours"))

(smithy/sdk/shapes:define-structure waypoint-optimization-access-hours-entry
                                    common-lisp:nil
                                    ((day-of-week :target-type day-of-week
                                      :required common-lisp:t :member-name
                                      "DayOfWeek")
                                     (time-of-day :target-type time-of-day
                                      :required common-lisp:t :member-name
                                      "TimeOfDay"))
                                    (:shape-name
                                     "WaypointOptimizationAccessHoursEntry"))

(smithy/sdk/shapes:define-structure waypoint-optimization-avoidance-area
                                    common-lisp:nil
                                    ((geometry :target-type
                                      waypoint-optimization-avoidance-area-geometry
                                      :required common-lisp:t :member-name
                                      "Geometry"))
                                    (:shape-name
                                     "WaypointOptimizationAvoidanceArea"))

(smithy/sdk/shapes:define-structure
 waypoint-optimization-avoidance-area-geometry common-lisp:nil
 ((bounding-box :target-type bounding-box :member-name "BoundingBox"))
 (:shape-name "WaypointOptimizationAvoidanceAreaGeometry"))

(smithy/sdk/shapes:define-list waypoint-optimization-avoidance-area-list
                               :member waypoint-optimization-avoidance-area)

(smithy/sdk/shapes:define-structure waypoint-optimization-avoidance-options
                                    common-lisp:nil
                                    ((areas :target-type
                                      waypoint-optimization-avoidance-area-list
                                      :member-name "Areas")
                                     (car-shuttle-trains :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "CarShuttleTrains")
                                     (controlled-access-highways :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ControlledAccessHighways")
                                     (dirt-roads :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "DirtRoads")
                                     (ferries :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Ferries")
                                     (toll-roads :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "TollRoads")
                                     (tunnels :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Tunnels")
                                     (uturns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UTurns"))
                                    (:shape-name
                                     "WaypointOptimizationAvoidanceOptions"))

(smithy/sdk/shapes:define-type waypoint-optimization-clustering-algorithm
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure waypoint-optimization-clustering-options
                                    common-lisp:nil
                                    ((algorithm :target-type
                                      waypoint-optimization-clustering-algorithm
                                      :required common-lisp:t :member-name
                                      "Algorithm")
                                     (driving-distance-options :target-type
                                      waypoint-optimization-driving-distance-options
                                      :member-name "DrivingDistanceOptions"))
                                    (:shape-name
                                     "WaypointOptimizationClusteringOptions"))

(smithy/sdk/shapes:define-structure waypoint-optimization-connection
                                    common-lisp:nil
                                    ((distance :target-type distance-meters
                                      :required common-lisp:t :member-name
                                      "Distance")
                                     (from :target-type waypoint-id :required
                                      common-lisp:t :member-name "From")
                                     (rest-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "RestDuration")
                                     (to :target-type waypoint-id :required
                                      common-lisp:t :member-name "To")
                                     (travel-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "TravelDuration")
                                     (wait-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "WaitDuration"))
                                    (:shape-name
                                     "WaypointOptimizationConnection"))

(smithy/sdk/shapes:define-list waypoint-optimization-connection-list :member
                               waypoint-optimization-connection)

(smithy/sdk/shapes:define-type waypoint-optimization-constraint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure waypoint-optimization-destination-options
                                    common-lisp:nil
                                    ((access-hours :target-type
                                      waypoint-optimization-access-hours
                                      :member-name "AccessHours")
                                     (appointment-time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "AppointmentTime")
                                     (heading :target-type heading :member-name
                                      "Heading")
                                     (id :target-type waypoint-id :member-name
                                      "Id")
                                     (service-duration :target-type
                                      duration-seconds :member-name
                                      "ServiceDuration")
                                     (side-of-street :target-type
                                      waypoint-optimization-side-of-street-options
                                      :member-name "SideOfStreet"))
                                    (:shape-name
                                     "WaypointOptimizationDestinationOptions"))

(smithy/sdk/shapes:define-structure waypoint-optimization-driver-options
                                    common-lisp:nil
                                    ((rest-cycles :target-type
                                      waypoint-optimization-rest-cycles
                                      :member-name "RestCycles")
                                     (rest-profile :target-type
                                      waypoint-optimization-rest-profile
                                      :member-name "RestProfile")
                                     (treat-service-time-as :target-type
                                      waypoint-optimization-service-time-treatment
                                      :member-name "TreatServiceTimeAs"))
                                    (:shape-name
                                     "WaypointOptimizationDriverOptions"))

(smithy/sdk/shapes:define-structure
 waypoint-optimization-driving-distance-options common-lisp:nil
 ((driving-distance :target-type distance-meters :required common-lisp:t
   :member-name "DrivingDistance"))
 (:shape-name "WaypointOptimizationDrivingDistanceOptions"))

(smithy/sdk/shapes:define-structure waypoint-optimization-exclusion-options
                                    common-lisp:nil
                                    ((countries :target-type country-code-list
                                      :required common-lisp:t :member-name
                                      "Countries"))
                                    (:shape-name
                                     "WaypointOptimizationExclusionOptions"))

(smithy/sdk/shapes:define-structure waypoint-optimization-failed-constraint
                                    common-lisp:nil
                                    ((constraint :target-type
                                      waypoint-optimization-constraint
                                      :member-name "Constraint")
                                     (reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Reason"))
                                    (:shape-name
                                     "WaypointOptimizationFailedConstraint"))

(smithy/sdk/shapes:define-list waypoint-optimization-failed-constraint-list
                               :member waypoint-optimization-failed-constraint)

(smithy/sdk/shapes:define-type waypoint-optimization-hazardous-cargo-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list waypoint-optimization-hazardous-cargo-type-list
                               :member
                               waypoint-optimization-hazardous-cargo-type)

(smithy/sdk/shapes:define-structure waypoint-optimization-impeding-waypoint
                                    common-lisp:nil
                                    ((failed-constraints :target-type
                                      waypoint-optimization-failed-constraint-list
                                      :required common-lisp:t :member-name
                                      "FailedConstraints")
                                     (id :target-type waypoint-id :required
                                      common-lisp:t :member-name "Id")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position"))
                                    (:shape-name
                                     "WaypointOptimizationImpedingWaypoint"))

(smithy/sdk/shapes:define-list waypoint-optimization-impeding-waypoint-list
                               :member waypoint-optimization-impeding-waypoint)

(smithy/sdk/shapes:define-structure waypoint-optimization-optimized-waypoint
                                    common-lisp:nil
                                    ((arrival-time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "ArrivalTime")
                                     (cluster-index :target-type cluster-index
                                      :member-name "ClusterIndex")
                                     (departure-time :target-type
                                      timestamp-with-timezone-offset :required
                                      common-lisp:t :member-name
                                      "DepartureTime")
                                     (id :target-type waypoint-id :required
                                      common-lisp:t :member-name "Id")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position"))
                                    (:shape-name
                                     "WaypointOptimizationOptimizedWaypoint"))

(smithy/sdk/shapes:define-list waypoint-optimization-optimized-waypoint-list
                               :member waypoint-optimization-optimized-waypoint)

(smithy/sdk/shapes:define-structure waypoint-optimization-origin-options
                                    common-lisp:nil
                                    ((id :target-type waypoint-id :member-name
                                      "Id"))
                                    (:shape-name
                                     "WaypointOptimizationOriginOptions"))

(smithy/sdk/shapes:define-structure waypoint-optimization-pedestrian-options
                                    common-lisp:nil
                                    ((speed :target-type
                                      speed-kilometers-per-hour :member-name
                                      "Speed"))
                                    (:shape-name
                                     "WaypointOptimizationPedestrianOptions"))

(smithy/sdk/shapes:define-structure waypoint-optimization-rest-cycle-durations
                                    common-lisp:nil
                                    ((rest-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "RestDuration")
                                     (work-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "WorkDuration"))
                                    (:shape-name
                                     "WaypointOptimizationRestCycleDurations"))

(smithy/sdk/shapes:define-structure waypoint-optimization-rest-cycles
                                    common-lisp:nil
                                    ((long-cycle :target-type
                                      waypoint-optimization-rest-cycle-durations
                                      :required common-lisp:t :member-name
                                      "LongCycle")
                                     (short-cycle :target-type
                                      waypoint-optimization-rest-cycle-durations
                                      :required common-lisp:t :member-name
                                      "ShortCycle"))
                                    (:shape-name
                                     "WaypointOptimizationRestCycles"))

(smithy/sdk/shapes:define-structure waypoint-optimization-rest-profile
                                    common-lisp:nil
                                    ((profile :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Profile"))
                                    (:shape-name
                                     "WaypointOptimizationRestProfile"))

(smithy/sdk/shapes:define-type waypoint-optimization-sequencing-objective
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type waypoint-optimization-service-time-treatment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 waypoint-optimization-side-of-street-options common-lisp:nil
 ((position :target-type position :required common-lisp:t :member-name
   "Position")
  (use-with :target-type side-of-street-matching-strategy :member-name
   "UseWith"))
 (:shape-name "WaypointOptimizationSideOfStreetOptions"))

(smithy/sdk/shapes:define-structure waypoint-optimization-time-breakdown
                                    common-lisp:nil
                                    ((rest-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "RestDuration")
                                     (service-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "ServiceDuration")
                                     (travel-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "TravelDuration")
                                     (wait-duration :target-type
                                      duration-seconds :required common-lisp:t
                                      :member-name "WaitDuration"))
                                    (:shape-name
                                     "WaypointOptimizationTimeBreakdown"))

(smithy/sdk/shapes:define-structure waypoint-optimization-traffic-options
                                    common-lisp:nil
                                    ((usage :target-type traffic-usage
                                      :member-name "Usage"))
                                    (:shape-name
                                     "WaypointOptimizationTrafficOptions"))

(smithy/sdk/shapes:define-structure waypoint-optimization-trailer-options
                                    common-lisp:nil
                                    ((trailer-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "TrailerCount"))
                                    (:shape-name
                                     "WaypointOptimizationTrailerOptions"))

(smithy/sdk/shapes:define-type waypoint-optimization-travel-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure waypoint-optimization-travel-mode-options
                                    common-lisp:nil
                                    ((pedestrian :target-type
                                      waypoint-optimization-pedestrian-options
                                      :member-name "Pedestrian")
                                     (truck :target-type
                                      waypoint-optimization-truck-options
                                      :member-name "Truck"))
                                    (:shape-name
                                     "WaypointOptimizationTravelModeOptions"))

(smithy/sdk/shapes:define-structure waypoint-optimization-truck-options
                                    common-lisp:nil
                                    ((gross-weight :target-type
                                      weight-kilograms :member-name
                                      "GrossWeight")
                                     (hazardous-cargos :target-type
                                      waypoint-optimization-hazardous-cargo-type-list
                                      :member-name "HazardousCargos")
                                     (height :target-type dimension-centimeters
                                      :member-name "Height")
                                     (length :target-type dimension-centimeters
                                      :member-name "Length")
                                     (trailer :target-type
                                      waypoint-optimization-trailer-options
                                      :member-name "Trailer")
                                     (truck-type :target-type
                                      waypoint-optimization-truck-type
                                      :member-name "TruckType")
                                     (tunnel-restriction-code :target-type
                                      tunnel-restriction-code :member-name
                                      "TunnelRestrictionCode")
                                     (weight-per-axle :target-type
                                      weight-kilograms :member-name
                                      "WeightPerAxle")
                                     (width :target-type dimension-centimeters
                                      :member-name "Width"))
                                    (:shape-name
                                     "WaypointOptimizationTruckOptions"))

(smithy/sdk/shapes:define-type waypoint-optimization-truck-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure waypoint-optimization-waypoint
                                    common-lisp:nil
                                    ((access-hours :target-type
                                      waypoint-optimization-access-hours
                                      :member-name "AccessHours")
                                     (appointment-time :target-type
                                      timestamp-with-timezone-offset
                                      :member-name "AppointmentTime")
                                     (before :target-type before-waypoints-list
                                      :member-name "Before")
                                     (heading :target-type heading :member-name
                                      "Heading")
                                     (id :target-type waypoint-id :member-name
                                      "Id")
                                     (position :target-type position :required
                                      common-lisp:t :member-name "Position")
                                     (service-duration :target-type
                                      duration-seconds :member-name
                                      "ServiceDuration")
                                     (side-of-street :target-type
                                      waypoint-optimization-side-of-street-options
                                      :member-name "SideOfStreet"))
                                    (:shape-name
                                     "WaypointOptimizationWaypoint"))

(smithy/sdk/shapes:define-list waypoint-optimization-waypoint-list :member
                               waypoint-optimization-waypoint)

(smithy/sdk/shapes:define-type weight-kilograms smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure weight-per-axle-group common-lisp:nil
                                    ((single :target-type weight-kilograms
                                      :member-name "Single")
                                     (tandem :target-type weight-kilograms
                                      :member-name "Tandem")
                                     (triple :target-type weight-kilograms
                                      :member-name "Triple")
                                     (quad :target-type weight-kilograms
                                      :member-name "Quad")
                                     (quint :target-type weight-kilograms
                                      :member-name "Quint"))
                                    (:shape-name "WeightPerAxleGroup"))

(smithy/sdk/operation:define-operation calculate-isolines :shape-name
                                       "CalculateIsolines" :input
                                       calculate-isolines-request :output
                                       calculate-isolines-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/isolines")

(smithy/sdk/operation:define-operation calculate-route-matrix :shape-name
                                       "CalculateRouteMatrix" :input
                                       calculate-route-matrix-request :output
                                       calculate-route-matrix-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/route-matrix")

(smithy/sdk/operation:define-operation calculate-routes :shape-name
                                       "CalculateRoutes" :input
                                       calculate-routes-request :output
                                       calculate-routes-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/routes")

(smithy/sdk/operation:define-operation optimize-waypoints :shape-name
                                       "OptimizeWaypoints" :input
                                       optimize-waypoints-request :output
                                       optimize-waypoints-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/optimize-waypoints")

(smithy/sdk/operation:define-operation snap-to-roads :shape-name "SnapToRoads"
                                       :input snap-to-roads-request :output
                                       snap-to-roads-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/snap-to-roads")
