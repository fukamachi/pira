(uiop/package:define-package #:pira/taxsettings (:use)
                             (:export #:account-details #:account-details-list
                              #:account-id #:account-ids #:account-meta-data
                              #:account-name #:additional-info-request
                              #:additional-info-response #:address
                              #:address-line1 #:address-line2 #:address-line3
                              #:address-role-map #:address-role-type
                              #:authorities #:authority
                              #:batch-delete-tax-registration
                              #:batch-delete-tax-registration-error
                              #:batch-delete-tax-registration-errors
                              #:batch-get-tax-exemptions
                              #:batch-put-tax-registration
                              #:batch-put-tax-registration-error
                              #:batch-put-tax-registration-errors #:boolean
                              #:brazil-additional-info
                              #:business-registration-number
                              #:business-representative-name
                              #:canada-additional-info
                              #:canada-provincial-sales-tax-id-string
                              #:canada-quebec-sales-tax-number-string
                              #:canada-retail-sales-tax-number-string
                              #:ccm-code #:certified-email-id #:cig-number
                              #:city #:contracting-authority-code
                              #:country-code #:cup-number #:date-of-birth
                              #:date-string #:decision-number
                              #:delete-supplemental-tax-registration
                              #:delete-tax-registration #:destination-file-path
                              #:destination-s3location #:display-name
                              #:district #:egypt-additional-info
                              #:electronic-transaction-code-number
                              #:enterprise-identification-number
                              #:entity-exemption-account-status #:error-code
                              #:error-message #:estonia-additional-info
                              #:exemption-certificate #:exemption-document-name
                              #:exemption-file-blob #:field-name #:file-blob
                              #:generic-string #:georgia-additional-info
                              #:get-tax-exemption-types #:get-tax-inheritance
                              #:get-tax-registration
                              #:get-tax-registration-document
                              #:greece-additional-info #:heritage-status
                              #:india-additional-info
                              #:individual-registration-number
                              #:indonesia-additional-info
                              #:indonesia-tax-registration-number-type
                              #:industries #:inheritance-obtained-reason
                              #:israel-additional-info #:israel-customer-type
                              #:israel-dealer-type #:italy-additional-info
                              #:item-of-business #:jurisdiction
                              #:kenya-additional-info #:kep-email-id
                              #:legal-name #:legal-nature-code
                              #:line-of-business
                              #:list-supplemental-tax-registrations
                              #:list-tax-exemptions #:list-tax-registrations
                              #:malaysia-additional-info
                              #:malaysia-service-tax-code
                              #:malaysia-service-tax-codes-list #:max-results
                              #:pagination-token-string #:pan
                              #:payment-voucher-number #:person-type
                              #:poland-additional-info #:postal-code
                              #:ppn-exception-designation-code
                              #:put-supplemental-tax-registration
                              #:put-tax-exemption #:put-tax-inheritance
                              #:put-tax-registration #:registration-id
                              #:registration-type #:registry-commercial-code
                              #:romania-additional-info #:s3bucket-name #:s3key
                              #:s3prefix #:saudi-arabia-additional-info
                              #:saudi-arabia-tax-registration-number-type
                              #:sdi-account-id #:secondary-tax-id #:sector
                              #:seller #:source-s3location
                              #:south-korea-additional-info
                              #:spain-additional-info #:state
                              #:supplemental-tax-registration
                              #:supplemental-tax-registration-entry
                              #:supplemental-tax-registration-list
                              #:supplemental-tax-registration-type #:tax-code
                              #:tax-document-access-token
                              #:tax-document-metadata #:tax-document-metadatas
                              #:tax-document-name #:tax-exemption
                              #:tax-exemption-details
                              #:tax-exemption-details-map #:tax-exemption-type
                              #:tax-exemption-types #:tax-exemptions
                              #:tax-information-number
                              #:tax-inheritance-details #:tax-office
                              #:tax-registration #:tax-registration-doc-file
                              #:tax-registration-document
                              #:tax-registration-documents
                              #:tax-registration-entry
                              #:tax-registration-number-type
                              #:tax-registration-status #:tax-registration-type
                              #:tax-registration-with-jurisdiction
                              #:tax-settings #:turkey-additional-info
                              #:ukraine-additional-info #:ukraine-trn-type
                              #:unique-identification-number #:url
                              #:uzbekistan-additional-info
                              #:uzbekistan-tax-registration-number-type
                              #:validation-exception-error-code
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:vat-registration-number #:verification-details
                              #:vietnam-additional-info))
(common-lisp:in-package #:pira/taxsettings)

(smithy/sdk/service:define-service tax-settings :shape-name "TaxSettings"
                                   :version "2018-05-10" :title "Tax Settings"
                                   :operations
                                   '(batch-delete-tax-registration
                                     batch-get-tax-exemptions
                                     batch-put-tax-registration
                                     delete-supplemental-tax-registration
                                     delete-tax-registration
                                     get-tax-exemption-types
                                     get-tax-inheritance get-tax-registration
                                     get-tax-registration-document
                                     list-supplemental-tax-registrations
                                     list-tax-exemptions list-tax-registrations
                                     put-supplemental-tax-registration
                                     put-tax-exemption put-tax-inheritance
                                     put-tax-registration)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "TaxSettings")
                                      ("arnNamespace" . "tax")
                                      ("cloudTrailEventSource"
                                       . "tax.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "tax"))
                                     ("aws.endpoints#standardPartitionalEndpoints"
                                      ("endpointPatternType"
                                       . "service_region_dnsSuffix"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-structure account-details common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (tax-registration :target-type
                                      tax-registration-with-jurisdiction
                                      :member-name "taxRegistration")
                                     (tax-inheritance-details :target-type
                                      tax-inheritance-details :member-name
                                      "taxInheritanceDetails")
                                     (account-meta-data :target-type
                                      account-meta-data :member-name
                                      "accountMetaData"))
                                    (:shape-name "AccountDetails"))

(smithy/sdk/shapes:define-list account-details-list :member account-details)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-ids :member account-id)

(smithy/sdk/shapes:define-structure account-meta-data common-lisp:nil
                                    ((account-name :target-type account-name
                                      :member-name "accountName")
                                     (seller :target-type seller :member-name
                                      "seller")
                                     (address :target-type address :member-name
                                      "address")
                                     (address-type :target-type
                                      address-role-type :member-name
                                      "addressType")
                                     (address-role-map :target-type
                                      address-role-map :member-name
                                      "addressRoleMap"))
                                    (:shape-name "AccountMetaData"))

(smithy/sdk/shapes:define-type account-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure additional-info-request common-lisp:nil
                                    ((malaysia-additional-info :target-type
                                      malaysia-additional-info :member-name
                                      "malaysiaAdditionalInfo")
                                     (israel-additional-info :target-type
                                      israel-additional-info :member-name
                                      "israelAdditionalInfo")
                                     (estonia-additional-info :target-type
                                      estonia-additional-info :member-name
                                      "estoniaAdditionalInfo")
                                     (canada-additional-info :target-type
                                      canada-additional-info :member-name
                                      "canadaAdditionalInfo")
                                     (spain-additional-info :target-type
                                      spain-additional-info :member-name
                                      "spainAdditionalInfo")
                                     (kenya-additional-info :target-type
                                      kenya-additional-info :member-name
                                      "kenyaAdditionalInfo")
                                     (south-korea-additional-info :target-type
                                      south-korea-additional-info :member-name
                                      "southKoreaAdditionalInfo")
                                     (turkey-additional-info :target-type
                                      turkey-additional-info :member-name
                                      "turkeyAdditionalInfo")
                                     (georgia-additional-info :target-type
                                      georgia-additional-info :member-name
                                      "georgiaAdditionalInfo")
                                     (italy-additional-info :target-type
                                      italy-additional-info :member-name
                                      "italyAdditionalInfo")
                                     (romania-additional-info :target-type
                                      romania-additional-info :member-name
                                      "romaniaAdditionalInfo")
                                     (ukraine-additional-info :target-type
                                      ukraine-additional-info :member-name
                                      "ukraineAdditionalInfo")
                                     (poland-additional-info :target-type
                                      poland-additional-info :member-name
                                      "polandAdditionalInfo")
                                     (saudi-arabia-additional-info :target-type
                                      saudi-arabia-additional-info :member-name
                                      "saudiArabiaAdditionalInfo")
                                     (indonesia-additional-info :target-type
                                      indonesia-additional-info :member-name
                                      "indonesiaAdditionalInfo")
                                     (vietnam-additional-info :target-type
                                      vietnam-additional-info :member-name
                                      "vietnamAdditionalInfo")
                                     (egypt-additional-info :target-type
                                      egypt-additional-info :member-name
                                      "egyptAdditionalInfo")
                                     (greece-additional-info :target-type
                                      greece-additional-info :member-name
                                      "greeceAdditionalInfo")
                                     (uzbekistan-additional-info :target-type
                                      uzbekistan-additional-info :member-name
                                      "uzbekistanAdditionalInfo"))
                                    (:shape-name "AdditionalInfoRequest"))

(smithy/sdk/shapes:define-structure additional-info-response common-lisp:nil
                                    ((malaysia-additional-info :target-type
                                      malaysia-additional-info :member-name
                                      "malaysiaAdditionalInfo")
                                     (israel-additional-info :target-type
                                      israel-additional-info :member-name
                                      "israelAdditionalInfo")
                                     (estonia-additional-info :target-type
                                      estonia-additional-info :member-name
                                      "estoniaAdditionalInfo")
                                     (canada-additional-info :target-type
                                      canada-additional-info :member-name
                                      "canadaAdditionalInfo")
                                     (brazil-additional-info :target-type
                                      brazil-additional-info :member-name
                                      "brazilAdditionalInfo")
                                     (spain-additional-info :target-type
                                      spain-additional-info :member-name
                                      "spainAdditionalInfo")
                                     (kenya-additional-info :target-type
                                      kenya-additional-info :member-name
                                      "kenyaAdditionalInfo")
                                     (south-korea-additional-info :target-type
                                      south-korea-additional-info :member-name
                                      "southKoreaAdditionalInfo")
                                     (turkey-additional-info :target-type
                                      turkey-additional-info :member-name
                                      "turkeyAdditionalInfo")
                                     (georgia-additional-info :target-type
                                      georgia-additional-info :member-name
                                      "georgiaAdditionalInfo")
                                     (italy-additional-info :target-type
                                      italy-additional-info :member-name
                                      "italyAdditionalInfo")
                                     (romania-additional-info :target-type
                                      romania-additional-info :member-name
                                      "romaniaAdditionalInfo")
                                     (ukraine-additional-info :target-type
                                      ukraine-additional-info :member-name
                                      "ukraineAdditionalInfo")
                                     (poland-additional-info :target-type
                                      poland-additional-info :member-name
                                      "polandAdditionalInfo")
                                     (saudi-arabia-additional-info :target-type
                                      saudi-arabia-additional-info :member-name
                                      "saudiArabiaAdditionalInfo")
                                     (india-additional-info :target-type
                                      india-additional-info :member-name
                                      "indiaAdditionalInfo")
                                     (indonesia-additional-info :target-type
                                      indonesia-additional-info :member-name
                                      "indonesiaAdditionalInfo")
                                     (vietnam-additional-info :target-type
                                      vietnam-additional-info :member-name
                                      "vietnamAdditionalInfo")
                                     (egypt-additional-info :target-type
                                      egypt-additional-info :member-name
                                      "egyptAdditionalInfo")
                                     (greece-additional-info :target-type
                                      greece-additional-info :member-name
                                      "greeceAdditionalInfo")
                                     (uzbekistan-additional-info :target-type
                                      uzbekistan-additional-info :member-name
                                      "uzbekistanAdditionalInfo"))
                                    (:shape-name "AdditionalInfoResponse"))

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((address-line1 :target-type address-line1
                                      :required common-lisp:t :member-name
                                      "addressLine1")
                                     (address-line2 :target-type address-line2
                                      :member-name "addressLine2")
                                     (address-line3 :target-type address-line3
                                      :member-name "addressLine3")
                                     (district-or-county :target-type district
                                      :member-name "districtOrCounty")
                                     (city :target-type city :required
                                      common-lisp:t :member-name "city")
                                     (state-or-region :target-type state
                                      :member-name "stateOrRegion")
                                     (postal-code :target-type postal-code
                                      :required common-lisp:t :member-name
                                      "postalCode")
                                     (country-code :target-type country-code
                                      :required common-lisp:t :member-name
                                      "countryCode"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-type address-line1 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type address-line2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type address-line3 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map address-role-map :key address-role-type :value
                              jurisdiction)

(smithy/sdk/shapes:define-enum address-role-type
    common-lisp:nil
  (:tax-address "TaxAddress")
  (:billing-address "BillingAddress")
  (:contact-address "ContactAddress"))

(smithy/sdk/shapes:define-error attachment-upload-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AttachmentUploadException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list authorities :member authority)

(smithy/sdk/shapes:define-structure authority common-lisp:nil
                                    ((country :target-type country-code
                                      :required common-lisp:t :member-name
                                      "country")
                                     (state :target-type state :member-name
                                      "state"))
                                    (:shape-name "Authority"))

(smithy/sdk/shapes:define-structure batch-delete-tax-registration-error
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "message")
                                     (code :target-type error-code :member-name
                                      "code"))
                                    (:shape-name
                                     "BatchDeleteTaxRegistrationError"))

(smithy/sdk/shapes:define-list batch-delete-tax-registration-errors :member
                               batch-delete-tax-registration-error)

(smithy/sdk/shapes:define-input batch-delete-tax-registration-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "accountIds"))
                                (:shape-name
                                 "BatchDeleteTaxRegistrationRequest"))

