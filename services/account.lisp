(uiop/package:define-package #:pira/account (:use)
                             (:export #:accept-primary-email-update #:account
                              #:account-created-date #:account-id
                              #:account-name #:account-name-resource
                              #:address-line #:alternate-contact
                              #:alternate-contact-resource
                              #:alternate-contact-type #:city #:company-name
                              #:contact-information
                              #:contact-information-phone-number
                              #:contact-information-resource #:country-code
                              #:delete-alternate-contact #:disable-region
                              #:district-or-county #:email-address
                              #:enable-region #:full-name
                              #:get-account-information #:get-alternate-contact
                              #:get-contact-information #:get-primary-email
                              #:get-region-opt-status #:list-regions #:name
                              #:otp #:phone-number #:postal-code
                              #:primary-email-address #:primary-email-resource
                              #:primary-email-update-status #:put-account-name
                              #:put-alternate-contact #:put-contact-information
                              #:region #:region-name #:region-opt-list
                              #:region-opt-resource #:region-opt-status
                              #:region-opt-status-list #:sensitive-string
                              #:start-primary-email-update #:state-or-region
                              #:title #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:website-url))
(common-lisp:in-package #:pira/account)

(smithy/sdk/service:define-service account :shape-name "Account" :version
                                   "2021-02-01" :title "AWS Account"
                                   :operations 'common-lisp:nil :traits
                                   '(("aws.api#service" ("sdkId" . "Account")
                                      ("arnNamespace" . "account")
                                      ("cloudTrailEventSource"
                                       . "CLOUDTRAIL_EVENT_SOURCE"))
                                     ("aws.auth#sigv4" ("name" . "account"))
                                     ("aws.endpoints#standardPartitionalEndpoints"
                                      ("endpointPatternType"
                                       . "service_region_dnsSuffix"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input accept-primary-email-update-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (primary-email :target-type
                                  primary-email-address :required common-lisp:t
                                  :member-name "PrimaryEmail")
                                 (otp :target-type otp :required common-lisp:t
                                  :member-name "Otp"))
                                (:shape-name "AcceptPrimaryEmailUpdateRequest"))

(smithy/sdk/shapes:define-output accept-primary-email-update-response
                                 common-lisp:nil
                                 ((status :target-type
                                   primary-email-update-status :member-name
                                   "Status"))
                                 (:shape-name
                                  "AcceptPrimaryEmailUpdateResponse"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "errorType" :http-header "x-amzn-ErrorType"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-created-date
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type address-line smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure alternate-contact common-lisp:nil
                                    ((name :target-type name :member-name
                                      "Name")
                                     (title :target-type title :member-name
                                      "Title")
                                     (email-address :target-type email-address
                                      :member-name "EmailAddress")
                                     (phone-number :target-type phone-number
                                      :member-name "PhoneNumber")
                                     (alternate-contact-type :target-type
                                      alternate-contact-type :member-name
                                      "AlternateContactType"))
                                    (:shape-name "AlternateContact"))

common-lisp:nil

(smithy/sdk/shapes:define-type alternate-contact-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type city smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type company-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "errorType" :http-header "x-amzn-ErrorType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure contact-information common-lisp:nil
                                    ((full-name :target-type full-name
                                      :required common-lisp:t :member-name
                                      "FullName")
                                     (address-line1 :target-type address-line
                                      :required common-lisp:t :member-name
                                      "AddressLine1")
                                     (address-line2 :target-type address-line
                                      :member-name "AddressLine2")
                                     (address-line3 :target-type address-line
                                      :member-name "AddressLine3")
                                     (city :target-type city :required
                                      common-lisp:t :member-name "City")
                                     (state-or-region :target-type
                                      state-or-region :member-name
                                      "StateOrRegion")
                                     (district-or-county :target-type
                                      district-or-county :member-name
                                      "DistrictOrCounty")
                                     (postal-code :target-type postal-code
                                      :required common-lisp:t :member-name
                                      "PostalCode")
                                     (country-code :target-type country-code
                                      :required common-lisp:t :member-name
                                      "CountryCode")
                                     (phone-number :target-type
                                      contact-information-phone-number
                                      :required common-lisp:t :member-name
                                      "PhoneNumber")
                                     (company-name :target-type company-name
                                      :member-name "CompanyName")
                                     (website-url :target-type website-url
                                      :member-name "WebsiteUrl"))
                                    (:shape-name "ContactInformation"))

(smithy/sdk/shapes:define-type contact-information-phone-number
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type country-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-alternate-contact-request
                                common-lisp:nil
                                ((alternate-contact-type :target-type
                                  alternate-contact-type :required
                                  common-lisp:t :member-name
                                  "AlternateContactType")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "DeleteAlternateContactRequest"))

(smithy/sdk/shapes:define-input disable-region-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId")
                                 (region-name :target-type region-name
                                  :required common-lisp:t :member-name
                                  "RegionName"))
                                (:shape-name "DisableRegionRequest"))

(smithy/sdk/shapes:define-type district-or-county
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input enable-region-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId")
                                 (region-name :target-type region-name
                                  :required common-lisp:t :member-name
                                  "RegionName"))
                                (:shape-name "EnableRegionRequest"))

(smithy/sdk/shapes:define-type full-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-account-information-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "GetAccountInformationRequest"))

(smithy/sdk/shapes:define-output get-account-information-response
                                 common-lisp:nil
                                 ((account-id :target-type account-id
                                   :member-name "AccountId")
                                  (account-name :target-type account-name
                                   :member-name "AccountName")
                                  (account-created-date :target-type
                                   account-created-date :member-name
                                   "AccountCreatedDate"))
                                 (:shape-name "GetAccountInformationResponse"))

(smithy/sdk/shapes:define-input get-alternate-contact-request common-lisp:nil
                                ((alternate-contact-type :target-type
                                  alternate-contact-type :required
                                  common-lisp:t :member-name
                                  "AlternateContactType")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "GetAlternateContactRequest"))

(smithy/sdk/shapes:define-output get-alternate-contact-response common-lisp:nil
                                 ((alternate-contact :target-type
                                   alternate-contact :member-name
                                   "AlternateContact"))
                                 (:shape-name "GetAlternateContactResponse"))

(smithy/sdk/shapes:define-input get-contact-information-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "GetContactInformationRequest"))

