(uiop/package:define-package #:pira/route-53-domains (:use)
                             (:export
                              #:accept-domain-transfer-from-another-aws-account
                              #:account-id #:address-line
                              #:associate-delegation-signer-to-domain
                              #:billing-record #:billing-records #:boolean
                              #:cancel-domain-transfer-to-another-aws-account
                              #:check-domain-availability
                              #:check-domain-transferability #:city #:consent
                              #:contact-detail #:contact-name #:contact-number
                              #:contact-type #:country-code #:currency
                              #:current-expiry-year #:dnssec #:delete-domain
                              #:delete-tags-for-domain
                              #:disable-domain-auto-renew
                              #:disable-domain-transfer-lock
                              #:disassociate-delegation-signer-from-domain
                              #:dnssec-key #:dnssec-key-list
                              #:dnssec-public-key #:dnssec-signing-attributes
                              #:domain-auth-code #:domain-availability
                              #:domain-name #:domain-price #:domain-price-list
                              #:domain-price-name #:domain-status
                              #:domain-status-list #:domain-suggestion
                              #:domain-suggestions-list #:domain-summary
                              #:domain-summary-list #:domain-transferability
                              #:duration-in-years #:email
                              #:enable-domain-auto-renew
                              #:enable-domain-transfer-lock #:error-message
                              #:extra-param #:extra-param-list
                              #:extra-param-name #:extra-param-value
                              #:fiauth-key #:filter-condition
                              #:filter-conditions
                              #:get-contact-reachability-status
                              #:get-domain-detail #:get-domain-suggestions
                              #:get-operation-detail #:glue-ip #:glue-ip-list
                              #:host-name #:integer #:invoice-id #:label
                              #:lang-code #:list-domains
                              #:list-domains-attribute-name #:list-operations
                              #:list-operations-sort-attribute-name
                              #:list-prices #:list-prices-page-max-items
                              #:list-tags-for-domain #:message #:nameserver
                              #:nameserver-list #:nullable-integer
                              #:operation-id #:operation-status
                              #:operation-status-list #:operation-summary
                              #:operation-summary-list #:operation-type
                              #:operation-type-list #:operator #:page-marker
                              #:page-max-items #:password #:price
                              #:price-with-currency #:push-domain
                              #:reachability-status #:register-domain
                              #:registrar-name #:registrar-url
                              #:registrar-who-is-server #:registry-domain-id
                              #:reject-domain-transfer-from-another-aws-account
                              #:renew-domain #:request-id #:reseller
                              #:resend-contact-reachability-email
                              #:resend-operation-authorization
                              #:retrieve-domain-auth-code
                              #:route53domains-v20140515 #:sort-condition
                              #:sort-order #:state #:status-flag #:string #:tag
                              #:tag-key #:tag-key-list #:tag-list #:tag-value
                              #:timestamp #:tld-name #:transfer-domain
                              #:transfer-domain-to-another-aws-account
                              #:transferable #:update-domain-contact
                              #:update-domain-contact-privacy
                              #:update-domain-nameservers
                              #:update-tags-for-domain #:value #:values
                              #:view-billing #:zip-code))
(common-lisp:in-package #:pira/route-53-domains)

(smithy/sdk/service:define-service route53domains-v20140515 :shape-name
                                   "Route53Domains_v20140515" :version
                                   "2014-05-15" :title
                                   "Amazon Route 53 Domains" :operations
                                   '(accept-domain-transfer-from-another-aws-account
                                     associate-delegation-signer-to-domain
                                     cancel-domain-transfer-to-another-aws-account
                                     check-domain-availability
                                     check-domain-transferability delete-domain
                                     delete-tags-for-domain
                                     disable-domain-auto-renew
                                     disable-domain-transfer-lock
                                     disassociate-delegation-signer-from-domain
                                     enable-domain-auto-renew
                                     enable-domain-transfer-lock
                                     get-contact-reachability-status
                                     get-domain-detail get-domain-suggestions
                                     get-operation-detail list-domains
                                     list-operations list-prices
                                     list-tags-for-domain push-domain
                                     register-domain
                                     reject-domain-transfer-from-another-aws-account
                                     renew-domain
                                     resend-contact-reachability-email
                                     resend-operation-authorization
                                     retrieve-domain-auth-code transfer-domain
                                     transfer-domain-to-another-aws-account
                                     update-domain-contact
                                     update-domain-contact-privacy
                                     update-domain-nameservers
                                     update-tags-for-domain view-billing)
                                   :xml-namespace
                                   '(:uri
                                     "https://route53domains.amazonaws.com/doc/2014-05-15/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Route 53 Domains")
                                      ("arnNamespace" . "route53domains")
                                      ("cloudFormationName" . "Route53Domains")
                                      ("cloudTrailEventSource"
                                       . "route53domains.amazonaws.com")
                                      ("docId" . "route53domains-2014-05-15")
                                      ("endpointPrefix" . "route53domains"))
                                     ("aws.auth#sigv4"
                                      ("name" . "route53domains"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input
 accept-domain-transfer-from-another-aws-account-request common-lisp:nil
 ((domain-name :target-type domain-name :required common-lisp:t :member-name
   "DomainName")
  (password :target-type password :required common-lisp:t :member-name
   "Password"))
 (:shape-name "AcceptDomainTransferFromAnotherAwsAccountRequest"))

(smithy/sdk/shapes:define-output
 accept-domain-transfer-from-another-aws-account-response common-lisp:nil
 ((operation-id :target-type operation-id :member-name "OperationId"))
 (:shape-name "AcceptDomainTransferFromAnotherAwsAccountResponse"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type address-line smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-delegation-signer-to-domain-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (signing-attributes :target-type
                                  dnssec-signing-attributes :required
                                  common-lisp:t :member-name
                                  "SigningAttributes"))
                                (:shape-name
                                 "AssociateDelegationSignerToDomainRequest"))

(smithy/sdk/shapes:define-output associate-delegation-signer-to-domain-response
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "AssociateDelegationSignerToDomainResponse"))

(smithy/sdk/shapes:define-structure billing-record common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (operation :target-type operation-type
                                      :member-name "Operation")
                                     (invoice-id :target-type invoice-id
                                      :member-name "InvoiceId")
                                     (bill-date :target-type timestamp
                                      :member-name "BillDate")
                                     (price :target-type price :member-name
                                      "Price"))
                                    (:shape-name "BillingRecord"))

(smithy/sdk/shapes:define-list billing-records :member billing-record)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input
 cancel-domain-transfer-to-another-aws-account-request common-lisp:nil
 ((domain-name :target-type domain-name :required common-lisp:t :member-name
   "DomainName"))
 (:shape-name "CancelDomainTransferToAnotherAwsAccountRequest"))

(smithy/sdk/shapes:define-output
 cancel-domain-transfer-to-another-aws-account-response common-lisp:nil
 ((operation-id :target-type operation-id :member-name "OperationId"))
 (:shape-name "CancelDomainTransferToAnotherAwsAccountResponse"))