(smithy/sdk/shapes:define-output batch-delete-tax-registration-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-delete-tax-registration-errors
                                   :required common-lisp:t :member-name
                                   "errors"))
                                 (:shape-name
                                  "BatchDeleteTaxRegistrationResponse"))

(smithy/sdk/shapes:define-input batch-get-tax-exemptions-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "accountIds"))
                                (:shape-name "BatchGetTaxExemptionsRequest"))

(smithy/sdk/shapes:define-output batch-get-tax-exemptions-response
                                 common-lisp:nil
                                 ((tax-exemption-details-map :target-type
                                   tax-exemption-details-map :member-name
                                   "taxExemptionDetailsMap")
                                  (failed-accounts :target-type account-ids
                                   :member-name "failedAccounts"))
                                 (:shape-name "BatchGetTaxExemptionsResponse"))

(smithy/sdk/shapes:define-structure batch-put-tax-registration-error
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "message")
                                     (code :target-type error-code :member-name
                                      "code"))
                                    (:shape-name
                                     "BatchPutTaxRegistrationError"))

(smithy/sdk/shapes:define-list batch-put-tax-registration-errors :member
                               batch-put-tax-registration-error)

(smithy/sdk/shapes:define-input batch-put-tax-registration-request
                                common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "accountIds")
                                 (tax-registration-entry :target-type
                                  tax-registration-entry :required
                                  common-lisp:t :member-name
                                  "taxRegistrationEntry"))
                                (:shape-name "BatchPutTaxRegistrationRequest"))

