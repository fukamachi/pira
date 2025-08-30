(uiop/package:define-package #:pira/geo-places (:use)
                             (:export #:access-denied-exception #:access-point
                              #:access-point-list #:access-restriction
                              #:access-restriction-list #:address
                              #:address-component-match-scores
                              #:address-component-phonemes #:api-key
                              #:autocomplete #:autocomplete-additional-feature
                              #:autocomplete-additional-feature-list
                              #:autocomplete-address-highlights
                              #:autocomplete-filter
                              #:autocomplete-filter-place-type
                              #:autocomplete-filter-place-type-list
                              #:autocomplete-highlights
                              #:autocomplete-intended-use
                              #:autocomplete-result-item
                              #:autocomplete-result-item-list #:bounding-box
                              #:business-chain #:business-chain-list #:category
                              #:category-list #:component-match-scores
                              #:contact-details #:contact-details-list
                              #:contacts #:country #:country-code
                              #:country-code2 #:country-code3
                              #:country-code-list #:country-highlights
                              #:distance-meters #:duration-seconds
                              #:filter-business-chain-list
                              #:filter-category-list #:filter-circle
                              #:filter-food-type-list #:food-type
                              #:food-type-list #:geocode
                              #:geocode-additional-feature
                              #:geocode-additional-feature-list
                              #:geocode-filter #:geocode-filter-place-type
                              #:geocode-filter-place-type-list
                              #:geocode-intended-use #:geocode-parsed-query
                              #:geocode-parsed-query-address-components
                              #:geocode-query-components #:geocode-result-item
                              #:geocode-result-item-list #:get-place
                              #:get-place-additional-feature
                              #:get-place-additional-feature-list
                              #:get-place-intended-use #:highlight
                              #:highlight-list #:internal-server-exception
                              #:intersection #:intersection-highlights-list
                              #:intersection-list #:intersection-street
                              #:intersection-street-list #:language-tag
                              #:match-score #:match-score-details
                              #:match-score-list #:opening-hours
                              #:opening-hours-components
                              #:opening-hours-components-list
                              #:opening-hours-display
                              #:opening-hours-display-list #:opening-hours-list
                              #:parsed-query-component
                              #:parsed-query-component-list
                              #:parsed-query-secondary-address-component
                              #:parsed-query-secondary-address-component-list
                              #:phoneme-details #:phoneme-transcription
                              #:phoneme-transcription-list #:place-type
                              #:places-service #:position #:postal-authority
                              #:postal-code-details #:postal-code-details-list
                              #:postal-code-mode #:postal-code-type
                              #:provider-resource #:query-refinement
                              #:query-refinement-list #:query-type
                              #:record-type-code #:region #:region-highlights
                              #:related-place #:related-place-list
                              #:reverse-geocode
                              #:reverse-geocode-additional-feature
                              #:reverse-geocode-additional-feature-list
                              #:reverse-geocode-filter
                              #:reverse-geocode-filter-place-type
                              #:reverse-geocode-filter-place-type-list
                              #:reverse-geocode-intended-use
                              #:reverse-geocode-result-item
                              #:reverse-geocode-result-item-list
                              #:search-nearby
                              #:search-nearby-additional-feature
                              #:search-nearby-additional-feature-list
                              #:search-nearby-filter
                              #:search-nearby-intended-use
                              #:search-nearby-result-item
                              #:search-nearby-result-item-list #:search-text
                              #:search-text-additional-feature
                              #:search-text-additional-feature-list
                              #:search-text-filter #:search-text-intended-use
                              #:search-text-result-item
                              #:search-text-result-item-list
                              #:secondary-address-component
                              #:secondary-address-component-list
                              #:secondary-address-component-match-score
                              #:secondary-address-component-match-score-list
                              #:sensitive-boolean #:sensitive-string
                              #:street-components #:street-components-list
                              #:sub-region #:sub-region-highlights #:suggest
                              #:suggest-additional-feature
                              #:suggest-additional-feature-list
                              #:suggest-address-highlights #:suggest-filter
                              #:suggest-highlights #:suggest-intended-use
                              #:suggest-place-result #:suggest-query-result
                              #:suggest-result-item #:suggest-result-item-list
                              #:suggest-result-item-type #:throttling-exception
                              #:time-zone #:token #:type-placement
                              #:type-separator #:usps-zip #:usps-zip-plus4
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:zip-classification-code #:geo-places-error))
(common-lisp:in-package #:pira/geo-places)

(common-lisp:define-condition geo-places-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service places-service :shape-name "PlacesService"
                                   :version "2020-11-19" :title
                                   "Amazon Location Service Places V2"
                                   :operations 'common-lisp:nil :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Geo Places")
                                      ("arnNamespace" . "geo-places")
                                      ("cloudTrailEventSource"
                                       . "geo-places.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "geo-places"))
                                     ("aws.endpoints#standardRegionalEndpoints"
                                      ("partitionSpecialCases"
                                       ("aws"
                                        . #((("endpoint"
                                              . "https://places.geo.{region}.{dnsSuffix}/v2"))
                                            (("endpoint"
                                              . "https://places.geo-fips.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))
                                            (("endpoint"
                                              . "https://places.geo-fips.{region}.{dnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack"))
                                            (("endpoint"
                                              . "https://places.geo.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips")
                                             ("dualStack" . common-lisp:t))))
                                       ("aws-us-gov"
                                        . #((("endpoint"
                                              . "https://places.geo.{region}.{dnsSuffix}/v2"))
                                            (("endpoint"
                                              . "https://places.geo-fips.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack" . common-lisp:t))
                                            (("endpoint"
                                              . "https://places.geo-fips.{region}.{dnsSuffix}/v2")
                                             ("fips" . common-lisp:t)
                                             ("dualStack"))
                                            (("endpoint"
                                              . "https://places.geo.{region}.{dualStackDnsSuffix}/v2")
                                             ("fips")
                                             ("dualStack" . common-lisp:t))))))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class geo-places-error))

(smithy/sdk/shapes:define-structure access-point common-lisp:nil
                                    ((position :target-type position
                                      :member-name "Position"))
                                    (:shape-name "AccessPoint"))

(smithy/sdk/shapes:define-list access-point-list :member access-point)

(smithy/sdk/shapes:define-structure access-restriction common-lisp:nil
                                    ((restricted :target-type sensitive-boolean
                                      :member-name "Restricted")
                                     (categories :target-type category-list
                                      :member-name "Categories"))
                                    (:shape-name "AccessRestriction"))

