(uiop/package:define-package #:pira/license-manager (:use)
                             (:export #:awslicense-manager #:accept-grant
                              #:activation-override-behavior
                              #:allowed-operation #:allowed-operation-list
                              #:arn #:arn-list
                              #:automated-discovery-information #:boolean
                              #:borrow-configuration #:box-boolean
                              #:box-integer #:box-long #:check-in-license
                              #:checkout-borrow-license #:checkout-license
                              #:checkout-type #:client-request-token
                              #:client-token #:consumed-license-summary
                              #:consumed-license-summary-list
                              #:consumption-configuration #:create-grant
                              #:create-grant-version #:create-license
                              #:create-license-configuration
                              #:create-license-conversion-task-for-resource
                              #:create-license-manager-report-generator
                              #:create-license-version #:create-token
                              #:date-time #:datetime-range #:delete-grant
                              #:delete-license #:delete-license-configuration
                              #:delete-license-manager-report-generator
                              #:delete-token #:digital-signature-method
                              #:entitlement #:entitlement-data
                              #:entitlement-data-list #:entitlement-data-unit
                              #:entitlement-list #:entitlement-unit
                              #:entitlement-usage #:entitlement-usage-list
                              #:extend-license-consumption #:filter
                              #:filter-list #:filter-name #:filter-value
                              #:filter-values #:filters #:get-access-token
                              #:get-grant #:get-license
                              #:get-license-configuration
                              #:get-license-conversion-task
                              #:get-license-manager-report-generator
                              #:get-license-usage #:get-service-settings
                              #:grant #:grant-list #:grant-status
                              #:granted-license #:granted-license-list
                              #:iso8601date-time #:integer #:inventory-filter
                              #:inventory-filter-condition
                              #:inventory-filter-list #:issuer #:issuer-details
                              #:license #:license-configuration
                              #:license-configuration-association
                              #:license-configuration-associations
                              #:license-configuration-status
                              #:license-configuration-usage
                              #:license-configuration-usage-list
                              #:license-configurations
                              #:license-conversion-context
                              #:license-conversion-task
                              #:license-conversion-task-id
                              #:license-conversion-task-status
                              #:license-conversion-tasks
                              #:license-counting-type #:license-deletion-status
                              #:license-list #:license-operation-failure
                              #:license-operation-failure-list
                              #:license-specification #:license-specifications
                              #:license-status #:license-usage
                              #:list-associations-for-license-configuration
                              #:list-distributed-grants
                              #:list-failures-for-license-configuration-operations
                              #:list-license-configurations
                              #:list-license-conversion-tasks
                              #:list-license-manager-report-generators
                              #:list-license-specifications-for-resource
                              #:list-license-versions #:list-licenses
                              #:list-received-grants
                              #:list-received-grants-for-organization
                              #:list-received-licenses
                              #:list-received-licenses-for-organization
                              #:list-resource-inventory
                              #:list-tags-for-resource #:list-tokens
                              #:list-usage-for-license-configuration #:location
                              #:long #:managed-resource-summary
                              #:managed-resource-summary-list #:max-size100
                              #:max-size3string-list #:message #:metadata
                              #:metadata-list #:options
                              #:organization-configuration #:principal-arn-list
                              #:product-code-id #:product-code-list
                              #:product-code-list-item #:product-code-type
                              #:product-information
                              #:product-information-filter
                              #:product-information-filter-list
                              #:product-information-list
                              #:provisional-configuration #:received-metadata
                              #:received-status #:reject-grant #:renew-type
                              #:report-context #:report-frequency
                              #:report-frequency-type #:report-generator
                              #:report-generator-list #:report-generator-name
                              #:report-type #:report-type-list
                              #:resource-inventory #:resource-inventory-list
                              #:resource-type #:s3location #:signed-token
                              #:status-reason-message #:string #:string-list
                              #:tag #:tag-key-list #:tag-list #:tag-resource
                              #:token-data #:token-list #:token-string
                              #:token-type #:untag-resource
                              #:update-license-configuration
                              #:update-license-manager-report-generator
                              #:update-license-specifications-for-resource
                              #:update-service-settings #:usage-operation))
(common-lisp:in-package #:pira/license-manager)

(smithy/sdk/service:define-service awslicense-manager :shape-name
                                   "AWSLicenseManager" :version "2018-08-01"
                                   :title "AWS License Manager" :operations
                                   '(accept-grant check-in-license
                                     checkout-borrow-license checkout-license
                                     create-grant create-grant-version
                                     create-license
                                     create-license-configuration
                                     create-license-conversion-task-for-resource
                                     create-license-manager-report-generator
                                     create-license-version create-token
                                     delete-grant delete-license
                                     delete-license-configuration
                                     delete-license-manager-report-generator
                                     delete-token extend-license-consumption
                                     get-access-token get-grant get-license
                                     get-license-configuration
                                     get-license-conversion-task
                                     get-license-manager-report-generator
                                     get-license-usage get-service-settings
                                     list-associations-for-license-configuration
                                     list-distributed-grants
                                     list-failures-for-license-configuration-operations
                                     list-license-configurations
                                     list-license-conversion-tasks
                                     list-license-manager-report-generators
                                     list-licenses
                                     list-license-specifications-for-resource
                                     list-license-versions list-received-grants
                                     list-received-grants-for-organization
                                     list-received-licenses
                                     list-received-licenses-for-organization
                                     list-resource-inventory
                                     list-tags-for-resource list-tokens
                                     list-usage-for-license-configuration
                                     reject-grant tag-resource untag-resource
                                     update-license-configuration
                                     update-license-manager-report-generator
                                     update-license-specifications-for-resource
                                     update-service-settings)
                                   :xml-namespace
                                   (:uri
                                    "https://license-manager.amazonaws.com/doc/2018_08_01"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "License Manager")
                                      ("arnNamespace" . "license-manager")
                                      ("cloudFormationName" . "LicenseManager")
                                      ("cloudTrailEventSource"
                                       . "license-manager.amazonaws.com")
                                      ("endpointPrefix" . "license-manager"))
                                     ("aws.auth#sigv4"
                                      ("name" . "license-manager"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input accept-grant-request common-lisp:nil
                                ((grant-arn :target-type arn :required
                                  common-lisp:t :member-name "GrantArn"))
                                (:shape-name "AcceptGrantRequest"))

(smithy/sdk/shapes:define-output accept-grant-response common-lisp:nil
                                 ((grant-arn :target-type arn :member-name
                                   "GrantArn")
                                  (status :target-type grant-status
                                   :member-name "Status")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name "AcceptGrantResponse"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-name "ServiceAccessDenied")
                                (:error-code 401))

(smithy/sdk/shapes:define-enum activation-override-behavior
    common-lisp:nil
  (:distributed-grants-only "DISTRIBUTED_GRANTS_ONLY")
  (:all-grants-permitted-by-issuer "ALL_GRANTS_PERMITTED_BY_ISSUER"))

(smithy/sdk/shapes:define-enum allowed-operation
    common-lisp:nil
  (:create-grant "CreateGrant")
  (:checkout-license "CheckoutLicense")
  (:checkout-borrow-license "CheckoutBorrowLicense")
  (:check-in-license "CheckInLicense")
  (:extend-consumption-license "ExtendConsumptionLicense")
  (:list-purchased-licenses "ListPurchasedLicenses")
  (:create-token "CreateToken"))

(smithy/sdk/shapes:define-list allowed-operation-list :member allowed-operation)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arn-list :member arn)

(smithy/sdk/shapes:define-error authorization-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "AuthorizationException")
                                (:error-name "AuthorizationFailure")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure automated-discovery-information
                                    common-lisp:nil
                                    ((last-run-time :target-type date-time
                                      :member-name "LastRunTime"))
                                    (:shape-name
                                     "AutomatedDiscoveryInformation"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure borrow-configuration common-lisp:nil
                                    ((allow-early-check-in :target-type
                                      box-boolean :required common-lisp:t
                                      :member-name "AllowEarlyCheckIn")
                                     (max-time-to-live-in-minutes :target-type
                                      box-integer :required common-lisp:t
                                      :member-name "MaxTimeToLiveInMinutes"))
                                    (:shape-name "BorrowConfiguration"))

(smithy/sdk/shapes:define-type box-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type box-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type box-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input check-in-license-request common-lisp:nil
                                ((license-consumption-token :target-type string
                                  :required common-lisp:t :member-name
                                  "LicenseConsumptionToken")
                                 (beneficiary :target-type string :member-name
                                  "Beneficiary"))
                                (:shape-name "CheckInLicenseRequest"))

(smithy/sdk/shapes:define-output check-in-license-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CheckInLicenseResponse"))

(smithy/sdk/shapes:define-input checkout-borrow-license-request common-lisp:nil
                                ((license-arn :target-type arn :required
                                  common-lisp:t :member-name "LicenseArn")
                                 (entitlements :target-type
                                  entitlement-data-list :required common-lisp:t
                                  :member-name "Entitlements")
                                 (digital-signature-method :target-type
                                  digital-signature-method :required
                                  common-lisp:t :member-name
                                  "DigitalSignatureMethod")
                                 (node-id :target-type string :member-name
                                  "NodeId")
                                 (checkout-metadata :target-type metadata-list
                                  :member-name "CheckoutMetadata")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken"))
                                (:shape-name "CheckoutBorrowLicenseRequest"))

(smithy/sdk/shapes:define-output checkout-borrow-license-response
                                 common-lisp:nil
                                 ((license-arn :target-type arn :member-name
                                   "LicenseArn")
                                  (license-consumption-token :target-type
                                   string :member-name
                                   "LicenseConsumptionToken")
                                  (entitlements-allowed :target-type
                                   entitlement-data-list :member-name
                                   "EntitlementsAllowed")
                                  (node-id :target-type string :member-name
                                   "NodeId")
                                  (signed-token :target-type signed-token
                                   :member-name "SignedToken")
                                  (issued-at :target-type iso8601date-time
                                   :member-name "IssuedAt")
                                  (expiration :target-type iso8601date-time
                                   :member-name "Expiration")
                                  (checkout-metadata :target-type metadata-list
                                   :member-name "CheckoutMetadata"))
                                 (:shape-name "CheckoutBorrowLicenseResponse"))

(smithy/sdk/shapes:define-input checkout-license-request common-lisp:nil
                                ((product-sku :target-type string :required
                                  common-lisp:t :member-name "ProductSKU")
                                 (checkout-type :target-type checkout-type
                                  :required common-lisp:t :member-name
                                  "CheckoutType")
                                 (key-fingerprint :target-type string :required
                                  common-lisp:t :member-name "KeyFingerprint")
                                 (entitlements :target-type
                                  entitlement-data-list :required common-lisp:t
                                  :member-name "Entitlements")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (beneficiary :target-type string :member-name
                                  "Beneficiary")
                                 (node-id :target-type string :member-name
                                  "NodeId"))
                                (:shape-name "CheckoutLicenseRequest"))

(smithy/sdk/shapes:define-output checkout-license-response common-lisp:nil
                                 ((checkout-type :target-type checkout-type
                                   :member-name "CheckoutType")
                                  (license-consumption-token :target-type
                                   string :member-name
                                   "LicenseConsumptionToken")
                                  (entitlements-allowed :target-type
                                   entitlement-data-list :member-name
                                   "EntitlementsAllowed")
                                  (signed-token :target-type signed-token
                                   :member-name "SignedToken")
                                  (node-id :target-type string :member-name
                                   "NodeId")
                                  (issued-at :target-type iso8601date-time
                                   :member-name "IssuedAt")
                                  (expiration :target-type iso8601date-time
                                   :member-name "Expiration")
                                  (license-arn :target-type string :member-name
                                   "LicenseArn"))
                                 (:shape-name "CheckoutLicenseResponse"))

(smithy/sdk/shapes:define-enum checkout-type
    common-lisp:nil
  (:provisional "PROVISIONAL")
  (:perpetual "PERPETUAL"))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure consumed-license-summary common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (consumed-licenses :target-type box-long
                                      :member-name "ConsumedLicenses"))
                                    (:shape-name "ConsumedLicenseSummary"))

(smithy/sdk/shapes:define-list consumed-license-summary-list :member
                               consumed-license-summary)

(smithy/sdk/shapes:define-structure consumption-configuration common-lisp:nil
                                    ((renew-type :target-type renew-type
                                      :member-name "RenewType")
                                     (provisional-configuration :target-type
                                      provisional-configuration :member-name
                                      "ProvisionalConfiguration")
                                     (borrow-configuration :target-type
                                      borrow-configuration :member-name
                                      "BorrowConfiguration"))
                                    (:shape-name "ConsumptionConfiguration"))

(smithy/sdk/shapes:define-input create-grant-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (grant-name :target-type string :required
                                  common-lisp:t :member-name "GrantName")
                                 (license-arn :target-type arn :required
                                  common-lisp:t :member-name "LicenseArn")
                                 (principals :target-type principal-arn-list
                                  :required common-lisp:t :member-name
                                  "Principals")
                                 (home-region :target-type string :required
                                  common-lisp:t :member-name "HomeRegion")
                                 (allowed-operations :target-type
                                  allowed-operation-list :required
                                  common-lisp:t :member-name
                                  "AllowedOperations")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateGrantRequest"))

(smithy/sdk/shapes:define-output create-grant-response common-lisp:nil
                                 ((grant-arn :target-type arn :member-name
                                   "GrantArn")
                                  (status :target-type grant-status
                                   :member-name "Status")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name "CreateGrantResponse"))

(smithy/sdk/shapes:define-input create-grant-version-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (grant-arn :target-type arn :required
                                  common-lisp:t :member-name "GrantArn")
                                 (grant-name :target-type string :member-name
                                  "GrantName")
                                 (allowed-operations :target-type
                                  allowed-operation-list :member-name
                                  "AllowedOperations")
                                 (status :target-type grant-status :member-name
                                  "Status")
                                 (status-reason :target-type
                                  status-reason-message :member-name
                                  "StatusReason")
                                 (source-version :target-type string
                                  :member-name "SourceVersion")
                                 (options :target-type options :member-name
                                  "Options"))
                                (:shape-name "CreateGrantVersionRequest"))

(smithy/sdk/shapes:define-output create-grant-version-response common-lisp:nil
                                 ((grant-arn :target-type arn :member-name
                                   "GrantArn")
                                  (status :target-type grant-status
                                   :member-name "Status")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name "CreateGrantVersionResponse"))

(smithy/sdk/shapes:define-input create-license-configuration-request
                                common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type string :member-name
                                  "Description")
                                 (license-counting-type :target-type
                                  license-counting-type :required common-lisp:t
                                  :member-name "LicenseCountingType")
                                 (license-count :target-type box-long
                                  :member-name "LicenseCount")
                                 (license-count-hard-limit :target-type
                                  box-boolean :member-name
                                  "LicenseCountHardLimit")
                                 (license-rules :target-type string-list
                                  :member-name "LicenseRules")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (disassociate-when-not-found :target-type
                                  box-boolean :member-name
                                  "DisassociateWhenNotFound")
                                 (product-information-list :target-type
                                  product-information-list :member-name
                                  "ProductInformationList"))
                                (:shape-name
                                 "CreateLicenseConfigurationRequest"))