(smithy/sdk/shapes:define-input check-domain-availability-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (idn-lang-code :target-type lang-code
                                  :member-name "IdnLangCode"))
                                (:shape-name "CheckDomainAvailabilityRequest"))

(smithy/sdk/shapes:define-output check-domain-availability-response
                                 common-lisp:nil
                                 ((availability :target-type
                                   domain-availability :member-name
                                   "Availability"))
                                 (:shape-name
                                  "CheckDomainAvailabilityResponse"))

(smithy/sdk/shapes:define-input check-domain-transferability-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (auth-code :target-type domain-auth-code
                                  :member-name "AuthCode"))
                                (:shape-name
                                 "CheckDomainTransferabilityRequest"))

(smithy/sdk/shapes:define-output check-domain-transferability-response
                                 common-lisp:nil
                                 ((transferability :target-type
                                   domain-transferability :member-name
                                   "Transferability")
                                  (message :target-type message :member-name
                                   "Message"))
                                 (:shape-name
                                  "CheckDomainTransferabilityResponse"))

(smithy/sdk/shapes:define-type city smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure consent common-lisp:nil
                                    ((max-price :target-type price :required
                                      common-lisp:t :member-name "MaxPrice")
                                     (currency :target-type currency :required
                                      common-lisp:t :member-name "Currency"))
                                    (:shape-name "Consent"))

(smithy/sdk/shapes:define-structure contact-detail common-lisp:nil
                                    ((first-name :target-type contact-name
                                      :member-name "FirstName")
                                     (last-name :target-type contact-name
                                      :member-name "LastName")
                                     (contact-type :target-type contact-type
                                      :member-name "ContactType")
                                     (organization-name :target-type
                                      contact-name :member-name
                                      "OrganizationName")
                                     (address-line1 :target-type address-line
                                      :member-name "AddressLine1")
                                     (address-line2 :target-type address-line
                                      :member-name "AddressLine2")
                                     (city :target-type city :member-name
                                      "City")
                                     (state :target-type state :member-name
                                      "State")
                                     (country-code :target-type country-code
                                      :member-name "CountryCode")
                                     (zip-code :target-type zip-code
                                      :member-name "ZipCode")
                                     (phone-number :target-type contact-number
                                      :member-name "PhoneNumber")
                                     (email :target-type email :member-name
                                      "Email")
                                     (fax :target-type contact-number
                                      :member-name "Fax")
                                     (extra-params :target-type
                                      extra-param-list :member-name
                                      "ExtraParams"))
                                    (:shape-name "ContactDetail"))

(smithy/sdk/shapes:define-type contact-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type contact-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum contact-type
    common-lisp:nil
  (:person "PERSON")
  (:company "COMPANY")
  (:association "ASSOCIATION")
  (:public-body "PUBLIC_BODY")
  (:reseller "RESELLER"))

(smithy/sdk/shapes:define-enum country-code
    common-lisp:nil
  (:ac "AC")
  (:ad "AD")
  (:ae "AE")
  (:af "AF")
  (:ag "AG")
  (:ai "AI")
  (:al "AL")
  (:am "AM")
  (:an "AN")
  (:ao "AO")
  (:aq "AQ")
  (:ar "AR")
  (:as "AS")
  (:at "AT")
  (:au "AU")
  (:aw "AW")
  (:ax "AX")
  (:az "AZ")
  (:ba "BA")
  (:bb "BB")
  (:bd "BD")
  (:be "BE")
  (:bf "BF")
  (:bg "BG")
  (:bh "BH")
  (:bi "BI")
  (:bj "BJ")
  (:bl "BL")
  (:bm "BM")
  (:bn "BN")
  (:bo "BO")
  (:bq "BQ")
  (:br "BR")
  (:bs "BS")
  (:bt "BT")
  (:bv "BV")
  (:bw "BW")
  (:by "BY")
  (:bz "BZ")
  (:ca "CA")
  (:cc "CC")
  (:cd "CD")
  (:cf "CF")
  (:cg "CG")
  (:ch "CH")
  (:ci "CI")
  (:ck "CK")
  (:cl "CL")
  (:cm "CM")
  (:cn "CN")
  (:co "CO")
  (:cr "CR")
  (:cu "CU")
  (:cv "CV")
  (:cw "CW")
  (:cx "CX")
  (:cy "CY")
  (:cz "CZ")
  (:de "DE")
  (:dj "DJ")
  (:dk "DK")
  (:dm "DM")
  (:do "DO")
  (:dz "DZ")
  (:ec "EC")
  (:ee "EE")
  (:eg "EG")
  (:eh "EH")
  (:er "ER")
  (:es "ES")
  (:et "ET")
  (:fi "FI")
  (:fj "FJ")
  (:fk "FK")
  (:fm "FM")
  (:fo "FO")
  (:fr "FR")
  (:ga "GA")
  (:gb "GB")
  (:gd "GD")
  (:ge "GE")
  (:gf "GF")
  (:gg "GG")
  (:gh "GH")
  (:gi "GI")
  (:gl "GL")
  (:gm "GM")
  (:gn "GN")
  (:gp "GP")
  (:gq "GQ")
  (:gr "GR")
  (:gs "GS")
  (:gt "GT")
  (:gu "GU")
  (:gw "GW")
  (:gy "GY")
  (:hk "HK")
  (:hm "HM")
  (:hn "HN")
  (:hr "HR")
  (:ht "HT")
  (:hu "HU")
  (:id "ID")
  (:ie "IE")
  (:il "IL")
  (:im "IM")
  (:in "IN")
  (:io "IO")
  (:iq "IQ")
  (:ir "IR")
  (:is "IS")
  (:it "IT")
  (:je "JE")
  (:jm "JM")
  (:jo "JO")
  (:jp "JP")
  (:ke "KE")
  (:kg "KG")
  (:kh "KH")
  (:ki "KI")
  (:km "KM")
  (:kn "KN")
  (:kp "KP")
  (:kr "KR")
  (:kw "KW")
  (:ky "KY")
  (:kz "KZ")
  (:la "LA")
  (:lb "LB")
  (:lc "LC")
  (:li "LI")
  (:lk "LK")
  (:lr "LR")
  (:ls "LS")
  (:lt "LT")
  (:lu "LU")
  (:lv "LV")
  (:ly "LY")
  (:ma "MA")
  (:mc "MC")
  (:md "MD")
  (:me "ME")
  (:mf "MF")
  (:mg "MG")
  (:mh "MH")
  (:mk "MK")
  (:ml "ML")
  (:mm "MM")
  (:mn "MN")
  (:mo "MO")
  (:mp "MP")
  (:mq "MQ")
  (:mr "MR")
  (:ms "MS")
  (:mt "MT")
  (:mu "MU")
  (:mv "MV")
  (:mw "MW")
  (:mx "MX")
  (:my "MY")
  (:mz "MZ")
  (:na "NA")
  (:nc "NC")
  (:ne "NE")
  (:nf "NF")
  (:ng "NG")
  (:ni "NI")
  (:nl "NL")
  (:no "NO")
  (:np "NP")
  (:nr "NR")
  (:nu "NU")
  (:nz "NZ")
  (:om "OM")
  (:pa "PA")
  (:pe "PE")
  (:pf "PF")
  (:pg "PG")
  (:ph "PH")
  (:pk "PK")
  (:pl "PL")
  (:pm "PM")
  (:pn "PN")
  (:pr "PR")
  (:ps "PS")
  (:pt "PT")
  (:pw "PW")
  (:py "PY")
  (:qa "QA")
  (:re "RE")
  (:ro "RO")
  (:rs "RS")
  (:ru "RU")
  (:rw "RW")
  (:sa "SA")
  (:sb "SB")
  (:sc "SC")
  (:sd "SD")
  (:se "SE")
  (:sg "SG")
  (:sh "SH")
  (:si "SI")
  (:sj "SJ")
  (:sk "SK")
  (:sl "SL")
  (:sm "SM")
  (:sn "SN")
  (:so "SO")
  (:sr "SR")
  (:ss "SS")
  (:st "ST")
  (:sv "SV")
  (:sx "SX")
  (:sy "SY")
  (:sz "SZ")
  (:tc "TC")
  (:td "TD")
  (:tf "TF")
  (:tg "TG")
  (:th "TH")
  (:tj "TJ")
  (:tk "TK")
  (:tl "TL")
  (:tm "TM")
  (:tn "TN")
  (:to "TO")
  (:tp "TP")
  (:tr "TR")
  (:tt "TT")
  (:tv "TV")
  (:tw "TW")
  (:tz "TZ")
  (:ua "UA")
  (:ug "UG")
  (:us "US")
  (:uy "UY")
  (:uz "UZ")
  (:va "VA")
  (:vc "VC")
  (:ve "VE")
  (:vg "VG")
  (:vi "VI")
  (:vn "VN")
  (:vu "VU")
  (:wf "WF")
  (:ws "WS")
  (:ye "YE")
  (:yt "YT")
  (:za "ZA")
  (:zm "ZM")
  (:zw "ZW"))