(smithy/sdk/shapes:define-output get-contact-information-response
                                 common-lisp:nil
                                 ((contact-information :target-type
                                   contact-information :member-name
                                   "ContactInformation"))
                                 (:shape-name "GetContactInformationResponse"))

(smithy/sdk/shapes:define-input get-primary-email-request common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"))
                                (:shape-name "GetPrimaryEmailRequest"))

(smithy/sdk/shapes:define-output get-primary-email-response common-lisp:nil
                                 ((primary-email :target-type
                                   primary-email-address :member-name
                                   "PrimaryEmail"))
                                 (:shape-name "GetPrimaryEmailResponse"))

(smithy/sdk/shapes:define-input get-region-opt-status-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId")
                                 (region-name :target-type region-name
                                  :required common-lisp:t :member-name
                                  "RegionName"))
                                (:shape-name "GetRegionOptStatusRequest"))

(smithy/sdk/shapes:define-output get-region-opt-status-response common-lisp:nil
                                 ((region-name :target-type region-name
                                   :member-name "RegionName")
                                  (region-opt-status :target-type
                                   region-opt-status :member-name
                                   "RegionOptStatus"))
                                 (:shape-name "GetRegionOptStatusResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "errorType" :http-header "x-amzn-ErrorType"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-regions-request common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (region-opt-status-contains :target-type
                                  region-opt-status-list :member-name
                                  "RegionOptStatusContains"))
                                (:shape-name "ListRegionsRequest"))

(smithy/sdk/shapes:define-output list-regions-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken")
                                  (regions :target-type region-opt-list
                                   :member-name "Regions"))
                                 (:shape-name "ListRegionsResponse"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type otp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type postal-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type primary-email-address
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type primary-email-update-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-account-name-request common-lisp:nil
                                ((account-name :target-type account-name
                                  :required common-lisp:t :member-name
                                  "AccountName")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "PutAccountNameRequest"))

(smithy/sdk/shapes:define-input put-alternate-contact-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (title :target-type title :required
                                  common-lisp:t :member-name "Title")
                                 (email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "EmailAddress")
                                 (phone-number :target-type phone-number
                                  :required common-lisp:t :member-name
                                  "PhoneNumber")
                                 (alternate-contact-type :target-type
                                  alternate-contact-type :required
                                  common-lisp:t :member-name
                                  "AlternateContactType")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "PutAlternateContactRequest"))