(smithy/sdk/shapes:define-output create-license-configuration-response
                                 common-lisp:nil
                                 ((license-configuration-arn :target-type
                                   string :member-name
                                   "LicenseConfigurationArn"))
                                 (:shape-name
                                  "CreateLicenseConfigurationResponse"))

(smithy/sdk/shapes:define-input
 create-license-conversion-task-for-resource-request common-lisp:nil
 ((resource-arn :target-type arn :required common-lisp:t :member-name
   "ResourceArn")
  (source-license-context :target-type license-conversion-context :required
   common-lisp:t :member-name "SourceLicenseContext")
  (destination-license-context :target-type license-conversion-context
   :required common-lisp:t :member-name "DestinationLicenseContext"))
 (:shape-name "CreateLicenseConversionTaskForResourceRequest"))

(smithy/sdk/shapes:define-output
 create-license-conversion-task-for-resource-response common-lisp:nil
 ((license-conversion-task-id :target-type license-conversion-task-id
   :member-name "LicenseConversionTaskId"))
 (:shape-name "CreateLicenseConversionTaskForResourceResponse"))

(smithy/sdk/shapes:define-input create-license-manager-report-generator-request
                                common-lisp:nil
                                ((report-generator-name :target-type
                                  report-generator-name :required common-lisp:t
                                  :member-name "ReportGeneratorName")
                                 (type :target-type report-type-list :required
                                  common-lisp:t :member-name "Type")
                                 (report-context :target-type report-context
                                  :required common-lisp:t :member-name
                                  "ReportContext")
                                 (report-frequency :target-type
                                  report-frequency :required common-lisp:t
                                  :member-name "ReportFrequency")
                                 (client-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientToken")
                                 (description :target-type string :member-name
                                  "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateLicenseManagerReportGeneratorRequest"))

(smithy/sdk/shapes:define-output
 create-license-manager-report-generator-response common-lisp:nil
 ((license-manager-report-generator-arn :target-type string :member-name
   "LicenseManagerReportGeneratorArn"))
 (:shape-name "CreateLicenseManagerReportGeneratorResponse"))

(smithy/sdk/shapes:define-input create-license-request common-lisp:nil
                                ((license-name :target-type string :required
                                  common-lisp:t :member-name "LicenseName")
                                 (product-name :target-type string :required
                                  common-lisp:t :member-name "ProductName")
                                 (product-sku :target-type string :required
                                  common-lisp:t :member-name "ProductSKU")
                                 (issuer :target-type issuer :required
                                  common-lisp:t :member-name "Issuer")
                                 (home-region :target-type string :required
                                  common-lisp:t :member-name "HomeRegion")
                                 (validity :target-type datetime-range
                                  :required common-lisp:t :member-name
                                  "Validity")
                                 (entitlements :target-type entitlement-list
                                  :required common-lisp:t :member-name
                                  "Entitlements")
                                 (beneficiary :target-type string :required
                                  common-lisp:t :member-name "Beneficiary")
                                 (consumption-configuration :target-type
                                  consumption-configuration :required
                                  common-lisp:t :member-name
                                  "ConsumptionConfiguration")
                                 (license-metadata :target-type metadata-list
                                  :member-name "LicenseMetadata")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLicenseRequest"))

(smithy/sdk/shapes:define-output create-license-response common-lisp:nil
                                 ((license-arn :target-type arn :member-name
                                   "LicenseArn")
                                  (status :target-type license-status
                                   :member-name "Status")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name "CreateLicenseResponse"))

(smithy/sdk/shapes:define-input create-license-version-request common-lisp:nil
                                ((license-arn :target-type arn :required
                                  common-lisp:t :member-name "LicenseArn")
                                 (license-name :target-type string :required
                                  common-lisp:t :member-name "LicenseName")
                                 (product-name :target-type string :required
                                  common-lisp:t :member-name "ProductName")
                                 (issuer :target-type issuer :required
                                  common-lisp:t :member-name "Issuer")
                                 (home-region :target-type string :required
                                  common-lisp:t :member-name "HomeRegion")
                                 (validity :target-type datetime-range
                                  :required common-lisp:t :member-name
                                  "Validity")
                                 (license-metadata :target-type metadata-list
                                  :member-name "LicenseMetadata")
                                 (entitlements :target-type entitlement-list
                                  :required common-lisp:t :member-name
                                  "Entitlements")
                                 (consumption-configuration :target-type
                                  consumption-configuration :required
                                  common-lisp:t :member-name
                                  "ConsumptionConfiguration")
                                 (status :target-type license-status :required
                                  common-lisp:t :member-name "Status")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken")
                                 (source-version :target-type string
                                  :member-name "SourceVersion"))
                                (:shape-name "CreateLicenseVersionRequest"))

(smithy/sdk/shapes:define-output create-license-version-response
                                 common-lisp:nil
                                 ((license-arn :target-type arn :member-name
                                   "LicenseArn")
                                  (version :target-type string :member-name
                                   "Version")
                                  (status :target-type license-status
                                   :member-name "Status"))
                                 (:shape-name "CreateLicenseVersionResponse"))

(smithy/sdk/shapes:define-input create-token-request common-lisp:nil
                                ((license-arn :target-type arn :required
                                  common-lisp:t :member-name "LicenseArn")
                                 (role-arns :target-type arn-list :member-name
                                  "RoleArns")
                                 (expiration-in-days :target-type integer
                                  :member-name "ExpirationInDays")
                                 (token-properties :target-type
                                  max-size3string-list :member-name
                                  "TokenProperties")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "ClientToken"))
                                (:shape-name "CreateTokenRequest"))

(smithy/sdk/shapes:define-output create-token-response common-lisp:nil
                                 ((token-id :target-type string :member-name
                                   "TokenId")
                                  (token-type :target-type token-type
                                   :member-name "TokenType")
                                  (token :target-type token-string :member-name
                                   "Token"))
                                 (:shape-name "CreateTokenResponse"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure datetime-range common-lisp:nil
                                    ((begin :target-type iso8601date-time
                                      :required common-lisp:t :member-name
                                      "Begin")
                                     (end :target-type iso8601date-time
                                      :member-name "End"))
                                    (:shape-name "DatetimeRange"))

(smithy/sdk/shapes:define-input delete-grant-request common-lisp:nil
                                ((grant-arn :target-type arn :required
                                  common-lisp:t :member-name "GrantArn")
                                 (status-reason :target-type
                                  status-reason-message :member-name
                                  "StatusReason")
                                 (version :target-type string :required
                                  common-lisp:t :member-name "Version"))
                                (:shape-name "DeleteGrantRequest"))

(smithy/sdk/shapes:define-output delete-grant-response common-lisp:nil
                                 ((grant-arn :target-type arn :member-name
                                   "GrantArn")
                                  (status :target-type grant-status
                                   :member-name "Status")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name "DeleteGrantResponse"))

(smithy/sdk/shapes:define-input delete-license-configuration-request
                                common-lisp:nil
                                ((license-configuration-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "LicenseConfigurationArn"))
                                (:shape-name
                                 "DeleteLicenseConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-license-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteLicenseConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-license-manager-report-generator-request
                                common-lisp:nil
                                ((license-manager-report-generator-arn
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "LicenseManagerReportGeneratorArn"))
                                (:shape-name
                                 "DeleteLicenseManagerReportGeneratorRequest"))

(smithy/sdk/shapes:define-output
 delete-license-manager-report-generator-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteLicenseManagerReportGeneratorResponse"))

(smithy/sdk/shapes:define-input delete-license-request common-lisp:nil
                                ((license-arn :target-type arn :required
                                  common-lisp:t :member-name "LicenseArn")
                                 (source-version :target-type string :required
                                  common-lisp:t :member-name "SourceVersion"))
                                (:shape-name "DeleteLicenseRequest"))

(smithy/sdk/shapes:define-output delete-license-response common-lisp:nil
                                 ((status :target-type license-deletion-status
                                   :member-name "Status")
                                  (deletion-date :target-type iso8601date-time
                                   :member-name "DeletionDate"))
                                 (:shape-name "DeleteLicenseResponse"))

(smithy/sdk/shapes:define-input delete-token-request common-lisp:nil
                                ((token-id :target-type string :required
                                  common-lisp:t :member-name "TokenId"))
                                (:shape-name "DeleteTokenRequest"))

(smithy/sdk/shapes:define-output delete-token-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTokenResponse"))

(smithy/sdk/shapes:define-enum digital-signature-method
    common-lisp:nil
  (:jwt-ps384 "JWT_PS384"))

(smithy/sdk/shapes:define-structure entitlement common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type string :member-name
                                      "Value")
                                     (max-count :target-type long :member-name
                                      "MaxCount")
                                     (overage :target-type box-boolean
                                      :member-name "Overage")
                                     (unit :target-type entitlement-unit
                                      :required common-lisp:t :member-name
                                      "Unit")
                                     (allow-check-in :target-type box-boolean
                                      :member-name "AllowCheckIn"))
                                    (:shape-name "Entitlement"))

(smithy/sdk/shapes:define-structure entitlement-data common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type string :member-name
                                      "Value")
                                     (unit :target-type entitlement-data-unit
                                      :required common-lisp:t :member-name
                                      "Unit"))
                                    (:shape-name "EntitlementData"))

(smithy/sdk/shapes:define-list entitlement-data-list :member entitlement-data)

(smithy/sdk/shapes:define-enum entitlement-data-unit
    common-lisp:nil
  (:count "Count")
  (:none "None")
  (:seconds "Seconds")
  (:microseconds "Microseconds")
  (:milliseconds "Milliseconds")
  (:bytes "Bytes")
  (:kilobytes "Kilobytes")
  (:megabytes "Megabytes")
  (:gigabytes "Gigabytes")
  (:terabytes "Terabytes")
  (:bits "Bits")
  (:kilobits "Kilobits")
  (:megabits "Megabits")
  (:gigabits "Gigabits")
  (:terabits "Terabits")
  (:percent "Percent")
  (:bytes-per-second "Bytes/Second")
  (:kilobytes-per-second "Kilobytes/Second")
  (:megabytes-per-second "Megabytes/Second")
  (:gigabytes-per-second "Gigabytes/Second")
  (:terabytes-per-second "Terabytes/Second")
  (:bits-per-second "Bits/Second")
  (:kilobits-per-second "Kilobits/Second")
  (:megabits-per-second "Megabits/Second")
  (:gigabits-per-second "Gigabits/Second")
  (:terabits-per-second "Terabits/Second")
  (:count-per-second "Count/Second"))

(smithy/sdk/shapes:define-list entitlement-list :member entitlement)

(smithy/sdk/shapes:define-error entitlement-not-allowed-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "EntitlementNotAllowedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum entitlement-unit
    common-lisp:nil
  (:count "Count")
  (:none "None")
  (:seconds "Seconds")
  (:microseconds "Microseconds")
  (:milliseconds "Milliseconds")
  (:bytes "Bytes")
  (:kilobytes "Kilobytes")
  (:megabytes "Megabytes")
  (:gigabytes "Gigabytes")
  (:terabytes "Terabytes")
  (:bits "Bits")
  (:kilobits "Kilobits")
  (:megabits "Megabits")
  (:gigabits "Gigabits")
  (:terabits "Terabits")
  (:percent "Percent")
  (:bytes-per-second "Bytes/Second")
  (:kilobytes-per-second "Kilobytes/Second")
  (:megabytes-per-second "Megabytes/Second")
  (:gigabytes-per-second "Gigabytes/Second")
  (:terabytes-per-second "Terabytes/Second")
  (:bits-per-second "Bits/Second")
  (:kilobits-per-second "Kilobits/Second")
  (:megabits-per-second "Megabits/Second")
  (:gigabits-per-second "Gigabits/Second")
  (:terabits-per-second "Terabits/Second")
  (:count-per-second "Count/Second"))

(smithy/sdk/shapes:define-structure entitlement-usage common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (consumed-value :target-type string
                                      :required common-lisp:t :member-name
                                      "ConsumedValue")
                                     (max-count :target-type string
                                      :member-name "MaxCount")
                                     (unit :target-type entitlement-data-unit
                                      :required common-lisp:t :member-name
                                      "Unit"))
                                    (:shape-name "EntitlementUsage"))

(smithy/sdk/shapes:define-list entitlement-usage-list :member entitlement-usage)

(smithy/sdk/shapes:define-input extend-license-consumption-request
                                common-lisp:nil
                                ((license-consumption-token :target-type string
                                  :required common-lisp:t :member-name
                                  "LicenseConsumptionToken")
                                 (dry-run :target-type boolean :member-name
                                  "DryRun"))
                                (:shape-name "ExtendLicenseConsumptionRequest"))

(smithy/sdk/shapes:define-output extend-license-consumption-response
                                 common-lisp:nil
                                 ((license-consumption-token :target-type
                                   string :member-name
                                   "LicenseConsumptionToken")
                                  (expiration :target-type iso8601date-time
                                   :member-name "Expiration"))
                                 (:shape-name
                                  "ExtendLicenseConsumptionResponse"))

(smithy/sdk/shapes:define-error failed-dependency-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message")
                                 (error-code :target-type string :member-name
                                  "ErrorCode"))
                                (:shape-name "FailedDependencyException")
                                (:error-name "FailedDependency")
                                (:error-code 424))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type filter-name
                                      :member-name "Name")
                                     (values :target-type filter-values
                                      :member-name "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-error filter-limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "FilterLimitExceededException")
                                (:error-name "FilterLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member
                               (filter-value :xml-name "item"))

(smithy/sdk/shapes:define-list filters :member (filter :xml-name "item"))

(smithy/sdk/shapes:define-input get-access-token-request common-lisp:nil
                                ((token :target-type token-string :required
                                  common-lisp:t :member-name "Token")
                                 (token-properties :target-type
                                  max-size3string-list :member-name
                                  "TokenProperties"))
                                (:shape-name "GetAccessTokenRequest"))

(smithy/sdk/shapes:define-output get-access-token-response common-lisp:nil
                                 ((access-token :target-type token-string
                                   :member-name "AccessToken"))
                                 (:shape-name "GetAccessTokenResponse"))

(smithy/sdk/shapes:define-input get-grant-request common-lisp:nil
                                ((grant-arn :target-type arn :required
                                  common-lisp:t :member-name "GrantArn")
                                 (version :target-type string :member-name
                                  "Version"))
                                (:shape-name "GetGrantRequest"))

(smithy/sdk/shapes:define-output get-grant-response common-lisp:nil
                                 ((grant :target-type grant :member-name
                                   "Grant"))
                                 (:shape-name "GetGrantResponse"))

(smithy/sdk/shapes:define-input get-license-configuration-request
                                common-lisp:nil
                                ((license-configuration-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "LicenseConfigurationArn"))
                                (:shape-name "GetLicenseConfigurationRequest"))

(smithy/sdk/shapes:define-output get-license-configuration-response
                                 common-lisp:nil
                                 ((license-configuration-id :target-type string
                                   :member-name "LicenseConfigurationId")
                                  (license-configuration-arn :target-type
                                   string :member-name
                                   "LicenseConfigurationArn")
                                  (name :target-type string :member-name
                                   "Name")
                                  (description :target-type string :member-name
                                   "Description")
                                  (license-counting-type :target-type
                                   license-counting-type :member-name
                                   "LicenseCountingType")
                                  (license-rules :target-type string-list
                                   :member-name "LicenseRules")
                                  (license-count :target-type box-long
                                   :member-name "LicenseCount")
                                  (license-count-hard-limit :target-type
                                   box-boolean :member-name
                                   "LicenseCountHardLimit")
                                  (consumed-licenses :target-type box-long
                                   :member-name "ConsumedLicenses")
                                  (status :target-type string :member-name
                                   "Status")
                                  (owner-account-id :target-type string
                                   :member-name "OwnerAccountId")
                                  (consumed-license-summary-list :target-type
                                   consumed-license-summary-list :member-name
                                   "ConsumedLicenseSummaryList")
                                  (managed-resource-summary-list :target-type
                                   managed-resource-summary-list :member-name
                                   "ManagedResourceSummaryList")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (product-information-list :target-type
                                   product-information-list :member-name
                                   "ProductInformationList")
                                  (automated-discovery-information :target-type
                                   automated-discovery-information :member-name
                                   "AutomatedDiscoveryInformation")
                                  (disassociate-when-not-found :target-type
                                   box-boolean :member-name
                                   "DisassociateWhenNotFound"))
                                 (:shape-name
                                  "GetLicenseConfigurationResponse"))

(smithy/sdk/shapes:define-input get-license-conversion-task-request
                                common-lisp:nil
                                ((license-conversion-task-id :target-type
                                  license-conversion-task-id :required
                                  common-lisp:t :member-name
                                  "LicenseConversionTaskId"))
                                (:shape-name "GetLicenseConversionTaskRequest"))

(smithy/sdk/shapes:define-output get-license-conversion-task-response
                                 common-lisp:nil
                                 ((license-conversion-task-id :target-type
                                   license-conversion-task-id :member-name
                                   "LicenseConversionTaskId")
                                  (resource-arn :target-type string
                                   :member-name "ResourceArn")
                                  (source-license-context :target-type
                                   license-conversion-context :member-name
                                   "SourceLicenseContext")
                                  (destination-license-context :target-type
                                   license-conversion-context :member-name
                                   "DestinationLicenseContext")
                                  (status-message :target-type string
                                   :member-name "StatusMessage")
                                  (status :target-type
                                   license-conversion-task-status :member-name
                                   "Status")
                                  (start-time :target-type date-time
                                   :member-name "StartTime")
                                  (license-conversion-time :target-type
                                   date-time :member-name
                                   "LicenseConversionTime")
                                  (end-time :target-type date-time :member-name
                                   "EndTime"))
                                 (:shape-name
                                  "GetLicenseConversionTaskResponse"))

(smithy/sdk/shapes:define-input get-license-manager-report-generator-request
                                common-lisp:nil
                                ((license-manager-report-generator-arn
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "LicenseManagerReportGeneratorArn"))
                                (:shape-name
                                 "GetLicenseManagerReportGeneratorRequest"))

(smithy/sdk/shapes:define-output get-license-manager-report-generator-response
                                 common-lisp:nil
                                 ((report-generator :target-type
                                   report-generator :member-name
                                   "ReportGenerator"))
                                 (:shape-name
                                  "GetLicenseManagerReportGeneratorResponse"))

(smithy/sdk/shapes:define-input get-license-request common-lisp:nil
                                ((license-arn :target-type arn :required
                                  common-lisp:t :member-name "LicenseArn")
                                 (version :target-type string :member-name
                                  "Version"))
                                (:shape-name "GetLicenseRequest"))

(smithy/sdk/shapes:define-output get-license-response common-lisp:nil
                                 ((license :target-type license :member-name
                                   "License"))
                                 (:shape-name "GetLicenseResponse"))

(smithy/sdk/shapes:define-input get-license-usage-request common-lisp:nil
                                ((license-arn :target-type arn :required
                                  common-lisp:t :member-name "LicenseArn"))
                                (:shape-name "GetLicenseUsageRequest"))

(smithy/sdk/shapes:define-output get-license-usage-response common-lisp:nil
                                 ((license-usage :target-type license-usage
                                   :member-name "LicenseUsage"))
                                 (:shape-name "GetLicenseUsageResponse"))

(smithy/sdk/shapes:define-input get-service-settings-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetServiceSettingsRequest"))

(smithy/sdk/shapes:define-output get-service-settings-response common-lisp:nil
                                 ((s3bucket-arn :target-type string
                                   :member-name "S3BucketArn")
                                  (sns-topic-arn :target-type string
                                   :member-name "SnsTopicArn")
                                  (organization-configuration :target-type
                                   organization-configuration :member-name
                                   "OrganizationConfiguration")
                                  (enable-cross-accounts-discovery :target-type
                                   box-boolean :member-name
                                   "EnableCrossAccountsDiscovery")
                                  (license-manager-resource-share-arn
                                   :target-type string :member-name
                                   "LicenseManagerResourceShareArn"))
                                 (:shape-name "GetServiceSettingsResponse"))

(smithy/sdk/shapes:define-structure grant common-lisp:nil
                                    ((grant-arn :target-type arn :required
                                      common-lisp:t :member-name "GrantArn")
                                     (grant-name :target-type string :required
                                      common-lisp:t :member-name "GrantName")
                                     (parent-arn :target-type arn :required
                                      common-lisp:t :member-name "ParentArn")
                                     (license-arn :target-type arn :required
                                      common-lisp:t :member-name "LicenseArn")
                                     (grantee-principal-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "GranteePrincipalArn")
                                     (home-region :target-type string :required
                                      common-lisp:t :member-name "HomeRegion")
                                     (grant-status :target-type grant-status
                                      :required common-lisp:t :member-name
                                      "GrantStatus")
                                     (status-reason :target-type
                                      status-reason-message :member-name
                                      "StatusReason")
                                     (version :target-type string :required
                                      common-lisp:t :member-name "Version")
                                     (granted-operations :target-type
                                      allowed-operation-list :required
                                      common-lisp:t :member-name
                                      "GrantedOperations")
                                     (options :target-type options :member-name
                                      "Options"))
                                    (:shape-name "Grant"))

(smithy/sdk/shapes:define-list grant-list :member grant)

(smithy/sdk/shapes:define-enum grant-status
    common-lisp:nil
  (:pending-workflow "PENDING_WORKFLOW")
  (:pending-accept "PENDING_ACCEPT")
  (:rejected "REJECTED")
  (:active "ACTIVE")
  (:failed-workflow "FAILED_WORKFLOW")
  (:deleted "DELETED")
  (:pending-delete "PENDING_DELETE")
  (:disabled "DISABLED")
  (:workflow-completed "WORKFLOW_COMPLETED"))

(smithy/sdk/shapes:define-structure granted-license common-lisp:nil
                                    ((license-arn :target-type arn :member-name
                                      "LicenseArn")
                                     (license-name :target-type string
                                      :member-name "LicenseName")
                                     (product-name :target-type string
                                      :member-name "ProductName")
                                     (product-sku :target-type string
                                      :member-name "ProductSKU")
                                     (issuer :target-type issuer-details
                                      :member-name "Issuer")
                                     (home-region :target-type string
                                      :member-name "HomeRegion")
                                     (status :target-type license-status
                                      :member-name "Status")
                                     (validity :target-type datetime-range
                                      :member-name "Validity")
                                     (beneficiary :target-type string
                                      :member-name "Beneficiary")
                                     (entitlements :target-type
                                      entitlement-list :member-name
                                      "Entitlements")
                                     (consumption-configuration :target-type
                                      consumption-configuration :member-name
                                      "ConsumptionConfiguration")
                                     (license-metadata :target-type
                                      metadata-list :member-name
                                      "LicenseMetadata")
                                     (create-time :target-type iso8601date-time
                                      :member-name "CreateTime")
                                     (version :target-type string :member-name
                                      "Version")
                                     (received-metadata :target-type
                                      received-metadata :member-name
                                      "ReceivedMetadata"))
                                    (:shape-name "GrantedLicense"))

(smithy/sdk/shapes:define-list granted-license-list :member granted-license)

(smithy/sdk/shapes:define-type iso8601date-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-name "InvalidParameterValueProvided")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-state-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InvalidResourceStateException")
                                (:error-name "InvalidResourceState")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure inventory-filter common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (condition :target-type
                                      inventory-filter-condition :required
                                      common-lisp:t :member-name "Condition")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "InventoryFilter"))