(smithy/sdk/shapes:define-type currency smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type current-expiry-year
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dnssec smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "DeleteDomainRequest"))

(smithy/sdk/shapes:define-output delete-domain-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "DeleteDomainResponse"))

(smithy/sdk/shapes:define-input delete-tags-for-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (tags-to-delete :target-type tag-key-list
                                  :required common-lisp:t :member-name
                                  "TagsToDelete"))
                                (:shape-name "DeleteTagsForDomainRequest"))

(smithy/sdk/shapes:define-output delete-tags-for-domain-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteTagsForDomainResponse"))

(smithy/sdk/shapes:define-input disable-domain-auto-renew-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "DisableDomainAutoRenewRequest"))

(smithy/sdk/shapes:define-output disable-domain-auto-renew-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DisableDomainAutoRenewResponse"))

(smithy/sdk/shapes:define-input disable-domain-transfer-lock-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name
                                 "DisableDomainTransferLockRequest"))

(smithy/sdk/shapes:define-output disable-domain-transfer-lock-response
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "DisableDomainTransferLockResponse"))

(smithy/sdk/shapes:define-input
 disassociate-delegation-signer-from-domain-request common-lisp:nil
 ((domain-name :target-type domain-name :required common-lisp:t :member-name
   "DomainName")
  (id :target-type string :required common-lisp:t :member-name "Id"))
 (:shape-name "DisassociateDelegationSignerFromDomainRequest"))

(smithy/sdk/shapes:define-output
 disassociate-delegation-signer-from-domain-response common-lisp:nil
 ((operation-id :target-type operation-id :member-name "OperationId"))
 (:shape-name "DisassociateDelegationSignerFromDomainResponse"))

(smithy/sdk/shapes:define-structure dnssec-key common-lisp:nil
                                    ((algorithm :target-type nullable-integer
                                      :member-name "Algorithm")
                                     (flags :target-type nullable-integer
                                      :member-name "Flags")
                                     (public-key :target-type dnssec-public-key
                                      :member-name "PublicKey")
                                     (digest-type :target-type nullable-integer
                                      :member-name "DigestType")
                                     (digest :target-type string :member-name
                                      "Digest")
                                     (key-tag :target-type nullable-integer
                                      :member-name "KeyTag")
                                     (id :target-type string :member-name
                                      "Id"))
                                    (:shape-name "DnssecKey"))

(smithy/sdk/shapes:define-list dnssec-key-list :member dnssec-key)

(smithy/sdk/shapes:define-error dnssec-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DnssecLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-type dnssec-public-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dnssec-signing-attributes common-lisp:nil
                                    ((algorithm :target-type nullable-integer
                                      :member-name "Algorithm")
                                     (flags :target-type nullable-integer
                                      :member-name "Flags")
                                     (public-key :target-type dnssec-public-key
                                      :member-name "PublicKey"))
                                    (:shape-name "DnssecSigningAttributes"))

(smithy/sdk/shapes:define-type domain-auth-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain-availability
    common-lisp:nil
  (:available "AVAILABLE")
  (:available-reserved "AVAILABLE_RESERVED")
  (:available-preorder "AVAILABLE_PREORDER")
  (:unavailable "UNAVAILABLE")
  (:unavailable-premium "UNAVAILABLE_PREMIUM")
  (:unavailable-restricted "UNAVAILABLE_RESTRICTED")
  (:reserved "RESERVED")
  (:dont-know "DONT_KNOW")
  (:invalid-name-for-tld "INVALID_NAME_FOR_TLD")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-error domain-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DomainLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-price common-lisp:nil
                                    ((name :target-type domain-price-name
                                      :member-name "Name")
                                     (registration-price :target-type
                                      price-with-currency :member-name
                                      "RegistrationPrice")
                                     (transfer-price :target-type
                                      price-with-currency :member-name
                                      "TransferPrice")
                                     (renewal-price :target-type
                                      price-with-currency :member-name
                                      "RenewalPrice")
                                     (change-ownership-price :target-type
                                      price-with-currency :member-name
                                      "ChangeOwnershipPrice")
                                     (restoration-price :target-type
                                      price-with-currency :member-name
                                      "RestorationPrice"))
                                    (:shape-name "DomainPrice"))

(smithy/sdk/shapes:define-list domain-price-list :member domain-price)

(smithy/sdk/shapes:define-type domain-price-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-status-list :member domain-status)

(smithy/sdk/shapes:define-structure domain-suggestion common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (availability :target-type string
                                      :member-name "Availability"))
                                    (:shape-name "DomainSuggestion"))

(smithy/sdk/shapes:define-list domain-suggestions-list :member
                               domain-suggestion)