(smithy/sdk/shapes:define-input put-contact-information-request common-lisp:nil
                                ((contact-information :target-type
                                  contact-information :required common-lisp:t
                                  :member-name "ContactInformation")
                                 (account-id :target-type account-id
                                  :member-name "AccountId"))
                                (:shape-name "PutContactInformationRequest"))

(smithy/sdk/shapes:define-structure region common-lisp:nil
                                    ((region-name :target-type region-name
                                      :member-name "RegionName")
                                     (region-opt-status :target-type
                                      region-opt-status :member-name
                                      "RegionOptStatus"))
                                    (:shape-name "Region"))

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list region-opt-list :member region)

common-lisp:nil

(smithy/sdk/shapes:define-type region-opt-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list region-opt-status-list :member region-opt-status)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "errorType" :http-header "x-amzn-ErrorType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-primary-email-update-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (primary-email :target-type
                                  primary-email-address :required common-lisp:t
                                  :member-name "PrimaryEmail"))
                                (:shape-name "StartPrimaryEmailUpdateRequest"))

(smithy/sdk/shapes:define-output start-primary-email-update-response
                                 common-lisp:nil
                                 ((status :target-type
                                   primary-email-update-status :member-name
                                   "Status"))
                                 (:shape-name
                                  "StartPrimaryEmailUpdateResponse"))

(smithy/sdk/shapes:define-type state-or-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (error-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "errorType" :http-header "x-amzn-ErrorType"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type sensitive-string
                                  :required common-lisp:t :member-name
                                  "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type website-url smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation accept-primary-email-update :shape-name
                                       "AcceptPrimaryEmailUpdate" :input
                                       accept-primary-email-update-request
                                       :output
                                       accept-primary-email-update-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/acceptPrimaryEmailUpdate" :code 200)

(smithy/sdk/operation:define-operation delete-alternate-contact :shape-name
                                       "DeleteAlternateContact" :input
                                       delete-alternate-contact-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/deleteAlternateContact" :code 200)

(smithy/sdk/operation:define-operation disable-region :shape-name
                                       "DisableRegion" :input
                                       disable-region-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/disableRegion"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-region :shape-name "EnableRegion"
                                       :input enable-region-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/enableRegion"
                                       :code 200)

(smithy/sdk/operation:define-operation get-account-information :shape-name
                                       "GetAccountInformation" :input
                                       get-account-information-request :output
                                       get-account-information-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/getAccountInformation" :code 200)

(smithy/sdk/operation:define-operation get-alternate-contact :shape-name
                                       "GetAlternateContact" :input
                                       get-alternate-contact-request :output
                                       get-alternate-contact-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/getAlternateContact" :code 200)

(smithy/sdk/operation:define-operation get-contact-information :shape-name
                                       "GetContactInformation" :input
                                       get-contact-information-request :output
                                       get-contact-information-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/getContactInformation" :code 200)

(smithy/sdk/operation:define-operation get-primary-email :shape-name
                                       "GetPrimaryEmail" :input
                                       get-primary-email-request :output
                                       get-primary-email-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/getPrimaryEmail"
                                       :code 200)

(smithy/sdk/operation:define-operation get-region-opt-status :shape-name
                                       "GetRegionOptStatus" :input
                                       get-region-opt-status-request :output
                                       get-region-opt-status-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/getRegionOptStatus" :code 200)

(smithy/sdk/operation:define-operation list-regions :shape-name "ListRegions"
                                       :input list-regions-request :output
                                       list-regions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/listRegions" :code
                                       200)

(smithy/sdk/operation:define-operation put-account-name :shape-name
                                       "PutAccountName" :input
                                       put-account-name-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/putAccountName"
                                       :code 200)

(smithy/sdk/operation:define-operation put-alternate-contact :shape-name
                                       "PutAlternateContact" :input
                                       put-alternate-contact-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/putAlternateContact" :code 200)

(smithy/sdk/operation:define-operation put-contact-information :shape-name
                                       "PutContactInformation" :input
                                       put-contact-information-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/putContactInformation" :code 200)

(smithy/sdk/operation:define-operation start-primary-email-update :shape-name
                                       "StartPrimaryEmailUpdate" :input
                                       start-primary-email-update-request
                                       :output
                                       start-primary-email-update-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/startPrimaryEmailUpdate" :code 200)
