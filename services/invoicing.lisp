(uiop/package:define-package #:pira/invoicing (:use)
                             (:export #:access-denied-exception
                              #:account-id-list #:account-id-string
                              #:amount-breakdown #:as-of-timestamp
                              #:basic-string #:basic-string-without-space
                              #:batch-get-invoice-profile #:billing-period
                              #:create-invoice-unit #:currency-code
                              #:currency-exchange-details #:date-interval
                              #:delete-invoice-unit #:description-string
                              #:discounts-breakdown
                              #:discounts-breakdown-amount
                              #:discounts-breakdown-amount-list #:entity
                              #:fees-breakdown #:fees-breakdown-amount
                              #:fees-breakdown-amount-list #:filters
                              #:get-invoice-unit #:internal-server-exception
                              #:invoice-currency-amount #:invoice-profile
                              #:invoice-summaries #:invoice-summaries-filter
                              #:invoice-summaries-max-results
                              #:invoice-summaries-selector #:invoice-summary
                              #:invoice-type #:invoice-unit
                              #:invoice-unit-arn-string #:invoice-unit-name
                              #:invoice-unit-names #:invoice-unit-rule
                              #:invoice-units #:invoicing
                              #:last-modified-timestamp
                              #:list-invoice-summaries
                              #:list-invoice-summaries-resource-type
                              #:list-invoice-units #:list-tags-for-resource
                              #:max-results-integer #:month #:next-token-string
                              #:profile-list #:receiver-address
                              #:resource-not-found-exception #:resource-tag
                              #:resource-tag-key #:resource-tag-key-list
                              #:resource-tag-list #:resource-tag-value
                              #:sensitive-basic-string-without-space
                              #:service-quota-exceeded-exception
                              #:string-without-new-line #:tag-resource
                              #:tagris-arn #:tax-inheritance-disabled-flag
                              #:taxes-breakdown #:taxes-breakdown-amount
                              #:taxes-breakdown-amount-list
                              #:throttling-exception #:untag-resource
                              #:update-invoice-unit #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:year
                              #:invoicing-error))
(common-lisp:in-package #:pira/invoicing)

(common-lisp:define-condition invoicing-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service invoicing :shape-name "Invoicing" :version
                                   "2024-12-01" :title "AWS Invoicing"
                                   :operations
                                   '(batch-get-invoice-profile
                                     create-invoice-unit delete-invoice-unit
                                     get-invoice-unit list-invoice-summaries
                                     list-invoice-units list-tags-for-resource
                                     tag-resource untag-resource
                                     update-invoice-unit)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Invoicing")
                                      ("arnNamespace" . "invoicing")
                                      ("endpointPrefix" . "invoicing")
                                      ("docId" . "invoicing-2024-12-01")
                                      ("cloudTrailEventSource"
                                       . "invoicing.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "invoicing"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardPartitionalEndpoints"
                                      ("endpointPatternType"
                                       . "service_region_dnsSuffix"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type basic-string
                                  :member-name "message")
                                 (resource-name :target-type
                                  invoice-unit-arn-string :member-name
                                  "resourceName"))
                                (:shape-name "AccessDeniedException")
                                (:error-name "InvoicingAccessDenied")
                                (:error-code 403) (:base-class invoicing-error))

(smithy/sdk/shapes:define-list account-id-list :member account-id-string)

(smithy/sdk/shapes:define-type account-id-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure amount-breakdown common-lisp:nil
                                    ((sub-total-amount :target-type
                                      basic-string :member-name
                                      "SubTotalAmount")
                                     (discounts :target-type
                                      discounts-breakdown :member-name
                                      "Discounts")
                                     (taxes :target-type taxes-breakdown
                                      :member-name "Taxes")
                                     (fees :target-type fees-breakdown
                                      :member-name "Fees"))
                                    (:shape-name "AmountBreakdown"))

(smithy/sdk/shapes:define-type as-of-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type basic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type basic-string-without-space
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-get-invoice-profile-request
                                common-lisp:nil
                                ((account-ids :target-type account-id-list
                                  :required common-lisp:t :member-name
                                  "AccountIds"))
                                (:shape-name "BatchGetInvoiceProfileRequest"))

(smithy/sdk/shapes:define-output batch-get-invoice-profile-response
                                 common-lisp:nil
                                 ((profiles :target-type profile-list
                                   :member-name "Profiles"))
                                 (:shape-name "BatchGetInvoiceProfileResponse"))

(smithy/sdk/shapes:define-structure billing-period common-lisp:nil
                                    ((month :target-type month :required
                                      common-lisp:t :member-name "Month")
                                     (year :target-type year :required
                                      common-lisp:t :member-name "Year"))
                                    (:shape-name "BillingPeriod"))

(smithy/sdk/shapes:define-input create-invoice-unit-request common-lisp:nil
                                ((name :target-type invoice-unit-name :required
                                  common-lisp:t :member-name "Name")
                                 (invoice-receiver :target-type
                                  account-id-string :required common-lisp:t
                                  :member-name "InvoiceReceiver")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (tax-inheritance-disabled :target-type
                                  tax-inheritance-disabled-flag :member-name
                                  "TaxInheritanceDisabled")
                                 (rule :target-type invoice-unit-rule :required
                                  common-lisp:t :member-name "Rule")
                                 (resource-tags :target-type resource-tag-list
                                  :member-name "ResourceTags"))
                                (:shape-name "CreateInvoiceUnitRequest"))

(smithy/sdk/shapes:define-output create-invoice-unit-response common-lisp:nil
                                 ((invoice-unit-arn :target-type
                                   invoice-unit-arn-string :member-name
                                   "InvoiceUnitArn"))
                                 (:shape-name "CreateInvoiceUnitResponse"))

(smithy/sdk/shapes:define-type currency-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure currency-exchange-details common-lisp:nil
                                    ((source-currency-code :target-type
                                      basic-string :member-name
                                      "SourceCurrencyCode")
                                     (target-currency-code :target-type
                                      basic-string :member-name
                                      "TargetCurrencyCode")
                                     (rate :target-type basic-string
                                      :member-name "Rate"))
                                    (:shape-name "CurrencyExchangeDetails"))

(smithy/sdk/shapes:define-structure date-interval common-lisp:nil
                                    ((start-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "StartDate")
                                     (end-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "EndDate"))
                                    (:shape-name "DateInterval"))

(smithy/sdk/shapes:define-input delete-invoice-unit-request common-lisp:nil
                                ((invoice-unit-arn :target-type
                                  invoice-unit-arn-string :required
                                  common-lisp:t :member-name "InvoiceUnitArn"))
                                (:shape-name "DeleteInvoiceUnitRequest"))

(smithy/sdk/shapes:define-output delete-invoice-unit-response common-lisp:nil
                                 ((invoice-unit-arn :target-type
                                   invoice-unit-arn-string :member-name
                                   "InvoiceUnitArn"))
                                 (:shape-name "DeleteInvoiceUnitResponse"))

(smithy/sdk/shapes:define-type description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure discounts-breakdown common-lisp:nil
                                    ((breakdown :target-type
                                      discounts-breakdown-amount-list
                                      :member-name "Breakdown")
                                     (total-amount :target-type basic-string
                                      :member-name "TotalAmount"))
                                    (:shape-name "DiscountsBreakdown"))

(smithy/sdk/shapes:define-structure discounts-breakdown-amount common-lisp:nil
                                    ((description :target-type basic-string
                                      :member-name "Description")
                                     (amount :target-type basic-string
                                      :member-name "Amount")
                                     (rate :target-type basic-string
                                      :member-name "Rate"))
                                    (:shape-name "DiscountsBreakdownAmount"))

(smithy/sdk/shapes:define-list discounts-breakdown-amount-list :member
                               discounts-breakdown-amount)

(smithy/sdk/shapes:define-structure entity common-lisp:nil
                                    ((invoicing-entity :target-type
                                      basic-string :member-name
                                      "InvoicingEntity"))
                                    (:shape-name "Entity"))

(smithy/sdk/shapes:define-structure fees-breakdown common-lisp:nil
                                    ((breakdown :target-type
                                      fees-breakdown-amount-list :member-name
                                      "Breakdown")
                                     (total-amount :target-type basic-string
                                      :member-name "TotalAmount"))
                                    (:shape-name "FeesBreakdown"))

(smithy/sdk/shapes:define-structure fees-breakdown-amount common-lisp:nil
                                    ((description :target-type basic-string
                                      :member-name "Description")
                                     (amount :target-type basic-string
                                      :member-name "Amount")
                                     (rate :target-type basic-string
                                      :member-name "Rate"))
                                    (:shape-name "FeesBreakdownAmount"))

(smithy/sdk/shapes:define-list fees-breakdown-amount-list :member
                               fees-breakdown-amount)

(smithy/sdk/shapes:define-structure filters common-lisp:nil
                                    ((names :target-type invoice-unit-names
                                      :member-name "Names")
                                     (invoice-receivers :target-type
                                      account-id-list :member-name
                                      "InvoiceReceivers")
                                     (accounts :target-type account-id-list
                                      :member-name "Accounts"))
                                    (:shape-name "Filters"))

(smithy/sdk/shapes:define-input get-invoice-unit-request common-lisp:nil
                                ((invoice-unit-arn :target-type
                                  invoice-unit-arn-string :required
                                  common-lisp:t :member-name "InvoiceUnitArn")
                                 (as-of :target-type as-of-timestamp
                                  :member-name "AsOf"))
                                (:shape-name "GetInvoiceUnitRequest"))

(smithy/sdk/shapes:define-output get-invoice-unit-response common-lisp:nil
                                 ((invoice-unit-arn :target-type
                                   invoice-unit-arn-string :member-name
                                   "InvoiceUnitArn")
                                  (invoice-receiver :target-type
                                   account-id-string :member-name
                                   "InvoiceReceiver")
                                  (name :target-type invoice-unit-name
                                   :member-name "Name")
                                  (description :target-type description-string
                                   :member-name "Description")
                                  (tax-inheritance-disabled :target-type
                                   tax-inheritance-disabled-flag :member-name
                                   "TaxInheritanceDisabled")
                                  (rule :target-type invoice-unit-rule
                                   :member-name "Rule")
                                  (last-modified :target-type
                                   last-modified-timestamp :member-name
                                   "LastModified"))
                                 (:shape-name "GetInvoiceUnitResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (message :target-type basic-string
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-name "InvoicingInternalServer")
                                (:error-code 500) (:base-class invoicing-error))

(smithy/sdk/shapes:define-structure invoice-currency-amount common-lisp:nil
                                    ((total-amount :target-type basic-string
                                      :member-name "TotalAmount")
                                     (total-amount-before-tax :target-type
                                      basic-string :member-name
                                      "TotalAmountBeforeTax")
                                     (currency-code :target-type currency-code
                                      :member-name "CurrencyCode")
                                     (amount-breakdown :target-type
                                      amount-breakdown :member-name
                                      "AmountBreakdown")
                                     (currency-exchange-details :target-type
                                      currency-exchange-details :member-name
                                      "CurrencyExchangeDetails"))
                                    (:shape-name "InvoiceCurrencyAmount"))

(smithy/sdk/shapes:define-structure invoice-profile common-lisp:nil
                                    ((account-id :target-type account-id-string
                                      :member-name "AccountId")
                                     (receiver-name :target-type
                                      basic-string-without-space :member-name
                                      "ReceiverName")
                                     (receiver-address :target-type
                                      receiver-address :member-name
                                      "ReceiverAddress")
                                     (receiver-email :target-type
                                      sensitive-basic-string-without-space
                                      :member-name "ReceiverEmail")
                                     (issuer :target-type
                                      basic-string-without-space :member-name
                                      "Issuer")
                                     (tax-registration-number :target-type
                                      sensitive-basic-string-without-space
                                      :member-name "TaxRegistrationNumber"))
                                    (:shape-name "InvoiceProfile"))

(smithy/sdk/shapes:define-list invoice-summaries :member invoice-summary)

(smithy/sdk/shapes:define-structure invoice-summaries-filter common-lisp:nil
                                    ((time-interval :target-type date-interval
                                      :member-name "TimeInterval")
                                     (billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (invoicing-entity :target-type
                                      basic-string :member-name
                                      "InvoicingEntity"))
                                    (:shape-name "InvoiceSummariesFilter"))

(smithy/sdk/shapes:define-type invoice-summaries-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure invoice-summaries-selector common-lisp:nil
                                    ((resource-type :target-type
                                      list-invoice-summaries-resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (value :target-type
                                      string-without-new-line :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "InvoiceSummariesSelector"))

(smithy/sdk/shapes:define-structure invoice-summary common-lisp:nil
                                    ((account-id :target-type account-id-string
                                      :member-name "AccountId")
                                     (invoice-id :target-type basic-string
                                      :member-name "InvoiceId")
                                     (issued-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "IssuedDate")
                                     (due-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "DueDate")
                                     (entity :target-type entity :member-name
                                      "Entity")
                                     (billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (invoice-type :target-type invoice-type
                                      :member-name "InvoiceType")
                                     (original-invoice-id :target-type
                                      basic-string :member-name
                                      "OriginalInvoiceId")
                                     (purchase-order-number :target-type
                                      basic-string :member-name
                                      "PurchaseOrderNumber")
                                     (base-currency-amount :target-type
                                      invoice-currency-amount :member-name
                                      "BaseCurrencyAmount")
                                     (tax-currency-amount :target-type
                                      invoice-currency-amount :member-name
                                      "TaxCurrencyAmount")
                                     (payment-currency-amount :target-type
                                      invoice-currency-amount :member-name
                                      "PaymentCurrencyAmount"))
                                    (:shape-name "InvoiceSummary"))

(smithy/sdk/shapes:define-enum invoice-type
    common-lisp:nil
  (:invoice "INVOICE")
  (:credit-memo "CREDIT_MEMO"))

(smithy/sdk/shapes:define-structure invoice-unit common-lisp:nil
                                    ((invoice-unit-arn :target-type
                                      invoice-unit-arn-string :member-name
                                      "InvoiceUnitArn")
                                     (invoice-receiver :target-type
                                      account-id-string :member-name
                                      "InvoiceReceiver")
                                     (name :target-type invoice-unit-name
                                      :member-name "Name")
                                     (description :target-type
                                      description-string :member-name
                                      "Description")
                                     (tax-inheritance-disabled :target-type
                                      tax-inheritance-disabled-flag
                                      :member-name "TaxInheritanceDisabled")
                                     (rule :target-type invoice-unit-rule
                                      :member-name "Rule")
                                     (last-modified :target-type
                                      last-modified-timestamp :member-name
                                      "LastModified"))
                                    (:shape-name "InvoiceUnit"))

(smithy/sdk/shapes:define-type invoice-unit-arn-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invoice-unit-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list invoice-unit-names :member invoice-unit-name)

(smithy/sdk/shapes:define-structure invoice-unit-rule common-lisp:nil
                                    ((linked-accounts :target-type
                                      account-id-list :member-name
                                      "LinkedAccounts"))
                                    (:shape-name "InvoiceUnitRule"))

(smithy/sdk/shapes:define-list invoice-units :member invoice-unit)

(smithy/sdk/shapes:define-type last-modified-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input list-invoice-summaries-request common-lisp:nil
                                ((selector :target-type
                                  invoice-summaries-selector :required
                                  common-lisp:t :member-name "Selector")
                                 (filter :target-type invoice-summaries-filter
                                  :member-name "Filter")
                                 (next-token :target-type next-token-string
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  invoice-summaries-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListInvoiceSummariesRequest"))

(smithy/sdk/shapes:define-enum list-invoice-summaries-resource-type
    common-lisp:nil
  (:account-id "ACCOUNT_ID")
  (:invoice-id "INVOICE_ID"))

(smithy/sdk/shapes:define-output list-invoice-summaries-response
                                 common-lisp:nil
                                 ((invoice-summaries :target-type
                                   invoice-summaries :required common-lisp:t
                                   :member-name "InvoiceSummaries")
                                  (next-token :target-type next-token-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListInvoiceSummariesResponse"))

(smithy/sdk/shapes:define-input list-invoice-units-request common-lisp:nil
                                ((filters :target-type filters :member-name
                                  "Filters")
                                 (next-token :target-type next-token-string
                                  :member-name "NextToken")
                                 (max-results :target-type max-results-integer
                                  :member-name "MaxResults")
                                 (as-of :target-type as-of-timestamp
                                  :member-name "AsOf"))
                                (:shape-name "ListInvoiceUnitsRequest"))

(smithy/sdk/shapes:define-output list-invoice-units-response common-lisp:nil
                                 ((invoice-units :target-type invoice-units
                                   :member-name "InvoiceUnits")
                                  (next-token :target-type next-token-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListInvoiceUnitsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type tagris-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-tags :target-type resource-tag-list
                                   :member-name "ResourceTags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type month smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list profile-list :member invoice-profile)

(smithy/sdk/shapes:define-structure receiver-address common-lisp:nil
                                    ((address-line1 :target-type basic-string
                                      :member-name "AddressLine1")
                                     (address-line2 :target-type basic-string
                                      :member-name "AddressLine2")
                                     (address-line3 :target-type basic-string
                                      :member-name "AddressLine3")
                                     (district-or-county :target-type
                                      basic-string :member-name
                                      "DistrictOrCounty")
                                     (city :target-type basic-string
                                      :member-name "City")
                                     (state-or-region :target-type basic-string
                                      :member-name "StateOrRegion")
                                     (country-code :target-type basic-string
                                      :member-name "CountryCode")
                                     (company-name :target-type basic-string
                                      :member-name "CompanyName")
                                     (postal-code :target-type basic-string
                                      :member-name "PostalCode"))
                                    (:shape-name "ReceiverAddress"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type basic-string
                                  :member-name "message")
                                 (resource-name :target-type
                                  invoice-unit-arn-string :member-name
                                  "resourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "InvoicingResourceNotFound")
                                (:error-code 404) (:base-class invoicing-error))

(smithy/sdk/shapes:define-structure resource-tag common-lisp:nil
                                    ((key :target-type resource-tag-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (value :target-type resource-tag-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "ResourceTag"))

(smithy/sdk/shapes:define-type resource-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-tag-key-list :member resource-tag-key)

(smithy/sdk/shapes:define-list resource-tag-list :member resource-tag)

(smithy/sdk/shapes:define-type resource-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-basic-string-without-space
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type basic-string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-name "InvoicingServiceQuotaExceeded")
                                (:error-code 402) (:base-class invoicing-error))

(smithy/sdk/shapes:define-type string-without-new-line
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type tagris-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (resource-tags :target-type resource-tag-list
                                  :required common-lisp:t :member-name
                                  "ResourceTags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tagris-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tax-inheritance-disabled-flag
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure taxes-breakdown common-lisp:nil
                                    ((breakdown :target-type
                                      taxes-breakdown-amount-list :member-name
                                      "Breakdown")
                                     (total-amount :target-type basic-string
                                      :member-name "TotalAmount"))
                                    (:shape-name "TaxesBreakdown"))

(smithy/sdk/shapes:define-structure taxes-breakdown-amount common-lisp:nil
                                    ((description :target-type basic-string
                                      :member-name "Description")
                                     (amount :target-type basic-string
                                      :member-name "Amount")
                                     (rate :target-type basic-string
                                      :member-name "Rate"))
                                    (:shape-name "TaxesBreakdownAmount"))

(smithy/sdk/shapes:define-list taxes-breakdown-amount-list :member
                               taxes-breakdown-amount)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type basic-string
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-name "InvoicingThrottling")
                                (:error-code 429) (:base-class invoicing-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type tagris-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (resource-tag-keys :target-type
                                  resource-tag-key-list :required common-lisp:t
                                  :member-name "ResourceTagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-invoice-unit-request common-lisp:nil
                                ((invoice-unit-arn :target-type
                                  invoice-unit-arn-string :required
                                  common-lisp:t :member-name "InvoiceUnitArn")
                                 (description :target-type description-string
                                  :member-name "Description")
                                 (tax-inheritance-disabled :target-type
                                  tax-inheritance-disabled-flag :member-name
                                  "TaxInheritanceDisabled")
                                 (rule :target-type invoice-unit-rule
                                  :member-name "Rule"))
                                (:shape-name "UpdateInvoiceUnitRequest"))

(smithy/sdk/shapes:define-output update-invoice-unit-response common-lisp:nil
                                 ((invoice-unit-arn :target-type
                                   invoice-unit-arn-string :member-name
                                   "InvoiceUnitArn"))
                                 (:shape-name "UpdateInvoiceUnitResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type basic-string
                                  :member-name "message")
                                 (resource-name :target-type
                                  invoice-unit-arn-string :member-name
                                  "resourceName")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-name "InvoicingValidation")
                                (:error-code 400) (:base-class invoicing-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type basic-string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type basic-string
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:non-members-present "nonMemberPresent")
  (:max-accounts-exceeded "maxAccountsExceeded")
  (:max-invoice-units-exceeded "maxInvoiceUnitsExceeded")
  (:duplicate-invoice-unit "duplicateInvoiceUnit")
  (:mutual-exclusion-error "mutualExclusionError")
  (:account-membership-error "accountMembershipError")
  (:tax-settings-error "taxSettingsError")
  (:expired-next-token "expiredNextToken")
  (:invalid-next-token "invalidNextToken")
  (:invalid-input "invalidInput")
  (:field-validation-failed "fieldValidationFailed")
  (:cannot-parse "cannotParse")
  (:unknown-operation "unknownOperation")
  (:other "other"))

(smithy/sdk/shapes:define-type year smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation batch-get-invoice-profile :shape-name
                                       "BatchGetInvoiceProfile" :input
                                       batch-get-invoice-profile-request
                                       :output
                                       batch-get-invoice-profile-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-invoice-unit :shape-name
                                       "CreateInvoiceUnit" :input
                                       create-invoice-unit-request :output
                                       create-invoice-unit-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-invoice-unit :shape-name
                                       "DeleteInvoiceUnit" :input
                                       delete-invoice-unit-request :output
                                       delete-invoice-unit-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-invoice-unit :shape-name
                                       "GetInvoiceUnit" :input
                                       get-invoice-unit-request :output
                                       get-invoice-unit-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-invoice-summaries :shape-name
                                       "ListInvoiceSummaries" :input
                                       list-invoice-summaries-request :output
                                       list-invoice-summaries-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-invoice-units :shape-name
                                       "ListInvoiceUnits" :input
                                       list-invoice-units-request :output
                                       list-invoice-units-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-invoice-unit :shape-name
                                       "UpdateInvoiceUnit" :input
                                       update-invoice-unit-request :output
                                       update-invoice-unit-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