(smithy/sdk/shapes:define-structure domain-summary common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (auto-renew :target-type boolean
                                      :member-name "AutoRenew")
                                     (transfer-lock :target-type boolean
                                      :member-name "TransferLock")
                                     (expiry :target-type timestamp
                                      :member-name "Expiry"))
                                    (:shape-name "DomainSummary"))

(smithy/sdk/shapes:define-list domain-summary-list :member domain-summary)

(smithy/sdk/shapes:define-structure domain-transferability common-lisp:nil
                                    ((transferable :target-type transferable
                                      :member-name "Transferable"))
                                    (:shape-name "DomainTransferability"))

(smithy/sdk/shapes:define-error duplicate-request common-lisp:nil
                                ((request-id :target-type request-id
                                  :member-name "requestId")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DuplicateRequest")
                                (:error-code 400))

(smithy/sdk/shapes:define-type duration-in-years
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input enable-domain-auto-renew-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "EnableDomainAutoRenewRequest"))

(smithy/sdk/shapes:define-output enable-domain-auto-renew-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "EnableDomainAutoRenewResponse"))

(smithy/sdk/shapes:define-input enable-domain-transfer-lock-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "EnableDomainTransferLockRequest"))

(smithy/sdk/shapes:define-output enable-domain-transfer-lock-response
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "EnableDomainTransferLockResponse"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure extra-param common-lisp:nil
                                    ((name :target-type extra-param-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type extra-param-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "ExtraParam"))

(smithy/sdk/shapes:define-list extra-param-list :member extra-param)

(smithy/sdk/shapes:define-enum extra-param-name
    common-lisp:nil
  (:duns-number "DUNS_NUMBER")
  (:brand-number "BRAND_NUMBER")
  (:birth-department "BIRTH_DEPARTMENT")
  (:birth-date-in-yyyy-mm-dd "BIRTH_DATE_IN_YYYY_MM_DD")
  (:birth-country "BIRTH_COUNTRY")
  (:birth-city "BIRTH_CITY")
  (:document-number "DOCUMENT_NUMBER")
  (:au-id-number "AU_ID_NUMBER")
  (:au-id-type "AU_ID_TYPE")
  (:ca-legal-type "CA_LEGAL_TYPE")
  (:ca-business-entity-type "CA_BUSINESS_ENTITY_TYPE")
  (:ca-legal-representative "CA_LEGAL_REPRESENTATIVE")
  (:ca-legal-representative-capacity "CA_LEGAL_REPRESENTATIVE_CAPACITY")
  (:es-identification "ES_IDENTIFICATION")
  (:es-identification-type "ES_IDENTIFICATION_TYPE")
  (:es-legal-form "ES_LEGAL_FORM")
  (:fi-business-number "FI_BUSINESS_NUMBER")
  (:onwer-fi-id-number "FI_ID_NUMBER")
  (:fi-nationality "FI_NATIONALITY")
  (:fi-organization-type "FI_ORGANIZATION_TYPE")
  (:it-nationality "IT_NATIONALITY")
  (:it-pin "IT_PIN")
  (:it-registrant-entity-type "IT_REGISTRANT_ENTITY_TYPE")
  (:ru-passport-data "RU_PASSPORT_DATA")
  (:se-id-number "SE_ID_NUMBER")
  (:sg-id-number "SG_ID_NUMBER")
  (:vat-number "VAT_NUMBER")
  (:uk-contact-type "UK_CONTACT_TYPE")
  (:uk-company-number "UK_COMPANY_NUMBER")
  (:eu-country-of-citizenship "EU_COUNTRY_OF_CITIZENSHIP")
  (:au-priority-token "AU_PRIORITY_TOKEN"))

(smithy/sdk/shapes:define-type extra-param-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fiauth-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter-condition common-lisp:nil
                                    ((name :target-type
                                      list-domains-attribute-name :required
                                      common-lisp:t :member-name "Name")
                                     (operator :target-type operator :required
                                      common-lisp:t :member-name "Operator")
                                     (values :target-type values :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "FilterCondition"))

(smithy/sdk/shapes:define-list filter-conditions :member filter-condition)

(smithy/sdk/shapes:define-input get-contact-reachability-status-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :member-name "domainName"))
                                (:shape-name
                                 "GetContactReachabilityStatusRequest"))

(smithy/sdk/shapes:define-output get-contact-reachability-status-response
                                 common-lisp:nil
                                 ((domain-name :target-type domain-name
                                   :member-name "domainName")
                                  (status :target-type reachability-status
                                   :member-name "status"))
                                 (:shape-name
                                  "GetContactReachabilityStatusResponse"))

(smithy/sdk/shapes:define-input get-domain-detail-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "GetDomainDetailRequest"))

(smithy/sdk/shapes:define-output get-domain-detail-response common-lisp:nil
                                 ((domain-name :target-type domain-name
                                   :member-name "DomainName")
                                  (nameservers :target-type nameserver-list
                                   :member-name "Nameservers")
                                  (auto-renew :target-type boolean :member-name
                                   "AutoRenew")
                                  (admin-contact :target-type contact-detail
                                   :member-name "AdminContact")
                                  (registrant-contact :target-type
                                   contact-detail :member-name
                                   "RegistrantContact")
                                  (tech-contact :target-type contact-detail
                                   :member-name "TechContact")
                                  (admin-privacy :target-type boolean
                                   :member-name "AdminPrivacy")
                                  (registrant-privacy :target-type boolean
                                   :member-name "RegistrantPrivacy")
                                  (tech-privacy :target-type boolean
                                   :member-name "TechPrivacy")
                                  (registrar-name :target-type registrar-name
                                   :member-name "RegistrarName")
                                  (who-is-server :target-type
                                   registrar-who-is-server :member-name
                                   "WhoIsServer")
                                  (registrar-url :target-type registrar-url
                                   :member-name "RegistrarUrl")
                                  (abuse-contact-email :target-type email
                                   :member-name "AbuseContactEmail")
                                  (abuse-contact-phone :target-type
                                   contact-number :member-name
                                   "AbuseContactPhone")
                                  (registry-domain-id :target-type
                                   registry-domain-id :member-name
                                   "RegistryDomainId")
                                  (creation-date :target-type timestamp
                                   :member-name "CreationDate")
                                  (updated-date :target-type timestamp
                                   :member-name "UpdatedDate")
                                  (expiration-date :target-type timestamp
                                   :member-name "ExpirationDate")
                                  (reseller :target-type reseller :member-name
                                   "Reseller")
                                  (dns-sec :target-type dnssec :member-name
                                   "DnsSec")
                                  (status-list :target-type domain-status-list
                                   :member-name "StatusList")
                                  (dnssec-keys :target-type dnssec-key-list
                                   :member-name "DnssecKeys")
                                  (billing-contact :target-type contact-detail
                                   :member-name "BillingContact")
                                  (billing-privacy :target-type boolean
                                   :member-name "BillingPrivacy"))
                                 (:shape-name "GetDomainDetailResponse"))

