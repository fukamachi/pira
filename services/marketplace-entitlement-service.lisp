(uiop/package:define-package #:pira/marketplace-entitlement-service (:use)
                             (:export #:awsmpentitlement-service #:boolean
                              #:double #:entitlement #:entitlement-list
                              #:entitlement-value #:error-message
                              #:filter-value #:filter-value-list
                              #:get-entitlement-filter-name
                              #:get-entitlement-filters #:get-entitlements
                              #:integer #:non-empty-string #:page-size-integer
                              #:product-code #:string #:timestamp))
(common-lisp:in-package #:pira/marketplace-entitlement-service)

(smithy/sdk/service:define-service awsmpentitlement-service :shape-name
                                   "AWSMPEntitlementService" :version
                                   "2017-01-11" :title
                                   "AWS Marketplace Entitlement Service"
                                   :operations '(get-entitlements) :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Marketplace Entitlement Service")
                                      ("arnNamespace" . "aws-marketplace")
                                      ("cloudFormationName"
                                       . "MarketplaceEntitlementService")
                                      ("cloudTrailEventSource"
                                       . "marketplaceentitlementservice.amazonaws.com")
                                      ("docId"
                                       . "entitlement.marketplace-2017-01-11")
                                      ("endpointPrefix"
                                       . "entitlement.marketplace"))
                                     ("aws.auth#sigv4"
                                      ("name" . "aws-marketplace"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure entitlement common-lisp:nil
                                    ((product-code :target-type product-code
                                      :member-name "ProductCode")
                                     (dimension :target-type non-empty-string
                                      :member-name "Dimension")
                                     (customer-identifier :target-type
                                      non-empty-string :member-name
                                      "CustomerIdentifier")
                                     (customer-awsaccount-id :target-type
                                      non-empty-string :member-name
                                      "CustomerAWSAccountId")
                                     (value :target-type entitlement-value
                                      :member-name "Value")
                                     (expiration-date :target-type timestamp
                                      :member-name "ExpirationDate"))
                                    (:shape-name "Entitlement"))

(smithy/sdk/shapes:define-list entitlement-list :member entitlement)

(smithy/sdk/shapes:define-structure entitlement-value common-lisp:nil
                                    ((integer-value :target-type integer
                                      :member-name "IntegerValue")
                                     (double-value :target-type double
                                      :member-name "DoubleValue")
                                     (boolean-value :target-type boolean
                                      :member-name "BooleanValue")
                                     (string-value :target-type string
                                      :member-name "StringValue"))
                                    (:shape-name "EntitlementValue"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-value-list :member filter-value)

(smithy/sdk/shapes:define-enum get-entitlement-filter-name
    common-lisp:nil
  (:customer-identifier "CUSTOMER_IDENTIFIER")
  (:dimension "DIMENSION")
  (:customer-aws-account-id "CUSTOMER_AWS_ACCOUNT_ID"))

(smithy/sdk/shapes:define-map get-entitlement-filters :key
                              get-entitlement-filter-name :value
                              filter-value-list)

(smithy/sdk/shapes:define-input get-entitlements-request common-lisp:nil
                                ((product-code :target-type product-code
                                  :required common-lisp:t :member-name
                                  "ProductCode")
                                 (filter :target-type get-entitlement-filters
                                  :member-name "Filter")
                                 (next-token :target-type non-empty-string
                                  :member-name "NextToken")
                                 (max-results :target-type page-size-integer
                                  :member-name "MaxResults"))
                                (:shape-name "GetEntitlementsRequest"))

(smithy/sdk/shapes:define-output get-entitlements-result common-lisp:nil
                                 ((entitlements :target-type entitlement-list
                                   :member-name "Entitlements")
                                  (next-token :target-type non-empty-string
                                   :member-name "NextToken"))
                                 (:shape-name "GetEntitlementsResult"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-size-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type product-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation get-entitlements :shape-name
                                       "GetEntitlements" :input
                                       get-entitlements-request :output
                                       get-entitlements-result :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        throttling-exception))
