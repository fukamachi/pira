(uiop/package:define-package #:pira/pricing (:use)
                             (:export #:awsprice-list-service
                              #:attribute-name-list #:attribute-value
                              #:attribute-value-list #:boxed-integer
                              #:currency-code #:describe-services
                              #:effective-date #:field #:file-format
                              #:file-formats #:filter #:filter-type #:filters
                              #:format-version #:get-attribute-values
                              #:get-price-list-file-url #:get-products
                              #:list-price-lists #:max-results #:price-list
                              #:price-list-arn #:price-list-json-items
                              #:price-lists #:region-code #:service
                              #:service-code #:service-list #:string
                              #:synthesized-json-price-list-json-item #:value
                              #:error-message))
(common-lisp:in-package #:pira/pricing)

(smithy/sdk/service:define-service awsprice-list-service :shape-name
                                   "AWSPriceListService" :version "2017-10-15"
                                   :title "AWS Price List Service" :operations
                                   '(describe-services get-attribute-values
                                     get-price-list-file-url get-products
                                     list-price-lists)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Pricing")
                                      ("arnNamespace" . "pricing")
                                      ("cloudFormationName" . "Pricing")
                                      ("cloudTrailEventSource"
                                       . "pricelist.amazonaws.com")
                                      ("endpointPrefix" . "api.pricing"))
                                     ("aws.auth#sigv4" ("name" . "pricing"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-list attribute-name-list :member string)

(smithy/sdk/shapes:define-structure attribute-value common-lisp:nil
                                    ((value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "AttributeValue"))

(smithy/sdk/shapes:define-list attribute-value-list :member attribute-value)

(smithy/sdk/shapes:define-type boxed-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type currency-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-services-request common-lisp:nil
                                ((service-code :target-type string :member-name
                                  "ServiceCode")
                                 (format-version :target-type format-version
                                  :member-name "FormatVersion")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeServicesRequest"))

(smithy/sdk/shapes:define-output describe-services-response common-lisp:nil
                                 ((services :target-type service-list
                                   :member-name "Services")
                                  (format-version :target-type format-version
                                   :member-name "FormatVersion")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeServicesResponse"))

(smithy/sdk/shapes:define-type effective-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error expired-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ExpiredNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list file-formats :member file-format)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((type :target-type filter-type :required
                                      common-lisp:t :member-name "Type")
                                     (field :target-type field :required
                                      common-lisp:t :member-name "Field")
                                     (value :target-type value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-enum filter-type
    common-lisp:nil
  (:term-match "TERM_MATCH")
  (:equals "EQUALS")
  (:contains "CONTAINS")
  (:any-of "ANY_OF")
  (:none-of "NONE_OF"))

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-type format-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-attribute-values-request common-lisp:nil
                                ((service-code :target-type string :required
                                  common-lisp:t :member-name "ServiceCode")
                                 (attribute-name :target-type string :required
                                  common-lisp:t :member-name "AttributeName")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "MaxResults"))
                                (:shape-name "GetAttributeValuesRequest"))

(smithy/sdk/shapes:define-output get-attribute-values-response common-lisp:nil
                                 ((attribute-values :target-type
                                   attribute-value-list :member-name
                                   "AttributeValues")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetAttributeValuesResponse"))

(smithy/sdk/shapes:define-input get-price-list-file-url-request common-lisp:nil
                                ((price-list-arn :target-type price-list-arn
                                  :required common-lisp:t :member-name
                                  "PriceListArn")
                                 (file-format :target-type file-format
                                  :required common-lisp:t :member-name
                                  "FileFormat"))
                                (:shape-name "GetPriceListFileUrlRequest"))

(smithy/sdk/shapes:define-output get-price-list-file-url-response
                                 common-lisp:nil
                                 ((url :target-type string :member-name "Url"))
                                 (:shape-name "GetPriceListFileUrlResponse"))

(smithy/sdk/shapes:define-input get-products-request common-lisp:nil
                                ((service-code :target-type string :required
                                  common-lisp:t :member-name "ServiceCode")
                                 (filters :target-type filters :member-name
                                  "Filters")
                                 (format-version :target-type format-version
                                  :member-name "FormatVersion")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "MaxResults"))
                                (:shape-name "GetProductsRequest"))

(smithy/sdk/shapes:define-output get-products-response common-lisp:nil
                                 ((format-version :target-type format-version
                                   :member-name "FormatVersion")
                                  (price-list :target-type
                                   price-list-json-items :member-name
                                   "PriceList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "GetProductsResponse"))

(smithy/sdk/shapes:define-error internal-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-price-lists-request common-lisp:nil
                                ((service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "ServiceCode")
                                 (effective-date :target-type effective-date
                                  :required common-lisp:t :member-name
                                  "EffectiveDate")
                                 (region-code :target-type region-code
                                  :member-name "RegionCode")
                                 (currency-code :target-type currency-code
                                  :required common-lisp:t :member-name
                                  "CurrencyCode")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListPriceListsRequest"))

(smithy/sdk/shapes:define-output list-price-lists-response common-lisp:nil
                                 ((price-lists :target-type price-lists
                                   :member-name "PriceLists")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListPriceListsResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure price-list common-lisp:nil
                                    ((price-list-arn :target-type
                                      price-list-arn :member-name
                                      "PriceListArn")
                                     (region-code :target-type region-code
                                      :member-name "RegionCode")
                                     (currency-code :target-type currency-code
                                      :member-name "CurrencyCode")
                                     (file-formats :target-type file-formats
                                      :member-name "FileFormats"))
                                    (:shape-name "PriceList"))

(smithy/sdk/shapes:define-type price-list-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list price-list-json-items :member
                               synthesized-json-price-list-json-item)

(smithy/sdk/shapes:define-list price-lists :member price-list)

(smithy/sdk/shapes:define-type region-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((service-code :target-type string
                                      :required common-lisp:t :member-name
                                      "ServiceCode")
                                     (attribute-names :target-type
                                      attribute-name-list :member-name
                                      "AttributeNames"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-list :member service)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type synthesized-json-price-list-json-item
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation describe-services :shape-name
                                       "DescribeServices" :input
                                       describe-services-request :output
                                       describe-services-response :errors
                                       (expired-next-token-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-attribute-values :shape-name
                                       "GetAttributeValues" :input
                                       get-attribute-values-request :output
                                       get-attribute-values-response :errors
                                       (expired-next-token-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-price-list-file-url :shape-name
                                       "GetPriceListFileUrl" :input
                                       get-price-list-file-url-request :output
                                       get-price-list-file-url-response :errors
                                       (access-denied-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-products :shape-name "GetProducts"
                                       :input get-products-request :output
                                       get-products-response :errors
                                       (expired-next-token-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-price-lists :shape-name
                                       "ListPriceLists" :input
                                       list-price-lists-request :output
                                       list-price-lists-response :errors
                                       (access-denied-exception
                                        expired-next-token-exception
                                        internal-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        resource-not-found-exception
                                        throttling-exception))