(smithy/sdk/shapes:define-input get-domain-suggestions-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (suggestion-count :target-type integer
                                  :required common-lisp:t :member-name
                                  "SuggestionCount")
                                 (only-available :target-type boolean :required
                                  common-lisp:t :member-name "OnlyAvailable"))
                                (:shape-name "GetDomainSuggestionsRequest"))

(smithy/sdk/shapes:define-output get-domain-suggestions-response
                                 common-lisp:nil
                                 ((suggestions-list :target-type
                                   domain-suggestions-list :member-name
                                   "SuggestionsList"))
                                 (:shape-name "GetDomainSuggestionsResponse"))

(smithy/sdk/shapes:define-input get-operation-detail-request common-lisp:nil
                                ((operation-id :target-type operation-id
                                  :required common-lisp:t :member-name
                                  "OperationId"))
                                (:shape-name "GetOperationDetailRequest"))

(smithy/sdk/shapes:define-output get-operation-detail-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId")
                                  (status :target-type operation-status
                                   :member-name "Status")
                                  (message :target-type error-message
                                   :member-name "Message")
                                  (domain-name :target-type domain-name
                                   :member-name "DomainName")
                                  (type :target-type operation-type
                                   :member-name "Type")
                                  (submitted-date :target-type timestamp
                                   :member-name "SubmittedDate")
                                  (last-updated-date :target-type timestamp
                                   :member-name "LastUpdatedDate")
                                  (status-flag :target-type status-flag
                                   :member-name "StatusFlag"))
                                 (:shape-name "GetOperationDetailResponse"))

(smithy/sdk/shapes:define-type glue-ip smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list glue-ip-list :member glue-ip)

(smithy/sdk/shapes:define-type host-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-input common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidInput") (:error-code 400))

(smithy/sdk/shapes:define-type invoice-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lang-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum list-domains-attribute-name
    common-lisp:nil
  (:domain-name "DomainName")
  (:expiry "Expiry"))

(smithy/sdk/shapes:define-input list-domains-request common-lisp:nil
                                ((filter-conditions :target-type
                                  filter-conditions :member-name
                                  "FilterConditions")
                                 (sort-condition :target-type sort-condition
                                  :member-name "SortCondition")
                                 (marker :target-type page-marker :member-name
                                  "Marker")
                                 (max-items :target-type page-max-items
                                  :member-name "MaxItems"))
                                (:shape-name "ListDomainsRequest"))

(smithy/sdk/shapes:define-output list-domains-response common-lisp:nil
                                 ((domains :target-type domain-summary-list
                                   :member-name "Domains")
                                  (next-page-marker :target-type page-marker
                                   :member-name "NextPageMarker"))
                                 (:shape-name "ListDomainsResponse"))

(smithy/sdk/shapes:define-input list-operations-request common-lisp:nil
                                ((submitted-since :target-type timestamp
                                  :member-name "SubmittedSince")
                                 (marker :target-type page-marker :member-name
                                  "Marker")
                                 (max-items :target-type page-max-items
                                  :member-name "MaxItems")
                                 (status :target-type operation-status-list
                                  :member-name "Status")
                                 (type :target-type operation-type-list
                                  :member-name "Type")
                                 (sort-by :target-type
                                  list-operations-sort-attribute-name
                                  :member-name "SortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder"))
                                (:shape-name "ListOperationsRequest"))

(smithy/sdk/shapes:define-output list-operations-response common-lisp:nil
                                 ((operations :target-type
                                   operation-summary-list :member-name
                                   "Operations")
                                  (next-page-marker :target-type page-marker
                                   :member-name "NextPageMarker"))
                                 (:shape-name "ListOperationsResponse"))

(smithy/sdk/shapes:define-enum list-operations-sort-attribute-name
    common-lisp:nil
  (:submitted-date "SubmittedDate"))

(smithy/sdk/shapes:define-type list-prices-page-max-items
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-prices-request common-lisp:nil
                                ((tld :target-type tld-name :member-name "Tld")
                                 (marker :target-type page-marker :member-name
                                  "Marker")
                                 (max-items :target-type
                                  list-prices-page-max-items :member-name
                                  "MaxItems"))
                                (:shape-name "ListPricesRequest"))

(smithy/sdk/shapes:define-output list-prices-response common-lisp:nil
                                 ((prices :target-type domain-price-list
                                   :member-name "Prices")
                                  (next-page-marker :target-type page-marker
                                   :member-name "NextPageMarker"))
                                 (:shape-name "ListPricesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "ListTagsForDomainRequest"))

(smithy/sdk/shapes:define-output list-tags-for-domain-response common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "ListTagsForDomainResponse"))

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure nameserver common-lisp:nil
                                    ((name :target-type host-name :required
                                      common-lisp:t :member-name "Name")
                                     (glue-ips :target-type glue-ip-list
                                      :member-name "GlueIps"))
                                    (:shape-name "Nameserver"))

(smithy/sdk/shapes:define-list nameserver-list :member nameserver)

(smithy/sdk/shapes:define-type nullable-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type operation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error operation-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "OperationLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum operation-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:in-progress "IN_PROGRESS")
  (:error "ERROR")
  (:successful "SUCCESSFUL")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list operation-status-list :member operation-status)

(smithy/sdk/shapes:define-structure operation-summary common-lisp:nil
                                    ((operation-id :target-type operation-id
                                      :member-name "OperationId")
                                     (status :target-type operation-status
                                      :member-name "Status")
                                     (type :target-type operation-type
                                      :member-name "Type")
                                     (submitted-date :target-type timestamp
                                      :member-name "SubmittedDate")
                                     (domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (status-flag :target-type status-flag
                                      :member-name "StatusFlag")
                                     (last-updated-date :target-type timestamp
                                      :member-name "LastUpdatedDate"))
                                    (:shape-name "OperationSummary"))

(smithy/sdk/shapes:define-list operation-summary-list :member operation-summary)

(smithy/sdk/shapes:define-enum operation-type
    common-lisp:nil
  (:register-domain "REGISTER_DOMAIN")
  (:delete-domain "DELETE_DOMAIN")
  (:transfer-in-domain "TRANSFER_IN_DOMAIN")
  (:update-domain-contact "UPDATE_DOMAIN_CONTACT")
  (:update-nameserver "UPDATE_NAMESERVER")
  (:change-privacy-protection "CHANGE_PRIVACY_PROTECTION")
  (:domain-lock "DOMAIN_LOCK")
  (:enable-autorenew "ENABLE_AUTORENEW")
  (:disable-autorenew "DISABLE_AUTORENEW")
  (:add-dnssec "ADD_DNSSEC")
  (:remove-dnssec "REMOVE_DNSSEC")
  (:expire-domain "EXPIRE_DOMAIN")
  (:transfer-out-domain "TRANSFER_OUT_DOMAIN")
  (:change-domain-owner "CHANGE_DOMAIN_OWNER")
  (:renew-domain "RENEW_DOMAIN")
  (:push-domain "PUSH_DOMAIN")
  (:internal-transfer-out-domain "INTERNAL_TRANSFER_OUT_DOMAIN")
  (:internal-transfer-in-domain "INTERNAL_TRANSFER_IN_DOMAIN")
  (:release-to-gandi "RELEASE_TO_GANDI")
  (:transfer-on-renew "TRANSFER_ON_RENEW")
  (:restore-domain "RESTORE_DOMAIN"))

(smithy/sdk/shapes:define-list operation-type-list :member operation-type)

(smithy/sdk/shapes:define-enum operator
    common-lisp:nil
  (:le "LE")
  (:ge "GE")
  (:begins-with "BEGINS_WITH"))

(smithy/sdk/shapes:define-type page-marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type price smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure price-with-currency common-lisp:nil
                                    ((price :target-type price :required
                                      common-lisp:t :member-name "Price")
                                     (currency :target-type currency :required
                                      common-lisp:t :member-name "Currency"))
                                    (:shape-name "PriceWithCurrency"))

(smithy/sdk/shapes:define-input push-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (target :target-type label :required
                                  common-lisp:t :member-name "Target"))
                                (:shape-name "PushDomainRequest"))

(smithy/sdk/shapes:define-enum reachability-status
    common-lisp:nil
  (:pending "PENDING")
  (:done "DONE")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-input register-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (idn-lang-code :target-type lang-code
                                  :member-name "IdnLangCode")
                                 (duration-in-years :target-type
                                  duration-in-years :required common-lisp:t
                                  :member-name "DurationInYears")
                                 (auto-renew :target-type boolean :member-name
                                  "AutoRenew")
                                 (admin-contact :target-type contact-detail
                                  :required common-lisp:t :member-name
                                  "AdminContact")
                                 (registrant-contact :target-type
                                  contact-detail :required common-lisp:t
                                  :member-name "RegistrantContact")
                                 (tech-contact :target-type contact-detail
                                  :required common-lisp:t :member-name
                                  "TechContact")
                                 (privacy-protect-admin-contact :target-type
                                  boolean :member-name
                                  "PrivacyProtectAdminContact")
                                 (privacy-protect-registrant-contact
                                  :target-type boolean :member-name
                                  "PrivacyProtectRegistrantContact")
                                 (privacy-protect-tech-contact :target-type
                                  boolean :member-name
                                  "PrivacyProtectTechContact")
                                 (billing-contact :target-type contact-detail
                                  :member-name "BillingContact")
                                 (privacy-protect-billing-contact :target-type
                                  boolean :member-name
                                  "PrivacyProtectBillingContact"))
                                (:shape-name "RegisterDomainRequest"))