(smithy/sdk/shapes:define-enum inventory-filter-condition
    common-lisp:nil
  (:equals "EQUALS")
  (:not-equals "NOT_EQUALS")
  (:begins-with "BEGINS_WITH")
  (:contains "CONTAINS"))

(smithy/sdk/shapes:define-list inventory-filter-list :member inventory-filter)

(smithy/sdk/shapes:define-structure issuer common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (sign-key :target-type string :member-name
                                      "SignKey"))
                                    (:shape-name "Issuer"))

(smithy/sdk/shapes:define-structure issuer-details common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (sign-key :target-type string :member-name
                                      "SignKey")
                                     (key-fingerprint :target-type string
                                      :member-name "KeyFingerprint"))
                                    (:shape-name "IssuerDetails"))

(smithy/sdk/shapes:define-structure license common-lisp:nil
                                    ((license-arn :target-type arn :member-name
                                      "LicenseArn")
                                     (license-name :target-type string
                                      :member-name "LicenseName")
                                     (product-name :target-type string
                                      :member-name "ProductName")
                                     (product-sku :target-type string
                                      :member-name "ProductSKU")
                                     (issuer :target-type issuer-details
                                      :member-name "Issuer")
                                     (home-region :target-type string
                                      :member-name "HomeRegion")
                                     (status :target-type license-status
                                      :member-name "Status")
                                     (validity :target-type datetime-range
                                      :member-name "Validity")
                                     (beneficiary :target-type string
                                      :member-name "Beneficiary")
                                     (entitlements :target-type
                                      entitlement-list :member-name
                                      "Entitlements")
                                     (consumption-configuration :target-type
                                      consumption-configuration :member-name
                                      "ConsumptionConfiguration")
                                     (license-metadata :target-type
                                      metadata-list :member-name
                                      "LicenseMetadata")
                                     (create-time :target-type iso8601date-time
                                      :member-name "CreateTime")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "License"))