(smithy/sdk/shapes:define-output batch-put-tax-registration-response
                                 common-lisp:nil
                                 ((status :target-type tax-registration-status
                                   :member-name "status")
                                  (errors :target-type
                                   batch-put-tax-registration-errors :required
                                   common-lisp:t :member-name "errors"))
                                 (:shape-name
                                  "BatchPutTaxRegistrationResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure brazil-additional-info common-lisp:nil
                                    ((ccm-code :target-type ccm-code
                                      :member-name "ccmCode")
                                     (legal-nature-code :target-type
                                      legal-nature-code :member-name
                                      "legalNatureCode"))
                                    (:shape-name "BrazilAdditionalInfo"))

(smithy/sdk/shapes:define-type business-registration-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type business-representative-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure canada-additional-info common-lisp:nil
                                    ((provincial-sales-tax-id :target-type
                                      canada-provincial-sales-tax-id-string
                                      :member-name "provincialSalesTaxId")
                                     (canada-quebec-sales-tax-number
                                      :target-type
                                      canada-quebec-sales-tax-number-string
                                      :member-name
                                      "canadaQuebecSalesTaxNumber")
                                     (canada-retail-sales-tax-number
                                      :target-type
                                      canada-retail-sales-tax-number-string
                                      :member-name
                                      "canadaRetailSalesTaxNumber")
                                     (is-reseller-account :target-type boolean
                                      :member-name "isResellerAccount"))
                                    (:shape-name "CanadaAdditionalInfo"))

(smithy/sdk/shapes:define-type canada-provincial-sales-tax-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type canada-quebec-sales-tax-number-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type canada-retail-sales-tax-number-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error case-creation-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "CaseCreationLimitExceededException")
                                (:error-code 413))

(smithy/sdk/shapes:define-type ccm-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certified-email-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cig-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type city smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (error-code :target-type error-code :required
                                  common-lisp:t :member-name "errorCode"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type contracting-authority-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type country-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cup-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-of-birth smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type decision-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-supplemental-tax-registration-request
                                common-lisp:nil
                                ((authority-id :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "authorityId"))
                                (:shape-name
                                 "DeleteSupplementalTaxRegistrationRequest"))

(smithy/sdk/shapes:define-output delete-supplemental-tax-registration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSupplementalTaxRegistrationResponse"))

(smithy/sdk/shapes:define-input delete-tax-registration-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "accountId"))
                                (:shape-name "DeleteTaxRegistrationRequest"))

(smithy/sdk/shapes:define-output delete-tax-registration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteTaxRegistrationResponse"))

(smithy/sdk/shapes:define-type destination-file-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-s3location common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucket")
                                     (prefix :target-type s3prefix :member-name
                                      "prefix"))
                                    (:shape-name "DestinationS3Location"))

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type district smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure egypt-additional-info common-lisp:nil
                                    ((unique-identification-number :target-type
                                      unique-identification-number :member-name
                                      "uniqueIdentificationNumber")
                                     (unique-identification-number-expiration-date
                                      :target-type date-string :member-name
                                      "uniqueIdentificationNumberExpirationDate"))
                                    (:shape-name "EgyptAdditionalInfo"))