(smithy/sdk/shapes:define-output register-domain-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "RegisterDomainResponse"))

(smithy/sdk/shapes:define-type registrar-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registrar-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registrar-who-is-server
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registry-domain-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 reject-domain-transfer-from-another-aws-account-request common-lisp:nil
 ((domain-name :target-type domain-name :required common-lisp:t :member-name
   "DomainName"))
 (:shape-name "RejectDomainTransferFromAnotherAwsAccountRequest"))

(smithy/sdk/shapes:define-output
 reject-domain-transfer-from-another-aws-account-response common-lisp:nil
 ((operation-id :target-type operation-id :member-name "OperationId"))
 (:shape-name "RejectDomainTransferFromAnotherAwsAccountResponse"))

(smithy/sdk/shapes:define-input renew-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (duration-in-years :target-type
                                  duration-in-years :member-name
                                  "DurationInYears")
                                 (current-expiry-year :target-type
                                  current-expiry-year :required common-lisp:t
                                  :member-name "CurrentExpiryYear"))
                                (:shape-name "RenewDomainRequest"))

(smithy/sdk/shapes:define-output renew-domain-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "RenewDomainResponse"))

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reseller smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input resend-contact-reachability-email-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :member-name "domainName"))
                                (:shape-name
                                 "ResendContactReachabilityEmailRequest"))

(smithy/sdk/shapes:define-output resend-contact-reachability-email-response
                                 common-lisp:nil
                                 ((domain-name :target-type domain-name
                                   :member-name "domainName")
                                  (email-address :target-type email
                                   :member-name "emailAddress")
                                  (is-already-verified :target-type boolean
                                   :member-name "isAlreadyVerified"))
                                 (:shape-name
                                  "ResendContactReachabilityEmailResponse"))

(smithy/sdk/shapes:define-input resend-operation-authorization-request
                                common-lisp:nil
                                ((operation-id :target-type operation-id
                                  :required common-lisp:t :member-name
                                  "OperationId"))
                                (:shape-name
                                 "ResendOperationAuthorizationRequest"))

(smithy/sdk/shapes:define-input retrieve-domain-auth-code-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "RetrieveDomainAuthCodeRequest"))

(smithy/sdk/shapes:define-output retrieve-domain-auth-code-response
                                 common-lisp:nil
                                 ((auth-code :target-type domain-auth-code
                                   :member-name "AuthCode"))
                                 (:shape-name "RetrieveDomainAuthCodeResponse"))

(smithy/sdk/shapes:define-structure sort-condition common-lisp:nil
                                    ((name :target-type
                                      list-domains-attribute-name :required
                                      common-lisp:t :member-name "Name")
                                     (sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "SortOrder"))
                                    (:shape-name "SortCondition"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-type state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum status-flag
    common-lisp:nil
  (:pending-acceptance "PENDING_ACCEPTANCE")
  (:pending-customer-action "PENDING_CUSTOMER_ACTION")
  (:pending-authorization "PENDING_AUTHORIZATION")
  (:pending-payment-verification "PENDING_PAYMENT_VERIFICATION")
  (:pending-support-case "PENDING_SUPPORT_CASE"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error tldrules-violation common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TLDRulesViolation")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type tld-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input transfer-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (idn-lang-code :target-type lang-code
                                  :member-name "IdnLangCode")
                                 (duration-in-years :target-type
                                  duration-in-years :required common-lisp:t
                                  :member-name "DurationInYears")
                                 (nameservers :target-type nameserver-list
                                  :member-name "Nameservers")
                                 (auth-code :target-type domain-auth-code
                                  :member-name "AuthCode")
                                 (auto-renew :target-type boolean :member-name
                                  "AutoRenew")
                                 (admin-contact :target-type contact-detail
                                  :required common-lisp:t :member-name
                                  "AdminContact")
                                 (registrant-contact :target-type
                                  contact-detail :required common-lisp:t
                                  :member-name "RegistrantContact")
                                 (tech-contact :target-type contact-detail
                                  :required common-lisp:t :member-name
                                  "TechContact")
                                 (privacy-protect-admin-contact :target-type
                                  boolean :member-name
                                  "PrivacyProtectAdminContact")
                                 (privacy-protect-registrant-contact
                                  :target-type boolean :member-name
                                  "PrivacyProtectRegistrantContact")
                                 (privacy-protect-tech-contact :target-type
                                  boolean :member-name
                                  "PrivacyProtectTechContact")
                                 (billing-contact :target-type contact-detail
                                  :member-name "BillingContact")
                                 (privacy-protect-billing-contact :target-type
                                  boolean :member-name
                                  "PrivacyProtectBillingContact"))
                                (:shape-name "TransferDomainRequest"))