(smithy/sdk/shapes:define-structure license-configuration common-lisp:nil
                                    ((license-configuration-id :target-type
                                      string :member-name
                                      "LicenseConfigurationId")
                                     (license-configuration-arn :target-type
                                      string :member-name
                                      "LicenseConfigurationArn")
                                     (name :target-type string :member-name
                                      "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (license-counting-type :target-type
                                      license-counting-type :member-name
                                      "LicenseCountingType")
                                     (license-rules :target-type string-list
                                      :member-name "LicenseRules")
                                     (license-count :target-type box-long
                                      :member-name "LicenseCount")
                                     (license-count-hard-limit :target-type
                                      box-boolean :member-name
                                      "LicenseCountHardLimit")
                                     (disassociate-when-not-found :target-type
                                      box-boolean :member-name
                                      "DisassociateWhenNotFound")
                                     (consumed-licenses :target-type box-long
                                      :member-name "ConsumedLicenses")
                                     (status :target-type string :member-name
                                      "Status")
                                     (owner-account-id :target-type string
                                      :member-name "OwnerAccountId")
                                     (consumed-license-summary-list
                                      :target-type
                                      consumed-license-summary-list
                                      :member-name
                                      "ConsumedLicenseSummaryList")
                                     (managed-resource-summary-list
                                      :target-type
                                      managed-resource-summary-list
                                      :member-name
                                      "ManagedResourceSummaryList")
                                     (product-information-list :target-type
                                      product-information-list :member-name
                                      "ProductInformationList")
                                     (automated-discovery-information
                                      :target-type
                                      automated-discovery-information
                                      :member-name
                                      "AutomatedDiscoveryInformation"))
                                    (:shape-name "LicenseConfiguration"))