(smithy/sdk/shapes:define-list access-restriction-list :member
                               access-restriction)

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((label :target-type sensitive-string
                                      :member-name "Label")
                                     (country :target-type country :member-name
                                      "Country")
                                     (region :target-type region :member-name
                                      "Region")
                                     (sub-region :target-type sub-region
                                      :member-name "SubRegion")
                                     (locality :target-type sensitive-string
                                      :member-name "Locality")
                                     (district :target-type sensitive-string
                                      :member-name "District")
                                     (sub-district :target-type
                                      sensitive-string :member-name
                                      "SubDistrict")
                                     (postal-code :target-type sensitive-string
                                      :member-name "PostalCode")
                                     (block :target-type sensitive-string
                                      :member-name "Block")
                                     (sub-block :target-type sensitive-string
                                      :member-name "SubBlock")
                                     (intersection :target-type
                                      intersection-street-list :member-name
                                      "Intersection")
                                     (street :target-type sensitive-string
                                      :member-name "Street")
                                     (street-components :target-type
                                      street-components-list :member-name
                                      "StreetComponents")
                                     (address-number :target-type
                                      sensitive-string :member-name
                                      "AddressNumber")
                                     (building :target-type sensitive-string
                                      :member-name "Building")
                                     (secondary-address-components :target-type
                                      secondary-address-component-list
                                      :member-name
                                      "SecondaryAddressComponents"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-structure address-component-match-scores
                                    common-lisp:nil
                                    ((country :target-type match-score
                                      :member-name "Country")
                                     (region :target-type match-score
                                      :member-name "Region")
                                     (sub-region :target-type match-score
                                      :member-name "SubRegion")
                                     (locality :target-type match-score
                                      :member-name "Locality")
                                     (district :target-type match-score
                                      :member-name "District")
                                     (sub-district :target-type match-score
                                      :member-name "SubDistrict")
                                     (postal-code :target-type match-score
                                      :member-name "PostalCode")
                                     (block :target-type match-score
                                      :member-name "Block")
                                     (sub-block :target-type match-score
                                      :member-name "SubBlock")
                                     (intersection :target-type
                                      match-score-list :member-name
                                      "Intersection")
                                     (address-number :target-type match-score
                                      :member-name "AddressNumber")
                                     (building :target-type match-score
                                      :member-name "Building")
                                     (secondary-address-components :target-type
                                      secondary-address-component-match-score-list
                                      :member-name
                                      "SecondaryAddressComponents"))
                                    (:shape-name "AddressComponentMatchScores"))

(smithy/sdk/shapes:define-structure address-component-phonemes common-lisp:nil
                                    ((country :target-type
                                      phoneme-transcription-list :member-name
                                      "Country")
                                     (region :target-type
                                      phoneme-transcription-list :member-name
                                      "Region")
                                     (sub-region :target-type
                                      phoneme-transcription-list :member-name
                                      "SubRegion")
                                     (locality :target-type
                                      phoneme-transcription-list :member-name
                                      "Locality")
                                     (district :target-type
                                      phoneme-transcription-list :member-name
                                      "District")
                                     (sub-district :target-type
                                      phoneme-transcription-list :member-name
                                      "SubDistrict")
                                     (block :target-type
                                      phoneme-transcription-list :member-name
                                      "Block")
                                     (sub-block :target-type
                                      phoneme-transcription-list :member-name
                                      "SubBlock")
                                     (street :target-type
                                      phoneme-transcription-list :member-name
                                      "Street"))
                                    (:shape-name "AddressComponentPhonemes"))

(smithy/sdk/shapes:define-type api-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type autocomplete-additional-feature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list autocomplete-additional-feature-list :member
                               autocomplete-additional-feature)

(smithy/sdk/shapes:define-structure autocomplete-address-highlights
                                    common-lisp:nil
                                    ((label :target-type highlight-list
                                      :member-name "Label")
                                     (country :target-type country-highlights
                                      :member-name "Country")
                                     (region :target-type region-highlights
                                      :member-name "Region")
                                     (sub-region :target-type
                                      sub-region-highlights :member-name
                                      "SubRegion")
                                     (locality :target-type highlight-list
                                      :member-name "Locality")
                                     (district :target-type highlight-list
                                      :member-name "District")
                                     (sub-district :target-type highlight-list
                                      :member-name "SubDistrict")
                                     (street :target-type highlight-list
                                      :member-name "Street")
                                     (block :target-type highlight-list
                                      :member-name "Block")
                                     (sub-block :target-type highlight-list
                                      :member-name "SubBlock")
                                     (intersection :target-type
                                      intersection-highlights-list :member-name
                                      "Intersection")
                                     (postal-code :target-type highlight-list
                                      :member-name "PostalCode")
                                     (address-number :target-type
                                      highlight-list :member-name
                                      "AddressNumber")
                                     (building :target-type highlight-list
                                      :member-name "Building"))
                                    (:shape-name
                                     "AutocompleteAddressHighlights"))

(smithy/sdk/shapes:define-structure autocomplete-filter common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (circle :target-type filter-circle
                                      :member-name "Circle")
                                     (include-countries :target-type
                                      country-code-list :member-name
                                      "IncludeCountries")
                                     (include-place-types :target-type
                                      autocomplete-filter-place-type-list
                                      :member-name "IncludePlaceTypes"))
                                    (:shape-name "AutocompleteFilter"))

(smithy/sdk/shapes:define-type autocomplete-filter-place-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list autocomplete-filter-place-type-list :member
                               autocomplete-filter-place-type)

(smithy/sdk/shapes:define-structure autocomplete-highlights common-lisp:nil
                                    ((title :target-type highlight-list
                                      :member-name "Title")
                                     (address :target-type
                                      autocomplete-address-highlights
                                      :member-name "Address"))
                                    (:shape-name "AutocompleteHighlights"))

