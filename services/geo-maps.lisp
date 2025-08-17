(uiop/package:define-package #:pira/geo-maps (:use)
                             (:export #:api-key #:color-scheme
                              #:compact-overlay #:country-code
                              #:distance-meters #:geo-json-overlay #:get-glyphs
                              #:get-sprites #:get-static-map
                              #:get-style-descriptor #:get-tile #:label-size
                              #:language-tag #:map-feature-mode #:map-style
                              #:maps-service #:position-list-string
                              #:position-string #:provider-resource
                              #:scale-bar-unit #:static-map-style #:tileset
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:variant))
(common-lisp:in-package #:pira/geo-maps)

(smithy/sdk/service:define-service maps-service :shape-name "MapsService"
                                   :version "2020-11-19" :title
                                   "Amazon Location Service Maps V2"
                                   :operations 'common-lisp:nil :traits
                                   '(("aws.api#service" ("sdkId" . "Geo Maps")
                                      ("arnNamespace" . "geo-maps")
                                      ("cloudTrailEventSource"
                                       . "geo-maps.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "geo-maps"))
                                     ("aws.endpoints#standardRegionalEndpoints"
                                      ("partitionSpecialCases"
                                       ("aws"
                                        . #((("endpoint"
                                              . "https://maps.geo.{region}.{dnsSuffix}/v2"))
                                            (("endpoint"
                                              . "https://maps.geo-fips.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))
                                            (("endpoint"
                                              . "https://maps.geo-fips.{region}.{dnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack"))
                                            (("endpoint"
                                              . "https://maps.geo.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips")
                                             ("dualStack" . common-lisp:t))))
                                       ("aws-us-gov"
                                        . #((("endpoint"
                                              . "https://maps.geo.{region}.{dnsSuffix}/v2"))
                                            (("endpoint"
                                              . "https://maps.geo-fips.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))
                                            (("endpoint"
                                              . "https://maps.geo-fips.{region}.{dnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack"))
                                            (("endpoint"
                                              . "https://maps.geo.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips")
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

(smithy/sdk/shapes:define-type color-scheme smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type compact-overlay smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type country-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type distance-meters smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type geo-json-overlay smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-glyphs-request common-lisp:nil
                                ((font-stack :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "FontStack"
                                  :http-label common-lisp:t)
                                 (font-unicode-range :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "FontUnicodeRange"
                                  :http-label common-lisp:t))
                                (:shape-name "GetGlyphsRequest"))

(smithy/sdk/shapes:define-output get-glyphs-response common-lisp:nil
                                 ((blob :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "Blob" :http-payload common-lisp:t)
                                  (content-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ContentType" :http-header "Content-Type")
                                  (cache-control :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "CacheControl" :http-header "Cache-Control")
                                  (etag :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ETag" :http-header "ETag"))
                                 (:shape-name "GetGlyphsResponse"))

(smithy/sdk/shapes:define-input get-sprites-request common-lisp:nil
                                ((file-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "FileName"
                                  :http-label common-lisp:t)
                                 (style :target-type map-style :required
                                  common-lisp:t :member-name "Style"
                                  :http-label common-lisp:t)
                                 (color-scheme :target-type color-scheme
                                  :required common-lisp:t :member-name
                                  "ColorScheme" :http-label common-lisp:t)
                                 (variant :target-type variant :required
                                  common-lisp:t :member-name "Variant"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSpritesRequest"))

(smithy/sdk/shapes:define-output get-sprites-response common-lisp:nil
                                 ((blob :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "Blob" :http-payload common-lisp:t)
                                  (content-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ContentType" :http-header "Content-Type")
                                  (cache-control :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "CacheControl" :http-header "Cache-Control")
                                  (etag :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ETag" :http-header "ETag"))
                                 (:shape-name "GetSpritesResponse"))

(smithy/sdk/shapes:define-input get-static-map-request common-lisp:nil
                                ((bounding-box :target-type
                                  position-list-string :member-name
                                  "BoundingBox" :http-query "bounding-box")
                                 (bounded-positions :target-type
                                  position-list-string :member-name
                                  "BoundedPositions" :http-query
                                  "bounded-positions")
                                 (center :target-type position-string
                                  :member-name "Center" :http-query "center")
                                 (color-scheme :target-type color-scheme
                                  :member-name "ColorScheme" :http-query
                                  "color-scheme")
                                 (compact-overlay :target-type compact-overlay
                                  :member-name "CompactOverlay" :http-query
                                  "compact-overlay")
                                 (crop-labels :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "CropLabels" :http-query "crop-labels")
                                 (geo-json-overlay :target-type
                                  geo-json-overlay :member-name
                                  "GeoJsonOverlay" :http-query
                                  "geojson-overlay")
                                 (height :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "Height"
                                  :http-query "height")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key")
                                 (label-size :target-type label-size
                                  :member-name "LabelSize" :http-query
                                  "label-size")
                                 (language :target-type language-tag
                                  :member-name "Language" :http-query "lang")
                                 (padding :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "Padding" :http-query "padding")
                                 (political-view :target-type country-code
                                  :member-name "PoliticalView" :http-query
                                  "political-view")
                                 (points-of-interests :target-type
                                  map-feature-mode :member-name
                                  "PointsOfInterests" :http-query "pois")
                                 (radius :target-type distance-meters
                                  :member-name "Radius" :http-query "radius")
                                 (file-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "FileName"
                                  :http-label common-lisp:t)
                                 (scale-bar-unit :target-type scale-bar-unit
                                  :member-name "ScaleBarUnit" :http-query
                                  "scale-unit")
                                 (style :target-type static-map-style
                                  :member-name "Style" :http-query "style")
                                 (width :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "Width"
                                  :http-query "width")
                                 (zoom :target-type
                                  smithy/sdk/smithy-types:float :member-name
                                  "Zoom" :http-query "zoom"))
                                (:shape-name "GetStaticMapRequest"))

(smithy/sdk/shapes:define-output get-static-map-response common-lisp:nil
                                 ((blob :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "Blob" :http-payload common-lisp:t)
                                  (content-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ContentType" :http-header "Content-Type")
                                  (cache-control :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "CacheControl" :http-header "Cache-Control")
                                  (etag :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ETag" :http-header "ETag")
                                  (pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket"))
                                 (:shape-name "GetStaticMapResponse"))

(smithy/sdk/shapes:define-input get-style-descriptor-request common-lisp:nil
                                ((style :target-type map-style :required
                                  common-lisp:t :member-name "Style"
                                  :http-label common-lisp:t)
                                 (color-scheme :target-type color-scheme
                                  :member-name "ColorScheme" :http-query
                                  "color-scheme")
                                 (political-view :target-type country-code
                                  :member-name "PoliticalView" :http-query
                                  "political-view")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key"))
                                (:shape-name "GetStyleDescriptorRequest"))

(smithy/sdk/shapes:define-output get-style-descriptor-response common-lisp:nil
                                 ((blob :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "Blob" :http-payload common-lisp:t)
                                  (content-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ContentType" :http-header "Content-Type")
                                  (cache-control :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "CacheControl" :http-header "Cache-Control")
                                  (etag :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ETag" :http-header "ETag"))
                                 (:shape-name "GetStyleDescriptorResponse"))

(smithy/sdk/shapes:define-input get-tile-request common-lisp:nil
                                ((tileset :target-type tileset :required
                                  common-lisp:t :member-name "Tileset"
                                  :http-label common-lisp:t)
                                 (z :target-type smithy/sdk/smithy-types:string
                                  :required common-lisp:t :member-name "Z"
                                  :http-label common-lisp:t)
                                 (x :target-type smithy/sdk/smithy-types:string
                                  :required common-lisp:t :member-name "X"
                                  :http-label common-lisp:t)
                                 (y :target-type smithy/sdk/smithy-types:string
                                  :required common-lisp:t :member-name "Y"
                                  :http-label common-lisp:t)
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key"))
                                (:shape-name "GetTileRequest"))

(smithy/sdk/shapes:define-output get-tile-response common-lisp:nil
                                 ((blob :target-type
                                   smithy/sdk/smithy-types:blob :member-name
                                   "Blob" :http-payload common-lisp:t)
                                  (content-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ContentType" :http-header "Content-Type")
                                  (cache-control :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "CacheControl" :http-header "Cache-Control")
                                  (etag :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ETag" :http-header "ETag")
                                  (pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket"))
                                 (:shape-name "GetTileResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type label-size smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type language-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type map-feature-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type map-style smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type position-list-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type position-string smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type scale-bar-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type static-map-style smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type tileset smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type variant smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation get-glyphs :shape-name "GetGlyphs"
                                       :input get-glyphs-request :output
                                       get-glyphs-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/glyphs/{FontStack}/{FontUnicodeRange}")

(smithy/sdk/operation:define-operation get-sprites :shape-name "GetSprites"
                                       :input get-sprites-request :output
                                       get-sprites-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/styles/{Style}/{ColorScheme}/{Variant}/sprites/{FileName}")

(smithy/sdk/operation:define-operation get-static-map :shape-name
                                       "GetStaticMap" :input
                                       get-static-map-request :output
                                       get-static-map-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/static/{FileName}")

(smithy/sdk/operation:define-operation get-style-descriptor :shape-name
                                       "GetStyleDescriptor" :input
                                       get-style-descriptor-request :output
                                       get-style-descriptor-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/styles/{Style}/descriptor")

(smithy/sdk/operation:define-operation get-tile :shape-name "GetTile" :input
                                       get-tile-request :output
                                       get-tile-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/tiles/{Tileset}/{Z}/{X}/{Y}")