(smithy/sdk/shapes:define-structure license-configuration-association
                                    common-lisp:nil
                                    ((resource-arn :target-type string
                                      :member-name "ResourceArn")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (resource-owner-id :target-type string
                                      :member-name "ResourceOwnerId")
                                     (association-time :target-type date-time
                                      :member-name "AssociationTime")
                                     (ami-association-scope :target-type string
                                      :member-name "AmiAssociationScope"))
                                    (:shape-name
                                     "LicenseConfigurationAssociation"))

(smithy/sdk/shapes:define-list license-configuration-associations :member
                               license-configuration-association)

(smithy/sdk/shapes:define-enum license-configuration-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure license-configuration-usage common-lisp:nil
                                    ((resource-arn :target-type string
                                      :member-name "ResourceArn")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (resource-status :target-type string
                                      :member-name "ResourceStatus")
                                     (resource-owner-id :target-type string
                                      :member-name "ResourceOwnerId")
                                     (association-time :target-type date-time
                                      :member-name "AssociationTime")
                                     (consumed-licenses :target-type box-long
                                      :member-name "ConsumedLicenses"))
                                    (:shape-name "LicenseConfigurationUsage"))

(smithy/sdk/shapes:define-list license-configuration-usage-list :member
                               license-configuration-usage)

(smithy/sdk/shapes:define-list license-configurations :member
                               license-configuration)

(smithy/sdk/shapes:define-structure license-conversion-context common-lisp:nil
                                    ((usage-operation :target-type
                                      usage-operation :member-name
                                      "UsageOperation")
                                     (product-codes :target-type
                                      product-code-list :member-name
                                      "ProductCodes"))
                                    (:shape-name "LicenseConversionContext"))

(smithy/sdk/shapes:define-structure license-conversion-task common-lisp:nil
                                    ((license-conversion-task-id :target-type
                                      license-conversion-task-id :member-name
                                      "LicenseConversionTaskId")
                                     (resource-arn :target-type string
                                      :member-name "ResourceArn")
                                     (source-license-context :target-type
                                      license-conversion-context :member-name
                                      "SourceLicenseContext")
                                     (destination-license-context :target-type
                                      license-conversion-context :member-name
                                      "DestinationLicenseContext")
                                     (status :target-type
                                      license-conversion-task-status
                                      :member-name "Status")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (license-conversion-time :target-type
                                      date-time :member-name
                                      "LicenseConversionTime")
                                     (end-time :target-type date-time
                                      :member-name "EndTime"))
                                    (:shape-name "LicenseConversionTask"))

(smithy/sdk/shapes:define-type license-conversion-task-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum license-conversion-task-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list license-conversion-tasks :member
                               license-conversion-task)

(smithy/sdk/shapes:define-enum license-counting-type
    common-lisp:nil
  (:vcpu "vCPU")
  (:instance "Instance")
  (:core "Core")
  (:socket "Socket"))

(smithy/sdk/shapes:define-enum license-deletion-status
    common-lisp:nil
  (:pending-delete "PENDING_DELETE")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list license-list :member license)

(smithy/sdk/shapes:define-structure license-operation-failure common-lisp:nil
                                    ((resource-arn :target-type string
                                      :member-name "ResourceArn")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (failure-time :target-type date-time
                                      :member-name "FailureTime")
                                     (operation-name :target-type string
                                      :member-name "OperationName")
                                     (resource-owner-id :target-type string
                                      :member-name "ResourceOwnerId")
                                     (operation-requested-by :target-type
                                      string :member-name
                                      "OperationRequestedBy")
                                     (metadata-list :target-type metadata-list
                                      :member-name "MetadataList"))
                                    (:shape-name "LicenseOperationFailure"))

(smithy/sdk/shapes:define-list license-operation-failure-list :member
                               license-operation-failure)

(smithy/sdk/shapes:define-structure license-specification common-lisp:nil
                                    ((license-configuration-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "LicenseConfigurationArn")
                                     (ami-association-scope :target-type string
                                      :member-name "AmiAssociationScope"))
                                    (:shape-name "LicenseSpecification"))

(smithy/sdk/shapes:define-list license-specifications :member
                               license-specification)

(smithy/sdk/shapes:define-enum license-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:pending-available "PENDING_AVAILABLE")
  (:deactivated "DEACTIVATED")
  (:suspended "SUSPENDED")
  (:expired "EXPIRED")
  (:pending-delete "PENDING_DELETE")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure license-usage common-lisp:nil
                                    ((entitlement-usages :target-type
                                      entitlement-usage-list :member-name
                                      "EntitlementUsages"))
                                    (:shape-name "LicenseUsage"))

(smithy/sdk/shapes:define-error license-usage-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "LicenseUsageException")
                                (:error-name "LicenseUsageFailure")
                                (:error-code 412))

