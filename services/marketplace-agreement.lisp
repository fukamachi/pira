(uiop/package:define-package #:pira/marketplace-agreement (:use)
                             (:export #:awsaccount-id
                              #:awsmpcommerce-service-v20200301 #:accepted-term
                              #:accepted-term-list #:acceptor
                              #:agreement-resource-type #:agreement-status
                              #:agreement-type #:agreement-view-summary
                              #:agreement-view-summary-list #:boolean
                              #:bounded-string #:byol-pricing-term #:catalog
                              #:configurable-upfront-pricing-term
                              #:configurable-upfront-pricing-term-configuration
                              #:configurable-upfront-rate-card-item
                              #:configurable-upfront-rate-card-list
                              #:constraints #:currency-code
                              #:describe-agreement #:dimension #:dimension-list
                              #:document-item #:document-list
                              #:estimated-charges #:exception-message #:filter
                              #:filter-list #:filter-name #:filter-value
                              #:filter-value-list #:fixed-upfront-pricing-term
                              #:free-trial-pricing-term #:get-agreement-terms
                              #:grant-item #:grant-list #:legal-term
                              #:max-results #:next-token #:offer-id
                              #:payment-schedule-term
                              #:positive-integer-with-default-value-one
                              #:proposal-summary #:proposer #:rate-card-item
                              #:rate-card-list #:recurring-payment-term
                              #:renewal-term #:renewal-term-configuration
                              #:request-id #:resource #:resource-id
                              #:resource-type #:resources #:schedule-item
                              #:schedule-list #:search-agreements #:selector
                              #:sort #:sort-by #:sort-order #:support-term
                              #:timestamp #:unversioned-term-type
                              #:usage-based-pricing-term
                              #:usage-based-rate-card-item
                              #:usage-based-rate-card-list
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:validity-term
                              #:zero-value-integer))
(common-lisp:in-package #:pira/marketplace-agreement)

(smithy/sdk/service:define-service awsmpcommerce-service-v20200301 :shape-name
                                   "AWSMPCommerceService_v20200301" :version
                                   "2020-03-01" :title
                                   "AWS Marketplace Agreement Service" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Marketplace Agreement")
                                      ("endpointPrefix"
                                       . "agreement-marketplace"))
                                     ("aws.auth#sigv4"
                                      ("name" . "aws-marketplace"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-type awsaccount-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union accepted-term common-lisp:nil
                                ((legal-term :target-type legal-term
                                  :member-name "legalTerm")
                                 (support-term :target-type support-term
                                  :member-name "supportTerm")
                                 (renewal-term :target-type renewal-term
                                  :member-name "renewalTerm")
                                 (usage-based-pricing-term :target-type
                                  usage-based-pricing-term :member-name
                                  "usageBasedPricingTerm")
                                 (configurable-upfront-pricing-term
                                  :target-type
                                  configurable-upfront-pricing-term
                                  :member-name
                                  "configurableUpfrontPricingTerm")
                                 (byol-pricing-term :target-type
                                  byol-pricing-term :member-name
                                  "byolPricingTerm")
                                 (recurring-payment-term :target-type
                                  recurring-payment-term :member-name
                                  "recurringPaymentTerm")
                                 (validity-term :target-type validity-term
                                  :member-name "validityTerm")
                                 (payment-schedule-term :target-type
                                  payment-schedule-term :member-name
                                  "paymentScheduleTerm")
                                 (free-trial-pricing-term :target-type
                                  free-trial-pricing-term :member-name
                                  "freeTrialPricingTerm")
                                 (fixed-upfront-pricing-term :target-type
                                  fixed-upfront-pricing-term :member-name
                                  "fixedUpfrontPricingTerm"))
                                (:shape-name "AcceptedTerm"))

(smithy/sdk/shapes:define-list accepted-term-list :member accepted-term)

(smithy/sdk/shapes:define-structure acceptor common-lisp:nil
                                    ((account-id :target-type awsaccount-id
                                      :member-name "accountId"))
                                    (:shape-name "Acceptor"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((request-id :target-type request-id
                                  :member-name "requestId")
                                 (message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type agreement-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum agreement-status
    common-lisp:nil
  (:active "ACTIVE")
  (:archived "ARCHIVED")
  (:cancelled "CANCELLED")
  (:expired "EXPIRED")
  (:renewed "RENEWED")
  (:replaced "REPLACED")
  (:rolled-back "ROLLED_BACK")
  (:superseded "SUPERSEDED")
  (:terminated "TERMINATED"))

(smithy/sdk/shapes:define-type agreement-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure agreement-view-summary common-lisp:nil
                                    ((agreement-id :target-type resource-id
                                      :member-name "agreementId")
                                     (acceptance-time :target-type timestamp
                                      :member-name "acceptanceTime")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (agreement-type :target-type
                                      agreement-type :member-name
                                      "agreementType")
                                     (acceptor :target-type acceptor
                                      :member-name "acceptor")
                                     (proposer :target-type proposer
                                      :member-name "proposer")
                                     (proposal-summary :target-type
                                      proposal-summary :member-name
                                      "proposalSummary")
                                     (status :target-type agreement-status
                                      :member-name "status"))
                                    (:shape-name "AgreementViewSummary"))

(smithy/sdk/shapes:define-list agreement-view-summary-list :member
                               agreement-view-summary)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bounded-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure byol-pricing-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type"))
                                    (:shape-name "ByolPricingTerm"))

(smithy/sdk/shapes:define-type catalog smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configurable-upfront-pricing-term
                                    common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (currency-code :target-type currency-code
                                      :member-name "currencyCode")
                                     (rate-cards :target-type
                                      configurable-upfront-rate-card-list
                                      :member-name "rateCards")
                                     (configuration :target-type
                                      configurable-upfront-pricing-term-configuration
                                      :member-name "configuration"))
                                    (:shape-name
                                     "ConfigurableUpfrontPricingTerm"))

(smithy/sdk/shapes:define-structure
 configurable-upfront-pricing-term-configuration common-lisp:nil
 ((selector-value :target-type bounded-string :required common-lisp:t
   :member-name "selectorValue")
  (dimensions :target-type dimension-list :required common-lisp:t :member-name
   "dimensions"))
 (:shape-name "ConfigurableUpfrontPricingTermConfiguration"))

(smithy/sdk/shapes:define-structure configurable-upfront-rate-card-item
                                    common-lisp:nil
                                    ((selector :target-type selector
                                      :member-name "selector")
                                     (constraints :target-type constraints
                                      :member-name "constraints")
                                     (rate-card :target-type rate-card-list
                                      :member-name "rateCard"))
                                    (:shape-name
                                     "ConfigurableUpfrontRateCardItem"))

(smithy/sdk/shapes:define-list configurable-upfront-rate-card-list :member
                               configurable-upfront-rate-card-item)

(smithy/sdk/shapes:define-structure constraints common-lisp:nil
                                    ((multiple-dimension-selection :target-type
                                      bounded-string :member-name
                                      "multipleDimensionSelection")
                                     (quantity-configuration :target-type
                                      bounded-string :member-name
                                      "quantityConfiguration"))
                                    (:shape-name "Constraints"))

(smithy/sdk/shapes:define-type currency-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-agreement-input common-lisp:nil
                                ((agreement-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "agreementId"))
                                (:shape-name "DescribeAgreementInput"))

(smithy/sdk/shapes:define-output describe-agreement-output common-lisp:nil
                                 ((agreement-id :target-type resource-id
                                   :member-name "agreementId")
                                  (acceptor :target-type acceptor :member-name
                                   "acceptor")
                                  (proposer :target-type proposer :member-name
                                   "proposer")
                                  (start-time :target-type timestamp
                                   :member-name "startTime")
                                  (end-time :target-type timestamp :member-name
                                   "endTime")
                                  (acceptance-time :target-type timestamp
                                   :member-name "acceptanceTime")
                                  (agreement-type :target-type agreement-type
                                   :member-name "agreementType")
                                  (estimated-charges :target-type
                                   estimated-charges :member-name
                                   "estimatedCharges")
                                  (proposal-summary :target-type
                                   proposal-summary :member-name
                                   "proposalSummary")
                                  (status :target-type agreement-status
                                   :member-name "status"))
                                 (:shape-name "DescribeAgreementOutput"))

(smithy/sdk/shapes:define-structure dimension common-lisp:nil
                                    ((dimension-key :target-type bounded-string
                                      :required common-lisp:t :member-name
                                      "dimensionKey")
                                     (dimension-value :target-type
                                      zero-value-integer :required
                                      common-lisp:t :member-name
                                      "dimensionValue"))
                                    (:shape-name "Dimension"))

(smithy/sdk/shapes:define-list dimension-list :member dimension)

(smithy/sdk/shapes:define-structure document-item common-lisp:nil
                                    ((type :target-type bounded-string
                                      :member-name "type")
                                     (url :target-type bounded-string
                                      :member-name "url")
                                     (version :target-type bounded-string
                                      :member-name "version"))
                                    (:shape-name "DocumentItem"))

(smithy/sdk/shapes:define-list document-list :member document-item)

(smithy/sdk/shapes:define-structure estimated-charges common-lisp:nil
                                    ((currency-code :target-type currency-code
                                      :member-name "currencyCode")
                                     (agreement-value :target-type
                                      bounded-string :member-name
                                      "agreementValue"))
                                    (:shape-name "EstimatedCharges"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type filter-name
                                      :member-name "name")
                                     (values :target-type filter-value-list
                                      :member-name "values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-value-list :member filter-value)

(smithy/sdk/shapes:define-structure fixed-upfront-pricing-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (currency-code :target-type currency-code
                                      :member-name "currencyCode")
                                     (duration :target-type bounded-string
                                      :member-name "duration")
                                     (price :target-type bounded-string
                                      :member-name "price")
                                     (grants :target-type grant-list
                                      :member-name "grants"))
                                    (:shape-name "FixedUpfrontPricingTerm"))

(smithy/sdk/shapes:define-structure free-trial-pricing-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (duration :target-type bounded-string
                                      :member-name "duration")
                                     (grants :target-type grant-list
                                      :member-name "grants"))
                                    (:shape-name "FreeTrialPricingTerm"))

(smithy/sdk/shapes:define-input get-agreement-terms-input common-lisp:nil
                                ((agreement-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "agreementId")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "GetAgreementTermsInput"))

(smithy/sdk/shapes:define-output get-agreement-terms-output common-lisp:nil
                                 ((accepted-terms :target-type
                                   accepted-term-list :member-name
                                   "acceptedTerms")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetAgreementTermsOutput"))

(smithy/sdk/shapes:define-structure grant-item common-lisp:nil
                                    ((dimension-key :target-type bounded-string
                                      :member-name "dimensionKey")
                                     (max-quantity :target-type
                                      positive-integer-with-default-value-one
                                      :member-name "maxQuantity"))
                                    (:shape-name "GrantItem"))

(smithy/sdk/shapes:define-list grant-list :member grant-item)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((request-id :target-type request-id
                                  :member-name "requestId")
                                 (message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure legal-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (documents :target-type document-list
                                      :member-name "documents"))
                                    (:shape-name "LegalTerm"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type offer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure payment-schedule-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (currency-code :target-type currency-code
                                      :member-name "currencyCode")
                                     (schedule :target-type schedule-list
                                      :member-name "schedule"))
                                    (:shape-name "PaymentScheduleTerm"))

(smithy/sdk/shapes:define-type positive-integer-with-default-value-one
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure proposal-summary common-lisp:nil
                                    ((resources :target-type resources
                                      :member-name "resources")
                                     (offer-id :target-type offer-id
                                      :member-name "offerId"))
                                    (:shape-name "ProposalSummary"))

(smithy/sdk/shapes:define-structure proposer common-lisp:nil
                                    ((account-id :target-type awsaccount-id
                                      :member-name "accountId"))
                                    (:shape-name "Proposer"))

(smithy/sdk/shapes:define-structure rate-card-item common-lisp:nil
                                    ((dimension-key :target-type bounded-string
                                      :member-name "dimensionKey")
                                     (price :target-type bounded-string
                                      :member-name "price"))
                                    (:shape-name "RateCardItem"))

(smithy/sdk/shapes:define-list rate-card-list :member rate-card-item)

(smithy/sdk/shapes:define-structure recurring-payment-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (currency-code :target-type currency-code
                                      :member-name "currencyCode")
                                     (billing-period :target-type
                                      bounded-string :member-name
                                      "billingPeriod")
                                     (price :target-type bounded-string
                                      :member-name "price"))
                                    (:shape-name "RecurringPaymentTerm"))

(smithy/sdk/shapes:define-structure renewal-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (configuration :target-type
                                      renewal-term-configuration :member-name
                                      "configuration"))
                                    (:shape-name "RenewalTerm"))

(smithy/sdk/shapes:define-structure renewal-term-configuration common-lisp:nil
                                    ((enable-auto-renew :target-type boolean
                                      :required common-lisp:t :member-name
                                      "enableAutoRenew"))
                                    (:shape-name "RenewalTermConfiguration"))

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "id")
                                     (type :target-type agreement-resource-type
                                      :member-name "type"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((request-id :target-type request-id
                                  :member-name "requestId")
                                 (message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:agreement "Agreement"))

(smithy/sdk/shapes:define-list resources :member resource)

(smithy/sdk/shapes:define-structure schedule-item common-lisp:nil
                                    ((charge-date :target-type timestamp
                                      :member-name "chargeDate")
                                     (charge-amount :target-type bounded-string
                                      :member-name "chargeAmount"))
                                    (:shape-name "ScheduleItem"))

(smithy/sdk/shapes:define-list schedule-list :member schedule-item)

(smithy/sdk/shapes:define-input search-agreements-input common-lisp:nil
                                ((catalog :target-type catalog :member-name
                                  "catalog")
                                 (filters :target-type filter-list :member-name
                                  "filters")
                                 (sort :target-type sort :member-name "sort")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "SearchAgreementsInput"))

(smithy/sdk/shapes:define-output search-agreements-output common-lisp:nil
                                 ((agreement-view-summaries :target-type
                                   agreement-view-summary-list :member-name
                                   "agreementViewSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchAgreementsOutput"))

(smithy/sdk/shapes:define-structure selector common-lisp:nil
                                    ((type :target-type bounded-string
                                      :member-name "type")
                                     (value :target-type bounded-string
                                      :member-name "value"))
                                    (:shape-name "Selector"))

(smithy/sdk/shapes:define-structure sort common-lisp:nil
                                    ((sort-by :target-type sort-by :member-name
                                      "sortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder"))
                                    (:shape-name "Sort"))

(smithy/sdk/shapes:define-type sort-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-structure support-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (refund-policy :target-type bounded-string
                                      :member-name "refundPolicy"))
                                    (:shape-name "SupportTerm"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((request-id :target-type request-id
                                  :member-name "requestId")
                                 (message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type unversioned-term-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure usage-based-pricing-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (currency-code :target-type currency-code
                                      :member-name "currencyCode")
                                     (rate-cards :target-type
                                      usage-based-rate-card-list :member-name
                                      "rateCards"))
                                    (:shape-name "UsageBasedPricingTerm"))

(smithy/sdk/shapes:define-structure usage-based-rate-card-item common-lisp:nil
                                    ((rate-card :target-type rate-card-list
                                      :member-name "rateCard"))
                                    (:shape-name "UsageBasedRateCardItem"))

(smithy/sdk/shapes:define-list usage-based-rate-card-list :member
                               usage-based-rate-card-item)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((request-id :target-type request-id
                                  :member-name "requestId")
                                 (message :target-type exception-message
                                  :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type bounded-string
                                      :required common-lisp:t :member-name
                                      "name")
                                     (message :target-type bounded-string
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:invalid-agreement-id "INVALID_AGREEMENT_ID")
  (:missing-agreement-id "MISSING_AGREEMENT_ID")
  (:invalid-catalog "INVALID_CATALOG")
  (:invalid-filter-name "INVALID_FILTER_NAME")
  (:invalid-filter-values "INVALID_FILTER_VALUES")
  (:invalid-sort-by "INVALID_SORT_BY")
  (:invalid-sort-order "INVALID_SORT_ORDER")
  (:invalid-next-token "INVALID_NEXT_TOKEN")
  (:invalid-max-results "INVALID_MAX_RESULTS")
  (:unsupported-filters "UNSUPPORTED_FILTERS")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure validity-term common-lisp:nil
                                    ((type :target-type unversioned-term-type
                                      :member-name "type")
                                     (agreement-duration :target-type
                                      bounded-string :member-name
                                      "agreementDuration")
                                     (agreement-start-date :target-type
                                      timestamp :member-name
                                      "agreementStartDate")
                                     (agreement-end-date :target-type timestamp
                                      :member-name "agreementEndDate"))
                                    (:shape-name "ValidityTerm"))

(smithy/sdk/shapes:define-type zero-value-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation describe-agreement :shape-name
                                       "DescribeAgreement" :input
                                       describe-agreement-input :output
                                       describe-agreement-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-agreement-terms :shape-name
                                       "GetAgreementTerms" :input
                                       get-agreement-terms-input :output
                                       get-agreement-terms-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation search-agreements :shape-name
                                       "SearchAgreements" :input
                                       search-agreements-input :output
                                       search-agreements-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))