(smithy/sdk/shapes:define-type electronic-transaction-code-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type enterprise-identification-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum entity-exemption-account-status
    common-lisp:nil
  (:none "None")
  (:valid "Valid")
  (:expired "Expired")
  (:pending "Pending"))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure estonia-additional-info common-lisp:nil
                                    ((registry-commercial-code :target-type
                                      registry-commercial-code :required
                                      common-lisp:t :member-name
                                      "registryCommercialCode"))
                                    (:shape-name "EstoniaAdditionalInfo"))

(smithy/sdk/shapes:define-structure exemption-certificate common-lisp:nil
                                    ((document-name :target-type
                                      exemption-document-name :required
                                      common-lisp:t :member-name
                                      "documentName")
                                     (document-file :target-type
                                      exemption-file-blob :required
                                      common-lisp:t :member-name
                                      "documentFile"))
                                    (:shape-name "ExemptionCertificate"))

(smithy/sdk/shapes:define-type exemption-document-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exemption-file-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type generic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure georgia-additional-info common-lisp:nil
                                    ((person-type :target-type person-type
                                      :required common-lisp:t :member-name
                                      "personType"))
                                    (:shape-name "GeorgiaAdditionalInfo"))

(smithy/sdk/shapes:define-input get-tax-exemption-types-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetTaxExemptionTypesRequest"))

(smithy/sdk/shapes:define-output get-tax-exemption-types-response
                                 common-lisp:nil
                                 ((tax-exemption-types :target-type
                                   tax-exemption-types :member-name
                                   "taxExemptionTypes"))
                                 (:shape-name "GetTaxExemptionTypesResponse"))

(smithy/sdk/shapes:define-input get-tax-inheritance-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetTaxInheritanceRequest"))

(smithy/sdk/shapes:define-output get-tax-inheritance-response common-lisp:nil
                                 ((heritage-status :target-type heritage-status
                                   :member-name "heritageStatus"))
                                 (:shape-name "GetTaxInheritanceResponse"))

(smithy/sdk/shapes:define-input get-tax-registration-document-request
                                common-lisp:nil
                                ((destination-s3location :target-type
                                  destination-s3location :member-name
                                  "destinationS3Location")
                                 (tax-document-metadata :target-type
                                  tax-document-metadata :required common-lisp:t
                                  :member-name "taxDocumentMetadata"))
                                (:shape-name
                                 "GetTaxRegistrationDocumentRequest"))

(smithy/sdk/shapes:define-output get-tax-registration-document-response
                                 common-lisp:nil
                                 ((destination-file-path :target-type
                                   destination-file-path :member-name
                                   "destinationFilePath")
                                  (presigned-s3url :target-type url
                                   :member-name "presignedS3Url"))
                                 (:shape-name
                                  "GetTaxRegistrationDocumentResponse"))

(smithy/sdk/shapes:define-input get-tax-registration-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "accountId"))
                                (:shape-name "GetTaxRegistrationRequest"))

(smithy/sdk/shapes:define-output get-tax-registration-response common-lisp:nil
                                 ((tax-registration :target-type
                                   tax-registration :member-name
                                   "taxRegistration"))
                                 (:shape-name "GetTaxRegistrationResponse"))

(smithy/sdk/shapes:define-structure greece-additional-info common-lisp:nil
                                    ((contracting-authority-code :target-type
                                      contracting-authority-code :member-name
                                      "contractingAuthorityCode"))
                                    (:shape-name "GreeceAdditionalInfo"))

(smithy/sdk/shapes:define-enum heritage-status
    common-lisp:nil
  (:opt-in "OptIn")
  (:opt-out "OptOut"))

(smithy/sdk/shapes:define-structure india-additional-info common-lisp:nil
                                    ((pan :target-type pan :member-name "pan"))
                                    (:shape-name "IndiaAdditionalInfo"))

(smithy/sdk/shapes:define-type individual-registration-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure indonesia-additional-info common-lisp:nil
                                    ((tax-registration-number-type :target-type
                                      indonesia-tax-registration-number-type
                                      :member-name "taxRegistrationNumberType")
                                     (ppn-exception-designation-code
                                      :target-type
                                      ppn-exception-designation-code
                                      :member-name
                                      "ppnExceptionDesignationCode")
                                     (decision-number :target-type
                                      decision-number :member-name
                                      "decisionNumber"))
                                    (:shape-name "IndonesiaAdditionalInfo"))

(smithy/sdk/shapes:define-enum indonesia-tax-registration-number-type
    common-lisp:nil
  (:nik "NIK")
  (:passport-number "PassportNumber")
  (:npwp "NPWP")
  (:nitku "NITKU"))

(smithy/sdk/shapes:define-enum industries
    common-lisp:nil
  (:circulating-org "CirculatingOrg")
  (:professional-org "ProfessionalOrg")
  (:banks "Banks")
  (:insurance "Insurance")
  (:pension-and-benefit-funds "PensionAndBenefitFunds")
  (:development-agencies "DevelopmentAgencies"))

(smithy/sdk/shapes:define-type inheritance-obtained-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (error-code :target-type error-code :required
                                  common-lisp:t :member-name "errorCode"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure israel-additional-info common-lisp:nil
                                    ((dealer-type :target-type
                                      israel-dealer-type :required
                                      common-lisp:t :member-name "dealerType")
                                     (customer-type :target-type
                                      israel-customer-type :required
                                      common-lisp:t :member-name
                                      "customerType"))
                                    (:shape-name "IsraelAdditionalInfo"))

(smithy/sdk/shapes:define-enum israel-customer-type
    common-lisp:nil
  (:business "Business")
  (:individual "Individual"))

(smithy/sdk/shapes:define-enum israel-dealer-type
    common-lisp:nil
  (:authorized "Authorized")
  (:non-authorized "Non-authorized"))

(smithy/sdk/shapes:define-structure italy-additional-info common-lisp:nil
                                    ((sdi-account-id :target-type
                                      sdi-account-id :member-name
                                      "sdiAccountId")
                                     (cig-number :target-type cig-number
                                      :member-name "cigNumber")
                                     (cup-number :target-type cup-number
                                      :member-name "cupNumber")
                                     (tax-code :target-type tax-code
                                      :member-name "taxCode"))
                                    (:shape-name "ItalyAdditionalInfo"))

(smithy/sdk/shapes:define-type item-of-business smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure jurisdiction common-lisp:nil
                                    ((state-or-region :target-type state
                                      :member-name "stateOrRegion")
                                     (country-code :target-type country-code
                                      :required common-lisp:t :member-name
                                      "countryCode"))
                                    (:shape-name "Jurisdiction"))

(smithy/sdk/shapes:define-structure kenya-additional-info common-lisp:nil
                                    ((person-type :target-type person-type
                                      :required common-lisp:t :member-name
                                      "personType"))
                                    (:shape-name "KenyaAdditionalInfo"))

(smithy/sdk/shapes:define-type kep-email-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type legal-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type legal-nature-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type line-of-business smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-supplemental-tax-registrations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type
                                  pagination-token-string :member-name
                                  "nextToken"))
                                (:shape-name
                                 "ListSupplementalTaxRegistrationsRequest"))