(smithy/sdk/shapes:define-input
 list-associations-for-license-configuration-request common-lisp:nil
 ((license-configuration-arn :target-type string :required common-lisp:t
   :member-name "LicenseConfigurationArn")
  (max-results :target-type box-integer :member-name "MaxResults")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListAssociationsForLicenseConfigurationRequest"))

(smithy/sdk/shapes:define-output
 list-associations-for-license-configuration-response common-lisp:nil
 ((license-configuration-associations :target-type
   license-configuration-associations :member-name
   "LicenseConfigurationAssociations")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListAssociationsForLicenseConfigurationResponse"))

(smithy/sdk/shapes:define-input list-distributed-grants-request common-lisp:nil
                                ((grant-arns :target-type arn-list :member-name
                                  "GrantArns")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name "ListDistributedGrantsRequest"))

(smithy/sdk/shapes:define-output list-distributed-grants-response
                                 common-lisp:nil
                                 ((grants :target-type grant-list :member-name
                                   "Grants")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListDistributedGrantsResponse"))

(smithy/sdk/shapes:define-input
 list-failures-for-license-configuration-operations-request common-lisp:nil
 ((license-configuration-arn :target-type string :required common-lisp:t
   :member-name "LicenseConfigurationArn")
  (max-results :target-type box-integer :member-name "MaxResults")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListFailuresForLicenseConfigurationOperationsRequest"))

(smithy/sdk/shapes:define-output
 list-failures-for-license-configuration-operations-response common-lisp:nil
 ((license-operation-failure-list :target-type license-operation-failure-list
   :member-name "LicenseOperationFailureList")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListFailuresForLicenseConfigurationOperationsResponse"))

(smithy/sdk/shapes:define-input list-license-configurations-request
                                common-lisp:nil
                                ((license-configuration-arns :target-type
                                  string-list :member-name
                                  "LicenseConfigurationArns")
                                 (max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name
                                 "ListLicenseConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-license-configurations-response
                                 common-lisp:nil
                                 ((license-configurations :target-type
                                   license-configurations :member-name
                                   "LicenseConfigurations")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListLicenseConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-license-conversion-tasks-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name
                                 "ListLicenseConversionTasksRequest"))

(smithy/sdk/shapes:define-output list-license-conversion-tasks-response
                                 common-lisp:nil
                                 ((license-conversion-tasks :target-type
                                   license-conversion-tasks :member-name
                                   "LicenseConversionTasks")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListLicenseConversionTasksResponse"))

(smithy/sdk/shapes:define-input list-license-manager-report-generators-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListLicenseManagerReportGeneratorsRequest"))

(smithy/sdk/shapes:define-output
 list-license-manager-report-generators-response common-lisp:nil
 ((report-generators :target-type report-generator-list :member-name
   "ReportGenerators")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListLicenseManagerReportGeneratorsResponse"))

(smithy/sdk/shapes:define-input
 list-license-specifications-for-resource-request common-lisp:nil
 ((resource-arn :target-type string :required common-lisp:t :member-name
   "ResourceArn")
  (max-results :target-type box-integer :member-name "MaxResults")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListLicenseSpecificationsForResourceRequest"))

(smithy/sdk/shapes:define-output
 list-license-specifications-for-resource-response common-lisp:nil
 ((license-specifications :target-type license-specifications :member-name
   "LicenseSpecifications")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListLicenseSpecificationsForResourceResponse"))

(smithy/sdk/shapes:define-input list-license-versions-request common-lisp:nil
                                ((license-arn :target-type arn :required
                                  common-lisp:t :member-name "LicenseArn")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name "ListLicenseVersionsRequest"))

(smithy/sdk/shapes:define-output list-license-versions-response common-lisp:nil
                                 ((licenses :target-type license-list
                                   :member-name "Licenses")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListLicenseVersionsResponse"))

(smithy/sdk/shapes:define-input list-licenses-request common-lisp:nil
                                ((license-arns :target-type arn-list
                                  :member-name "LicenseArns")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name "ListLicensesRequest"))

(smithy/sdk/shapes:define-output list-licenses-response common-lisp:nil
                                 ((licenses :target-type license-list
                                   :member-name "Licenses")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListLicensesResponse"))

(smithy/sdk/shapes:define-input list-received-grants-for-organization-request
                                common-lisp:nil
                                ((license-arn :target-type arn :required
                                  common-lisp:t :member-name "LicenseArn")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListReceivedGrantsForOrganizationRequest"))

(smithy/sdk/shapes:define-output list-received-grants-for-organization-response
                                 common-lisp:nil
                                 ((grants :target-type grant-list :member-name
                                   "Grants")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListReceivedGrantsForOrganizationResponse"))

(smithy/sdk/shapes:define-input list-received-grants-request common-lisp:nil
                                ((grant-arns :target-type arn-list :member-name
                                  "GrantArns")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name "ListReceivedGrantsRequest"))

(smithy/sdk/shapes:define-output list-received-grants-response common-lisp:nil
                                 ((grants :target-type grant-list :member-name
                                   "Grants")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListReceivedGrantsResponse"))

(smithy/sdk/shapes:define-input list-received-licenses-for-organization-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListReceivedLicensesForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 list-received-licenses-for-organization-response common-lisp:nil
 ((licenses :target-type granted-license-list :member-name "Licenses")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListReceivedLicensesForOrganizationResponse"))

(smithy/sdk/shapes:define-input list-received-licenses-request common-lisp:nil
                                ((license-arns :target-type arn-list
                                  :member-name "LicenseArns")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name "ListReceivedLicensesRequest"))

(smithy/sdk/shapes:define-output list-received-licenses-response
                                 common-lisp:nil
                                 ((licenses :target-type granted-license-list
                                   :member-name "Licenses")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListReceivedLicensesResponse"))

(smithy/sdk/shapes:define-input list-resource-inventory-request common-lisp:nil
                                ((max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (filters :target-type inventory-filter-list
                                  :member-name "Filters"))
                                (:shape-name "ListResourceInventoryRequest"))

(smithy/sdk/shapes:define-output list-resource-inventory-response
                                 common-lisp:nil
                                 ((resource-inventory-list :target-type
                                   resource-inventory-list :member-name
                                   "ResourceInventoryList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListResourceInventoryResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-tokens-request common-lisp:nil
                                ((token-ids :target-type string-list
                                  :member-name "TokenIds")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults"))
                                (:shape-name "ListTokensRequest"))

(smithy/sdk/shapes:define-output list-tokens-response common-lisp:nil
                                 ((tokens :target-type token-list :member-name
                                   "Tokens")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListTokensResponse"))

(smithy/sdk/shapes:define-input list-usage-for-license-configuration-request
                                common-lisp:nil
                                ((license-configuration-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "LicenseConfigurationArn")
                                 (max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name
                                 "ListUsageForLicenseConfigurationRequest"))

(smithy/sdk/shapes:define-output list-usage-for-license-configuration-response
                                 common-lisp:nil
                                 ((license-configuration-usage-list
                                   :target-type
                                   license-configuration-usage-list
                                   :member-name
                                   "LicenseConfigurationUsageList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListUsageForLicenseConfigurationResponse"))

(smithy/sdk/shapes:define-type location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure managed-resource-summary common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (association-count :target-type box-long
                                      :member-name "AssociationCount"))
                                    (:shape-name "ManagedResourceSummary"))

(smithy/sdk/shapes:define-list managed-resource-summary-list :member
                               managed-resource-summary)

(smithy/sdk/shapes:define-type max-size100 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list max-size3string-list :member string)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metadata common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "Metadata"))

(smithy/sdk/shapes:define-list metadata-list :member metadata)

(smithy/sdk/shapes:define-error no-entitlements-allowed-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "NoEntitlementsAllowedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure options common-lisp:nil
                                    ((activation-override-behavior :target-type
                                      activation-override-behavior :member-name
                                      "ActivationOverrideBehavior"))
                                    (:shape-name "Options"))

(smithy/sdk/shapes:define-structure organization-configuration common-lisp:nil
                                    ((enable-integration :target-type boolean
                                      :required common-lisp:t :member-name
                                      "EnableIntegration"))
                                    (:shape-name "OrganizationConfiguration"))

(smithy/sdk/shapes:define-list principal-arn-list :member arn)

(smithy/sdk/shapes:define-type product-code-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list product-code-list :member product-code-list-item)

(smithy/sdk/shapes:define-structure product-code-list-item common-lisp:nil
                                    ((product-code-id :target-type
                                      product-code-id :required common-lisp:t
                                      :member-name "ProductCodeId")
                                     (product-code-type :target-type
                                      product-code-type :required common-lisp:t
                                      :member-name "ProductCodeType"))
                                    (:shape-name "ProductCodeListItem"))

(smithy/sdk/shapes:define-enum product-code-type
    common-lisp:nil
  (:marketplace "marketplace"))

(smithy/sdk/shapes:define-structure product-information common-lisp:nil
                                    ((resource-type :target-type string
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (product-information-filter-list
                                      :target-type
                                      product-information-filter-list :required
                                      common-lisp:t :member-name
                                      "ProductInformationFilterList"))
                                    (:shape-name "ProductInformation"))

(smithy/sdk/shapes:define-structure product-information-filter common-lisp:nil
                                    ((product-information-filter-name
                                      :target-type string :required
                                      common-lisp:t :member-name
                                      "ProductInformationFilterName")
                                     (product-information-filter-value
                                      :target-type string-list :member-name
                                      "ProductInformationFilterValue")
                                     (product-information-filter-comparator
                                      :target-type string :required
                                      common-lisp:t :member-name
                                      "ProductInformationFilterComparator"))
                                    (:shape-name "ProductInformationFilter"))

(smithy/sdk/shapes:define-list product-information-filter-list :member
                               product-information-filter)

(smithy/sdk/shapes:define-list product-information-list :member
                               product-information)

(smithy/sdk/shapes:define-structure provisional-configuration common-lisp:nil
                                    ((max-time-to-live-in-minutes :target-type
                                      box-integer :required common-lisp:t
                                      :member-name "MaxTimeToLiveInMinutes"))
                                    (:shape-name "ProvisionalConfiguration"))

(smithy/sdk/shapes:define-error rate-limit-exceeded-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "RateLimitExceededException")
                                (:error-name "RateLimitExceeded")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure received-metadata common-lisp:nil
                                    ((received-status :target-type
                                      received-status :member-name
                                      "ReceivedStatus")
                                     (received-status-reason :target-type
                                      status-reason-message :member-name
                                      "ReceivedStatusReason")
                                     (allowed-operations :target-type
                                      allowed-operation-list :member-name
                                      "AllowedOperations"))
                                    (:shape-name "ReceivedMetadata"))

(smithy/sdk/shapes:define-enum received-status
    common-lisp:nil
  (:pending-workflow "PENDING_WORKFLOW")
  (:pending-accept "PENDING_ACCEPT")
  (:rejected "REJECTED")
  (:active "ACTIVE")
  (:failed-workflow "FAILED_WORKFLOW")
  (:deleted "DELETED")
  (:disabled "DISABLED")
  (:workflow-completed "WORKFLOW_COMPLETED"))

(smithy/sdk/shapes:define-error redirect-exception common-lisp:nil
                                ((location :target-type location :member-name
                                  "Location" :http-header "Location")
                                 (message :target-type message :member-name
                                  "Message"))
                                (:shape-name "RedirectException")
                                (:error-code 308))

(smithy/sdk/shapes:define-input reject-grant-request common-lisp:nil
                                ((grant-arn :target-type arn :required
                                  common-lisp:t :member-name "GrantArn"))
                                (:shape-name "RejectGrantRequest"))

(smithy/sdk/shapes:define-output reject-grant-response common-lisp:nil
                                 ((grant-arn :target-type arn :member-name
                                   "GrantArn")
                                  (status :target-type grant-status
                                   :member-name "Status")
                                  (version :target-type string :member-name
                                   "Version"))
                                 (:shape-name "RejectGrantResponse"))

(smithy/sdk/shapes:define-enum renew-type
    common-lisp:nil
  (:none "None")
  (:weekly "Weekly")
  (:monthly "Monthly"))

(smithy/sdk/shapes:define-structure report-context common-lisp:nil
                                    ((license-configuration-arns :target-type
                                      arn-list :required common-lisp:t
                                      :member-name "licenseConfigurationArns"))
                                    (:shape-name "ReportContext"))

(smithy/sdk/shapes:define-structure report-frequency common-lisp:nil
                                    ((value :target-type integer :member-name
                                      "value")
                                     (period :target-type report-frequency-type
                                      :member-name "period"))
                                    (:shape-name "ReportFrequency"))

(smithy/sdk/shapes:define-enum report-frequency-type
    common-lisp:nil
  (:day "DAY")
  (:week "WEEK")
  (:month "MONTH"))

(smithy/sdk/shapes:define-structure report-generator common-lisp:nil
                                    ((report-generator-name :target-type string
                                      :member-name "ReportGeneratorName")
                                     (report-type :target-type report-type-list
                                      :member-name "ReportType")
                                     (report-context :target-type
                                      report-context :member-name
                                      "ReportContext")
                                     (report-frequency :target-type
                                      report-frequency :member-name
                                      "ReportFrequency")
                                     (license-manager-report-generator-arn
                                      :target-type string :member-name
                                      "LicenseManagerReportGeneratorArn")
                                     (last-run-status :target-type string
                                      :member-name "LastRunStatus")
                                     (last-run-failure-reason :target-type
                                      string :member-name
                                      "LastRunFailureReason")
                                     (last-report-generation-time :target-type
                                      string :member-name
                                      "LastReportGenerationTime")
                                     (report-creator-account :target-type
                                      string :member-name
                                      "ReportCreatorAccount")
                                     (description :target-type string
                                      :member-name "Description")
                                     (s3location :target-type s3location
                                      :member-name "S3Location")
                                     (create-time :target-type string
                                      :member-name "CreateTime")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "ReportGenerator"))

(smithy/sdk/shapes:define-list report-generator-list :member report-generator)

(smithy/sdk/shapes:define-type report-generator-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum report-type
    common-lisp:nil
  (:license-configuration-summary-report "LicenseConfigurationSummaryReport")
  (:license-configuration-usage-report "LicenseConfigurationUsageReport"))

(smithy/sdk/shapes:define-list report-type-list :member report-type)

(smithy/sdk/shapes:define-structure resource-inventory common-lisp:nil
                                    ((resource-id :target-type string
                                      :member-name "ResourceId")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (resource-arn :target-type string
                                      :member-name "ResourceArn")
                                     (platform :target-type string :member-name
                                      "Platform")
                                     (platform-version :target-type string
                                      :member-name "PlatformVersion")
                                     (resource-owning-account-id :target-type
                                      string :member-name
                                      "ResourceOwningAccountId"))
                                    (:shape-name "ResourceInventory"))

(smithy/sdk/shapes:define-list resource-inventory-list :member
                               resource-inventory)

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-name "ResourceLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "InvalidResource.NotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:ec2-instance "EC2_INSTANCE")
  (:ec2-host "EC2_HOST")
  (:ec2-ami "EC2_AMI")
  (:rds "RDS")
  (:systems-manager-managed-instance "SYSTEMS_MANAGER_MANAGED_INSTANCE"))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type string :member-name
                                      "bucket")
                                     (key-prefix :target-type string
                                      :member-name "keyPrefix"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-error server-internal-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ServerInternalException")
                                (:error-name "InternalError") (:error-code 500))

(smithy/sdk/shapes:define-type signed-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-reason-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-key-list :member string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-structure token-data common-lisp:nil
                                    ((token-id :target-type string :member-name
                                      "TokenId")
                                     (token-type :target-type string
                                      :member-name "TokenType")
                                     (license-arn :target-type string
                                      :member-name "LicenseArn")
                                     (expiration-time :target-type
                                      iso8601date-time :member-name
                                      "ExpirationTime")
                                     (token-properties :target-type
                                      max-size3string-list :member-name
                                      "TokenProperties")
                                     (role-arns :target-type arn-list
                                      :member-name "RoleArns")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "TokenData"))

(smithy/sdk/shapes:define-list token-list :member token-data)

(smithy/sdk/shapes:define-type token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum token-type
    common-lisp:nil
  (:refresh-token "REFRESH_TOKEN"))

(smithy/sdk/shapes:define-error unsupported-digital-signature-method-exception
                                common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name
                                 "UnsupportedDigitalSignatureMethodException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-license-configuration-request
                                common-lisp:nil
                                ((license-configuration-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "LicenseConfigurationArn")
                                 (license-configuration-status :target-type
                                  license-configuration-status :member-name
                                  "LicenseConfigurationStatus")
                                 (license-rules :target-type string-list
                                  :member-name "LicenseRules")
                                 (license-count :target-type box-long
                                  :member-name "LicenseCount")
                                 (license-count-hard-limit :target-type
                                  box-boolean :member-name
                                  "LicenseCountHardLimit")
                                 (name :target-type string :member-name "Name")
                                 (description :target-type string :member-name
                                  "Description")
                                 (product-information-list :target-type
                                  product-information-list :member-name
                                  "ProductInformationList")
                                 (disassociate-when-not-found :target-type
                                  box-boolean :member-name
                                  "DisassociateWhenNotFound"))
                                (:shape-name
                                 "UpdateLicenseConfigurationRequest"))

(smithy/sdk/shapes:define-output update-license-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateLicenseConfigurationResponse"))

(smithy/sdk/shapes:define-input update-license-manager-report-generator-request
                                common-lisp:nil
                                ((license-manager-report-generator-arn
                                  :target-type string :required common-lisp:t
                                  :member-name
                                  "LicenseManagerReportGeneratorArn")
                                 (report-generator-name :target-type
                                  report-generator-name :required common-lisp:t
                                  :member-name "ReportGeneratorName")
                                 (type :target-type report-type-list :required
                                  common-lisp:t :member-name "Type")
                                 (report-context :target-type report-context
                                  :required common-lisp:t :member-name
                                  "ReportContext")
                                 (report-frequency :target-type
                                  report-frequency :required common-lisp:t
                                  :member-name "ReportFrequency")
                                 (client-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "ClientToken")
                                 (description :target-type string :member-name
                                  "Description"))
                                (:shape-name
                                 "UpdateLicenseManagerReportGeneratorRequest"))

(smithy/sdk/shapes:define-output
 update-license-manager-report-generator-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateLicenseManagerReportGeneratorResponse"))

(smithy/sdk/shapes:define-input
 update-license-specifications-for-resource-request common-lisp:nil
 ((resource-arn :target-type string :required common-lisp:t :member-name
   "ResourceArn")
  (add-license-specifications :target-type license-specifications :member-name
   "AddLicenseSpecifications")
  (remove-license-specifications :target-type license-specifications
   :member-name "RemoveLicenseSpecifications"))
 (:shape-name "UpdateLicenseSpecificationsForResourceRequest"))

(smithy/sdk/shapes:define-output
 update-license-specifications-for-resource-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateLicenseSpecificationsForResourceResponse"))

(smithy/sdk/shapes:define-input update-service-settings-request common-lisp:nil
                                ((s3bucket-arn :target-type string :member-name
                                  "S3BucketArn")
                                 (sns-topic-arn :target-type string
                                  :member-name "SnsTopicArn")
                                 (organization-configuration :target-type
                                  organization-configuration :member-name
                                  "OrganizationConfiguration")
                                 (enable-cross-accounts-discovery :target-type
                                  box-boolean :member-name
                                  "EnableCrossAccountsDiscovery"))
                                (:shape-name "UpdateServiceSettingsRequest"))

(smithy/sdk/shapes:define-output update-service-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateServiceSettingsResponse"))

(smithy/sdk/shapes:define-type usage-operation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation accept-grant :shape-name "AcceptGrant"
                                       :input accept-grant-request :output
                                       accept-grant-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation check-in-license :shape-name
                                       "CheckInLicense" :input
                                       check-in-license-request :output
                                       check-in-license-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        conflict-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation checkout-borrow-license :shape-name
                                       "CheckoutBorrowLicense" :input
                                       checkout-borrow-license-request :output
                                       checkout-borrow-license-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        entitlement-not-allowed-exception
                                        invalid-parameter-value-exception
                                        no-entitlements-allowed-exception
                                        rate-limit-exceeded-exception
                                        redirect-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        unsupported-digital-signature-method-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation checkout-license :shape-name
                                       "CheckoutLicense" :input
                                       checkout-license-request :output
                                       checkout-license-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        no-entitlements-allowed-exception
                                        rate-limit-exceeded-exception
                                        redirect-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        unsupported-digital-signature-method-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-grant :shape-name "CreateGrant"
                                       :input create-grant-request :output
                                       create-grant-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-grant-version :shape-name
                                       "CreateGrantVersion" :input
                                       create-grant-version-request :output
                                       create-grant-version-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-license :shape-name
                                       "CreateLicense" :input
                                       create-license-request :output
                                       create-license-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        redirect-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-license-configuration :shape-name
                                       "CreateLicenseConfiguration" :input
                                       create-license-configuration-request
                                       :output
                                       create-license-configuration-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation
 create-license-conversion-task-for-resource :shape-name
 "CreateLicenseConversionTaskForResource" :input
 create-license-conversion-task-for-resource-request :output
 create-license-conversion-task-for-resource-response :errors
 (access-denied-exception authorization-exception
  invalid-parameter-value-exception rate-limit-exceeded-exception
  server-internal-exception validation-exception))

(smithy/sdk/operation:define-operation create-license-manager-report-generator
                                       :shape-name
                                       "CreateLicenseManagerReportGenerator"
                                       :input
                                       create-license-manager-report-generator-request
                                       :output
                                       create-license-manager-report-generator-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-license-version :shape-name
                                       "CreateLicenseVersion" :input
                                       create-license-version-request :output
                                       create-license-version-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        conflict-exception
                                        rate-limit-exceeded-exception
                                        redirect-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-token :shape-name "CreateToken"
                                       :input create-token-request :output
                                       create-token-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        rate-limit-exceeded-exception
                                        redirect-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-grant :shape-name "DeleteGrant"
                                       :input delete-grant-request :output
                                       delete-grant-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-license :shape-name
                                       "DeleteLicense" :input
                                       delete-license-request :output
                                       delete-license-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        conflict-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        redirect-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-license-configuration :shape-name
                                       "DeleteLicenseConfiguration" :input
                                       delete-license-configuration-request
                                       :output
                                       delete-license-configuration-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation delete-license-manager-report-generator
                                       :shape-name
                                       "DeleteLicenseManagerReportGenerator"
                                       :input
                                       delete-license-manager-report-generator-request
                                       :output
                                       delete-license-manager-report-generator-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-token :shape-name "DeleteToken"
                                       :input delete-token-request :output
                                       delete-token-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        rate-limit-exceeded-exception
                                        redirect-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation extend-license-consumption :shape-name
                                       "ExtendLicenseConsumption" :input
                                       extend-license-consumption-request
                                       :output
                                       extend-license-consumption-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-access-token :shape-name
                                       "GetAccessToken" :input
                                       get-access-token-request :output
                                       get-access-token-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-grant :shape-name "GetGrant" :input
                                       get-grant-request :output
                                       get-grant-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-license :shape-name "GetLicense"
                                       :input get-license-request :output
                                       get-license-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-license-configuration :shape-name
                                       "GetLicenseConfiguration" :input
                                       get-license-configuration-request
                                       :output
                                       get-license-configuration-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation get-license-conversion-task :shape-name
                                       "GetLicenseConversionTask" :input
                                       get-license-conversion-task-request
                                       :output
                                       get-license-conversion-task-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation get-license-manager-report-generator
                                       :shape-name
                                       "GetLicenseManagerReportGenerator"
                                       :input
                                       get-license-manager-report-generator-request
                                       :output
                                       get-license-manager-report-generator-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-license-usage :shape-name
                                       "GetLicenseUsage" :input
                                       get-license-usage-request :output
                                       get-license-usage-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-service-settings :shape-name
                                       "GetServiceSettings" :input
                                       get-service-settings-request :output
                                       get-service-settings-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation
 list-associations-for-license-configuration :shape-name
 "ListAssociationsForLicenseConfiguration" :input
 list-associations-for-license-configuration-request :output
 list-associations-for-license-configuration-response :errors
 (access-denied-exception authorization-exception
  filter-limit-exceeded-exception invalid-parameter-value-exception
  rate-limit-exceeded-exception server-internal-exception))

(smithy/sdk/operation:define-operation list-distributed-grants :shape-name
                                       "ListDistributedGrants" :input
                                       list-distributed-grants-request :output
                                       list-distributed-grants-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 list-failures-for-license-configuration-operations :shape-name
 "ListFailuresForLicenseConfigurationOperations" :input
 list-failures-for-license-configuration-operations-request :output
 list-failures-for-license-configuration-operations-response :errors
 (access-denied-exception authorization-exception
  invalid-parameter-value-exception rate-limit-exceeded-exception
  server-internal-exception))

(smithy/sdk/operation:define-operation list-license-configurations :shape-name
                                       "ListLicenseConfigurations" :input
                                       list-license-configurations-request
                                       :output
                                       list-license-configurations-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        filter-limit-exceeded-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation list-license-conversion-tasks
                                       :shape-name "ListLicenseConversionTasks"
                                       :input
                                       list-license-conversion-tasks-request
                                       :output
                                       list-license-conversion-tasks-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation list-license-manager-report-generators
                                       :shape-name
                                       "ListLicenseManagerReportGenerators"
                                       :input
                                       list-license-manager-report-generators-request
                                       :output
                                       list-license-manager-report-generators-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-license-specifications-for-resource
                                       :shape-name
                                       "ListLicenseSpecificationsForResource"
                                       :input
                                       list-license-specifications-for-resource-request
                                       :output
                                       list-license-specifications-for-resource-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation list-license-versions :shape-name
                                       "ListLicenseVersions" :input
                                       list-license-versions-request :output
                                       list-license-versions-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation list-licenses :shape-name "ListLicenses"
                                       :input list-licenses-request :output
                                       list-licenses-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-received-grants :shape-name
                                       "ListReceivedGrants" :input
                                       list-received-grants-request :output
                                       list-received-grants-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-received-grants-for-organization
                                       :shape-name
                                       "ListReceivedGrantsForOrganization"
                                       :input
                                       list-received-grants-for-organization-request
                                       :output
                                       list-received-grants-for-organization-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-received-licenses :shape-name
                                       "ListReceivedLicenses" :input
                                       list-received-licenses-request :output
                                       list-received-licenses-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-received-licenses-for-organization
                                       :shape-name
                                       "ListReceivedLicensesForOrganization"
                                       :input
                                       list-received-licenses-for-organization-request
                                       :output
                                       list-received-licenses-for-organization-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-resource-inventory :shape-name
                                       "ListResourceInventory" :input
                                       list-resource-inventory-request :output
                                       list-resource-inventory-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        failed-dependency-exception
                                        filter-limit-exceeded-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation list-tokens :shape-name "ListTokens"
                                       :input list-tokens-request :output
                                       list-tokens-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-usage-for-license-configuration
                                       :shape-name
                                       "ListUsageForLicenseConfiguration"
                                       :input
                                       list-usage-for-license-configuration-request
                                       :output
                                       list-usage-for-license-configuration-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        filter-limit-exceeded-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation reject-grant :shape-name "RejectGrant"
                                       :input reject-grant-request :output
                                       reject-grant-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation update-license-configuration :shape-name
                                       "UpdateLicenseConfiguration" :input
                                       update-license-configuration-request
                                       :output
                                       update-license-configuration-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        conflict-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        server-internal-exception))

(smithy/sdk/operation:define-operation update-license-manager-report-generator
                                       :shape-name
                                       "UpdateLicenseManagerReportGenerator"
                                       :input
                                       update-license-manager-report-generator-request
                                       :output
                                       update-license-manager-report-generator-response
                                       :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-internal-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 update-license-specifications-for-resource :shape-name
 "UpdateLicenseSpecificationsForResource" :input
 update-license-specifications-for-resource-request :output
 update-license-specifications-for-resource-response :errors
 (access-denied-exception authorization-exception conflict-exception
  invalid-parameter-value-exception invalid-resource-state-exception
  license-usage-exception rate-limit-exceeded-exception
  server-internal-exception))

(smithy/sdk/operation:define-operation update-service-settings :shape-name
                                       "UpdateServiceSettings" :input
                                       update-service-settings-request :output
                                       update-service-settings-response :errors
                                       (access-denied-exception
                                        authorization-exception
                                        invalid-parameter-value-exception
                                        rate-limit-exceeded-exception
                                        server-internal-exception))
