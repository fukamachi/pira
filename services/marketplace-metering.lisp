(uiop/package:define-package #:pira/marketplace-metering (:use)
                             (:export #:awsmpmetering-service
                              #:allocated-usage-quantity #:batch-meter-usage
                              #:boolean #:customer-awsaccount-id
                              #:customer-identifier #:meter-usage
                              #:non-empty-string #:nonce #:product-code
                              #:register-usage #:resolve-customer #:string
                              #:tag #:tag-key #:tag-list #:tag-value
                              #:timestamp #:usage-allocation
                              #:usage-allocations #:usage-dimension
                              #:usage-quantity #:usage-record
                              #:usage-record-list #:usage-record-result
                              #:usage-record-result-list
                              #:usage-record-result-status #:version-integer
                              #:error-message))
(common-lisp:in-package #:pira/marketplace-metering)

(smithy/sdk/service:define-service awsmpmetering-service :shape-name
                                   "AWSMPMeteringService" :version "2016-01-14"
                                   :title "AWSMarketplace Metering" :operations
                                   '(batch-meter-usage meter-usage
                                     register-usage resolve-customer)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Marketplace Metering")
                                      ("arnNamespace" . "aws-marketplace")
                                      ("cloudFormationName"
                                       . "MarketplaceMetering")
                                      ("cloudTrailEventSource"
                                       . "marketplacemetering.amazonaws.com")
                                      ("docId"
                                       . "meteringmarketplace-2016-01-14")
                                      ("endpointPrefix"
                                       . "metering.marketplace"))
                                     ("aws.auth#sigv4"
                                      ("name" . "aws-marketplace"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type allocated-usage-quantity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input batch-meter-usage-request common-lisp:nil
                                ((usage-records :target-type usage-record-list
                                  :required common-lisp:t :member-name
                                  "UsageRecords")
                                 (product-code :target-type product-code
                                  :required common-lisp:t :member-name
                                  "ProductCode"))
                                (:shape-name "BatchMeterUsageRequest"))

(smithy/sdk/shapes:define-output batch-meter-usage-result common-lisp:nil
                                 ((results :target-type
                                   usage-record-result-list :member-name
                                   "Results")
                                  (unprocessed-records :target-type
                                   usage-record-list :member-name
                                   "UnprocessedRecords"))
                                 (:shape-name "BatchMeterUsageResult"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type customer-awsaccount-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type customer-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error customer-not-entitled-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "CustomerNotEntitledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error disabled-api-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DisabledApiException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DuplicateRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error expired-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ExpiredTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-customer-identifier-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidCustomerIdentifierException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-endpoint-region-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidEndpointRegionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-product-code-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidProductCodeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-public-key-version-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidPublicKeyVersionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-region-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRegionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tag-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTagException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-usage-allocations-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidUsageAllocationsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-usage-dimension-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidUsageDimensionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input meter-usage-request common-lisp:nil
                                ((product-code :target-type product-code
                                  :required common-lisp:t :member-name
                                  "ProductCode")
                                 (timestamp :target-type timestamp :required
                                  common-lisp:t :member-name "Timestamp")
                                 (usage-dimension :target-type usage-dimension
                                  :required common-lisp:t :member-name
                                  "UsageDimension")
                                 (usage-quantity :target-type usage-quantity
                                  :member-name "UsageQuantity")
                                 (dry-run :target-type boolean :member-name
                                  "DryRun")
                                 (usage-allocations :target-type
                                  usage-allocations :member-name
                                  "UsageAllocations"))
                                (:shape-name "MeterUsageRequest"))

(smithy/sdk/shapes:define-output meter-usage-result common-lisp:nil
                                 ((metering-record-id :target-type string
                                   :member-name "MeteringRecordId"))
                                 (:shape-name "MeterUsageResult"))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nonce smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error platform-not-supported-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "PlatformNotSupportedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type product-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-usage-request common-lisp:nil
                                ((product-code :target-type product-code
                                  :required common-lisp:t :member-name
                                  "ProductCode")
                                 (public-key-version :target-type
                                  version-integer :required common-lisp:t
                                  :member-name "PublicKeyVersion")
                                 (nonce :target-type nonce :member-name
                                  "Nonce"))
                                (:shape-name "RegisterUsageRequest"))

(smithy/sdk/shapes:define-output register-usage-result common-lisp:nil
                                 ((public-key-rotation-timestamp :target-type
                                   timestamp :member-name
                                   "PublicKeyRotationTimestamp")
                                  (signature :target-type non-empty-string
                                   :member-name "Signature"))
                                 (:shape-name "RegisterUsageResult"))

(smithy/sdk/shapes:define-input resolve-customer-request common-lisp:nil
                                ((registration-token :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "RegistrationToken"))
                                (:shape-name "ResolveCustomerRequest"))

(smithy/sdk/shapes:define-output resolve-customer-result common-lisp:nil
                                 ((customer-identifier :target-type
                                   customer-identifier :member-name
                                   "CustomerIdentifier")
                                  (product-code :target-type product-code
                                   :member-name "ProductCode")
                                  (customer-awsaccount-id :target-type
                                   customer-awsaccount-id :member-name
                                   "CustomerAWSAccountId"))
                                 (:shape-name "ResolveCustomerResult"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error timestamp-out-of-bounds-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TimestampOutOfBoundsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure usage-allocation common-lisp:nil
                                    ((allocated-usage-quantity :target-type
                                      allocated-usage-quantity :required
                                      common-lisp:t :member-name
                                      "AllocatedUsageQuantity")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "UsageAllocation"))

(smithy/sdk/shapes:define-list usage-allocations :member usage-allocation)

(smithy/sdk/shapes:define-type usage-dimension smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type usage-quantity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure usage-record common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "Timestamp")
                                     (customer-identifier :target-type
                                      customer-identifier :member-name
                                      "CustomerIdentifier")
                                     (dimension :target-type usage-dimension
                                      :required common-lisp:t :member-name
                                      "Dimension")
                                     (quantity :target-type usage-quantity
                                      :member-name "Quantity")
                                     (usage-allocations :target-type
                                      usage-allocations :member-name
                                      "UsageAllocations")
                                     (customer-awsaccount-id :target-type
                                      customer-awsaccount-id :member-name
                                      "CustomerAWSAccountId"))
                                    (:shape-name "UsageRecord"))

(smithy/sdk/shapes:define-list usage-record-list :member usage-record)

(smithy/sdk/shapes:define-structure usage-record-result common-lisp:nil
                                    ((usage-record :target-type usage-record
                                      :member-name "UsageRecord")
                                     (metering-record-id :target-type string
                                      :member-name "MeteringRecordId")
                                     (status :target-type
                                      usage-record-result-status :member-name
                                      "Status"))
                                    (:shape-name "UsageRecordResult"))

(smithy/sdk/shapes:define-list usage-record-result-list :member
                               usage-record-result)

(smithy/sdk/shapes:define-enum usage-record-result-status
    common-lisp:nil
  (:success "Success")
  (:customer-not-subscribed "CustomerNotSubscribed")
  (:duplicate-record "DuplicateRecord"))

(smithy/sdk/shapes:define-type version-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-meter-usage :shape-name
                                       "BatchMeterUsage" :input
                                       batch-meter-usage-request :output
                                       batch-meter-usage-result :errors
                                       (disabled-api-exception
                                        internal-service-error-exception
                                        invalid-customer-identifier-exception
                                        invalid-product-code-exception
                                        invalid-tag-exception
                                        invalid-usage-allocations-exception
                                        invalid-usage-dimension-exception
                                        throttling-exception
                                        timestamp-out-of-bounds-exception))

(smithy/sdk/operation:define-operation meter-usage :shape-name "MeterUsage"
                                       :input meter-usage-request :output
                                       meter-usage-result :errors
                                       (customer-not-entitled-exception
                                        duplicate-request-exception
                                        internal-service-error-exception
                                        invalid-endpoint-region-exception
                                        invalid-product-code-exception
                                        invalid-tag-exception
                                        invalid-usage-allocations-exception
                                        invalid-usage-dimension-exception
                                        throttling-exception
                                        timestamp-out-of-bounds-exception))

(smithy/sdk/operation:define-operation register-usage :shape-name
                                       "RegisterUsage" :input
                                       register-usage-request :output
                                       register-usage-result :errors
                                       (customer-not-entitled-exception
                                        disabled-api-exception
                                        internal-service-error-exception
                                        invalid-product-code-exception
                                        invalid-public-key-version-exception
                                        invalid-region-exception
                                        platform-not-supported-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation resolve-customer :shape-name
                                       "ResolveCustomer" :input
                                       resolve-customer-request :output
                                       resolve-customer-result :errors
                                       (disabled-api-exception
                                        expired-token-exception
                                        internal-service-error-exception
                                        invalid-token-exception
                                        throttling-exception))