(smithy/sdk/shapes:define-output list-supplemental-tax-registrations-response
                                 common-lisp:nil
                                 ((tax-registrations :target-type
                                   supplemental-tax-registration-list :required
                                   common-lisp:t :member-name
                                   "taxRegistrations")
                                  (next-token :target-type
                                   pagination-token-string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListSupplementalTaxRegistrationsResponse"))

(smithy/sdk/shapes:define-input list-tax-exemptions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type
                                  pagination-token-string :member-name
                                  "nextToken"))
                                (:shape-name "ListTaxExemptionsRequest"))

(smithy/sdk/shapes:define-output list-tax-exemptions-response common-lisp:nil
                                 ((next-token :target-type
                                   pagination-token-string :member-name
                                   "nextToken")
                                  (tax-exemption-details-map :target-type
                                   tax-exemption-details-map :member-name
                                   "taxExemptionDetailsMap"))
                                 (:shape-name "ListTaxExemptionsResponse"))

(smithy/sdk/shapes:define-input list-tax-registrations-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type
                                  pagination-token-string :member-name
                                  "nextToken"))
                                (:shape-name "ListTaxRegistrationsRequest"))

(smithy/sdk/shapes:define-output list-tax-registrations-response
                                 common-lisp:nil
                                 ((account-details :target-type
                                   account-details-list :required common-lisp:t
                                   :member-name "accountDetails")
                                  (next-token :target-type
                                   pagination-token-string :member-name
                                   "nextToken"))
                                 (:shape-name "ListTaxRegistrationsResponse"))

(smithy/sdk/shapes:define-structure malaysia-additional-info common-lisp:nil
                                    ((service-tax-codes :target-type
                                      malaysia-service-tax-codes-list
                                      :member-name "serviceTaxCodes")
                                     (tax-information-number :target-type
                                      tax-information-number :member-name
                                      "taxInformationNumber")
                                     (business-registration-number :target-type
                                      business-registration-number :member-name
                                      "businessRegistrationNumber"))
                                    (:shape-name "MalaysiaAdditionalInfo"))

(smithy/sdk/shapes:define-enum malaysia-service-tax-code
    common-lisp:nil
  (:consultancy "Consultancy")
  (:digital-svc-electronic-medium "Digital Service And Electronic Medium")
  (:it-services "IT Services")
  (:training-or-coaching "Training Or Coaching"))

(smithy/sdk/shapes:define-list malaysia-service-tax-codes-list :member
                               malaysia-service-tax-code)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pan smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type payment-voucher-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum person-type
    common-lisp:nil
  (:legal-person "Legal Person")
  (:physical-person "Physical Person")
  (:business "Business"))

(smithy/sdk/shapes:define-structure poland-additional-info common-lisp:nil
                                    ((individual-registration-number
                                      :target-type
                                      individual-registration-number
                                      :member-name
                                      "individualRegistrationNumber")
                                     (is-group-vat-enabled :target-type boolean
                                      :member-name "isGroupVatEnabled"))
                                    (:shape-name "PolandAdditionalInfo"))

(smithy/sdk/shapes:define-type postal-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ppn-exception-designation-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-supplemental-tax-registration-request
                                common-lisp:nil
                                ((tax-registration-entry :target-type
                                  supplemental-tax-registration-entry :required
                                  common-lisp:t :member-name
                                  "taxRegistrationEntry"))
                                (:shape-name
                                 "PutSupplementalTaxRegistrationRequest"))

(smithy/sdk/shapes:define-output put-supplemental-tax-registration-response
                                 common-lisp:nil
                                 ((authority-id :target-type generic-string
                                   :required common-lisp:t :member-name
                                   "authorityId")
                                  (status :target-type tax-registration-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name
                                  "PutSupplementalTaxRegistrationResponse"))

(smithy/sdk/shapes:define-input put-tax-exemption-request common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "accountIds")
                                 (authority :target-type authority :required
                                  common-lisp:t :member-name "authority")
                                 (exemption-type :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "exemptionType")
                                 (exemption-certificate :target-type
                                  exemption-certificate :required common-lisp:t
                                  :member-name "exemptionCertificate"))
                                (:shape-name "PutTaxExemptionRequest"))

(smithy/sdk/shapes:define-output put-tax-exemption-response common-lisp:nil
                                 ((case-id :target-type generic-string
                                   :member-name "caseId"))
                                 (:shape-name "PutTaxExemptionResponse"))

(smithy/sdk/shapes:define-input put-tax-inheritance-request common-lisp:nil
                                ((heritage-status :target-type heritage-status
                                  :member-name "heritageStatus"))
                                (:shape-name "PutTaxInheritanceRequest"))

(smithy/sdk/shapes:define-output put-tax-inheritance-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutTaxInheritanceResponse"))

(smithy/sdk/shapes:define-input put-tax-registration-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "accountId")
                                 (tax-registration-entry :target-type
                                  tax-registration-entry :required
                                  common-lisp:t :member-name
                                  "taxRegistrationEntry"))
                                (:shape-name "PutTaxRegistrationRequest"))

(smithy/sdk/shapes:define-output put-tax-registration-response common-lisp:nil
                                 ((status :target-type tax-registration-status
                                   :member-name "status"))
                                 (:shape-name "PutTaxRegistrationResponse"))