(smithy/sdk/shapes:define-output transfer-domain-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "TransferDomainResponse"))

(smithy/sdk/shapes:define-input transfer-domain-to-another-aws-account-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"))
                                (:shape-name
                                 "TransferDomainToAnotherAwsAccountRequest"))

(smithy/sdk/shapes:define-output
 transfer-domain-to-another-aws-account-response common-lisp:nil
 ((operation-id :target-type operation-id :member-name "OperationId")
  (password :target-type password :member-name "Password"))
 (:shape-name "TransferDomainToAnotherAwsAccountResponse"))

(smithy/sdk/shapes:define-enum transferable
    common-lisp:nil
  (:transferable "TRANSFERABLE")
  (:untransferable "UNTRANSFERABLE")
  (:dont-know "DONT_KNOW")
  (:domain-in-own-account "DOMAIN_IN_OWN_ACCOUNT")
  (:domain-in-another-account "DOMAIN_IN_ANOTHER_ACCOUNT")
  (:premium-domain "PREMIUM_DOMAIN"))

(smithy/sdk/shapes:define-error unsupported-tld common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedTLD")
                                (:error-code 400))

(smithy/sdk/shapes:define-input update-domain-contact-privacy-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (admin-privacy :target-type boolean
                                  :member-name "AdminPrivacy")
                                 (registrant-privacy :target-type boolean
                                  :member-name "RegistrantPrivacy")
                                 (tech-privacy :target-type boolean
                                  :member-name "TechPrivacy")
                                 (billing-privacy :target-type boolean
                                  :member-name "BillingPrivacy"))
                                (:shape-name
                                 "UpdateDomainContactPrivacyRequest"))

(smithy/sdk/shapes:define-output update-domain-contact-privacy-response
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "UpdateDomainContactPrivacyResponse"))

(smithy/sdk/shapes:define-input update-domain-contact-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (admin-contact :target-type contact-detail
                                  :member-name "AdminContact")
                                 (registrant-contact :target-type
                                  contact-detail :member-name
                                  "RegistrantContact")
                                 (tech-contact :target-type contact-detail
                                  :member-name "TechContact")
                                 (consent :target-type consent :member-name
                                  "Consent")
                                 (billing-contact :target-type contact-detail
                                  :member-name "BillingContact"))
                                (:shape-name "UpdateDomainContactRequest"))

(smithy/sdk/shapes:define-output update-domain-contact-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "UpdateDomainContactResponse"))

(smithy/sdk/shapes:define-input update-domain-nameservers-request
                                common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (fiauth-key :target-type fiauth-key
                                  :member-name "FIAuthKey")
                                 (nameservers :target-type nameserver-list
                                  :required common-lisp:t :member-name
                                  "Nameservers"))
                                (:shape-name "UpdateDomainNameserversRequest"))

(smithy/sdk/shapes:define-output update-domain-nameservers-response
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "UpdateDomainNameserversResponse"))

(smithy/sdk/shapes:define-input update-tags-for-domain-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (tags-to-update :target-type tag-list
                                  :member-name "TagsToUpdate"))
                                (:shape-name "UpdateTagsForDomainRequest"))

