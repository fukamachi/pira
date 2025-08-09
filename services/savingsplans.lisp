(uiop/package:define-package #:pira/savingsplans (:use)
                             (:export #:awssavings-plan #:amount #:client-token
                              #:create-savings-plan
                              #:create-savings-plan-request
                              #:create-savings-plan-response #:currency-code
                              #:currency-list #:date-time
                              #:delete-queued-savings-plan
                              #:delete-queued-savings-plan-request
                              #:delete-queued-savings-plan-response
                              #:describe-savings-plan-rates
                              #:describe-savings-plan-rates-request
                              #:describe-savings-plan-rates-response
                              #:describe-savings-plans
                              #:describe-savings-plans-offering-rates
                              #:describe-savings-plans-offering-rates-request
                              #:describe-savings-plans-offering-rates-response
                              #:describe-savings-plans-offerings
                              #:describe-savings-plans-offerings-request
                              #:describe-savings-plans-offerings-response
                              #:describe-savings-plans-request
                              #:describe-savings-plans-response
                              #:durations-list #:ec2instance-family
                              #:filter-values-list #:internal-server-exception
                              #:json-safe-filter-value-string #:list-of-strings
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:page-size #:pagination-token
                              #:parent-savings-plan-offering #:region
                              #:resource-not-found-exception
                              #:return-savings-plan
                              #:return-savings-plan-request
                              #:return-savings-plan-response #:savings-plan
                              #:savings-plan-arn #:savings-plan-arn-list
                              #:savings-plan-description
                              #:savings-plan-descriptions-list
                              #:savings-plan-filter #:savings-plan-filter-list
                              #:savings-plan-id #:savings-plan-id-list
                              #:savings-plan-list #:savings-plan-offering
                              #:savings-plan-offering-filter-attribute
                              #:savings-plan-offering-filter-element
                              #:savings-plan-offering-filters-list
                              #:savings-plan-offering-id
                              #:savings-plan-offering-property
                              #:savings-plan-offering-property-key
                              #:savings-plan-offering-property-list
                              #:savings-plan-offering-rate
                              #:savings-plan-offering-rate-filter-element
                              #:savings-plan-offering-rate-filters-list
                              #:savings-plan-offering-rate-property
                              #:savings-plan-offering-rate-property-list
                              #:savings-plan-offering-rates-list
                              #:savings-plan-offerings-list
                              #:savings-plan-operation
                              #:savings-plan-operation-list
                              #:savings-plan-payment-option
                              #:savings-plan-payment-option-list
                              #:savings-plan-product-type
                              #:savings-plan-product-type-list
                              #:savings-plan-rate #:savings-plan-rate-filter
                              #:savings-plan-rate-filter-attribute
                              #:savings-plan-rate-filter-list
                              #:savings-plan-rate-filter-name
                              #:savings-plan-rate-list
                              #:savings-plan-rate-operation
                              #:savings-plan-rate-operation-list
                              #:savings-plan-rate-price-per-unit
                              #:savings-plan-rate-property
                              #:savings-plan-rate-property-key
                              #:savings-plan-rate-property-list
                              #:savings-plan-rate-service-code
                              #:savings-plan-rate-service-code-list
                              #:savings-plan-rate-unit
                              #:savings-plan-rate-usage-type
                              #:savings-plan-rate-usage-type-list
                              #:savings-plan-service-code
                              #:savings-plan-service-code-list
                              #:savings-plan-state #:savings-plan-state-list
                              #:savings-plan-type #:savings-plan-type-list
                              #:savings-plan-usage-type
                              #:savings-plan-usage-type-list
                              #:savings-plans-duration
                              #:savings-plans-filter-name
                              #:service-quota-exceeded-exception #:string
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:term-duration-in-seconds #:uuid
                              #:uuids #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:validation-exception))
(common-lisp:in-package #:pira/savingsplans)

(smithy/sdk/service:define-service awssavings-plan :shape-name "AWSSavingsPlan"
                                   :version "2019-06-28" :title
                                   "AWS Savings Plans" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "savingsplans")
                                      ("arnNamespace" . "savingsplans")
                                      ("cloudFormationName" . "Savingsplans")
                                      ("cloudTrailEventSource"
                                       . "savingsplans.amazonaws.com")
                                      ("endpointPrefix" . "savingsplans"))
                                     ("aws.auth#sigv4"
                                      ("name" . "savingsplans"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type amount smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-savings-plan-request common-lisp:nil
                                ((savings-plan-offering-id :target-type
                                  savings-plan-offering-id :required
                                  common-lisp:t :member-name
                                  "savingsPlanOfferingId")
                                 (commitment :target-type amount :required
                                  common-lisp:t :member-name "commitment")
                                 (upfront-payment-amount :target-type amount
                                  :member-name "upfrontPaymentAmount")
                                 (purchase-time :target-type date-time
                                  :member-name "purchaseTime")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateSavingsPlanRequest"))

(smithy/sdk/shapes:define-output create-savings-plan-response common-lisp:nil
                                 ((savings-plan-id :target-type savings-plan-id
                                   :member-name "savingsPlanId"))
                                 (:shape-name "CreateSavingsPlanResponse"))

(smithy/sdk/shapes:define-enum currency-code
    common-lisp:nil
  (:cny "CNY")
  (:usd "USD"))

(smithy/sdk/shapes:define-list currency-list :member currency-code)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-queued-savings-plan-request
                                common-lisp:nil
                                ((savings-plan-id :target-type savings-plan-id
                                  :required common-lisp:t :member-name
                                  "savingsPlanId"))
                                (:shape-name "DeleteQueuedSavingsPlanRequest"))

(smithy/sdk/shapes:define-output delete-queued-savings-plan-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteQueuedSavingsPlanResponse"))

(smithy/sdk/shapes:define-input describe-savings-plan-rates-request
                                common-lisp:nil
                                ((savings-plan-id :target-type savings-plan-id
                                  :required common-lisp:t :member-name
                                  "savingsPlanId")
                                 (filters :target-type
                                  savings-plan-rate-filter-list :member-name
                                  "filters")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "DescribeSavingsPlanRatesRequest"))

(smithy/sdk/shapes:define-output describe-savings-plan-rates-response
                                 common-lisp:nil
                                 ((savings-plan-id :target-type savings-plan-id
                                   :member-name "savingsPlanId")
                                  (search-results :target-type
                                   savings-plan-rate-list :member-name
                                   "searchResults")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeSavingsPlanRatesResponse"))

(smithy/sdk/shapes:define-input describe-savings-plans-offering-rates-request
                                common-lisp:nil
                                ((savings-plan-offering-ids :target-type uuids
                                  :member-name "savingsPlanOfferingIds")
                                 (savings-plan-payment-options :target-type
                                  savings-plan-payment-option-list :member-name
                                  "savingsPlanPaymentOptions")
                                 (savings-plan-types :target-type
                                  savings-plan-type-list :member-name
                                  "savingsPlanTypes")
                                 (products :target-type
                                  savings-plan-product-type-list :member-name
                                  "products")
                                 (service-codes :target-type
                                  savings-plan-rate-service-code-list
                                  :member-name "serviceCodes")
                                 (usage-types :target-type
                                  savings-plan-rate-usage-type-list
                                  :member-name "usageTypes")
                                 (operations :target-type
                                  savings-plan-rate-operation-list :member-name
                                  "operations")
                                 (filters :target-type
                                  savings-plan-offering-rate-filters-list
                                  :member-name "filters")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults"))
                                (:shape-name
                                 "DescribeSavingsPlansOfferingRatesRequest"))

(smithy/sdk/shapes:define-output describe-savings-plans-offering-rates-response
                                 common-lisp:nil
                                 ((search-results :target-type
                                   savings-plan-offering-rates-list
                                   :member-name "searchResults")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeSavingsPlansOfferingRatesResponse"))

(smithy/sdk/shapes:define-input describe-savings-plans-offerings-request
                                common-lisp:nil
                                ((offering-ids :target-type uuids :member-name
                                  "offeringIds")
                                 (payment-options :target-type
                                  savings-plan-payment-option-list :member-name
                                  "paymentOptions")
                                 (product-type :target-type
                                  savings-plan-product-type :member-name
                                  "productType")
                                 (plan-types :target-type
                                  savings-plan-type-list :member-name
                                  "planTypes")
                                 (durations :target-type durations-list
                                  :member-name "durations")
                                 (currencies :target-type currency-list
                                  :member-name "currencies")
                                 (descriptions :target-type
                                  savings-plan-descriptions-list :member-name
                                  "descriptions")
                                 (service-codes :target-type
                                  savings-plan-service-code-list :member-name
                                  "serviceCodes")
                                 (usage-types :target-type
                                  savings-plan-usage-type-list :member-name
                                  "usageTypes")
                                 (operations :target-type
                                  savings-plan-operation-list :member-name
                                  "operations")
                                 (filters :target-type
                                  savings-plan-offering-filters-list
                                  :member-name "filters")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type page-size
                                  :member-name "maxResults"))
                                (:shape-name
                                 "DescribeSavingsPlansOfferingsRequest"))

(smithy/sdk/shapes:define-output describe-savings-plans-offerings-response
                                 common-lisp:nil
                                 ((search-results :target-type
                                   savings-plan-offerings-list :member-name
                                   "searchResults")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeSavingsPlansOfferingsResponse"))

(smithy/sdk/shapes:define-input describe-savings-plans-request common-lisp:nil
                                ((savings-plan-arns :target-type
                                  savings-plan-arn-list :member-name
                                  "savingsPlanArns")
                                 (savings-plan-ids :target-type
                                  savings-plan-id-list :member-name
                                  "savingsPlanIds")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (states :target-type savings-plan-state-list
                                  :member-name "states")
                                 (filters :target-type savings-plan-filter-list
                                  :member-name "filters"))
                                (:shape-name "DescribeSavingsPlansRequest"))

(smithy/sdk/shapes:define-output describe-savings-plans-response
                                 common-lisp:nil
                                 ((savings-plans :target-type savings-plan-list
                                   :member-name "savingsPlans")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeSavingsPlansResponse"))

(smithy/sdk/shapes:define-list durations-list :member savings-plans-duration)

(smithy/sdk/shapes:define-type ec2instance-family
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values-list :member
                               json-safe-filter-value-string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type json-safe-filter-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-of-strings :member string)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type savings-plan-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parent-savings-plan-offering
                                    common-lisp:nil
                                    ((offering-id :target-type uuid
                                      :member-name "offeringId")
                                     (payment-option :target-type
                                      savings-plan-payment-option :member-name
                                      "paymentOption")
                                     (plan-type :target-type savings-plan-type
                                      :member-name "planType")
                                     (duration-seconds :target-type
                                      savings-plans-duration :member-name
                                      "durationSeconds")
                                     (currency :target-type currency-code
                                      :member-name "currency")
                                     (plan-description :target-type
                                      savings-plan-description :member-name
                                      "planDescription"))
                                    (:shape-name "ParentSavingsPlanOffering"))

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input return-savings-plan-request common-lisp:nil
                                ((savings-plan-id :target-type savings-plan-id
                                  :required common-lisp:t :member-name
                                  "savingsPlanId")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "ReturnSavingsPlanRequest"))

(smithy/sdk/shapes:define-output return-savings-plan-response common-lisp:nil
                                 ((savings-plan-id :target-type savings-plan-id
                                   :member-name "savingsPlanId"))
                                 (:shape-name "ReturnSavingsPlanResponse"))

(smithy/sdk/shapes:define-structure savings-plan common-lisp:nil
                                    ((offering-id :target-type
                                      savings-plan-offering-id :member-name
                                      "offeringId")
                                     (savings-plan-id :target-type
                                      savings-plan-id :member-name
                                      "savingsPlanId")
                                     (savings-plan-arn :target-type
                                      savings-plan-arn :member-name
                                      "savingsPlanArn")
                                     (description :target-type string
                                      :member-name "description")
                                     (start :target-type string :member-name
                                      "start")
                                     (end :target-type string :member-name
                                      "end")
                                     (state :target-type savings-plan-state
                                      :member-name "state")
                                     (region :target-type region :member-name
                                      "region")
                                     (ec2instance-family :target-type
                                      ec2instance-family :member-name
                                      "ec2InstanceFamily")
                                     (savings-plan-type :target-type
                                      savings-plan-type :member-name
                                      "savingsPlanType")
                                     (payment-option :target-type
                                      savings-plan-payment-option :member-name
                                      "paymentOption")
                                     (product-types :target-type
                                      savings-plan-product-type-list
                                      :member-name "productTypes")
                                     (currency :target-type currency-code
                                      :member-name "currency")
                                     (commitment :target-type amount
                                      :member-name "commitment")
                                     (upfront-payment-amount :target-type
                                      amount :member-name
                                      "upfrontPaymentAmount")
                                     (recurring-payment-amount :target-type
                                      amount :member-name
                                      "recurringPaymentAmount")
                                     (term-duration-in-seconds :target-type
                                      term-duration-in-seconds :member-name
                                      "termDurationInSeconds")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (returnable-until :target-type string
                                      :member-name "returnableUntil"))
                                    (:shape-name "SavingsPlan"))

(smithy/sdk/shapes:define-type savings-plan-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list savings-plan-arn-list :member savings-plan-arn)

(smithy/sdk/shapes:define-type savings-plan-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list savings-plan-descriptions-list :member
                               savings-plan-description)

(smithy/sdk/shapes:define-structure savings-plan-filter common-lisp:nil
                                    ((name :target-type
                                      savings-plans-filter-name :member-name
                                      "name")
                                     (values :target-type list-of-strings
                                      :member-name "values"))
                                    (:shape-name "SavingsPlanFilter"))

(smithy/sdk/shapes:define-list savings-plan-filter-list :member
                               savings-plan-filter)

(smithy/sdk/shapes:define-type savings-plan-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list savings-plan-id-list :member savings-plan-id)

(smithy/sdk/shapes:define-list savings-plan-list :member savings-plan)

(smithy/sdk/shapes:define-structure savings-plan-offering common-lisp:nil
                                    ((offering-id :target-type uuid
                                      :member-name "offeringId")
                                     (product-types :target-type
                                      savings-plan-product-type-list
                                      :member-name "productTypes")
                                     (plan-type :target-type savings-plan-type
                                      :member-name "planType")
                                     (description :target-type
                                      savings-plan-description :member-name
                                      "description")
                                     (payment-option :target-type
                                      savings-plan-payment-option :member-name
                                      "paymentOption")
                                     (duration-seconds :target-type
                                      savings-plans-duration :member-name
                                      "durationSeconds")
                                     (currency :target-type currency-code
                                      :member-name "currency")
                                     (service-code :target-type
                                      savings-plan-service-code :member-name
                                      "serviceCode")
                                     (usage-type :target-type
                                      savings-plan-usage-type :member-name
                                      "usageType")
                                     (operation :target-type
                                      savings-plan-operation :member-name
                                      "operation")
                                     (properties :target-type
                                      savings-plan-offering-property-list
                                      :member-name "properties"))
                                    (:shape-name "SavingsPlanOffering"))

(smithy/sdk/shapes:define-enum savings-plan-offering-filter-attribute
    common-lisp:nil
  (:region "region")
  (:instance-family "instanceFamily"))

(smithy/sdk/shapes:define-structure savings-plan-offering-filter-element
                                    common-lisp:nil
                                    ((name :target-type
                                      savings-plan-offering-filter-attribute
                                      :member-name "name")
                                     (values :target-type filter-values-list
                                      :member-name "values"))
                                    (:shape-name
                                     "SavingsPlanOfferingFilterElement"))

(smithy/sdk/shapes:define-list savings-plan-offering-filters-list :member
                               savings-plan-offering-filter-element)

(smithy/sdk/shapes:define-type savings-plan-offering-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure savings-plan-offering-property
                                    common-lisp:nil
                                    ((name :target-type
                                      savings-plan-offering-property-key
                                      :member-name "name")
                                     (value :target-type
                                      json-safe-filter-value-string
                                      :member-name "value"))
                                    (:shape-name "SavingsPlanOfferingProperty"))

(smithy/sdk/shapes:define-enum savings-plan-offering-property-key
    common-lisp:nil
  (:region "region")
  (:instance-family "instanceFamily"))

(smithy/sdk/shapes:define-list savings-plan-offering-property-list :member
                               savings-plan-offering-property)

(smithy/sdk/shapes:define-structure savings-plan-offering-rate common-lisp:nil
                                    ((savings-plan-offering :target-type
                                      parent-savings-plan-offering :member-name
                                      "savingsPlanOffering")
                                     (rate :target-type
                                      savings-plan-rate-price-per-unit
                                      :member-name "rate")
                                     (unit :target-type savings-plan-rate-unit
                                      :member-name "unit")
                                     (product-type :target-type
                                      savings-plan-product-type :member-name
                                      "productType")
                                     (service-code :target-type
                                      savings-plan-rate-service-code
                                      :member-name "serviceCode")
                                     (usage-type :target-type
                                      savings-plan-rate-usage-type :member-name
                                      "usageType")
                                     (operation :target-type
                                      savings-plan-rate-operation :member-name
                                      "operation")
                                     (properties :target-type
                                      savings-plan-offering-rate-property-list
                                      :member-name "properties"))
                                    (:shape-name "SavingsPlanOfferingRate"))

(smithy/sdk/shapes:define-structure savings-plan-offering-rate-filter-element
                                    common-lisp:nil
                                    ((name :target-type
                                      savings-plan-rate-filter-attribute
                                      :member-name "name")
                                     (values :target-type filter-values-list
                                      :member-name "values"))
                                    (:shape-name
                                     "SavingsPlanOfferingRateFilterElement"))

(smithy/sdk/shapes:define-list savings-plan-offering-rate-filters-list :member
                               savings-plan-offering-rate-filter-element)

(smithy/sdk/shapes:define-structure savings-plan-offering-rate-property
                                    common-lisp:nil
                                    ((name :target-type
                                      json-safe-filter-value-string
                                      :member-name "name")
                                     (value :target-type
                                      json-safe-filter-value-string
                                      :member-name "value"))
                                    (:shape-name
                                     "SavingsPlanOfferingRateProperty"))

(smithy/sdk/shapes:define-list savings-plan-offering-rate-property-list :member
                               savings-plan-offering-rate-property)

(smithy/sdk/shapes:define-list savings-plan-offering-rates-list :member
                               savings-plan-offering-rate)

(smithy/sdk/shapes:define-list savings-plan-offerings-list :member
                               savings-plan-offering)

(smithy/sdk/shapes:define-type savings-plan-operation
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list savings-plan-operation-list :member
                               savings-plan-operation)

(smithy/sdk/shapes:define-enum savings-plan-payment-option
    common-lisp:nil
  (:all-upfront "All Upfront")
  (:partial-upfront "Partial Upfront")
  (:no-upfront "No Upfront"))

(smithy/sdk/shapes:define-list savings-plan-payment-option-list :member
                               savings-plan-payment-option)

(smithy/sdk/shapes:define-enum savings-plan-product-type
    common-lisp:nil
  (:ec2 "EC2")
  (:fargate "Fargate")
  (:lambda "Lambda")
  (:sagemaker "SageMaker"))

(smithy/sdk/shapes:define-list savings-plan-product-type-list :member
                               savings-plan-product-type)

(smithy/sdk/shapes:define-structure savings-plan-rate common-lisp:nil
                                    ((rate :target-type amount :member-name
                                      "rate")
                                     (currency :target-type currency-code
                                      :member-name "currency")
                                     (unit :target-type savings-plan-rate-unit
                                      :member-name "unit")
                                     (product-type :target-type
                                      savings-plan-product-type :member-name
                                      "productType")
                                     (service-code :target-type
                                      savings-plan-rate-service-code
                                      :member-name "serviceCode")
                                     (usage-type :target-type
                                      savings-plan-rate-usage-type :member-name
                                      "usageType")
                                     (operation :target-type
                                      savings-plan-rate-operation :member-name
                                      "operation")
                                     (properties :target-type
                                      savings-plan-rate-property-list
                                      :member-name "properties"))
                                    (:shape-name "SavingsPlanRate"))

(smithy/sdk/shapes:define-structure savings-plan-rate-filter common-lisp:nil
                                    ((name :target-type
                                      savings-plan-rate-filter-name
                                      :member-name "name")
                                     (values :target-type list-of-strings
                                      :member-name "values"))
                                    (:shape-name "SavingsPlanRateFilter"))

(smithy/sdk/shapes:define-enum savings-plan-rate-filter-attribute
    common-lisp:nil
  (:region "region")
  (:instance-family "instanceFamily")
  (:instance-type "instanceType")
  (:product-description "productDescription")
  (:tenancy "tenancy")
  (:product-id "productId"))

(smithy/sdk/shapes:define-list savings-plan-rate-filter-list :member
                               savings-plan-rate-filter)

(smithy/sdk/shapes:define-enum savings-plan-rate-filter-name
    common-lisp:nil
  (:region "region")
  (:instance-type "instanceType")
  (:product-description "productDescription")
  (:tenancy "tenancy")
  (:product-type "productType")
  (:service-code "serviceCode")
  (:usage-type "usageType")
  (:operation "operation"))

(smithy/sdk/shapes:define-list savings-plan-rate-list :member savings-plan-rate)

(smithy/sdk/shapes:define-type savings-plan-rate-operation
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list savings-plan-rate-operation-list :member
                               savings-plan-rate-operation)

(smithy/sdk/shapes:define-type savings-plan-rate-price-per-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure savings-plan-rate-property common-lisp:nil
                                    ((name :target-type
                                      savings-plan-rate-property-key
                                      :member-name "name")
                                     (value :target-type
                                      json-safe-filter-value-string
                                      :member-name "value"))
                                    (:shape-name "SavingsPlanRateProperty"))

(smithy/sdk/shapes:define-enum savings-plan-rate-property-key
    common-lisp:nil
  (:region "region")
  (:instance-type "instanceType")
  (:instance-family "instanceFamily")
  (:product-description "productDescription")
  (:tenancy "tenancy"))

(smithy/sdk/shapes:define-list savings-plan-rate-property-list :member
                               savings-plan-rate-property)

(smithy/sdk/shapes:define-enum savings-plan-rate-service-code
    common-lisp:nil
  (:ec2 "AmazonEC2")
  (:fargate "AmazonECS")
  (:fargate-eks "AmazonEKS")
  (:lambda "AWSLambda")
  (:sagemaker "AmazonSageMaker"))

(smithy/sdk/shapes:define-list savings-plan-rate-service-code-list :member
                               savings-plan-rate-service-code)

(smithy/sdk/shapes:define-enum savings-plan-rate-unit
    common-lisp:nil
  (:hours "Hrs")
  (:lambda-gb-second "Lambda-GB-Second")
  (:request "Request"))

(smithy/sdk/shapes:define-type savings-plan-rate-usage-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list savings-plan-rate-usage-type-list :member
                               savings-plan-rate-usage-type)

(smithy/sdk/shapes:define-type savings-plan-service-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list savings-plan-service-code-list :member
                               savings-plan-service-code)

(smithy/sdk/shapes:define-enum savings-plan-state
    common-lisp:nil
  (:payment-pending "payment-pending")
  (:payment-failed "payment-failed")
  (:active "active")
  (:retired "retired")
  (:queued "queued")
  (:queued-deleted "queued-deleted")
  (:pending-return "pending-return")
  (:returned "returned"))

(smithy/sdk/shapes:define-list savings-plan-state-list :member
                               savings-plan-state)

(smithy/sdk/shapes:define-enum savings-plan-type
    common-lisp:nil
  (:compute "Compute")
  (:ec2-instance "EC2Instance")
  (:sagemaker "SageMaker"))

(smithy/sdk/shapes:define-list savings-plan-type-list :member savings-plan-type)

(smithy/sdk/shapes:define-type savings-plan-usage-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list savings-plan-usage-type-list :member
                               savings-plan-usage-type)

(smithy/sdk/shapes:define-type savings-plans-duration
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum savings-plans-filter-name
    common-lisp:nil
  (:region "region")
  (:ec2-instance-family "ec2-instance-family")
  (:commitment "commitment")
  (:upfront "upfront")
  (:term "term")
  (:savings-plan-type "savings-plan-type")
  (:payment-option "payment-option")
  (:start "start")
  (:end "end"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type savings-plan-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type term-duration-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list uuids :member uuid)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type savings-plan-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-savings-plan :shape-name
                                       "CreateSavingsPlan" :input
                                       create-savings-plan-request :output
                                       create-savings-plan-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateSavingsPlan"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-queued-savings-plan :shape-name
                                       "DeleteQueuedSavingsPlan" :input
                                       delete-queued-savings-plan-request
                                       :output
                                       delete-queued-savings-plan-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteQueuedSavingsPlan" :code 200)

(smithy/sdk/operation:define-operation describe-savings-plan-rates :shape-name
                                       "DescribeSavingsPlanRates" :input
                                       describe-savings-plan-rates-request
                                       :output
                                       describe-savings-plan-rates-response
                                       :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeSavingsPlanRates" :code 200)

(smithy/sdk/operation:define-operation describe-savings-plans :shape-name
                                       "DescribeSavingsPlans" :input
                                       describe-savings-plans-request :output
                                       describe-savings-plans-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeSavingsPlans" :code 200)

(smithy/sdk/operation:define-operation describe-savings-plans-offering-rates
                                       :shape-name
                                       "DescribeSavingsPlansOfferingRates"
                                       :input
                                       describe-savings-plans-offering-rates-request
                                       :output
                                       describe-savings-plans-offering-rates-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeSavingsPlansOfferingRates"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-savings-plans-offerings
                                       :shape-name
                                       "DescribeSavingsPlansOfferings" :input
                                       describe-savings-plans-offerings-request
                                       :output
                                       describe-savings-plans-offerings-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DescribeSavingsPlansOfferings" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListTagsForResource" :code 200)

(smithy/sdk/operation:define-operation return-savings-plan :shape-name
                                       "ReturnSavingsPlan" :input
                                       return-savings-plan-request :output
                                       return-savings-plan-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/ReturnSavingsPlan"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/TagResource" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/UntagResource"
                                       :code 200)