(smithy/sdk/shapes:define-type registration-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum registration-type
    common-lisp:nil
  (:intra-eu "Intra-EU")
  (:local "Local"))

(smithy/sdk/shapes:define-type registry-commercial-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (error-code :target-type error-code :required
                                  common-lisp:t :member-name "errorCode"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure romania-additional-info common-lisp:nil
                                    ((tax-registration-number-type :target-type
                                      tax-registration-number-type :required
                                      common-lisp:t :member-name
                                      "taxRegistrationNumberType"))
                                    (:shape-name "RomaniaAdditionalInfo"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saudi-arabia-additional-info
                                    common-lisp:nil
                                    ((tax-registration-number-type :target-type
                                      saudi-arabia-tax-registration-number-type
                                      :member-name
                                      "taxRegistrationNumberType"))
                                    (:shape-name "SaudiArabiaAdditionalInfo"))

(smithy/sdk/shapes:define-enum saudi-arabia-tax-registration-number-type
    common-lisp:nil
  (:tax-registration-number "TaxRegistrationNumber")
  (:tax-identification-number "TaxIdentificationNumber")
  (:commercial-registration-number "CommercialRegistrationNumber"))

(smithy/sdk/shapes:define-type sdi-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secondary-tax-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sector
    common-lisp:nil
  (:business "Business")
  (:individual "Individual")
  (:public-institutions "Government"))

(smithy/sdk/shapes:define-type seller smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-s3location common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "bucket")
                                     (key :target-type s3key :required
                                      common-lisp:t :member-name "key"))
                                    (:shape-name "SourceS3Location"))

(smithy/sdk/shapes:define-structure south-korea-additional-info common-lisp:nil
                                    ((business-representative-name :target-type
                                      business-representative-name :required
                                      common-lisp:t :member-name
                                      "businessRepresentativeName")
                                     (line-of-business :target-type
                                      line-of-business :required common-lisp:t
                                      :member-name "lineOfBusiness")
                                     (item-of-business :target-type
                                      item-of-business :required common-lisp:t
                                      :member-name "itemOfBusiness"))
                                    (:shape-name "SouthKoreaAdditionalInfo"))

(smithy/sdk/shapes:define-structure spain-additional-info common-lisp:nil
                                    ((registration-type :target-type
                                      registration-type :required common-lisp:t
                                      :member-name "registrationType"))
                                    (:shape-name "SpainAdditionalInfo"))