(smithy/sdk/shapes:define-output update-tags-for-domain-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateTagsForDomainResponse"))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list values :member value)

(smithy/sdk/shapes:define-input view-billing-request common-lisp:nil
                                ((start :target-type timestamp :member-name
                                  "Start")
                                 (end :target-type timestamp :member-name
                                  "End")
                                 (marker :target-type page-marker :member-name
                                  "Marker")
                                 (max-items :target-type page-max-items
                                  :member-name "MaxItems"))
                                (:shape-name "ViewBillingRequest"))

(smithy/sdk/shapes:define-output view-billing-response common-lisp:nil
                                 ((next-page-marker :target-type page-marker
                                   :member-name "NextPageMarker")
                                  (billing-records :target-type billing-records
                                   :member-name "BillingRecords"))
                                 (:shape-name "ViewBillingResponse"))

(smithy/sdk/shapes:define-type zip-code smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation
 accept-domain-transfer-from-another-aws-account :shape-name
 "AcceptDomainTransferFromAnotherAwsAccount" :input
 accept-domain-transfer-from-another-aws-account-request :output
 accept-domain-transfer-from-another-aws-account-response :errors
 (domain-limit-exceeded invalid-input operation-limit-exceeded unsupported-tld))

(smithy/sdk/operation:define-operation associate-delegation-signer-to-domain
                                       :shape-name
                                       "AssociateDelegationSignerToDomain"
                                       :input
                                       associate-delegation-signer-to-domain-request
                                       :output
                                       associate-delegation-signer-to-domain-response
                                       :errors
                                       (dnssec-limit-exceeded duplicate-request
                                        invalid-input operation-limit-exceeded
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation
 cancel-domain-transfer-to-another-aws-account :shape-name
 "CancelDomainTransferToAnotherAwsAccount" :input
 cancel-domain-transfer-to-another-aws-account-request :output
 cancel-domain-transfer-to-another-aws-account-response :errors
 (invalid-input operation-limit-exceeded unsupported-tld))

(smithy/sdk/operation:define-operation check-domain-availability :shape-name
                                       "CheckDomainAvailability" :input
                                       check-domain-availability-request
                                       :output
                                       check-domain-availability-response
                                       :errors (invalid-input unsupported-tld))

(smithy/sdk/operation:define-operation check-domain-transferability :shape-name
                                       "CheckDomainTransferability" :input
                                       check-domain-transferability-request
                                       :output
                                       check-domain-transferability-response
                                       :errors (invalid-input unsupported-tld))

(smithy/sdk/operation:define-operation delete-domain :shape-name "DeleteDomain"
                                       :input delete-domain-request :output
                                       delete-domain-response :errors
                                       (duplicate-request invalid-input
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation delete-tags-for-domain :shape-name
                                       "DeleteTagsForDomain" :input
                                       delete-tags-for-domain-request :output
                                       delete-tags-for-domain-response :errors
                                       (invalid-input operation-limit-exceeded
                                        unsupported-tld))

(smithy/sdk/operation:define-operation disable-domain-auto-renew :shape-name
                                       "DisableDomainAutoRenew" :input
                                       disable-domain-auto-renew-request
                                       :output
                                       disable-domain-auto-renew-response
                                       :errors (invalid-input unsupported-tld))

(smithy/sdk/operation:define-operation disable-domain-transfer-lock :shape-name
                                       "DisableDomainTransferLock" :input
                                       disable-domain-transfer-lock-request
                                       :output
                                       disable-domain-transfer-lock-response
                                       :errors
                                       (duplicate-request invalid-input
                                        operation-limit-exceeded
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation
 disassociate-delegation-signer-from-domain :shape-name
 "DisassociateDelegationSignerFromDomain" :input
 disassociate-delegation-signer-from-domain-request :output
 disassociate-delegation-signer-from-domain-response :errors
 (duplicate-request invalid-input operation-limit-exceeded tldrules-violation
  unsupported-tld))

(smithy/sdk/operation:define-operation enable-domain-auto-renew :shape-name
                                       "EnableDomainAutoRenew" :input
                                       enable-domain-auto-renew-request :output
                                       enable-domain-auto-renew-response
                                       :errors
                                       (invalid-input tldrules-violation
                                        unsupported-tld))

(smithy/sdk/operation:define-operation enable-domain-transfer-lock :shape-name
                                       "EnableDomainTransferLock" :input
                                       enable-domain-transfer-lock-request
                                       :output
                                       enable-domain-transfer-lock-response
                                       :errors
                                       (duplicate-request invalid-input
                                        operation-limit-exceeded
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation get-contact-reachability-status
                                       :shape-name
                                       "GetContactReachabilityStatus" :input
                                       get-contact-reachability-status-request
                                       :output
                                       get-contact-reachability-status-response
                                       :errors
                                       (invalid-input operation-limit-exceeded
                                        unsupported-tld))

(smithy/sdk/operation:define-operation get-domain-detail :shape-name
                                       "GetDomainDetail" :input
                                       get-domain-detail-request :output
                                       get-domain-detail-response :errors
                                       (invalid-input unsupported-tld))

(smithy/sdk/operation:define-operation get-domain-suggestions :shape-name
                                       "GetDomainSuggestions" :input
                                       get-domain-suggestions-request :output
                                       get-domain-suggestions-response :errors
                                       (invalid-input unsupported-tld))

(smithy/sdk/operation:define-operation get-operation-detail :shape-name
                                       "GetOperationDetail" :input
                                       get-operation-detail-request :output
                                       get-operation-detail-response :errors
                                       (invalid-input))

(smithy/sdk/operation:define-operation list-domains :shape-name "ListDomains"
                                       :input list-domains-request :output
                                       list-domains-response :errors
                                       (invalid-input))

(smithy/sdk/operation:define-operation list-operations :shape-name
                                       "ListOperations" :input
                                       list-operations-request :output
                                       list-operations-response :errors
                                       (invalid-input))

(smithy/sdk/operation:define-operation list-prices :shape-name "ListPrices"
                                       :input list-prices-request :output
                                       list-prices-response :errors
                                       (invalid-input unsupported-tld))

(smithy/sdk/operation:define-operation list-tags-for-domain :shape-name
                                       "ListTagsForDomain" :input
                                       list-tags-for-domain-request :output
                                       list-tags-for-domain-response :errors
                                       (invalid-input operation-limit-exceeded
                                        unsupported-tld))

(smithy/sdk/operation:define-operation push-domain :shape-name "PushDomain"
                                       :input push-domain-request :output
                                       common-lisp:null :errors
                                       (invalid-input operation-limit-exceeded
                                        unsupported-tld))

(smithy/sdk/operation:define-operation register-domain :shape-name
                                       "RegisterDomain" :input
                                       register-domain-request :output
                                       register-domain-response :errors
                                       (domain-limit-exceeded duplicate-request
                                        invalid-input operation-limit-exceeded
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation
 reject-domain-transfer-from-another-aws-account :shape-name
 "RejectDomainTransferFromAnotherAwsAccount" :input
 reject-domain-transfer-from-another-aws-account-request :output
 reject-domain-transfer-from-another-aws-account-response :errors
 (invalid-input operation-limit-exceeded unsupported-tld))

(smithy/sdk/operation:define-operation renew-domain :shape-name "RenewDomain"
                                       :input renew-domain-request :output
                                       renew-domain-response :errors
                                       (duplicate-request invalid-input
                                        operation-limit-exceeded
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation resend-contact-reachability-email
                                       :shape-name
                                       "ResendContactReachabilityEmail" :input
                                       resend-contact-reachability-email-request
                                       :output
                                       resend-contact-reachability-email-response
                                       :errors
                                       (invalid-input operation-limit-exceeded
                                        unsupported-tld))

(smithy/sdk/operation:define-operation resend-operation-authorization
                                       :shape-name
                                       "ResendOperationAuthorization" :input
                                       resend-operation-authorization-request
                                       :output common-lisp:null :errors
                                       (invalid-input))

(smithy/sdk/operation:define-operation retrieve-domain-auth-code :shape-name
                                       "RetrieveDomainAuthCode" :input
                                       retrieve-domain-auth-code-request
                                       :output
                                       retrieve-domain-auth-code-response
                                       :errors (invalid-input unsupported-tld))

(smithy/sdk/operation:define-operation transfer-domain :shape-name
                                       "TransferDomain" :input
                                       transfer-domain-request :output
                                       transfer-domain-response :errors
                                       (domain-limit-exceeded duplicate-request
                                        invalid-input operation-limit-exceeded
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation transfer-domain-to-another-aws-account
                                       :shape-name
                                       "TransferDomainToAnotherAwsAccount"
                                       :input
                                       transfer-domain-to-another-aws-account-request
                                       :output
                                       transfer-domain-to-another-aws-account-response
                                       :errors
                                       (duplicate-request invalid-input
                                        operation-limit-exceeded
                                        unsupported-tld))

(smithy/sdk/operation:define-operation update-domain-contact :shape-name
                                       "UpdateDomainContact" :input
                                       update-domain-contact-request :output
                                       update-domain-contact-response :errors
                                       (duplicate-request invalid-input
                                        operation-limit-exceeded
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation update-domain-contact-privacy
                                       :shape-name "UpdateDomainContactPrivacy"
                                       :input
                                       update-domain-contact-privacy-request
                                       :output
                                       update-domain-contact-privacy-response
                                       :errors
                                       (duplicate-request invalid-input
                                        operation-limit-exceeded
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation update-domain-nameservers :shape-name
                                       "UpdateDomainNameservers" :input
                                       update-domain-nameservers-request
                                       :output
                                       update-domain-nameservers-response
                                       :errors
                                       (duplicate-request invalid-input
                                        operation-limit-exceeded
                                        tldrules-violation unsupported-tld))

(smithy/sdk/operation:define-operation update-tags-for-domain :shape-name
                                       "UpdateTagsForDomain" :input
                                       update-tags-for-domain-request :output
                                       update-tags-for-domain-response :errors
                                       (invalid-input operation-limit-exceeded
                                        unsupported-tld))

(smithy/sdk/operation:define-operation view-billing :shape-name "ViewBilling"
                                       :input view-billing-request :output
                                       view-billing-response :errors
                                       (invalid-input))