(smithy/sdk/shapes:define-type autocomplete-intended-use
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input autocomplete-request common-lisp:nil
                                ((query-text :target-type sensitive-string
                                  :required common-lisp:t :member-name
                                  "QueryText")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (bias-position :target-type position
                                  :member-name "BiasPosition")
                                 (filter :target-type autocomplete-filter
                                  :member-name "Filter")
                                 (postal-code-mode :target-type
                                  postal-code-mode :member-name
                                  "PostalCodeMode")
                                 (additional-features :target-type
                                  autocomplete-additional-feature-list
                                  :member-name "AdditionalFeatures")
                                 (language :target-type language-tag
                                  :member-name "Language")
                                 (political-view :target-type country-code
                                  :member-name "PoliticalView")
                                 (intended-use :target-type
                                  autocomplete-intended-use :member-name
                                  "IntendedUse")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key"))
                                (:shape-name "AutocompleteRequest"))

(smithy/sdk/shapes:define-output autocomplete-response common-lisp:nil
                                 ((pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (result-items :target-type
                                   autocomplete-result-item-list :member-name
                                   "ResultItems"))
                                 (:shape-name "AutocompleteResponse"))

(smithy/sdk/shapes:define-structure autocomplete-result-item common-lisp:nil
                                    ((place-id :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "PlaceId")
                                     (place-type :target-type place-type
                                      :required common-lisp:t :member-name
                                      "PlaceType")
                                     (title :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Title")
                                     (address :target-type address :member-name
                                      "Address")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (language :target-type language-tag
                                      :member-name "Language")
                                     (political-view :target-type country-code3
                                      :member-name "PoliticalView")
                                     (highlights :target-type
                                      autocomplete-highlights :member-name
                                      "Highlights"))
                                    (:shape-name "AutocompleteResultItem"))

(smithy/sdk/shapes:define-list autocomplete-result-item-list :member
                               autocomplete-result-item)

(smithy/sdk/shapes:define-list bounding-box :member
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure business-chain common-lisp:nil
                                    ((name :target-type sensitive-string
                                      :member-name "Name")
                                     (id :target-type sensitive-string
                                      :member-name "Id"))
                                    (:shape-name "BusinessChain"))

(smithy/sdk/shapes:define-list business-chain-list :member business-chain)

(smithy/sdk/shapes:define-structure category common-lisp:nil
                                    ((id :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (name :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (localized-name :target-type
                                      sensitive-string :member-name
                                      "LocalizedName")
                                     (primary :target-type sensitive-boolean
                                      :member-name "Primary"))
                                    (:shape-name "Category"))

(smithy/sdk/shapes:define-list category-list :member category)

(smithy/sdk/shapes:define-structure component-match-scores common-lisp:nil
                                    ((title :target-type match-score
                                      :member-name "Title")
                                     (address :target-type
                                      address-component-match-scores
                                      :member-name "Address"))
                                    (:shape-name "ComponentMatchScores"))

(smithy/sdk/shapes:define-structure contact-details common-lisp:nil
                                    ((label :target-type sensitive-string
                                      :member-name "Label")
                                     (value :target-type sensitive-string
                                      :member-name "Value")
                                     (categories :target-type category-list
                                      :member-name "Categories"))
                                    (:shape-name "ContactDetails"))

(smithy/sdk/shapes:define-list contact-details-list :member contact-details)

(smithy/sdk/shapes:define-structure contacts common-lisp:nil
                                    ((phones :target-type contact-details-list
                                      :member-name "Phones")
                                     (faxes :target-type contact-details-list
                                      :member-name "Faxes")
                                     (websites :target-type
                                      contact-details-list :member-name
                                      "Websites")
                                     (emails :target-type contact-details-list
                                      :member-name "Emails"))
                                    (:shape-name "Contacts"))

(smithy/sdk/shapes:define-structure country common-lisp:nil
                                    ((code2 :target-type country-code2
                                      :member-name "Code2")
                                     (code3 :target-type country-code3
                                      :member-name "Code3")
                                     (name :target-type sensitive-string
                                      :member-name "Name"))
                                    (:shape-name "Country"))

(smithy/sdk/shapes:define-type country-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type country-code2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type country-code3 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list country-code-list :member country-code)

(smithy/sdk/shapes:define-structure country-highlights common-lisp:nil
                                    ((code :target-type highlight-list
                                      :member-name "Code")
                                     (name :target-type highlight-list
                                      :member-name "Name"))
                                    (:shape-name "CountryHighlights"))

(smithy/sdk/shapes:define-type distance-meters smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type duration-seconds smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list filter-business-chain-list :member
                               sensitive-string)

(smithy/sdk/shapes:define-list filter-category-list :member sensitive-string)

(smithy/sdk/shapes:define-structure filter-circle common-lisp:nil
                                    ((center :target-type position :required
                                      common-lisp:t :member-name "Center")
                                     (radius :target-type distance-meters
                                      :required common-lisp:t :member-name
                                      "Radius"))
                                    (:shape-name "FilterCircle"))

(smithy/sdk/shapes:define-list filter-food-type-list :member sensitive-string)

(smithy/sdk/shapes:define-structure food-type common-lisp:nil
                                    ((localized-name :target-type
                                      sensitive-string :required common-lisp:t
                                      :member-name "LocalizedName")
                                     (id :target-type sensitive-string
                                      :member-name "Id")
                                     (primary :target-type sensitive-boolean
                                      :member-name "Primary"))
                                    (:shape-name "FoodType"))

(smithy/sdk/shapes:define-list food-type-list :member food-type)

(smithy/sdk/shapes:define-type geocode-additional-feature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list geocode-additional-feature-list :member
                               geocode-additional-feature)

(smithy/sdk/shapes:define-structure geocode-filter common-lisp:nil
                                    ((include-countries :target-type
                                      country-code-list :member-name
                                      "IncludeCountries")
                                     (include-place-types :target-type
                                      geocode-filter-place-type-list
                                      :member-name "IncludePlaceTypes"))
                                    (:shape-name "GeocodeFilter"))

(smithy/sdk/shapes:define-type geocode-filter-place-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list geocode-filter-place-type-list :member
                               geocode-filter-place-type)

(smithy/sdk/shapes:define-type geocode-intended-use
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure geocode-parsed-query common-lisp:nil
                                    ((title :target-type
                                      parsed-query-component-list :member-name
                                      "Title")
                                     (address :target-type
                                      geocode-parsed-query-address-components
                                      :member-name "Address"))
                                    (:shape-name "GeocodeParsedQuery"))

(smithy/sdk/shapes:define-structure geocode-parsed-query-address-components
                                    common-lisp:nil
                                    ((country :target-type
                                      parsed-query-component-list :member-name
                                      "Country")
                                     (region :target-type
                                      parsed-query-component-list :member-name
                                      "Region")
                                     (sub-region :target-type
                                      parsed-query-component-list :member-name
                                      "SubRegion")
                                     (locality :target-type
                                      parsed-query-component-list :member-name
                                      "Locality")
                                     (district :target-type
                                      parsed-query-component-list :member-name
                                      "District")
                                     (sub-district :target-type
                                      parsed-query-component-list :member-name
                                      "SubDistrict")
                                     (postal-code :target-type
                                      parsed-query-component-list :member-name
                                      "PostalCode")
                                     (block :target-type
                                      parsed-query-component-list :member-name
                                      "Block")
                                     (sub-block :target-type
                                      parsed-query-component-list :member-name
                                      "SubBlock")
                                     (street :target-type
                                      parsed-query-component-list :member-name
                                      "Street")
                                     (address-number :target-type
                                      parsed-query-component-list :member-name
                                      "AddressNumber")
                                     (building :target-type
                                      parsed-query-component-list :member-name
                                      "Building")
                                     (secondary-address-components :target-type
                                      parsed-query-secondary-address-component-list
                                      :member-name
                                      "SecondaryAddressComponents"))
                                    (:shape-name
                                     "GeocodeParsedQueryAddressComponents"))

(smithy/sdk/shapes:define-structure geocode-query-components common-lisp:nil
                                    ((country :target-type sensitive-string
                                      :member-name "Country")
                                     (region :target-type sensitive-string
                                      :member-name "Region")
                                     (sub-region :target-type sensitive-string
                                      :member-name "SubRegion")
                                     (locality :target-type sensitive-string
                                      :member-name "Locality")
                                     (district :target-type sensitive-string
                                      :member-name "District")
                                     (street :target-type sensitive-string
                                      :member-name "Street")
                                     (address-number :target-type
                                      sensitive-string :member-name
                                      "AddressNumber")
                                     (postal-code :target-type sensitive-string
                                      :member-name "PostalCode"))
                                    (:shape-name "GeocodeQueryComponents"))

(smithy/sdk/shapes:define-input geocode-request common-lisp:nil
                                ((query-text :target-type sensitive-string
                                  :member-name "QueryText")
                                 (query-components :target-type
                                  geocode-query-components :member-name
                                  "QueryComponents")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (bias-position :target-type position
                                  :member-name "BiasPosition")
                                 (filter :target-type geocode-filter
                                  :member-name "Filter")
                                 (additional-features :target-type
                                  geocode-additional-feature-list :member-name
                                  "AdditionalFeatures")
                                 (language :target-type language-tag
                                  :member-name "Language")
                                 (political-view :target-type country-code
                                  :member-name "PoliticalView")
                                 (intended-use :target-type
                                  geocode-intended-use :member-name
                                  "IntendedUse")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key"))
                                (:shape-name "GeocodeRequest"))

(smithy/sdk/shapes:define-output geocode-response common-lisp:nil
                                 ((pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (result-items :target-type
                                   geocode-result-item-list :member-name
                                   "ResultItems"))
                                 (:shape-name "GeocodeResponse"))

(smithy/sdk/shapes:define-structure geocode-result-item common-lisp:nil
                                    ((place-id :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "PlaceId")
                                     (place-type :target-type place-type
                                      :required common-lisp:t :member-name
                                      "PlaceType")
                                     (title :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Title")
                                     (address :target-type address :member-name
                                      "Address")
                                     (address-number-corrected :target-type
                                      sensitive-boolean :member-name
                                      "AddressNumberCorrected")
                                     (postal-code-details :target-type
                                      postal-code-details-list :member-name
                                      "PostalCodeDetails")
                                     (position :target-type position
                                      :member-name "Position")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (map-view :target-type bounding-box
                                      :member-name "MapView")
                                     (categories :target-type category-list
                                      :member-name "Categories")
                                     (food-types :target-type food-type-list
                                      :member-name "FoodTypes")
                                     (access-points :target-type
                                      access-point-list :member-name
                                      "AccessPoints")
                                     (time-zone :target-type time-zone
                                      :member-name "TimeZone")
                                     (political-view :target-type country-code3
                                      :member-name "PoliticalView")
                                     (match-scores :target-type
                                      match-score-details :member-name
                                      "MatchScores")
                                     (parsed-query :target-type
                                      geocode-parsed-query :member-name
                                      "ParsedQuery")
                                     (intersections :target-type
                                      intersection-list :member-name
                                      "Intersections")
                                     (main-address :target-type related-place
                                      :member-name "MainAddress")
                                     (secondary-addresses :target-type
                                      related-place-list :member-name
                                      "SecondaryAddresses"))
                                    (:shape-name "GeocodeResultItem"))

(smithy/sdk/shapes:define-list geocode-result-item-list :member
                               geocode-result-item)

(smithy/sdk/shapes:define-type get-place-additional-feature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list get-place-additional-feature-list :member
                               get-place-additional-feature)

(smithy/sdk/shapes:define-type get-place-intended-use
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-place-request common-lisp:nil
                                ((place-id :target-type sensitive-string
                                  :required common-lisp:t :member-name
                                  "PlaceId" :http-label common-lisp:t)
                                 (additional-features :target-type
                                  get-place-additional-feature-list
                                  :member-name "AdditionalFeatures" :http-query
                                  "additional-features")
                                 (language :target-type language-tag
                                  :member-name "Language" :http-query
                                  "language")
                                 (political-view :target-type country-code
                                  :member-name "PoliticalView" :http-query
                                  "political-view")
                                 (intended-use :target-type
                                  get-place-intended-use :member-name
                                  "IntendedUse" :http-query "intended-use")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key"))
                                (:shape-name "GetPlaceRequest"))

(smithy/sdk/shapes:define-output get-place-response common-lisp:nil
                                 ((place-id :target-type sensitive-string
                                   :required common-lisp:t :member-name
                                   "PlaceId")
                                  (place-type :target-type place-type :required
                                   common-lisp:t :member-name "PlaceType")
                                  (title :target-type sensitive-string
                                   :required common-lisp:t :member-name
                                   "Title")
                                  (pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (address :target-type address :member-name
                                   "Address")
                                  (address-number-corrected :target-type
                                   sensitive-boolean :member-name
                                   "AddressNumberCorrected")
                                  (postal-code-details :target-type
                                   postal-code-details-list :member-name
                                   "PostalCodeDetails")
                                  (position :target-type position :member-name
                                   "Position")
                                  (map-view :target-type bounding-box
                                   :member-name "MapView")
                                  (categories :target-type category-list
                                   :member-name "Categories")
                                  (food-types :target-type food-type-list
                                   :member-name "FoodTypes")
                                  (business-chains :target-type
                                   business-chain-list :member-name
                                   "BusinessChains")
                                  (contacts :target-type contacts :member-name
                                   "Contacts")
                                  (opening-hours :target-type
                                   opening-hours-list :member-name
                                   "OpeningHours")
                                  (access-points :target-type access-point-list
                                   :member-name "AccessPoints")
                                  (access-restrictions :target-type
                                   access-restriction-list :member-name
                                   "AccessRestrictions")
                                  (time-zone :target-type time-zone
                                   :member-name "TimeZone")
                                  (political-view :target-type country-code3
                                   :member-name "PoliticalView")
                                  (phonemes :target-type phoneme-details
                                   :member-name "Phonemes")
                                  (main-address :target-type related-place
                                   :member-name "MainAddress")
                                  (secondary-addresses :target-type
                                   related-place-list :member-name
                                   "SecondaryAddresses"))
                                 (:shape-name "GetPlaceResponse"))

(smithy/sdk/shapes:define-structure highlight common-lisp:nil
                                    ((start-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "StartIndex")
                                     (end-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "EndIndex")
                                     (value :target-type sensitive-string
                                      :member-name "Value"))
                                    (:shape-name "Highlight"))

(smithy/sdk/shapes:define-list highlight-list :member highlight)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class geo-places-error))

(smithy/sdk/shapes:define-structure intersection common-lisp:nil
                                    ((place-id :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "PlaceId")
                                     (title :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Title")
                                     (address :target-type address :member-name
                                      "Address")
                                     (position :target-type position
                                      :member-name "Position")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (route-distance :target-type
                                      distance-meters :member-name
                                      "RouteDistance")
                                     (map-view :target-type bounding-box
                                      :member-name "MapView")
                                     (access-points :target-type
                                      access-point-list :member-name
                                      "AccessPoints"))
                                    (:shape-name "Intersection"))

(smithy/sdk/shapes:define-list intersection-highlights-list :member
                               highlight-list)

(smithy/sdk/shapes:define-list intersection-list :member intersection)

(smithy/sdk/shapes:define-type intersection-street
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list intersection-street-list :member
                               intersection-street)

(smithy/sdk/shapes:define-type language-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type match-score smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure match-score-details common-lisp:nil
                                    ((overall :target-type match-score
                                      :member-name "Overall")
                                     (components :target-type
                                      component-match-scores :member-name
                                      "Components"))
                                    (:shape-name "MatchScoreDetails"))

(smithy/sdk/shapes:define-list match-score-list :member match-score)

(smithy/sdk/shapes:define-structure opening-hours common-lisp:nil
                                    ((display :target-type
                                      opening-hours-display-list :member-name
                                      "Display")
                                     (open-now :target-type sensitive-boolean
                                      :member-name "OpenNow")
                                     (components :target-type
                                      opening-hours-components-list
                                      :member-name "Components")
                                     (categories :target-type category-list
                                      :member-name "Categories"))
                                    (:shape-name "OpeningHours"))

(smithy/sdk/shapes:define-structure opening-hours-components common-lisp:nil
                                    ((open-time :target-type sensitive-string
                                      :member-name "OpenTime")
                                     (open-duration :target-type
                                      sensitive-string :member-name
                                      "OpenDuration")
                                     (recurrence :target-type sensitive-string
                                      :member-name "Recurrence"))
                                    (:shape-name "OpeningHoursComponents"))

(smithy/sdk/shapes:define-list opening-hours-components-list :member
                               opening-hours-components)

(smithy/sdk/shapes:define-type opening-hours-display
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list opening-hours-display-list :member
                               opening-hours-display)

(smithy/sdk/shapes:define-list opening-hours-list :member opening-hours)

(smithy/sdk/shapes:define-structure parsed-query-component common-lisp:nil
                                    ((start-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "StartIndex")
                                     (end-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "EndIndex")
                                     (value :target-type sensitive-string
                                      :member-name "Value")
                                     (query-component :target-type
                                      sensitive-string :member-name
                                      "QueryComponent"))
                                    (:shape-name "ParsedQueryComponent"))

(smithy/sdk/shapes:define-list parsed-query-component-list :member
                               parsed-query-component)

(smithy/sdk/shapes:define-structure parsed-query-secondary-address-component
                                    common-lisp:nil
                                    ((start-index :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "StartIndex")
                                     (end-index :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "EndIndex")
                                     (value :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Value")
                                     (number :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Number")
                                     (designator :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Designator"))
                                    (:shape-name
                                     "ParsedQuerySecondaryAddressComponent"))

(smithy/sdk/shapes:define-list parsed-query-secondary-address-component-list
                               :member parsed-query-secondary-address-component)

(smithy/sdk/shapes:define-structure phoneme-details common-lisp:nil
                                    ((title :target-type
                                      phoneme-transcription-list :member-name
                                      "Title")
                                     (address :target-type
                                      address-component-phonemes :member-name
                                      "Address"))
                                    (:shape-name "PhonemeDetails"))

(smithy/sdk/shapes:define-structure phoneme-transcription common-lisp:nil
                                    ((value :target-type sensitive-string
                                      :member-name "Value")
                                     (language :target-type language-tag
                                      :member-name "Language")
                                     (preferred :target-type sensitive-boolean
                                      :member-name "Preferred"))
                                    (:shape-name "PhonemeTranscription"))

(smithy/sdk/shapes:define-list phoneme-transcription-list :member
                               phoneme-transcription)

(smithy/sdk/shapes:define-type place-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list position :member smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type postal-authority smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure postal-code-details common-lisp:nil
                                    ((postal-code :target-type sensitive-string
                                      :member-name "PostalCode")
                                     (postal-authority :target-type
                                      postal-authority :member-name
                                      "PostalAuthority")
                                     (postal-code-type :target-type
                                      postal-code-type :member-name
                                      "PostalCodeType")
                                     (usps-zip :target-type usps-zip
                                      :member-name "UspsZip")
                                     (usps-zip-plus4 :target-type
                                      usps-zip-plus4 :member-name
                                      "UspsZipPlus4"))
                                    (:shape-name "PostalCodeDetails"))

(smithy/sdk/shapes:define-list postal-code-details-list :member
                               postal-code-details)

(smithy/sdk/shapes:define-type postal-code-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type postal-code-type smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure query-refinement common-lisp:nil
                                    ((refined-term :target-type
                                      sensitive-string :required common-lisp:t
                                      :member-name "RefinedTerm")
                                     (original-term :target-type
                                      sensitive-string :required common-lisp:t
                                      :member-name "OriginalTerm")
                                     (start-index :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "StartIndex")
                                     (end-index :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "EndIndex"))
                                    (:shape-name "QueryRefinement"))

(smithy/sdk/shapes:define-list query-refinement-list :member query-refinement)

(smithy/sdk/shapes:define-type query-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type record-type-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure region common-lisp:nil
                                    ((code :target-type sensitive-string
                                      :member-name "Code")
                                     (name :target-type sensitive-string
                                      :member-name "Name"))
                                    (:shape-name "Region"))

(smithy/sdk/shapes:define-structure region-highlights common-lisp:nil
                                    ((code :target-type highlight-list
                                      :member-name "Code")
                                     (name :target-type highlight-list
                                      :member-name "Name"))
                                    (:shape-name "RegionHighlights"))

(smithy/sdk/shapes:define-structure related-place common-lisp:nil
                                    ((place-id :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "PlaceId")
                                     (place-type :target-type place-type
                                      :required common-lisp:t :member-name
                                      "PlaceType")
                                     (title :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Title")
                                     (address :target-type address :member-name
                                      "Address")
                                     (position :target-type position
                                      :member-name "Position")
                                     (access-points :target-type
                                      access-point-list :member-name
                                      "AccessPoints"))
                                    (:shape-name "RelatedPlace"))

(smithy/sdk/shapes:define-list related-place-list :member related-place)

(smithy/sdk/shapes:define-type reverse-geocode-additional-feature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list reverse-geocode-additional-feature-list :member
                               reverse-geocode-additional-feature)

(smithy/sdk/shapes:define-structure reverse-geocode-filter common-lisp:nil
                                    ((include-place-types :target-type
                                      reverse-geocode-filter-place-type-list
                                      :member-name "IncludePlaceTypes"))
                                    (:shape-name "ReverseGeocodeFilter"))

(smithy/sdk/shapes:define-type reverse-geocode-filter-place-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list reverse-geocode-filter-place-type-list :member
                               reverse-geocode-filter-place-type)

(smithy/sdk/shapes:define-type reverse-geocode-intended-use
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reverse-geocode-request common-lisp:nil
                                ((query-position :target-type position
                                  :required common-lisp:t :member-name
                                  "QueryPosition")
                                 (query-radius :target-type distance-meters
                                  :member-name "QueryRadius")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (filter :target-type reverse-geocode-filter
                                  :member-name "Filter")
                                 (additional-features :target-type
                                  reverse-geocode-additional-feature-list
                                  :member-name "AdditionalFeatures")
                                 (language :target-type language-tag
                                  :member-name "Language")
                                 (political-view :target-type country-code
                                  :member-name "PoliticalView")
                                 (intended-use :target-type
                                  reverse-geocode-intended-use :member-name
                                  "IntendedUse")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key"))
                                (:shape-name "ReverseGeocodeRequest"))

(smithy/sdk/shapes:define-output reverse-geocode-response common-lisp:nil
                                 ((pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (result-items :target-type
                                   reverse-geocode-result-item-list
                                   :member-name "ResultItems"))
                                 (:shape-name "ReverseGeocodeResponse"))

(smithy/sdk/shapes:define-structure reverse-geocode-result-item common-lisp:nil
                                    ((place-id :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "PlaceId")
                                     (place-type :target-type place-type
                                      :required common-lisp:t :member-name
                                      "PlaceType")
                                     (title :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Title")
                                     (address :target-type address :member-name
                                      "Address")
                                     (address-number-corrected :target-type
                                      sensitive-boolean :member-name
                                      "AddressNumberCorrected")
                                     (postal-code-details :target-type
                                      postal-code-details-list :member-name
                                      "PostalCodeDetails")
                                     (position :target-type position
                                      :member-name "Position")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (map-view :target-type bounding-box
                                      :member-name "MapView")
                                     (categories :target-type category-list
                                      :member-name "Categories")
                                     (food-types :target-type food-type-list
                                      :member-name "FoodTypes")
                                     (access-points :target-type
                                      access-point-list :member-name
                                      "AccessPoints")
                                     (time-zone :target-type time-zone
                                      :member-name "TimeZone")
                                     (political-view :target-type country-code3
                                      :member-name "PoliticalView")
                                     (intersections :target-type
                                      intersection-list :member-name
                                      "Intersections"))
                                    (:shape-name "ReverseGeocodeResultItem"))

(smithy/sdk/shapes:define-list reverse-geocode-result-item-list :member
                               reverse-geocode-result-item)

(smithy/sdk/shapes:define-type search-nearby-additional-feature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list search-nearby-additional-feature-list :member
                               search-nearby-additional-feature)

(smithy/sdk/shapes:define-structure search-nearby-filter common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (include-countries :target-type
                                      country-code-list :member-name
                                      "IncludeCountries")
                                     (include-categories :target-type
                                      filter-category-list :member-name
                                      "IncludeCategories")
                                     (exclude-categories :target-type
                                      filter-category-list :member-name
                                      "ExcludeCategories")
                                     (include-business-chains :target-type
                                      filter-business-chain-list :member-name
                                      "IncludeBusinessChains")
                                     (exclude-business-chains :target-type
                                      filter-business-chain-list :member-name
                                      "ExcludeBusinessChains")
                                     (include-food-types :target-type
                                      filter-food-type-list :member-name
                                      "IncludeFoodTypes")
                                     (exclude-food-types :target-type
                                      filter-food-type-list :member-name
                                      "ExcludeFoodTypes"))
                                    (:shape-name "SearchNearbyFilter"))

(smithy/sdk/shapes:define-type search-nearby-intended-use
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-nearby-request common-lisp:nil
                                ((query-position :target-type position
                                  :required common-lisp:t :member-name
                                  "QueryPosition")
                                 (query-radius :target-type distance-meters
                                  :member-name "QueryRadius")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (filter :target-type search-nearby-filter
                                  :member-name "Filter")
                                 (additional-features :target-type
                                  search-nearby-additional-feature-list
                                  :member-name "AdditionalFeatures")
                                 (language :target-type language-tag
                                  :member-name "Language")
                                 (political-view :target-type country-code
                                  :member-name "PoliticalView")
                                 (intended-use :target-type
                                  search-nearby-intended-use :member-name
                                  "IntendedUse")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key"))
                                (:shape-name "SearchNearbyRequest"))

(smithy/sdk/shapes:define-output search-nearby-response common-lisp:nil
                                 ((pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (result-items :target-type
                                   search-nearby-result-item-list :member-name
                                   "ResultItems")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "SearchNearbyResponse"))

(smithy/sdk/shapes:define-structure search-nearby-result-item common-lisp:nil
                                    ((place-id :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "PlaceId")
                                     (place-type :target-type place-type
                                      :required common-lisp:t :member-name
                                      "PlaceType")
                                     (title :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Title")
                                     (address :target-type address :member-name
                                      "Address")
                                     (address-number-corrected :target-type
                                      sensitive-boolean :member-name
                                      "AddressNumberCorrected")
                                     (position :target-type position
                                      :member-name "Position")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (map-view :target-type bounding-box
                                      :member-name "MapView")
                                     (categories :target-type category-list
                                      :member-name "Categories")
                                     (food-types :target-type food-type-list
                                      :member-name "FoodTypes")
                                     (business-chains :target-type
                                      business-chain-list :member-name
                                      "BusinessChains")
                                     (contacts :target-type contacts
                                      :member-name "Contacts")
                                     (opening-hours :target-type
                                      opening-hours-list :member-name
                                      "OpeningHours")
                                     (access-points :target-type
                                      access-point-list :member-name
                                      "AccessPoints")
                                     (access-restrictions :target-type
                                      access-restriction-list :member-name
                                      "AccessRestrictions")
                                     (time-zone :target-type time-zone
                                      :member-name "TimeZone")
                                     (political-view :target-type country-code3
                                      :member-name "PoliticalView")
                                     (phonemes :target-type phoneme-details
                                      :member-name "Phonemes"))
                                    (:shape-name "SearchNearbyResultItem"))

(smithy/sdk/shapes:define-list search-nearby-result-item-list :member
                               search-nearby-result-item)

(smithy/sdk/shapes:define-type search-text-additional-feature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list search-text-additional-feature-list :member
                               search-text-additional-feature)

(smithy/sdk/shapes:define-structure search-text-filter common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (circle :target-type filter-circle
                                      :member-name "Circle")
                                     (include-countries :target-type
                                      country-code-list :member-name
                                      "IncludeCountries"))
                                    (:shape-name "SearchTextFilter"))

(smithy/sdk/shapes:define-type search-text-intended-use
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-text-request common-lisp:nil
                                ((query-text :target-type sensitive-string
                                  :member-name "QueryText")
                                 (query-id :target-type sensitive-string
                                  :member-name "QueryId")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (bias-position :target-type position
                                  :member-name "BiasPosition")
                                 (filter :target-type search-text-filter
                                  :member-name "Filter")
                                 (additional-features :target-type
                                  search-text-additional-feature-list
                                  :member-name "AdditionalFeatures")
                                 (language :target-type language-tag
                                  :member-name "Language")
                                 (political-view :target-type country-code
                                  :member-name "PoliticalView")
                                 (intended-use :target-type
                                  search-text-intended-use :member-name
                                  "IntendedUse")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key"))
                                (:shape-name "SearchTextRequest"))

(smithy/sdk/shapes:define-output search-text-response common-lisp:nil
                                 ((pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (result-items :target-type
                                   search-text-result-item-list :member-name
                                   "ResultItems")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "SearchTextResponse"))

(smithy/sdk/shapes:define-structure search-text-result-item common-lisp:nil
                                    ((place-id :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "PlaceId")
                                     (place-type :target-type place-type
                                      :required common-lisp:t :member-name
                                      "PlaceType")
                                     (title :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Title")
                                     (address :target-type address :member-name
                                      "Address")
                                     (address-number-corrected :target-type
                                      sensitive-boolean :member-name
                                      "AddressNumberCorrected")
                                     (position :target-type position
                                      :member-name "Position")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (map-view :target-type bounding-box
                                      :member-name "MapView")
                                     (categories :target-type category-list
                                      :member-name "Categories")
                                     (food-types :target-type food-type-list
                                      :member-name "FoodTypes")
                                     (business-chains :target-type
                                      business-chain-list :member-name
                                      "BusinessChains")
                                     (contacts :target-type contacts
                                      :member-name "Contacts")
                                     (opening-hours :target-type
                                      opening-hours-list :member-name
                                      "OpeningHours")
                                     (access-points :target-type
                                      access-point-list :member-name
                                      "AccessPoints")
                                     (access-restrictions :target-type
                                      access-restriction-list :member-name
                                      "AccessRestrictions")
                                     (time-zone :target-type time-zone
                                      :member-name "TimeZone")
                                     (political-view :target-type country-code3
                                      :member-name "PoliticalView")
                                     (phonemes :target-type phoneme-details
                                      :member-name "Phonemes"))
                                    (:shape-name "SearchTextResultItem"))

(smithy/sdk/shapes:define-list search-text-result-item-list :member
                               search-text-result-item)

(smithy/sdk/shapes:define-structure secondary-address-component common-lisp:nil
                                    ((number :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Number"))
                                    (:shape-name "SecondaryAddressComponent"))

(smithy/sdk/shapes:define-list secondary-address-component-list :member
                               secondary-address-component)

(smithy/sdk/shapes:define-structure secondary-address-component-match-score
                                    common-lisp:nil
                                    ((number :target-type match-score
                                      :member-name "Number"))
                                    (:shape-name
                                     "SecondaryAddressComponentMatchScore"))

(smithy/sdk/shapes:define-list secondary-address-component-match-score-list
                               :member secondary-address-component-match-score)

(smithy/sdk/shapes:define-type sensitive-boolean
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure street-components common-lisp:nil
                                    ((base-name :target-type sensitive-string
                                      :member-name "BaseName")
                                     (type :target-type sensitive-string
                                      :member-name "Type")
                                     (type-placement :target-type
                                      type-placement :member-name
                                      "TypePlacement")
                                     (type-separator :target-type
                                      type-separator :member-name
                                      "TypeSeparator")
                                     (prefix :target-type sensitive-string
                                      :member-name "Prefix")
                                     (suffix :target-type sensitive-string
                                      :member-name "Suffix")
                                     (direction :target-type sensitive-string
                                      :member-name "Direction")
                                     (language :target-type language-tag
                                      :member-name "Language"))
                                    (:shape-name "StreetComponents"))

(smithy/sdk/shapes:define-list street-components-list :member street-components)

(smithy/sdk/shapes:define-structure sub-region common-lisp:nil
                                    ((code :target-type sensitive-string
                                      :member-name "Code")
                                     (name :target-type sensitive-string
                                      :member-name "Name"))
                                    (:shape-name "SubRegion"))

(smithy/sdk/shapes:define-structure sub-region-highlights common-lisp:nil
                                    ((code :target-type highlight-list
                                      :member-name "Code")
                                     (name :target-type highlight-list
                                      :member-name "Name"))
                                    (:shape-name "SubRegionHighlights"))

(smithy/sdk/shapes:define-type suggest-additional-feature
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list suggest-additional-feature-list :member
                               suggest-additional-feature)

(smithy/sdk/shapes:define-structure suggest-address-highlights common-lisp:nil
                                    ((label :target-type highlight-list
                                      :member-name "Label"))
                                    (:shape-name "SuggestAddressHighlights"))

(smithy/sdk/shapes:define-structure suggest-filter common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (circle :target-type filter-circle
                                      :member-name "Circle")
                                     (include-countries :target-type
                                      country-code-list :member-name
                                      "IncludeCountries"))
                                    (:shape-name "SuggestFilter"))

(smithy/sdk/shapes:define-structure suggest-highlights common-lisp:nil
                                    ((title :target-type highlight-list
                                      :member-name "Title")
                                     (address :target-type
                                      suggest-address-highlights :member-name
                                      "Address"))
                                    (:shape-name "SuggestHighlights"))

(smithy/sdk/shapes:define-type suggest-intended-use
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suggest-place-result common-lisp:nil
                                    ((place-id :target-type sensitive-string
                                      :member-name "PlaceId")
                                     (place-type :target-type place-type
                                      :member-name "PlaceType")
                                     (address :target-type address :member-name
                                      "Address")
                                     (position :target-type position
                                      :member-name "Position")
                                     (distance :target-type distance-meters
                                      :member-name "Distance")
                                     (map-view :target-type bounding-box
                                      :member-name "MapView")
                                     (categories :target-type category-list
                                      :member-name "Categories")
                                     (food-types :target-type food-type-list
                                      :member-name "FoodTypes")
                                     (business-chains :target-type
                                      business-chain-list :member-name
                                      "BusinessChains")
                                     (access-points :target-type
                                      access-point-list :member-name
                                      "AccessPoints")
                                     (access-restrictions :target-type
                                      access-restriction-list :member-name
                                      "AccessRestrictions")
                                     (time-zone :target-type time-zone
                                      :member-name "TimeZone")
                                     (political-view :target-type country-code3
                                      :member-name "PoliticalView")
                                     (phonemes :target-type phoneme-details
                                      :member-name "Phonemes"))
                                    (:shape-name "SuggestPlaceResult"))

(smithy/sdk/shapes:define-structure suggest-query-result common-lisp:nil
                                    ((query-id :target-type sensitive-string
                                      :member-name "QueryId")
                                     (query-type :target-type query-type
                                      :member-name "QueryType"))
                                    (:shape-name "SuggestQueryResult"))

(smithy/sdk/shapes:define-input suggest-request common-lisp:nil
                                ((query-text :target-type sensitive-string
                                  :required common-lisp:t :member-name
                                  "QueryText")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (max-query-refinements :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxQueryRefinements")
                                 (bias-position :target-type position
                                  :member-name "BiasPosition")
                                 (filter :target-type suggest-filter
                                  :member-name "Filter")
                                 (additional-features :target-type
                                  suggest-additional-feature-list :member-name
                                  "AdditionalFeatures")
                                 (language :target-type language-tag
                                  :member-name "Language")
                                 (political-view :target-type country-code
                                  :member-name "PoliticalView")
                                 (intended-use :target-type
                                  suggest-intended-use :member-name
                                  "IntendedUse")
                                 (key :target-type api-key :member-name "Key"
                                  :http-query "key"))
                                (:shape-name "SuggestRequest"))

(smithy/sdk/shapes:define-output suggest-response common-lisp:nil
                                 ((pricing-bucket :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "PricingBucket"
                                   :http-header "x-amz-geo-pricing-bucket")
                                  (result-items :target-type
                                   suggest-result-item-list :member-name
                                   "ResultItems")
                                  (query-refinements :target-type
                                   query-refinement-list :member-name
                                   "QueryRefinements"))
                                 (:shape-name "SuggestResponse"))

(smithy/sdk/shapes:define-structure suggest-result-item common-lisp:nil
                                    ((title :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Title")
                                     (suggest-result-item-type :target-type
                                      suggest-result-item-type :required
                                      common-lisp:t :member-name
                                      "SuggestResultItemType")
                                     (place :target-type suggest-place-result
                                      :member-name "Place")
                                     (query :target-type suggest-query-result
                                      :member-name "Query")
                                     (highlights :target-type
                                      suggest-highlights :member-name
                                      "Highlights"))
                                    (:shape-name "SuggestResultItem"))

(smithy/sdk/shapes:define-list suggest-result-item-list :member
                               suggest-result-item)

(smithy/sdk/shapes:define-type suggest-result-item-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class geo-places-error))

(smithy/sdk/shapes:define-structure time-zone common-lisp:nil
                                    ((name :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (offset :target-type sensitive-string
                                      :member-name "Offset")
                                     (offset-seconds :target-type
                                      duration-seconds :member-name
                                      "OffsetSeconds"))
                                    (:shape-name "TimeZone"))

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-placement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-separator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure usps-zip common-lisp:nil
                                    ((zip-classification-code :target-type
                                      zip-classification-code :member-name
                                      "ZipClassificationCode"))
                                    (:shape-name "UspsZip"))

(smithy/sdk/shapes:define-structure usps-zip-plus4 common-lisp:nil
                                    ((record-type-code :target-type
                                      record-type-code :member-name
                                      "RecordTypeCode"))
                                    (:shape-name "UspsZipPlus4"))

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
                                (:error-code 400)
                                (:base-class geo-places-error))

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

(smithy/sdk/shapes:define-type zip-classification-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation autocomplete :shape-name "Autocomplete"
                                       :input autocomplete-request :output
                                       autocomplete-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/autocomplete")

(smithy/sdk/operation:define-operation geocode :shape-name "Geocode" :input
                                       geocode-request :output geocode-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/geocode")

(smithy/sdk/operation:define-operation get-place :shape-name "GetPlace" :input
                                       get-place-request :output
                                       get-place-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/place/{PlaceId}")

(smithy/sdk/operation:define-operation reverse-geocode :shape-name
                                       "ReverseGeocode" :input
                                       reverse-geocode-request :output
                                       reverse-geocode-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/reverse-geocode")

(smithy/sdk/operation:define-operation search-nearby :shape-name "SearchNearby"
                                       :input search-nearby-request :output
                                       search-nearby-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/search-nearby")

(smithy/sdk/operation:define-operation search-text :shape-name "SearchText"
                                       :input search-text-request :output
                                       search-text-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/search-text")

(smithy/sdk/operation:define-operation suggest :shape-name "Suggest" :input
                                       suggest-request :output suggest-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/suggest")