(smithy/sdk/shapes:define-type state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure supplemental-tax-registration
                                    common-lisp:nil
                                    ((registration-id :target-type
                                      registration-id :required common-lisp:t
                                      :member-name "registrationId")
                                     (registration-type :target-type
                                      supplemental-tax-registration-type
                                      :required common-lisp:t :member-name
                                      "registrationType")
                                     (legal-name :target-type legal-name
                                      :required common-lisp:t :member-name
                                      "legalName")
                                     (address :target-type address :required
                                      common-lisp:t :member-name "address")
                                     (authority-id :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "authorityId")
                                     (status :target-type
                                      tax-registration-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "SupplementalTaxRegistration"))

(smithy/sdk/shapes:define-structure supplemental-tax-registration-entry
                                    common-lisp:nil
                                    ((registration-id :target-type
                                      registration-id :required common-lisp:t
                                      :member-name "registrationId")
                                     (registration-type :target-type
                                      supplemental-tax-registration-type
                                      :required common-lisp:t :member-name
                                      "registrationType")
                                     (legal-name :target-type legal-name
                                      :required common-lisp:t :member-name
                                      "legalName")
                                     (address :target-type address :required
                                      common-lisp:t :member-name "address"))
                                    (:shape-name
                                     "SupplementalTaxRegistrationEntry"))

(smithy/sdk/shapes:define-list supplemental-tax-registration-list :member
                               supplemental-tax-registration)

(smithy/sdk/shapes:define-enum supplemental-tax-registration-type
    common-lisp:nil
  (:vat "VAT"))

(smithy/sdk/shapes:define-type tax-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tax-document-access-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tax-document-metadata common-lisp:nil
                                    ((tax-document-access-token :target-type
                                      tax-document-access-token :required
                                      common-lisp:t :member-name
                                      "taxDocumentAccessToken")
                                     (tax-document-name :target-type
                                      tax-document-name :required common-lisp:t
                                      :member-name "taxDocumentName"))
                                    (:shape-name "TaxDocumentMetadata"))

(smithy/sdk/shapes:define-list tax-document-metadatas :member
                               tax-document-metadata)

(smithy/sdk/shapes:define-type tax-document-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tax-exemption common-lisp:nil
                                    ((authority :target-type authority
                                      :required common-lisp:t :member-name
                                      "authority")
                                     (tax-exemption-type :target-type
                                      tax-exemption-type :required
                                      common-lisp:t :member-name
                                      "taxExemptionType")
                                     (effective-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "effectiveDate")
                                     (expiration-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "expirationDate")
                                     (system-effective-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "systemEffectiveDate")
                                     (status :target-type
                                      entity-exemption-account-status
                                      :member-name "status"))
                                    (:shape-name "TaxExemption"))

(smithy/sdk/shapes:define-structure tax-exemption-details common-lisp:nil
                                    ((tax-exemptions :target-type
                                      tax-exemptions :member-name
                                      "taxExemptions")
                                     (heritage-obtained-details :target-type
                                      boolean :member-name
                                      "heritageObtainedDetails")
                                     (heritage-obtained-parent-entity
                                      :target-type generic-string :member-name
                                      "heritageObtainedParentEntity")
                                     (heritage-obtained-reason :target-type
                                      generic-string :member-name
                                      "heritageObtainedReason"))
                                    (:shape-name "TaxExemptionDetails"))

(smithy/sdk/shapes:define-map tax-exemption-details-map :key account-id :value
                              tax-exemption-details)

(smithy/sdk/shapes:define-structure tax-exemption-type common-lisp:nil
                                    ((display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type generic-string
                                      :member-name "description")
                                     (applicable-jurisdictions :target-type
                                      authorities :member-name
                                      "applicableJurisdictions"))
                                    (:shape-name "TaxExemptionType"))

(smithy/sdk/shapes:define-list tax-exemption-types :member tax-exemption-type)

(smithy/sdk/shapes:define-list tax-exemptions :member tax-exemption)

(smithy/sdk/shapes:define-type tax-information-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tax-inheritance-details common-lisp:nil
                                    ((parent-entity-id :target-type account-id
                                      :member-name "parentEntityId")
                                     (inheritance-obtained-reason :target-type
                                      inheritance-obtained-reason :member-name
                                      "inheritanceObtainedReason"))
                                    (:shape-name "TaxInheritanceDetails"))

(smithy/sdk/shapes:define-type tax-office smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tax-registration common-lisp:nil
                                    ((registration-id :target-type
                                      registration-id :required common-lisp:t
                                      :member-name "registrationId")
                                     (registration-type :target-type
                                      tax-registration-type :required
                                      common-lisp:t :member-name
                                      "registrationType")
                                     (legal-name :target-type legal-name
                                      :required common-lisp:t :member-name
                                      "legalName")
                                     (status :target-type
                                      tax-registration-status :required
                                      common-lisp:t :member-name "status")
                                     (sector :target-type sector :member-name
                                      "sector")
                                     (tax-document-metadatas :target-type
                                      tax-document-metadatas :member-name
                                      "taxDocumentMetadatas")
                                     (certified-email-id :target-type
                                      certified-email-id :member-name
                                      "certifiedEmailId")
                                     (additional-tax-information :target-type
                                      additional-info-response :member-name
                                      "additionalTaxInformation")
                                     (legal-address :target-type address
                                      :required common-lisp:t :member-name
                                      "legalAddress"))
                                    (:shape-name "TaxRegistration"))

(smithy/sdk/shapes:define-structure tax-registration-doc-file common-lisp:nil
                                    ((file-name :target-type tax-document-name
                                      :required common-lisp:t :member-name
                                      "fileName")
                                     (file-content :target-type file-blob
                                      :required common-lisp:t :member-name
                                      "fileContent"))
                                    (:shape-name "TaxRegistrationDocFile"))

(smithy/sdk/shapes:define-structure tax-registration-document common-lisp:nil
                                    ((s3location :target-type source-s3location
                                      :member-name "s3Location")
                                     (file :target-type
                                      tax-registration-doc-file :member-name
                                      "file"))
                                    (:shape-name "TaxRegistrationDocument"))

(smithy/sdk/shapes:define-list tax-registration-documents :member
                               tax-registration-document)

(smithy/sdk/shapes:define-structure tax-registration-entry common-lisp:nil
                                    ((registration-id :target-type
                                      registration-id :required common-lisp:t
                                      :member-name "registrationId")
                                     (registration-type :target-type
                                      tax-registration-type :required
                                      common-lisp:t :member-name
                                      "registrationType")
                                     (legal-name :target-type legal-name
                                      :member-name "legalName")
                                     (legal-address :target-type address
                                      :member-name "legalAddress")
                                     (sector :target-type sector :member-name
                                      "sector")
                                     (additional-tax-information :target-type
                                      additional-info-request :member-name
                                      "additionalTaxInformation")
                                     (verification-details :target-type
                                      verification-details :member-name
                                      "verificationDetails")
                                     (certified-email-id :target-type
                                      certified-email-id :member-name
                                      "certifiedEmailId"))
                                    (:shape-name "TaxRegistrationEntry"))

(smithy/sdk/shapes:define-enum tax-registration-number-type
    common-lisp:nil
  (:tax-registration-number "TaxRegistrationNumber")
  (:local-registration-number "LocalRegistrationNumber"))

(smithy/sdk/shapes:define-enum tax-registration-status
    common-lisp:nil
  (:verified "Verified")
  (:pending "Pending")
  (:deleted "Deleted")
  (:rejected "Rejected"))

(smithy/sdk/shapes:define-enum tax-registration-type
    common-lisp:nil
  (:vat "VAT")
  (:gst "GST")
  (:cpf "CPF")
  (:cnpj "CNPJ")
  (:sst "SST")
  (:tin "TIN")
  (:nric "NRIC"))

(smithy/sdk/shapes:define-structure tax-registration-with-jurisdiction
                                    common-lisp:nil
                                    ((registration-id :target-type
                                      registration-id :required common-lisp:t
                                      :member-name "registrationId")
                                     (registration-type :target-type
                                      tax-registration-type :required
                                      common-lisp:t :member-name
                                      "registrationType")
                                     (legal-name :target-type legal-name
                                      :required common-lisp:t :member-name
                                      "legalName")
                                     (status :target-type
                                      tax-registration-status :required
                                      common-lisp:t :member-name "status")
                                     (sector :target-type sector :member-name
                                      "sector")
                                     (tax-document-metadatas :target-type
                                      tax-document-metadatas :member-name
                                      "taxDocumentMetadatas")
                                     (certified-email-id :target-type
                                      certified-email-id :member-name
                                      "certifiedEmailId")
                                     (additional-tax-information :target-type
                                      additional-info-response :member-name
                                      "additionalTaxInformation")
                                     (jurisdiction :target-type jurisdiction
                                      :required common-lisp:t :member-name
                                      "jurisdiction"))
                                    (:shape-name
                                     "TaxRegistrationWithJurisdiction"))

(smithy/sdk/shapes:define-structure turkey-additional-info common-lisp:nil
                                    ((tax-office :target-type tax-office
                                      :member-name "taxOffice")
                                     (kep-email-id :target-type kep-email-id
                                      :member-name "kepEmailId")
                                     (secondary-tax-id :target-type
                                      secondary-tax-id :member-name
                                      "secondaryTaxId")
                                     (industries :target-type industries
                                      :member-name "industries"))
                                    (:shape-name "TurkeyAdditionalInfo"))

(smithy/sdk/shapes:define-structure ukraine-additional-info common-lisp:nil
                                    ((ukraine-trn-type :target-type
                                      ukraine-trn-type :required common-lisp:t
                                      :member-name "ukraineTrnType"))
                                    (:shape-name "UkraineAdditionalInfo"))

(smithy/sdk/shapes:define-enum ukraine-trn-type
    common-lisp:nil
  (:business "Business")
  (:individual "Individual"))

(smithy/sdk/shapes:define-type unique-identification-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure uzbekistan-additional-info common-lisp:nil
                                    ((tax-registration-number-type :target-type
                                      uzbekistan-tax-registration-number-type
                                      :member-name "taxRegistrationNumberType")
                                     (vat-registration-number :target-type
                                      vat-registration-number :member-name
                                      "vatRegistrationNumber"))
                                    (:shape-name "UzbekistanAdditionalInfo"))

(smithy/sdk/shapes:define-enum uzbekistan-tax-registration-number-type
    common-lisp:nil
  (:business "Business")
  (:individual "Individual"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (error-code :target-type
                                  validation-exception-error-code :required
                                  common-lisp:t :member-name "errorCode")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum validation-exception-error-code
    common-lisp:nil
  (:malformed-token "MalformedToken")
  (:expired-token "ExpiredToken")
  (:invalid-token "InvalidToken")
  (:field-validation-failed "FieldValidationFailed")
  (:missing-input "MissingInput"))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type field-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type vat-registration-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure verification-details common-lisp:nil
                                    ((date-of-birth :target-type date-of-birth
                                      :member-name "dateOfBirth")
                                     (tax-registration-documents :target-type
                                      tax-registration-documents :member-name
                                      "taxRegistrationDocuments"))
                                    (:shape-name "VerificationDetails"))

(smithy/sdk/shapes:define-structure vietnam-additional-info common-lisp:nil
                                    ((enterprise-identification-number
                                      :target-type
                                      enterprise-identification-number
                                      :member-name
                                      "enterpriseIdentificationNumber")
                                     (electronic-transaction-code-number
                                      :target-type
                                      electronic-transaction-code-number
                                      :member-name
                                      "electronicTransactionCodeNumber")
                                     (payment-voucher-number :target-type
                                      payment-voucher-number :member-name
                                      "paymentVoucherNumber")
                                     (payment-voucher-number-date :target-type
                                      date-string :member-name
                                      "paymentVoucherNumberDate"))
                                    (:shape-name "VietnamAdditionalInfo"))

(smithy/sdk/operation:define-operation batch-delete-tax-registration
                                       :shape-name "BatchDeleteTaxRegistration"
                                       :input
                                       batch-delete-tax-registration-request
                                       :output
                                       batch-delete-tax-registration-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/BatchDeleteTaxRegistration" :code 200)

(smithy/sdk/operation:define-operation batch-get-tax-exemptions :shape-name
                                       "BatchGetTaxExemptions" :input
                                       batch-get-tax-exemptions-request :output
                                       batch-get-tax-exemptions-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/BatchGetTaxExemptions" :code 200)

(smithy/sdk/operation:define-operation batch-put-tax-registration :shape-name
                                       "BatchPutTaxRegistration" :input
                                       batch-put-tax-registration-request
                                       :output
                                       batch-put-tax-registration-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/BatchPutTaxRegistration" :code 200)

(smithy/sdk/operation:define-operation delete-supplemental-tax-registration
                                       :shape-name
                                       "DeleteSupplementalTaxRegistration"
                                       :input
                                       delete-supplemental-tax-registration-request
                                       :output
                                       delete-supplemental-tax-registration-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteSupplementalTaxRegistration"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-tax-registration :shape-name
                                       "DeleteTaxRegistration" :input
                                       delete-tax-registration-request :output
                                       delete-tax-registration-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteTaxRegistration" :code 200)

(smithy/sdk/operation:define-operation get-tax-exemption-types :shape-name
                                       "GetTaxExemptionTypes" :input
                                       get-tax-exemption-types-request :output
                                       get-tax-exemption-types-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetTaxExemptionTypes" :code 200)

(smithy/sdk/operation:define-operation get-tax-inheritance :shape-name
                                       "GetTaxInheritance" :input
                                       get-tax-inheritance-request :output
                                       get-tax-inheritance-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetTaxInheritance"
                                       :code 200)

(smithy/sdk/operation:define-operation get-tax-registration :shape-name
                                       "GetTaxRegistration" :input
                                       get-tax-registration-request :output
                                       get-tax-registration-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetTaxRegistration" :code 200)

(smithy/sdk/operation:define-operation get-tax-registration-document
                                       :shape-name "GetTaxRegistrationDocument"
                                       :input
                                       get-tax-registration-document-request
                                       :output
                                       get-tax-registration-document-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetTaxRegistrationDocument" :code 200)

(smithy/sdk/operation:define-operation list-supplemental-tax-registrations
                                       :shape-name
                                       "ListSupplementalTaxRegistrations"
                                       :input
                                       list-supplemental-tax-registrations-request
                                       :output
                                       list-supplemental-tax-registrations-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListSupplementalTaxRegistrations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tax-exemptions :shape-name
                                       "ListTaxExemptions" :input
                                       list-tax-exemptions-request :output
                                       list-tax-exemptions-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListTaxExemptions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tax-registrations :shape-name
                                       "ListTaxRegistrations" :input
                                       list-tax-registrations-request :output
                                       list-tax-registrations-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListTaxRegistrations" :code 200)

(smithy/sdk/operation:define-operation put-supplemental-tax-registration
                                       :shape-name
                                       "PutSupplementalTaxRegistration" :input
                                       put-supplemental-tax-registration-request
                                       :output
                                       put-supplemental-tax-registration-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/PutSupplementalTaxRegistration" :code
                                       200)

(smithy/sdk/operation:define-operation put-tax-exemption :shape-name
                                       "PutTaxExemption" :input
                                       put-tax-exemption-request :output
                                       put-tax-exemption-response :errors
                                       (access-denied-exception
                                        attachment-upload-exception
                                        case-creation-limit-exceeded-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/PutTaxExemption"
                                       :code 200)

(smithy/sdk/operation:define-operation put-tax-inheritance :shape-name
                                       "PutTaxInheritance" :input
                                       put-tax-inheritance-request :output
                                       put-tax-inheritance-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/PutTaxInheritance"
                                       :code 200)

(smithy/sdk/operation:define-operation put-tax-registration :shape-name
                                       "PutTaxRegistration" :input
                                       put-tax-registration-request :output
                                       put-tax-registration-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/PutTaxRegistration" :code 200)
