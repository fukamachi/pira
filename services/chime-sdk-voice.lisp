(uiop/package:define-package #:pira/chime-sdk-voice (:use)
                             (:export #:access-denied-exception #:address
                              #:alexa-skill-id #:alexa-skill-id-list
                              #:alexa-skill-status #:alpha2country-code
                              #:area-code #:arn
                              #:associate-phone-numbers-with-voice-connector
                              #:associate-phone-numbers-with-voice-connector-group
                              #:bad-request-exception
                              #:batch-delete-phone-number
                              #:batch-update-phone-number #:boolean
                              #:call-details #:call-leg-type #:calling-name
                              #:calling-name-status #:calling-region
                              #:calling-region-list #:candidate-address
                              #:candidate-address-list #:capability
                              #:capability-list #:chime-sdktelephony-service
                              #:client-request-id #:confidence-score
                              #:conflict-exception #:contact-center-system-type
                              #:contact-center-system-type-list #:country
                              #:country-list #:cps-limit
                              #:create-phone-number-order
                              #:create-proxy-session
                              #:create-sip-media-application
                              #:create-sip-media-application-call
                              #:create-sip-rule #:create-voice-connector
                              #:create-voice-connector-group
                              #:create-voice-profile
                              #:create-voice-profile-domain #:credential
                              #:credential-list
                              #:dnisemergency-calling-configuration
                              #:dnisemergency-calling-configuration-list
                              #:data-retention-in-hours #:delete-phone-number
                              #:delete-proxy-session
                              #:delete-sip-media-application #:delete-sip-rule
                              #:delete-voice-connector
                              #:delete-voice-connector-emergency-calling-configuration
                              #:delete-voice-connector-external-systems-configuration
                              #:delete-voice-connector-group
                              #:delete-voice-connector-origination
                              #:delete-voice-connector-proxy
                              #:delete-voice-connector-streaming-configuration
                              #:delete-voice-connector-termination
                              #:delete-voice-connector-termination-credentials
                              #:delete-voice-profile
                              #:delete-voice-profile-domain
                              #:disassociate-phone-numbers-from-voice-connector
                              #:disassociate-phone-numbers-from-voice-connector-group
                              #:e164phone-number #:e164phone-number-list
                              #:emergency-calling-configuration #:error-code
                              #:external-systems-configuration
                              #:forbidden-exception #:function-arn
                              #:geo-match-level #:geo-match-params
                              #:get-global-settings #:get-phone-number
                              #:get-phone-number-order
                              #:get-phone-number-settings #:get-proxy-session
                              #:get-sip-media-application
                              #:get-sip-media-application-alexa-skill-configuration
                              #:get-sip-media-application-logging-configuration
                              #:get-sip-rule #:get-speaker-search-task
                              #:get-voice-connector
                              #:get-voice-connector-emergency-calling-configuration
                              #:get-voice-connector-external-systems-configuration
                              #:get-voice-connector-group
                              #:get-voice-connector-logging-configuration
                              #:get-voice-connector-origination
                              #:get-voice-connector-proxy
                              #:get-voice-connector-streaming-configuration
                              #:get-voice-connector-termination
                              #:get-voice-connector-termination-health
                              #:get-voice-profile #:get-voice-profile-domain
                              #:get-voice-tone-analysis-task #:gone-exception
                              #:guid-string #:integer #:iso8601timestamp
                              #:language-code
                              #:list-available-voice-connector-regions
                              #:list-phone-number-orders #:list-phone-numbers
                              #:list-proxy-sessions
                              #:list-sip-media-applications #:list-sip-rules
                              #:list-supported-phone-number-countries
                              #:list-tags-for-resource
                              #:list-voice-connector-groups
                              #:list-voice-connector-termination-credentials
                              #:list-voice-connectors
                              #:list-voice-profile-domains
                              #:list-voice-profiles #:logging-configuration
                              #:media-insights-configuration
                              #:next-token-string #:non-empty-string
                              #:non-empty-string128 #:non-empty-string256
                              #:non-empty-string-list #:not-found-exception
                              #:notification-target #:nullable-boolean
                              #:number-selection-behavior
                              #:ordered-phone-number
                              #:ordered-phone-number-list
                              #:ordered-phone-number-status #:origination
                              #:origination-route #:origination-route-list
                              #:origination-route-priority
                              #:origination-route-protocol
                              #:origination-route-weight #:participant
                              #:participant-phone-number-list #:participants
                              #:phone-number #:phone-number-association
                              #:phone-number-association-list
                              #:phone-number-association-name
                              #:phone-number-capabilities
                              #:phone-number-countries-list
                              #:phone-number-country #:phone-number-error
                              #:phone-number-error-list #:phone-number-list
                              #:phone-number-max-results #:phone-number-name
                              #:phone-number-order #:phone-number-order-list
                              #:phone-number-order-status
                              #:phone-number-order-type
                              #:phone-number-product-type #:phone-number-status
                              #:phone-number-type #:phone-number-type-list
                              #:port #:positive-integer #:proxy #:proxy-session
                              #:proxy-session-name-string
                              #:proxy-session-status #:proxy-sessions
                              #:put-sip-media-application-alexa-skill-configuration
                              #:put-sip-media-application-logging-configuration
                              #:put-voice-connector-emergency-calling-configuration
                              #:put-voice-connector-external-systems-configuration
                              #:put-voice-connector-logging-configuration
                              #:put-voice-connector-origination
                              #:put-voice-connector-proxy
                              #:put-voice-connector-streaming-configuration
                              #:put-voice-connector-termination
                              #:put-voice-connector-termination-credentials
                              #:resource-limit-exceeded-exception
                              #:restore-phone-number #:result-max
                              #:smacreate-call-arguments-map
                              #:smaupdate-call-arguments-map
                              #:search-available-phone-numbers
                              #:sensitive-non-empty-string #:sensitive-string
                              #:sensitive-string-list
                              #:server-side-encryption-configuration
                              #:service-failure-exception
                              #:service-unavailable-exception
                              #:session-border-controller-type
                              #:session-border-controller-type-list
                              #:sip-application-priority #:sip-headers-map
                              #:sip-media-application
                              #:sip-media-application-alexa-skill-configuration
                              #:sip-media-application-call
                              #:sip-media-application-endpoint
                              #:sip-media-application-endpoint-list
                              #:sip-media-application-list
                              #:sip-media-application-logging-configuration
                              #:sip-media-application-name #:sip-rule
                              #:sip-rule-list #:sip-rule-name
                              #:sip-rule-target-application
                              #:sip-rule-target-application-list
                              #:sip-rule-trigger-type #:speaker-search-details
                              #:speaker-search-result
                              #:speaker-search-result-list
                              #:speaker-search-task #:start-speaker-search-task
                              #:start-voice-tone-analysis-task
                              #:stop-speaker-search-task
                              #:stop-voice-tone-analysis-task
                              #:streaming-configuration
                              #:streaming-notification-target
                              #:streaming-notification-target-list #:string
                              #:string128 #:string-list #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:termination #:termination-health
                              #:throttled-client-exception #:toll-free-prefix
                              #:unauthorized-client-exception
                              #:unprocessable-entity-exception #:untag-resource
                              #:update-global-settings #:update-phone-number
                              #:update-phone-number-request-item
                              #:update-phone-number-request-item-list
                              #:update-phone-number-settings
                              #:update-proxy-session
                              #:update-sip-media-application
                              #:update-sip-media-application-call
                              #:update-sip-rule #:update-voice-connector
                              #:update-voice-connector-group
                              #:update-voice-profile
                              #:update-voice-profile-domain
                              #:validate-e911address #:validation-result
                              #:voice-connector #:voice-connector-aws-region
                              #:voice-connector-aws-region-list
                              #:voice-connector-group
                              #:voice-connector-group-list
                              #:voice-connector-group-name
                              #:voice-connector-integration-type
                              #:voice-connector-item
                              #:voice-connector-item-list
                              #:voice-connector-item-priority
                              #:voice-connector-list #:voice-connector-name
                              #:voice-connector-settings #:voice-profile
                              #:voice-profile-domain
                              #:voice-profile-domain-description
                              #:voice-profile-domain-name
                              #:voice-profile-domain-summary
                              #:voice-profile-domain-summary-list
                              #:voice-profile-summary
                              #:voice-profile-summary-list
                              #:voice-tone-analysis-task
                              #:chime-sdk-voice-error))
(common-lisp:in-package #:pira/chime-sdk-voice)

(common-lisp:define-condition chime-sdk-voice-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service chime-sdktelephony-service :shape-name
                                   "ChimeSDKTelephonyService" :version
                                   "2022-08-03" :title "Amazon Chime SDK Voice"
                                   :operations
                                   '(associate-phone-numbers-with-voice-connector
                                     associate-phone-numbers-with-voice-connector-group
                                     batch-delete-phone-number
                                     batch-update-phone-number
                                     create-phone-number-order
                                     create-proxy-session
                                     create-sip-media-application
                                     create-sip-media-application-call
                                     create-sip-rule create-voice-connector
                                     create-voice-connector-group
                                     create-voice-profile
                                     create-voice-profile-domain
                                     delete-phone-number delete-proxy-session
                                     delete-sip-media-application
                                     delete-sip-rule delete-voice-connector
                                     delete-voice-connector-emergency-calling-configuration
                                     delete-voice-connector-external-systems-configuration
                                     delete-voice-connector-group
                                     delete-voice-connector-origination
                                     delete-voice-connector-proxy
                                     delete-voice-connector-streaming-configuration
                                     delete-voice-connector-termination
                                     delete-voice-connector-termination-credentials
                                     delete-voice-profile
                                     delete-voice-profile-domain
                                     disassociate-phone-numbers-from-voice-connector
                                     disassociate-phone-numbers-from-voice-connector-group
                                     get-global-settings get-phone-number
                                     get-phone-number-order
                                     get-phone-number-settings
                                     get-proxy-session
                                     get-sip-media-application
                                     get-sip-media-application-alexa-skill-configuration
                                     get-sip-media-application-logging-configuration
                                     get-sip-rule get-speaker-search-task
                                     get-voice-connector
                                     get-voice-connector-emergency-calling-configuration
                                     get-voice-connector-external-systems-configuration
                                     get-voice-connector-group
                                     get-voice-connector-logging-configuration
                                     get-voice-connector-origination
                                     get-voice-connector-proxy
                                     get-voice-connector-streaming-configuration
                                     get-voice-connector-termination
                                     get-voice-connector-termination-health
                                     get-voice-profile get-voice-profile-domain
                                     get-voice-tone-analysis-task
                                     list-available-voice-connector-regions
                                     list-phone-number-orders
                                     list-phone-numbers list-proxy-sessions
                                     list-sip-media-applications list-sip-rules
                                     list-supported-phone-number-countries
                                     list-tags-for-resource
                                     list-voice-connector-groups
                                     list-voice-connectors
                                     list-voice-connector-termination-credentials
                                     list-voice-profile-domains
                                     list-voice-profiles
                                     put-sip-media-application-alexa-skill-configuration
                                     put-sip-media-application-logging-configuration
                                     put-voice-connector-emergency-calling-configuration
                                     put-voice-connector-external-systems-configuration
                                     put-voice-connector-logging-configuration
                                     put-voice-connector-origination
                                     put-voice-connector-proxy
                                     put-voice-connector-streaming-configuration
                                     put-voice-connector-termination
                                     put-voice-connector-termination-credentials
                                     restore-phone-number
                                     search-available-phone-numbers
                                     start-speaker-search-task
                                     start-voice-tone-analysis-task
                                     stop-speaker-search-task
                                     stop-voice-tone-analysis-task tag-resource
                                     untag-resource update-global-settings
                                     update-phone-number
                                     update-phone-number-settings
                                     update-proxy-session
                                     update-sip-media-application
                                     update-sip-media-application-call
                                     update-sip-rule update-voice-connector
                                     update-voice-connector-group
                                     update-voice-profile
                                     update-voice-profile-domain
                                     validate-e911address)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Chime SDK Voice")
                                      ("arnNamespace" . "chime")
                                      ("cloudFormationName" . "ChimeSDKVoice")
                                      ("cloudTrailEventSource"
                                       . "chimesdkvoice.amazonaws.com")
                                      ("endpointPrefix" . "voice-chime"))
                                     ("aws.auth#sigv4" ("name" . "chime"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((street-name :target-type
                                      sensitive-non-empty-string :member-name
                                      "streetName")
                                     (street-suffix :target-type
                                      sensitive-non-empty-string :member-name
                                      "streetSuffix")
                                     (post-directional :target-type
                                      sensitive-non-empty-string :member-name
                                      "postDirectional")
                                     (pre-directional :target-type
                                      sensitive-non-empty-string :member-name
                                      "preDirectional")
                                     (street-number :target-type
                                      sensitive-non-empty-string :member-name
                                      "streetNumber")
                                     (city :target-type
                                      sensitive-non-empty-string :member-name
                                      "city")
                                     (state :target-type
                                      sensitive-non-empty-string :member-name
                                      "state")
                                     (postal-code :target-type
                                      sensitive-non-empty-string :member-name
                                      "postalCode")
                                     (postal-code-plus4 :target-type
                                      sensitive-non-empty-string :member-name
                                      "postalCodePlus4")
                                     (country :target-type
                                      sensitive-non-empty-string :member-name
                                      "country"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-type alexa-skill-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list alexa-skill-id-list :member alexa-skill-id)

(smithy/sdk/shapes:define-enum alexa-skill-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-type alpha2country-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type area-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 associate-phone-numbers-with-voice-connector-group-request common-lisp:nil
 ((voice-connector-group-id :target-type non-empty-string :required
   common-lisp:t :member-name "VoiceConnectorGroupId" :http-label
   common-lisp:t)
  (e164phone-numbers :target-type e164phone-number-list :required common-lisp:t
   :member-name "E164PhoneNumbers")
  (force-associate :target-type nullable-boolean :member-name
   "ForceAssociate"))
 (:shape-name "AssociatePhoneNumbersWithVoiceConnectorGroupRequest"))

(smithy/sdk/shapes:define-output
 associate-phone-numbers-with-voice-connector-group-response common-lisp:nil
 ((phone-number-errors :target-type phone-number-error-list :member-name
   "PhoneNumberErrors"))
 (:shape-name "AssociatePhoneNumbersWithVoiceConnectorGroupResponse"))

(smithy/sdk/shapes:define-input
 associate-phone-numbers-with-voice-connector-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t)
  (e164phone-numbers :target-type e164phone-number-list :required common-lisp:t
   :member-name "E164PhoneNumbers")
  (force-associate :target-type nullable-boolean :member-name
   "ForceAssociate"))
 (:shape-name "AssociatePhoneNumbersWithVoiceConnectorRequest"))

(smithy/sdk/shapes:define-output
 associate-phone-numbers-with-voice-connector-response common-lisp:nil
 ((phone-number-errors :target-type phone-number-error-list :member-name
   "PhoneNumberErrors"))
 (:shape-name "AssociatePhoneNumbersWithVoiceConnectorResponse"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-input batch-delete-phone-number-request
                                common-lisp:nil
                                ((phone-number-ids :target-type
                                  non-empty-string-list :required common-lisp:t
                                  :member-name "PhoneNumberIds"))
                                (:shape-name "BatchDeletePhoneNumberRequest"))

(smithy/sdk/shapes:define-output batch-delete-phone-number-response
                                 common-lisp:nil
                                 ((phone-number-errors :target-type
                                   phone-number-error-list :member-name
                                   "PhoneNumberErrors"))
                                 (:shape-name "BatchDeletePhoneNumberResponse"))

(smithy/sdk/shapes:define-input batch-update-phone-number-request
                                common-lisp:nil
                                ((update-phone-number-request-items
                                  :target-type
                                  update-phone-number-request-item-list
                                  :required common-lisp:t :member-name
                                  "UpdatePhoneNumberRequestItems"))
                                (:shape-name "BatchUpdatePhoneNumberRequest"))

(smithy/sdk/shapes:define-output batch-update-phone-number-response
                                 common-lisp:nil
                                 ((phone-number-errors :target-type
                                   phone-number-error-list :member-name
                                   "PhoneNumberErrors"))
                                 (:shape-name "BatchUpdatePhoneNumberResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure call-details common-lisp:nil
                                    ((voice-connector-id :target-type
                                      non-empty-string128 :member-name
                                      "VoiceConnectorId")
                                     (transaction-id :target-type
                                      non-empty-string256 :member-name
                                      "TransactionId")
                                     (is-caller :target-type boolean
                                      :member-name "IsCaller"))
                                    (:shape-name "CallDetails"))

(smithy/sdk/shapes:define-enum call-leg-type
    common-lisp:nil
  (:caller "Caller")
  (:callee "Callee"))

(smithy/sdk/shapes:define-type calling-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum calling-name-status
    common-lisp:nil
  (:unassigned "Unassigned")
  (:update-in-progress "UpdateInProgress")
  (:update-succeeded "UpdateSucceeded")
  (:update-failed "UpdateFailed"))

(smithy/sdk/shapes:define-type calling-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list calling-region-list :member calling-region)

(smithy/sdk/shapes:define-structure candidate-address common-lisp:nil
                                    ((street-info :target-type
                                      sensitive-non-empty-string :member-name
                                      "streetInfo")
                                     (street-number :target-type
                                      sensitive-non-empty-string :member-name
                                      "streetNumber")
                                     (city :target-type
                                      sensitive-non-empty-string :member-name
                                      "city")
                                     (state :target-type
                                      sensitive-non-empty-string :member-name
                                      "state")
                                     (postal-code :target-type
                                      sensitive-non-empty-string :member-name
                                      "postalCode")
                                     (postal-code-plus4 :target-type
                                      sensitive-non-empty-string :member-name
                                      "postalCodePlus4")
                                     (country :target-type
                                      sensitive-non-empty-string :member-name
                                      "country"))
                                    (:shape-name "CandidateAddress"))

(smithy/sdk/shapes:define-list candidate-address-list :member
                               (candidate-address :xml-name "CandidateAddress"))

(smithy/sdk/shapes:define-enum capability
    common-lisp:nil
  (:voice "Voice")
  (:sms "SMS"))

(smithy/sdk/shapes:define-list capability-list :member capability)

(smithy/sdk/shapes:define-type client-request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type confidence-score smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-enum contact-center-system-type
    common-lisp:nil
  (:genesys-engage-on-premises "GENESYS_ENGAGE_ON_PREMISES")
  (:avaya-aura-call-center-elite "AVAYA_AURA_CALL_CENTER_ELITE")
  (:avaya-aura-contact-center "AVAYA_AURA_CONTACT_CENTER")
  (:cisco-unified-contact-center-enterprise
   "CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE"))

(smithy/sdk/shapes:define-list contact-center-system-type-list :member
                               contact-center-system-type)

(smithy/sdk/shapes:define-type country smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list country-list :member country)

(smithy/sdk/shapes:define-type cps-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-phone-number-order-request
                                common-lisp:nil
                                ((product-type :target-type
                                  phone-number-product-type :required
                                  common-lisp:t :member-name "ProductType")
                                 (e164phone-numbers :target-type
                                  e164phone-number-list :required common-lisp:t
                                  :member-name "E164PhoneNumbers")
                                 (name :target-type phone-number-name
                                  :member-name "Name"))
                                (:shape-name "CreatePhoneNumberOrderRequest"))

(smithy/sdk/shapes:define-output create-phone-number-order-response
                                 common-lisp:nil
                                 ((phone-number-order :target-type
                                   phone-number-order :member-name
                                   "PhoneNumberOrder"))
                                 (:shape-name "CreatePhoneNumberOrderResponse"))

(smithy/sdk/shapes:define-input create-proxy-session-request common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (participant-phone-numbers :target-type
                                  participant-phone-number-list :required
                                  common-lisp:t :member-name
                                  "ParticipantPhoneNumbers")
                                 (name :target-type proxy-session-name-string
                                  :member-name "Name")
                                 (expiry-minutes :target-type positive-integer
                                  :member-name "ExpiryMinutes")
                                 (capabilities :target-type capability-list
                                  :required common-lisp:t :member-name
                                  "Capabilities")
                                 (number-selection-behavior :target-type
                                  number-selection-behavior :member-name
                                  "NumberSelectionBehavior")
                                 (geo-match-level :target-type geo-match-level
                                  :member-name "GeoMatchLevel")
                                 (geo-match-params :target-type
                                  geo-match-params :member-name
                                  "GeoMatchParams"))
                                (:shape-name "CreateProxySessionRequest"))

(smithy/sdk/shapes:define-output create-proxy-session-response common-lisp:nil
                                 ((proxy-session :target-type proxy-session
                                   :member-name "ProxySession"))
                                 (:shape-name "CreateProxySessionResponse"))

(smithy/sdk/shapes:define-input create-sip-media-application-call-request
                                common-lisp:nil
                                ((from-phone-number :target-type
                                  e164phone-number :required common-lisp:t
                                  :member-name "FromPhoneNumber")
                                 (to-phone-number :target-type e164phone-number
                                  :required common-lisp:t :member-name
                                  "ToPhoneNumber")
                                 (sip-media-application-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "SipMediaApplicationId"
                                  :http-label common-lisp:t)
                                 (sip-headers :target-type sip-headers-map
                                  :member-name "SipHeaders")
                                 (arguments-map :target-type
                                  smacreate-call-arguments-map :member-name
                                  "ArgumentsMap"))
                                (:shape-name
                                 "CreateSipMediaApplicationCallRequest"))

(smithy/sdk/shapes:define-output create-sip-media-application-call-response
                                 common-lisp:nil
                                 ((sip-media-application-call :target-type
                                   sip-media-application-call :member-name
                                   "SipMediaApplicationCall"))
                                 (:shape-name
                                  "CreateSipMediaApplicationCallResponse"))

(smithy/sdk/shapes:define-input create-sip-media-application-request
                                common-lisp:nil
                                ((aws-region :target-type string :required
                                  common-lisp:t :member-name "AwsRegion")
                                 (name :target-type sip-media-application-name
                                  :required common-lisp:t :member-name "Name")
                                 (endpoints :target-type
                                  sip-media-application-endpoint-list :required
                                  common-lisp:t :member-name "Endpoints")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateSipMediaApplicationRequest"))

(smithy/sdk/shapes:define-output create-sip-media-application-response
                                 common-lisp:nil
                                 ((sip-media-application :target-type
                                   sip-media-application :member-name
                                   "SipMediaApplication"))
                                 (:shape-name
                                  "CreateSipMediaApplicationResponse"))

(smithy/sdk/shapes:define-input create-sip-rule-request common-lisp:nil
                                ((name :target-type sip-rule-name :required
                                  common-lisp:t :member-name "Name")
                                 (trigger-type :target-type
                                  sip-rule-trigger-type :required common-lisp:t
                                  :member-name "TriggerType")
                                 (trigger-value :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "TriggerValue")
                                 (disabled :target-type nullable-boolean
                                  :member-name "Disabled")
                                 (target-applications :target-type
                                  sip-rule-target-application-list :member-name
                                  "TargetApplications"))
                                (:shape-name "CreateSipRuleRequest"))

(smithy/sdk/shapes:define-output create-sip-rule-response common-lisp:nil
                                 ((sip-rule :target-type sip-rule :member-name
                                   "SipRule"))
                                 (:shape-name "CreateSipRuleResponse"))

(smithy/sdk/shapes:define-input create-voice-connector-group-request
                                common-lisp:nil
                                ((name :target-type voice-connector-group-name
                                  :required common-lisp:t :member-name "Name")
                                 (voice-connector-items :target-type
                                  voice-connector-item-list :member-name
                                  "VoiceConnectorItems"))
                                (:shape-name
                                 "CreateVoiceConnectorGroupRequest"))

(smithy/sdk/shapes:define-output create-voice-connector-group-response
                                 common-lisp:nil
                                 ((voice-connector-group :target-type
                                   voice-connector-group :member-name
                                   "VoiceConnectorGroup"))
                                 (:shape-name
                                  "CreateVoiceConnectorGroupResponse"))

(smithy/sdk/shapes:define-input create-voice-connector-request common-lisp:nil
                                ((name :target-type voice-connector-name
                                  :required common-lisp:t :member-name "Name")
                                 (aws-region :target-type
                                  voice-connector-aws-region :member-name
                                  "AwsRegion")
                                 (require-encryption :target-type boolean
                                  :required common-lisp:t :member-name
                                  "RequireEncryption")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (integration-type :target-type
                                  voice-connector-integration-type :member-name
                                  "IntegrationType"))
                                (:shape-name "CreateVoiceConnectorRequest"))

(smithy/sdk/shapes:define-output create-voice-connector-response
                                 common-lisp:nil
                                 ((voice-connector :target-type voice-connector
                                   :member-name "VoiceConnector"))
                                 (:shape-name "CreateVoiceConnectorResponse"))

(smithy/sdk/shapes:define-input create-voice-profile-domain-request
                                common-lisp:nil
                                ((name :target-type voice-profile-domain-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  voice-profile-domain-description :member-name
                                  "Description")
                                 (server-side-encryption-configuration
                                  :target-type
                                  server-side-encryption-configuration
                                  :required common-lisp:t :member-name
                                  "ServerSideEncryptionConfiguration")
                                 (client-request-token :target-type
                                  client-request-id :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateVoiceProfileDomainRequest"))

(smithy/sdk/shapes:define-output create-voice-profile-domain-response
                                 common-lisp:nil
                                 ((voice-profile-domain :target-type
                                   voice-profile-domain :member-name
                                   "VoiceProfileDomain"))
                                 (:shape-name
                                  "CreateVoiceProfileDomainResponse"))

(smithy/sdk/shapes:define-input create-voice-profile-request common-lisp:nil
                                ((speaker-search-task-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "SpeakerSearchTaskId"))
                                (:shape-name "CreateVoiceProfileRequest"))

(smithy/sdk/shapes:define-output create-voice-profile-response common-lisp:nil
                                 ((voice-profile :target-type voice-profile
                                   :member-name "VoiceProfile"))
                                 (:shape-name "CreateVoiceProfileResponse"))

(smithy/sdk/shapes:define-structure credential common-lisp:nil
                                    ((username :target-type sensitive-string
                                      :member-name "Username")
                                     (password :target-type sensitive-string
                                      :member-name "Password"))
                                    (:shape-name "Credential"))

(smithy/sdk/shapes:define-list credential-list :member credential)

(smithy/sdk/shapes:define-structure dnisemergency-calling-configuration
                                    common-lisp:nil
                                    ((emergency-phone-number :target-type
                                      e164phone-number :required common-lisp:t
                                      :member-name "EmergencyPhoneNumber")
                                     (test-phone-number :target-type
                                      e164phone-number :member-name
                                      "TestPhoneNumber")
                                     (calling-country :target-type
                                      alpha2country-code :required
                                      common-lisp:t :member-name
                                      "CallingCountry"))
                                    (:shape-name
                                     "DNISEmergencyCallingConfiguration"))

(smithy/sdk/shapes:define-list dnisemergency-calling-configuration-list :member
                               dnisemergency-calling-configuration)

(smithy/sdk/shapes:define-type data-retention-in-hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input delete-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type
                                  sensitive-non-empty-string :required
                                  common-lisp:t :member-name "PhoneNumberId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeletePhoneNumberRequest"))

(smithy/sdk/shapes:define-input delete-proxy-session-request common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (proxy-session-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "ProxySessionId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteProxySessionRequest"))

(smithy/sdk/shapes:define-input delete-sip-media-application-request
                                common-lisp:nil
                                ((sip-media-application-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "SipMediaApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteSipMediaApplicationRequest"))

(smithy/sdk/shapes:define-input delete-sip-rule-request common-lisp:nil
                                ((sip-rule-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "SipRuleId" :http-label common-lisp:t))
                                (:shape-name "DeleteSipRuleRequest"))

(smithy/sdk/shapes:define-input
 delete-voice-connector-emergency-calling-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t))
 (:shape-name "DeleteVoiceConnectorEmergencyCallingConfigurationRequest"))

(smithy/sdk/shapes:define-input
 delete-voice-connector-external-systems-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t))
 (:shape-name "DeleteVoiceConnectorExternalSystemsConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-voice-connector-group-request
                                common-lisp:nil
                                ((voice-connector-group-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorGroupId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteVoiceConnectorGroupRequest"))

(smithy/sdk/shapes:define-input delete-voice-connector-origination-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteVoiceConnectorOriginationRequest"))

(smithy/sdk/shapes:define-input delete-voice-connector-proxy-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteVoiceConnectorProxyRequest"))

(smithy/sdk/shapes:define-input delete-voice-connector-request common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteVoiceConnectorRequest"))

(smithy/sdk/shapes:define-input
 delete-voice-connector-streaming-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t))
 (:shape-name "DeleteVoiceConnectorStreamingConfigurationRequest"))

(smithy/sdk/shapes:define-input
 delete-voice-connector-termination-credentials-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t)
  (usernames :target-type sensitive-string-list :required common-lisp:t
   :member-name "Usernames"))
 (:shape-name "DeleteVoiceConnectorTerminationCredentialsRequest"))

(smithy/sdk/shapes:define-input delete-voice-connector-termination-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteVoiceConnectorTerminationRequest"))

(smithy/sdk/shapes:define-input delete-voice-profile-domain-request
                                common-lisp:nil
                                ((voice-profile-domain-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceProfileDomainId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteVoiceProfileDomainRequest"))

(smithy/sdk/shapes:define-input delete-voice-profile-request common-lisp:nil
                                ((voice-profile-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceProfileId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteVoiceProfileRequest"))

(smithy/sdk/shapes:define-input
 disassociate-phone-numbers-from-voice-connector-group-request common-lisp:nil
 ((voice-connector-group-id :target-type non-empty-string :required
   common-lisp:t :member-name "VoiceConnectorGroupId" :http-label
   common-lisp:t)
  (e164phone-numbers :target-type e164phone-number-list :required common-lisp:t
   :member-name "E164PhoneNumbers"))
 (:shape-name "DisassociatePhoneNumbersFromVoiceConnectorGroupRequest"))

(smithy/sdk/shapes:define-output
 disassociate-phone-numbers-from-voice-connector-group-response common-lisp:nil
 ((phone-number-errors :target-type phone-number-error-list :member-name
   "PhoneNumberErrors"))
 (:shape-name "DisassociatePhoneNumbersFromVoiceConnectorGroupResponse"))

(smithy/sdk/shapes:define-input
 disassociate-phone-numbers-from-voice-connector-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t)
  (e164phone-numbers :target-type e164phone-number-list :required common-lisp:t
   :member-name "E164PhoneNumbers"))
 (:shape-name "DisassociatePhoneNumbersFromVoiceConnectorRequest"))

(smithy/sdk/shapes:define-output
 disassociate-phone-numbers-from-voice-connector-response common-lisp:nil
 ((phone-number-errors :target-type phone-number-error-list :member-name
   "PhoneNumberErrors"))
 (:shape-name "DisassociatePhoneNumbersFromVoiceConnectorResponse"))

(smithy/sdk/shapes:define-type e164phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list e164phone-number-list :member e164phone-number)

(smithy/sdk/shapes:define-structure emergency-calling-configuration
                                    common-lisp:nil
                                    ((dnis :target-type
                                      dnisemergency-calling-configuration-list
                                      :member-name "DNIS"))
                                    (:shape-name
                                     "EmergencyCallingConfiguration"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:bad-request "BadRequest")
  (:conflict "Conflict")
  (:forbidden "Forbidden")
  (:not-found "NotFound")
  (:precondition-failed "PreconditionFailed")
  (:resource-limit-exceeded "ResourceLimitExceeded")
  (:service-failure "ServiceFailure")
  (:access-denied "AccessDenied")
  (:service-unavailable "ServiceUnavailable")
  (:throttled "Throttled")
  (:throttling "Throttling")
  (:unauthorized "Unauthorized")
  (:unprocessable "Unprocessable")
  (:voice-connector-group-associations-exist
   "VoiceConnectorGroupAssociationsExist")
  (:phone-number-associations-exist "PhoneNumberAssociationsExist")
  (:gone "Gone"))

(smithy/sdk/shapes:define-structure external-systems-configuration
                                    common-lisp:nil
                                    ((session-border-controller-types
                                      :target-type
                                      session-border-controller-type-list
                                      :member-name
                                      "SessionBorderControllerTypes")
                                     (contact-center-system-types :target-type
                                      contact-center-system-type-list
                                      :member-name "ContactCenterSystemTypes"))
                                    (:shape-name
                                     "ExternalSystemsConfiguration"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-type function-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum geo-match-level
    common-lisp:nil
  (:country "Country")
  (:area-code "AreaCode"))

(smithy/sdk/shapes:define-structure geo-match-params common-lisp:nil
                                    ((country :target-type country :required
                                      common-lisp:t :member-name "Country")
                                     (area-code :target-type area-code
                                      :required common-lisp:t :member-name
                                      "AreaCode"))
                                    (:shape-name "GeoMatchParams"))

(smithy/sdk/shapes:define-output get-global-settings-response common-lisp:nil
                                 ((voice-connector :target-type
                                   voice-connector-settings :member-name
                                   "VoiceConnector"))
                                 (:shape-name "GetGlobalSettingsResponse"))

(smithy/sdk/shapes:define-input get-phone-number-order-request common-lisp:nil
                                ((phone-number-order-id :target-type
                                  guid-string :required common-lisp:t
                                  :member-name "PhoneNumberOrderId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPhoneNumberOrderRequest"))

(smithy/sdk/shapes:define-output get-phone-number-order-response
                                 common-lisp:nil
                                 ((phone-number-order :target-type
                                   phone-number-order :member-name
                                   "PhoneNumberOrder"))
                                 (:shape-name "GetPhoneNumberOrderResponse"))

(smithy/sdk/shapes:define-input get-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type
                                  sensitive-non-empty-string :required
                                  common-lisp:t :member-name "PhoneNumberId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetPhoneNumberRequest"))

(smithy/sdk/shapes:define-output get-phone-number-response common-lisp:nil
                                 ((phone-number :target-type phone-number
                                   :member-name "PhoneNumber"))
                                 (:shape-name "GetPhoneNumberResponse"))

(smithy/sdk/shapes:define-output get-phone-number-settings-response
                                 common-lisp:nil
                                 ((calling-name :target-type calling-name
                                   :member-name "CallingName")
                                  (calling-name-updated-timestamp :target-type
                                   iso8601timestamp :member-name
                                   "CallingNameUpdatedTimestamp"))
                                 (:shape-name "GetPhoneNumberSettingsResponse"))

(smithy/sdk/shapes:define-input get-proxy-session-request common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (proxy-session-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "ProxySessionId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetProxySessionRequest"))

(smithy/sdk/shapes:define-output get-proxy-session-response common-lisp:nil
                                 ((proxy-session :target-type proxy-session
                                   :member-name "ProxySession"))
                                 (:shape-name "GetProxySessionResponse"))

(smithy/sdk/shapes:define-input
 get-sip-media-application-alexa-skill-configuration-request common-lisp:nil
 ((sip-media-application-id :target-type non-empty-string :required
   common-lisp:t :member-name "SipMediaApplicationId" :http-label
   common-lisp:t))
 (:shape-name "GetSipMediaApplicationAlexaSkillConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-sip-media-application-alexa-skill-configuration-response common-lisp:nil
 ((sip-media-application-alexa-skill-configuration :target-type
   sip-media-application-alexa-skill-configuration :member-name
   "SipMediaApplicationAlexaSkillConfiguration"))
 (:shape-name "GetSipMediaApplicationAlexaSkillConfigurationResponse"))

(smithy/sdk/shapes:define-input
 get-sip-media-application-logging-configuration-request common-lisp:nil
 ((sip-media-application-id :target-type non-empty-string :required
   common-lisp:t :member-name "SipMediaApplicationId" :http-label
   common-lisp:t))
 (:shape-name "GetSipMediaApplicationLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-sip-media-application-logging-configuration-response common-lisp:nil
 ((sip-media-application-logging-configuration :target-type
   sip-media-application-logging-configuration :member-name
   "SipMediaApplicationLoggingConfiguration"))
 (:shape-name "GetSipMediaApplicationLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input get-sip-media-application-request
                                common-lisp:nil
                                ((sip-media-application-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "SipMediaApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSipMediaApplicationRequest"))

(smithy/sdk/shapes:define-output get-sip-media-application-response
                                 common-lisp:nil
                                 ((sip-media-application :target-type
                                   sip-media-application :member-name
                                   "SipMediaApplication"))
                                 (:shape-name "GetSipMediaApplicationResponse"))

(smithy/sdk/shapes:define-input get-sip-rule-request common-lisp:nil
                                ((sip-rule-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "SipRuleId" :http-label common-lisp:t))
                                (:shape-name "GetSipRuleRequest"))

(smithy/sdk/shapes:define-output get-sip-rule-response common-lisp:nil
                                 ((sip-rule :target-type sip-rule :member-name
                                   "SipRule"))
                                 (:shape-name "GetSipRuleResponse"))

(smithy/sdk/shapes:define-input get-speaker-search-task-request common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (speaker-search-task-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "SpeakerSearchTaskId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSpeakerSearchTaskRequest"))

(smithy/sdk/shapes:define-output get-speaker-search-task-response
                                 common-lisp:nil
                                 ((speaker-search-task :target-type
                                   speaker-search-task :member-name
                                   "SpeakerSearchTask"))
                                 (:shape-name "GetSpeakerSearchTaskResponse"))

(smithy/sdk/shapes:define-input
 get-voice-connector-emergency-calling-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t))
 (:shape-name "GetVoiceConnectorEmergencyCallingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-voice-connector-emergency-calling-configuration-response common-lisp:nil
 ((emergency-calling-configuration :target-type emergency-calling-configuration
   :member-name "EmergencyCallingConfiguration"))
 (:shape-name "GetVoiceConnectorEmergencyCallingConfigurationResponse"))

(smithy/sdk/shapes:define-input
 get-voice-connector-external-systems-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t))
 (:shape-name "GetVoiceConnectorExternalSystemsConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-voice-connector-external-systems-configuration-response common-lisp:nil
 ((external-systems-configuration :target-type external-systems-configuration
   :member-name "ExternalSystemsConfiguration"))
 (:shape-name "GetVoiceConnectorExternalSystemsConfigurationResponse"))

(smithy/sdk/shapes:define-input get-voice-connector-group-request
                                common-lisp:nil
                                ((voice-connector-group-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorGroupId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVoiceConnectorGroupRequest"))

(smithy/sdk/shapes:define-output get-voice-connector-group-response
                                 common-lisp:nil
                                 ((voice-connector-group :target-type
                                   voice-connector-group :member-name
                                   "VoiceConnectorGroup"))
                                 (:shape-name "GetVoiceConnectorGroupResponse"))

(smithy/sdk/shapes:define-input
 get-voice-connector-logging-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t))
 (:shape-name "GetVoiceConnectorLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-voice-connector-logging-configuration-response common-lisp:nil
 ((logging-configuration :target-type logging-configuration :member-name
   "LoggingConfiguration"))
 (:shape-name "GetVoiceConnectorLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input get-voice-connector-origination-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetVoiceConnectorOriginationRequest"))

(smithy/sdk/shapes:define-output get-voice-connector-origination-response
                                 common-lisp:nil
                                 ((origination :target-type origination
                                   :member-name "Origination"))
                                 (:shape-name
                                  "GetVoiceConnectorOriginationResponse"))

(smithy/sdk/shapes:define-input get-voice-connector-proxy-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetVoiceConnectorProxyRequest"))

(smithy/sdk/shapes:define-output get-voice-connector-proxy-response
                                 common-lisp:nil
                                 ((proxy :target-type proxy :member-name
                                   "Proxy"))
                                 (:shape-name "GetVoiceConnectorProxyResponse"))

(smithy/sdk/shapes:define-input get-voice-connector-request common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetVoiceConnectorRequest"))

(smithy/sdk/shapes:define-output get-voice-connector-response common-lisp:nil
                                 ((voice-connector :target-type voice-connector
                                   :member-name "VoiceConnector"))
                                 (:shape-name "GetVoiceConnectorResponse"))

(smithy/sdk/shapes:define-input
 get-voice-connector-streaming-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t))
 (:shape-name "GetVoiceConnectorStreamingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-voice-connector-streaming-configuration-response common-lisp:nil
 ((streaming-configuration :target-type streaming-configuration :member-name
   "StreamingConfiguration"))
 (:shape-name "GetVoiceConnectorStreamingConfigurationResponse"))

(smithy/sdk/shapes:define-input get-voice-connector-termination-health-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetVoiceConnectorTerminationHealthRequest"))

(smithy/sdk/shapes:define-output
 get-voice-connector-termination-health-response common-lisp:nil
 ((termination-health :target-type termination-health :member-name
   "TerminationHealth"))
 (:shape-name "GetVoiceConnectorTerminationHealthResponse"))

(smithy/sdk/shapes:define-input get-voice-connector-termination-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetVoiceConnectorTerminationRequest"))

(smithy/sdk/shapes:define-output get-voice-connector-termination-response
                                 common-lisp:nil
                                 ((termination :target-type termination
                                   :member-name "Termination"))
                                 (:shape-name
                                  "GetVoiceConnectorTerminationResponse"))

(smithy/sdk/shapes:define-input get-voice-profile-domain-request
                                common-lisp:nil
                                ((voice-profile-domain-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceProfileDomainId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVoiceProfileDomainRequest"))

(smithy/sdk/shapes:define-output get-voice-profile-domain-response
                                 common-lisp:nil
                                 ((voice-profile-domain :target-type
                                   voice-profile-domain :member-name
                                   "VoiceProfileDomain"))
                                 (:shape-name "GetVoiceProfileDomainResponse"))

(smithy/sdk/shapes:define-input get-voice-profile-request common-lisp:nil
                                ((voice-profile-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceProfileId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetVoiceProfileRequest"))

(smithy/sdk/shapes:define-output get-voice-profile-response common-lisp:nil
                                 ((voice-profile :target-type voice-profile
                                   :member-name "VoiceProfile"))
                                 (:shape-name "GetVoiceProfileResponse"))

(smithy/sdk/shapes:define-input get-voice-tone-analysis-task-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (voice-tone-analysis-task-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceToneAnalysisTaskId"
                                  :http-label common-lisp:t)
                                 (is-caller :target-type boolean :required
                                  common-lisp:t :member-name "IsCaller"
                                  :http-query "isCaller"))
                                (:shape-name "GetVoiceToneAnalysisTaskRequest"))

(smithy/sdk/shapes:define-output get-voice-tone-analysis-task-response
                                 common-lisp:nil
                                 ((voice-tone-analysis-task :target-type
                                   voice-tone-analysis-task :member-name
                                   "VoiceToneAnalysisTask"))
                                 (:shape-name
                                  "GetVoiceToneAnalysisTaskResponse"))

(smithy/sdk/shapes:define-error gone-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "GoneException") (:error-code 410)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-type guid-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type iso8601timestamp
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-enum language-code
    common-lisp:nil
  (:en-us "en-US"))

(smithy/sdk/shapes:define-output
 list-available-voice-connector-regions-response common-lisp:nil
 ((voice-connector-regions :target-type voice-connector-aws-region-list
   :member-name "VoiceConnectorRegions"))
 (:shape-name "ListAvailableVoiceConnectorRegionsResponse"))

(smithy/sdk/shapes:define-input list-phone-number-orders-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListPhoneNumberOrdersRequest"))

(smithy/sdk/shapes:define-output list-phone-number-orders-response
                                 common-lisp:nil
                                 ((phone-number-orders :target-type
                                   phone-number-order-list :member-name
                                   "PhoneNumberOrders")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListPhoneNumberOrdersResponse"))

(smithy/sdk/shapes:define-input list-phone-numbers-request common-lisp:nil
                                ((status :target-type string :member-name
                                  "Status" :http-query "status")
                                 (product-type :target-type
                                  phone-number-product-type :member-name
                                  "ProductType" :http-query "product-type")
                                 (filter-name :target-type
                                  phone-number-association-name :member-name
                                  "FilterName" :http-query "filter-name")
                                 (filter-value :target-type string :member-name
                                  "FilterValue" :http-query "filter-value")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name "ListPhoneNumbersRequest"))

(smithy/sdk/shapes:define-output list-phone-numbers-response common-lisp:nil
                                 ((phone-numbers :target-type phone-number-list
                                   :member-name "PhoneNumbers")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListPhoneNumbersResponse"))

(smithy/sdk/shapes:define-input list-proxy-sessions-request common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (status :target-type proxy-session-status
                                  :member-name "Status" :http-query "status")
                                 (next-token :target-type next-token-string
                                  :member-name "NextToken" :http-query
                                  "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListProxySessionsRequest"))

(smithy/sdk/shapes:define-output list-proxy-sessions-response common-lisp:nil
                                 ((proxy-sessions :target-type proxy-sessions
                                   :member-name "ProxySessions")
                                  (next-token :target-type next-token-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListProxySessionsResponse"))

(smithy/sdk/shapes:define-input list-sip-media-applications-request
                                common-lisp:nil
                                ((max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token-string
                                  :member-name "NextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListSipMediaApplicationsRequest"))

(smithy/sdk/shapes:define-output list-sip-media-applications-response
                                 common-lisp:nil
                                 ((sip-media-applications :target-type
                                   sip-media-application-list :member-name
                                   "SipMediaApplications")
                                  (next-token :target-type next-token-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListSipMediaApplicationsResponse"))

(smithy/sdk/shapes:define-input list-sip-rules-request common-lisp:nil
                                ((sip-media-application-id :target-type
                                  non-empty-string :member-name
                                  "SipMediaApplicationId" :http-query
                                  "sip-media-application")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type next-token-string
                                  :member-name "NextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListSipRulesRequest"))

(smithy/sdk/shapes:define-output list-sip-rules-response common-lisp:nil
                                 ((sip-rules :target-type sip-rule-list
                                   :member-name "SipRules")
                                  (next-token :target-type next-token-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListSipRulesResponse"))

(smithy/sdk/shapes:define-input list-supported-phone-number-countries-request
                                common-lisp:nil
                                ((product-type :target-type
                                  phone-number-product-type :required
                                  common-lisp:t :member-name "ProductType"
                                  :http-query "product-type"))
                                (:shape-name
                                 "ListSupportedPhoneNumberCountriesRequest"))

(smithy/sdk/shapes:define-output list-supported-phone-number-countries-response
                                 common-lisp:nil
                                 ((phone-number-countries :target-type
                                   phone-number-countries-list :member-name
                                   "PhoneNumberCountries"))
                                 (:shape-name
                                  "ListSupportedPhoneNumberCountriesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceARN"
                                  :http-query "arn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-voice-connector-groups-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListVoiceConnectorGroupsRequest"))

(smithy/sdk/shapes:define-output list-voice-connector-groups-response
                                 common-lisp:nil
                                 ((voice-connector-groups :target-type
                                   voice-connector-group-list :member-name
                                   "VoiceConnectorGroups")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListVoiceConnectorGroupsResponse"))

(smithy/sdk/shapes:define-input
 list-voice-connector-termination-credentials-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t))
 (:shape-name "ListVoiceConnectorTerminationCredentialsRequest"))

(smithy/sdk/shapes:define-output
 list-voice-connector-termination-credentials-response common-lisp:nil
 ((usernames :target-type sensitive-string-list :member-name "Usernames"))
 (:shape-name "ListVoiceConnectorTerminationCredentialsResponse"))

(smithy/sdk/shapes:define-input list-voice-connectors-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListVoiceConnectorsRequest"))

(smithy/sdk/shapes:define-output list-voice-connectors-response common-lisp:nil
                                 ((voice-connectors :target-type
                                   voice-connector-list :member-name
                                   "VoiceConnectors")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListVoiceConnectorsResponse"))

(smithy/sdk/shapes:define-input list-voice-profile-domains-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListVoiceProfileDomainsRequest"))

(smithy/sdk/shapes:define-output list-voice-profile-domains-response
                                 common-lisp:nil
                                 ((voice-profile-domains :target-type
                                   voice-profile-domain-summary-list
                                   :member-name "VoiceProfileDomains")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListVoiceProfileDomainsResponse"))

(smithy/sdk/shapes:define-input list-voice-profiles-request common-lisp:nil
                                ((voice-profile-domain-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceProfileDomainId"
                                  :http-query "voice-profile-domain-id")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type result-max
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListVoiceProfilesRequest"))

(smithy/sdk/shapes:define-output list-voice-profiles-response common-lisp:nil
                                 ((voice-profiles :target-type
                                   voice-profile-summary-list :member-name
                                   "VoiceProfiles")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListVoiceProfilesResponse"))

(smithy/sdk/shapes:define-structure logging-configuration common-lisp:nil
                                    ((enable-siplogs :target-type boolean
                                      :member-name "EnableSIPLogs")
                                     (enable-media-metric-logs :target-type
                                      boolean :member-name
                                      "EnableMediaMetricLogs"))
                                    (:shape-name "LoggingConfiguration"))

(smithy/sdk/shapes:define-structure media-insights-configuration
                                    common-lisp:nil
                                    ((disabled :target-type boolean
                                      :member-name "Disabled")
                                     (configuration-arn :target-type arn
                                      :member-name "ConfigurationArn"))
                                    (:shape-name "MediaInsightsConfiguration"))

(smithy/sdk/shapes:define-type next-token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string128
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string256
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list non-empty-string-list :member string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-enum notification-target
    common-lisp:nil
  (:event-bridge "EventBridge")
  (:sns "SNS")
  (:sqs "SQS"))

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum number-selection-behavior
    common-lisp:nil
  (:prefer-sticky "PreferSticky")
  (:avoid-sticky "AvoidSticky"))

(smithy/sdk/shapes:define-structure ordered-phone-number common-lisp:nil
                                    ((e164phone-number :target-type
                                      e164phone-number :member-name
                                      "E164PhoneNumber")
                                     (status :target-type
                                      ordered-phone-number-status :member-name
                                      "Status"))
                                    (:shape-name "OrderedPhoneNumber"))

(smithy/sdk/shapes:define-list ordered-phone-number-list :member
                               ordered-phone-number)

(smithy/sdk/shapes:define-enum ordered-phone-number-status
    common-lisp:nil
  (:processing "Processing")
  (:acquired "Acquired")
  (:failed "Failed"))

(smithy/sdk/shapes:define-structure origination common-lisp:nil
                                    ((routes :target-type
                                      origination-route-list :member-name
                                      "Routes")
                                     (disabled :target-type boolean
                                      :member-name "Disabled"))
                                    (:shape-name "Origination"))

(smithy/sdk/shapes:define-structure origination-route common-lisp:nil
                                    ((host :target-type string :member-name
                                      "Host")
                                     (port :target-type port :member-name
                                      "Port")
                                     (protocol :target-type
                                      origination-route-protocol :member-name
                                      "Protocol")
                                     (priority :target-type
                                      origination-route-priority :member-name
                                      "Priority")
                                     (weight :target-type
                                      origination-route-weight :member-name
                                      "Weight"))
                                    (:shape-name "OriginationRoute"))

(smithy/sdk/shapes:define-list origination-route-list :member origination-route)

(smithy/sdk/shapes:define-type origination-route-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum origination-route-protocol
    common-lisp:nil
  (:tcp "TCP")
  (:udp "UDP"))

(smithy/sdk/shapes:define-type origination-route-weight
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure participant common-lisp:nil
                                    ((phone-number :target-type
                                      e164phone-number :member-name
                                      "PhoneNumber")
                                     (proxy-phone-number :target-type
                                      e164phone-number :member-name
                                      "ProxyPhoneNumber"))
                                    (:shape-name "Participant"))

(smithy/sdk/shapes:define-list participant-phone-number-list :member
                               e164phone-number)

(smithy/sdk/shapes:define-list participants :member participant)

(smithy/sdk/shapes:define-structure phone-number common-lisp:nil
                                    ((phone-number-id :target-type
                                      sensitive-non-empty-string :member-name
                                      "PhoneNumberId")
                                     (e164phone-number :target-type
                                      e164phone-number :member-name
                                      "E164PhoneNumber")
                                     (country :target-type alpha2country-code
                                      :member-name "Country")
                                     (type :target-type phone-number-type
                                      :member-name "Type")
                                     (product-type :target-type
                                      phone-number-product-type :member-name
                                      "ProductType")
                                     (status :target-type phone-number-status
                                      :member-name "Status")
                                     (capabilities :target-type
                                      phone-number-capabilities :member-name
                                      "Capabilities")
                                     (associations :target-type
                                      phone-number-association-list
                                      :member-name "Associations")
                                     (calling-name :target-type calling-name
                                      :member-name "CallingName")
                                     (calling-name-status :target-type
                                      calling-name-status :member-name
                                      "CallingNameStatus")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (deletion-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "DeletionTimestamp")
                                     (order-id :target-type guid-string
                                      :member-name "OrderId")
                                     (name :target-type phone-number-name
                                      :member-name "Name"))
                                    (:shape-name "PhoneNumber"))

(smithy/sdk/shapes:define-structure phone-number-association common-lisp:nil
                                    ((value :target-type string :member-name
                                      "Value")
                                     (name :target-type
                                      phone-number-association-name
                                      :member-name "Name")
                                     (associated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "AssociatedTimestamp"))
                                    (:shape-name "PhoneNumberAssociation"))

(smithy/sdk/shapes:define-list phone-number-association-list :member
                               phone-number-association)

(smithy/sdk/shapes:define-enum phone-number-association-name
    common-lisp:nil
  (:voice-connector-id "VoiceConnectorId")
  (:voice-connector-group-id "VoiceConnectorGroupId")
  (:sip-rule-id "SipRuleId"))

(smithy/sdk/shapes:define-structure phone-number-capabilities common-lisp:nil
                                    ((inbound-call :target-type
                                      nullable-boolean :member-name
                                      "InboundCall")
                                     (outbound-call :target-type
                                      nullable-boolean :member-name
                                      "OutboundCall")
                                     (inbound-sms :target-type nullable-boolean
                                      :member-name "InboundSMS")
                                     (outbound-sms :target-type
                                      nullable-boolean :member-name
                                      "OutboundSMS")
                                     (inbound-mms :target-type nullable-boolean
                                      :member-name "InboundMMS")
                                     (outbound-mms :target-type
                                      nullable-boolean :member-name
                                      "OutboundMMS"))
                                    (:shape-name "PhoneNumberCapabilities"))

(smithy/sdk/shapes:define-list phone-number-countries-list :member
                               phone-number-country)

(smithy/sdk/shapes:define-structure phone-number-country common-lisp:nil
                                    ((country-code :target-type
                                      alpha2country-code :member-name
                                      "CountryCode")
                                     (supported-phone-number-types :target-type
                                      phone-number-type-list :member-name
                                      "SupportedPhoneNumberTypes"))
                                    (:shape-name "PhoneNumberCountry"))

(smithy/sdk/shapes:define-structure phone-number-error common-lisp:nil
                                    ((phone-number-id :target-type
                                      sensitive-non-empty-string :member-name
                                      "PhoneNumberId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "PhoneNumberError"))

(smithy/sdk/shapes:define-list phone-number-error-list :member
                               phone-number-error)

(smithy/sdk/shapes:define-list phone-number-list :member phone-number)

(smithy/sdk/shapes:define-type phone-number-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type phone-number-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure phone-number-order common-lisp:nil
                                    ((phone-number-order-id :target-type
                                      guid-string :member-name
                                      "PhoneNumberOrderId")
                                     (product-type :target-type
                                      phone-number-product-type :member-name
                                      "ProductType")
                                     (status :target-type
                                      phone-number-order-status :member-name
                                      "Status")
                                     (order-type :target-type
                                      phone-number-order-type :member-name
                                      "OrderType")
                                     (ordered-phone-numbers :target-type
                                      ordered-phone-number-list :member-name
                                      "OrderedPhoneNumbers")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (foc-date :target-type iso8601timestamp
                                      :member-name "FocDate"))
                                    (:shape-name "PhoneNumberOrder"))

(smithy/sdk/shapes:define-list phone-number-order-list :member
                               phone-number-order)

(smithy/sdk/shapes:define-enum phone-number-order-status
    common-lisp:nil
  (:processing "Processing")
  (:successful "Successful")
  (:failed "Failed")
  (:partial "Partial")
  (:pending-documents "PendingDocuments")
  (:submitted "Submitted")
  (:foc "FOC")
  (:change-requested "ChangeRequested")
  (:exception "Exception")
  (:cancel-requested "CancelRequested")
  (:cancelled "Cancelled"))

(smithy/sdk/shapes:define-enum phone-number-order-type
    common-lisp:nil
  (:new "New")
  (:porting "Porting"))

(smithy/sdk/shapes:define-enum phone-number-product-type
    common-lisp:nil
  (:voice-connector "VoiceConnector")
  (:sip-media-application-dial-in "SipMediaApplicationDialIn"))

(smithy/sdk/shapes:define-enum phone-number-status
    common-lisp:nil
  (:cancelled "Cancelled")
  (:portin-cancel-requested "PortinCancelRequested")
  (:portin-in-progress "PortinInProgress")
  (:acquire-in-progress "AcquireInProgress")
  (:acquire-failed "AcquireFailed")
  (:unassigned "Unassigned")
  (:assigned "Assigned")
  (:release-in-progress "ReleaseInProgress")
  (:delete-in-progress "DeleteInProgress")
  (:release-failed "ReleaseFailed")
  (:delete-failed "DeleteFailed"))

(smithy/sdk/shapes:define-enum phone-number-type
    common-lisp:nil
  (:local "Local")
  (:toll-free "TollFree"))

(smithy/sdk/shapes:define-list phone-number-type-list :member phone-number-type)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure proxy common-lisp:nil
                                    ((default-session-expiry-minutes
                                      :target-type integer :member-name
                                      "DefaultSessionExpiryMinutes")
                                     (disabled :target-type boolean
                                      :member-name "Disabled")
                                     (fall-back-phone-number :target-type
                                      e164phone-number :member-name
                                      "FallBackPhoneNumber")
                                     (phone-number-countries :target-type
                                      string-list :member-name
                                      "PhoneNumberCountries"))
                                    (:shape-name "Proxy"))

(smithy/sdk/shapes:define-structure proxy-session common-lisp:nil
                                    ((voice-connector-id :target-type
                                      non-empty-string128 :member-name
                                      "VoiceConnectorId")
                                     (proxy-session-id :target-type
                                      non-empty-string128 :member-name
                                      "ProxySessionId")
                                     (name :target-type string128 :member-name
                                      "Name")
                                     (status :target-type proxy-session-status
                                      :member-name "Status")
                                     (expiry-minutes :target-type
                                      positive-integer :member-name
                                      "ExpiryMinutes")
                                     (capabilities :target-type capability-list
                                      :member-name "Capabilities")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (ended-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "EndedTimestamp")
                                     (participants :target-type participants
                                      :member-name "Participants")
                                     (number-selection-behavior :target-type
                                      number-selection-behavior :member-name
                                      "NumberSelectionBehavior")
                                     (geo-match-level :target-type
                                      geo-match-level :member-name
                                      "GeoMatchLevel")
                                     (geo-match-params :target-type
                                      geo-match-params :member-name
                                      "GeoMatchParams"))
                                    (:shape-name "ProxySession"))

(smithy/sdk/shapes:define-type proxy-session-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum proxy-session-status
    common-lisp:nil
  (:open "Open")
  (:in-progress "InProgress")
  (:closed "Closed"))

(smithy/sdk/shapes:define-list proxy-sessions :member proxy-session)

(smithy/sdk/shapes:define-input
 put-sip-media-application-alexa-skill-configuration-request common-lisp:nil
 ((sip-media-application-id :target-type non-empty-string :required
   common-lisp:t :member-name "SipMediaApplicationId" :http-label
   common-lisp:t)
  (sip-media-application-alexa-skill-configuration :target-type
   sip-media-application-alexa-skill-configuration :member-name
   "SipMediaApplicationAlexaSkillConfiguration"))
 (:shape-name "PutSipMediaApplicationAlexaSkillConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-sip-media-application-alexa-skill-configuration-response common-lisp:nil
 ((sip-media-application-alexa-skill-configuration :target-type
   sip-media-application-alexa-skill-configuration :member-name
   "SipMediaApplicationAlexaSkillConfiguration"))
 (:shape-name "PutSipMediaApplicationAlexaSkillConfigurationResponse"))

(smithy/sdk/shapes:define-input
 put-sip-media-application-logging-configuration-request common-lisp:nil
 ((sip-media-application-id :target-type non-empty-string :required
   common-lisp:t :member-name "SipMediaApplicationId" :http-label
   common-lisp:t)
  (sip-media-application-logging-configuration :target-type
   sip-media-application-logging-configuration :member-name
   "SipMediaApplicationLoggingConfiguration"))
 (:shape-name "PutSipMediaApplicationLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-sip-media-application-logging-configuration-response common-lisp:nil
 ((sip-media-application-logging-configuration :target-type
   sip-media-application-logging-configuration :member-name
   "SipMediaApplicationLoggingConfiguration"))
 (:shape-name "PutSipMediaApplicationLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input
 put-voice-connector-emergency-calling-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t)
  (emergency-calling-configuration :target-type emergency-calling-configuration
   :required common-lisp:t :member-name "EmergencyCallingConfiguration"))
 (:shape-name "PutVoiceConnectorEmergencyCallingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-voice-connector-emergency-calling-configuration-response common-lisp:nil
 ((emergency-calling-configuration :target-type emergency-calling-configuration
   :member-name "EmergencyCallingConfiguration"))
 (:shape-name "PutVoiceConnectorEmergencyCallingConfigurationResponse"))

(smithy/sdk/shapes:define-input
 put-voice-connector-external-systems-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string128 :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t)
  (session-border-controller-types :target-type
   session-border-controller-type-list :member-name
   "SessionBorderControllerTypes")
  (contact-center-system-types :target-type contact-center-system-type-list
   :member-name "ContactCenterSystemTypes"))
 (:shape-name "PutVoiceConnectorExternalSystemsConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-voice-connector-external-systems-configuration-response common-lisp:nil
 ((external-systems-configuration :target-type external-systems-configuration
   :member-name "ExternalSystemsConfiguration"))
 (:shape-name "PutVoiceConnectorExternalSystemsConfigurationResponse"))

(smithy/sdk/shapes:define-input
 put-voice-connector-logging-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t)
  (logging-configuration :target-type logging-configuration :required
   common-lisp:t :member-name "LoggingConfiguration"))
 (:shape-name "PutVoiceConnectorLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-voice-connector-logging-configuration-response common-lisp:nil
 ((logging-configuration :target-type logging-configuration :member-name
   "LoggingConfiguration"))
 (:shape-name "PutVoiceConnectorLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input put-voice-connector-origination-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (origination :target-type origination
                                  :required common-lisp:t :member-name
                                  "Origination"))
                                (:shape-name
                                 "PutVoiceConnectorOriginationRequest"))

(smithy/sdk/shapes:define-output put-voice-connector-origination-response
                                 common-lisp:nil
                                 ((origination :target-type origination
                                   :member-name "Origination"))
                                 (:shape-name
                                  "PutVoiceConnectorOriginationResponse"))

(smithy/sdk/shapes:define-input put-voice-connector-proxy-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (default-session-expiry-minutes :target-type
                                  integer :required common-lisp:t :member-name
                                  "DefaultSessionExpiryMinutes")
                                 (phone-number-pool-countries :target-type
                                  country-list :required common-lisp:t
                                  :member-name "PhoneNumberPoolCountries")
                                 (fall-back-phone-number :target-type
                                  e164phone-number :member-name
                                  "FallBackPhoneNumber")
                                 (disabled :target-type boolean :member-name
                                  "Disabled"))
                                (:shape-name "PutVoiceConnectorProxyRequest"))

(smithy/sdk/shapes:define-output put-voice-connector-proxy-response
                                 common-lisp:nil
                                 ((proxy :target-type proxy :member-name
                                   "Proxy"))
                                 (:shape-name "PutVoiceConnectorProxyResponse"))

(smithy/sdk/shapes:define-input
 put-voice-connector-streaming-configuration-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t)
  (streaming-configuration :target-type streaming-configuration :required
   common-lisp:t :member-name "StreamingConfiguration"))
 (:shape-name "PutVoiceConnectorStreamingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-voice-connector-streaming-configuration-response common-lisp:nil
 ((streaming-configuration :target-type streaming-configuration :member-name
   "StreamingConfiguration"))
 (:shape-name "PutVoiceConnectorStreamingConfigurationResponse"))

(smithy/sdk/shapes:define-input
 put-voice-connector-termination-credentials-request common-lisp:nil
 ((voice-connector-id :target-type non-empty-string :required common-lisp:t
   :member-name "VoiceConnectorId" :http-label common-lisp:t)
  (credentials :target-type credential-list :member-name "Credentials"))
 (:shape-name "PutVoiceConnectorTerminationCredentialsRequest"))

(smithy/sdk/shapes:define-input put-voice-connector-termination-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (termination :target-type termination
                                  :required common-lisp:t :member-name
                                  "Termination"))
                                (:shape-name
                                 "PutVoiceConnectorTerminationRequest"))

(smithy/sdk/shapes:define-output put-voice-connector-termination-response
                                 common-lisp:nil
                                 ((termination :target-type termination
                                   :member-name "Termination"))
                                 (:shape-name
                                  "PutVoiceConnectorTerminationResponse"))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-input restore-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type
                                  sensitive-non-empty-string :required
                                  common-lisp:t :member-name "PhoneNumberId"
                                  :http-label common-lisp:t))
                                (:shape-name "RestorePhoneNumberRequest"))

(smithy/sdk/shapes:define-output restore-phone-number-response common-lisp:nil
                                 ((phone-number :target-type phone-number
                                   :member-name "PhoneNumber"))
                                 (:shape-name "RestorePhoneNumberResponse"))

(smithy/sdk/shapes:define-type result-max smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map smacreate-call-arguments-map :key
                              sensitive-string :value sensitive-string)

(smithy/sdk/shapes:define-map smaupdate-call-arguments-map :key
                              sensitive-string :value sensitive-string)

(smithy/sdk/shapes:define-input search-available-phone-numbers-request
                                common-lisp:nil
                                ((area-code :target-type string :member-name
                                  "AreaCode" :http-query "area-code")
                                 (city :target-type string :member-name "City"
                                  :http-query "city")
                                 (country :target-type alpha2country-code
                                  :member-name "Country" :http-query "country")
                                 (state :target-type string :member-name
                                  "State" :http-query "state")
                                 (toll-free-prefix :target-type
                                  toll-free-prefix :member-name
                                  "TollFreePrefix" :http-query
                                  "toll-free-prefix")
                                 (phone-number-type :target-type
                                  phone-number-type :member-name
                                  "PhoneNumberType" :http-query
                                  "phone-number-type")
                                 (max-results :target-type
                                  phone-number-max-results :member-name
                                  "MaxResults" :http-query "max-results")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name
                                 "SearchAvailablePhoneNumbersRequest"))

(smithy/sdk/shapes:define-output search-available-phone-numbers-response
                                 common-lisp:nil
                                 ((e164phone-numbers :target-type
                                   e164phone-number-list :member-name
                                   "E164PhoneNumbers")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "SearchAvailablePhoneNumbersResponse"))

(smithy/sdk/shapes:define-type sensitive-non-empty-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sensitive-string-list :member sensitive-string)

(smithy/sdk/shapes:define-structure server-side-encryption-configuration
                                    common-lisp:nil
                                    ((kms-key-arn :target-type arn :required
                                      common-lisp:t :member-name "KmsKeyArn"))
                                    (:shape-name
                                     "ServerSideEncryptionConfiguration"))

(smithy/sdk/shapes:define-error service-failure-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceFailureException")
                                (:error-code 500)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-enum session-border-controller-type
    common-lisp:nil
  (:ribbon-sbc "RIBBON_SBC")
  (:oracle-acme-packet-sbc "ORACLE_ACME_PACKET_SBC")
  (:avaya-sbce "AVAYA_SBCE")
  (:cisco-unified-border-element "CISCO_UNIFIED_BORDER_ELEMENT")
  (:audiocodes-mediant-sbc "AUDIOCODES_MEDIANT_SBC"))

(smithy/sdk/shapes:define-list session-border-controller-type-list :member
                               session-border-controller-type)

(smithy/sdk/shapes:define-type sip-application-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map sip-headers-map :key sensitive-string :value
                              sensitive-string)

(smithy/sdk/shapes:define-structure sip-media-application common-lisp:nil
                                    ((sip-media-application-id :target-type
                                      non-empty-string :member-name
                                      "SipMediaApplicationId")
                                     (aws-region :target-type string
                                      :member-name "AwsRegion")
                                     (name :target-type
                                      sip-media-application-name :member-name
                                      "Name")
                                     (endpoints :target-type
                                      sip-media-application-endpoint-list
                                      :member-name "Endpoints")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (sip-media-application-arn :target-type
                                      non-empty-string :member-name
                                      "SipMediaApplicationArn"))
                                    (:shape-name "SipMediaApplication"))

(smithy/sdk/shapes:define-structure
 sip-media-application-alexa-skill-configuration common-lisp:nil
 ((alexa-skill-status :target-type alexa-skill-status :required common-lisp:t
   :member-name "AlexaSkillStatus")
  (alexa-skill-ids :target-type alexa-skill-id-list :required common-lisp:t
   :member-name "AlexaSkillIds"))
 (:shape-name "SipMediaApplicationAlexaSkillConfiguration"))

(smithy/sdk/shapes:define-structure sip-media-application-call common-lisp:nil
                                    ((transaction-id :target-type guid-string
                                      :member-name "TransactionId"))
                                    (:shape-name "SipMediaApplicationCall"))

(smithy/sdk/shapes:define-structure sip-media-application-endpoint
                                    common-lisp:nil
                                    ((lambda-arn :target-type function-arn
                                      :member-name "LambdaArn"))
                                    (:shape-name "SipMediaApplicationEndpoint"))

(smithy/sdk/shapes:define-list sip-media-application-endpoint-list :member
                               sip-media-application-endpoint)

(smithy/sdk/shapes:define-list sip-media-application-list :member
                               sip-media-application)

(smithy/sdk/shapes:define-structure sip-media-application-logging-configuration
                                    common-lisp:nil
                                    ((enable-sip-media-application-message-logs
                                      :target-type boolean :member-name
                                      "EnableSipMediaApplicationMessageLogs"))
                                    (:shape-name
                                     "SipMediaApplicationLoggingConfiguration"))

(smithy/sdk/shapes:define-type sip-media-application-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sip-rule common-lisp:nil
                                    ((sip-rule-id :target-type non-empty-string
                                      :member-name "SipRuleId")
                                     (name :target-type sip-rule-name
                                      :member-name "Name")
                                     (disabled :target-type boolean
                                      :member-name "Disabled")
                                     (trigger-type :target-type
                                      sip-rule-trigger-type :member-name
                                      "TriggerType")
                                     (trigger-value :target-type
                                      non-empty-string :member-name
                                      "TriggerValue")
                                     (target-applications :target-type
                                      sip-rule-target-application-list
                                      :member-name "TargetApplications")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "SipRule"))

(smithy/sdk/shapes:define-list sip-rule-list :member sip-rule)

(smithy/sdk/shapes:define-type sip-rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sip-rule-target-application common-lisp:nil
                                    ((sip-media-application-id :target-type
                                      non-empty-string :member-name
                                      "SipMediaApplicationId")
                                     (priority :target-type
                                      sip-application-priority :member-name
                                      "Priority")
                                     (aws-region :target-type string
                                      :member-name "AwsRegion"))
                                    (:shape-name "SipRuleTargetApplication"))

(smithy/sdk/shapes:define-list sip-rule-target-application-list :member
                               sip-rule-target-application)

(smithy/sdk/shapes:define-enum sip-rule-trigger-type
    common-lisp:nil
  (:to-phone-number "ToPhoneNumber")
  (:request-uri-hostname "RequestUriHostname"))

(smithy/sdk/shapes:define-structure speaker-search-details common-lisp:nil
                                    ((results :target-type
                                      speaker-search-result-list :member-name
                                      "Results")
                                     (voiceprint-generation-status :target-type
                                      non-empty-string256 :member-name
                                      "VoiceprintGenerationStatus"))
                                    (:shape-name "SpeakerSearchDetails"))

(smithy/sdk/shapes:define-structure speaker-search-result common-lisp:nil
                                    ((confidence-score :target-type
                                      confidence-score :member-name
                                      "ConfidenceScore")
                                     (voice-profile-id :target-type
                                      non-empty-string256 :member-name
                                      "VoiceProfileId"))
                                    (:shape-name "SpeakerSearchResult"))

(smithy/sdk/shapes:define-list speaker-search-result-list :member
                               speaker-search-result)

(smithy/sdk/shapes:define-structure speaker-search-task common-lisp:nil
                                    ((speaker-search-task-id :target-type
                                      non-empty-string256 :member-name
                                      "SpeakerSearchTaskId")
                                     (speaker-search-task-status :target-type
                                      non-empty-string :member-name
                                      "SpeakerSearchTaskStatus")
                                     (call-details :target-type call-details
                                      :member-name "CallDetails")
                                     (speaker-search-details :target-type
                                      speaker-search-details :member-name
                                      "SpeakerSearchDetails")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (started-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "StartedTimestamp")
                                     (status-message :target-type string
                                      :member-name "StatusMessage"))
                                    (:shape-name "SpeakerSearchTask"))

(smithy/sdk/shapes:define-input start-speaker-search-task-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (transaction-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "TransactionId")
                                 (voice-profile-domain-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceProfileDomainId")
                                 (client-request-token :target-type
                                  client-request-id :member-name
                                  "ClientRequestToken")
                                 (call-leg :target-type call-leg-type
                                  :member-name "CallLeg"))
                                (:shape-name "StartSpeakerSearchTaskRequest"))

(smithy/sdk/shapes:define-output start-speaker-search-task-response
                                 common-lisp:nil
                                 ((speaker-search-task :target-type
                                   speaker-search-task :member-name
                                   "SpeakerSearchTask"))
                                 (:shape-name "StartSpeakerSearchTaskResponse"))

(smithy/sdk/shapes:define-input start-voice-tone-analysis-task-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (transaction-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "TransactionId")
                                 (language-code :target-type language-code
                                  :required common-lisp:t :member-name
                                  "LanguageCode")
                                 (client-request-token :target-type
                                  client-request-id :member-name
                                  "ClientRequestToken"))
                                (:shape-name
                                 "StartVoiceToneAnalysisTaskRequest"))

(smithy/sdk/shapes:define-output start-voice-tone-analysis-task-response
                                 common-lisp:nil
                                 ((voice-tone-analysis-task :target-type
                                   voice-tone-analysis-task :member-name
                                   "VoiceToneAnalysisTask"))
                                 (:shape-name
                                  "StartVoiceToneAnalysisTaskResponse"))

(smithy/sdk/shapes:define-input stop-speaker-search-task-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (speaker-search-task-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "SpeakerSearchTaskId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopSpeakerSearchTaskRequest"))

(smithy/sdk/shapes:define-input stop-voice-tone-analysis-task-request
                                common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (voice-tone-analysis-task-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceToneAnalysisTaskId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "StopVoiceToneAnalysisTaskRequest"))

(smithy/sdk/shapes:define-structure streaming-configuration common-lisp:nil
                                    ((data-retention-in-hours :target-type
                                      data-retention-in-hours :required
                                      common-lisp:t :member-name
                                      "DataRetentionInHours")
                                     (disabled :target-type boolean :required
                                      common-lisp:t :member-name "Disabled")
                                     (streaming-notification-targets
                                      :target-type
                                      streaming-notification-target-list
                                      :member-name
                                      "StreamingNotificationTargets")
                                     (media-insights-configuration :target-type
                                      media-insights-configuration :member-name
                                      "MediaInsightsConfiguration"))
                                    (:shape-name "StreamingConfiguration"))

(smithy/sdk/shapes:define-structure streaming-notification-target
                                    common-lisp:nil
                                    ((notification-target :target-type
                                      notification-target :member-name
                                      "NotificationTarget"))
                                    (:shape-name "StreamingNotificationTarget"))

(smithy/sdk/shapes:define-list streaming-notification-target-list :member
                               streaming-notification-target)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string128 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure termination common-lisp:nil
                                    ((cps-limit :target-type cps-limit
                                      :member-name "CpsLimit")
                                     (default-phone-number :target-type
                                      e164phone-number :member-name
                                      "DefaultPhoneNumber")
                                     (calling-regions :target-type
                                      calling-region-list :member-name
                                      "CallingRegions")
                                     (cidr-allowed-list :target-type
                                      string-list :member-name
                                      "CidrAllowedList")
                                     (disabled :target-type boolean
                                      :member-name "Disabled"))
                                    (:shape-name "Termination"))

(smithy/sdk/shapes:define-structure termination-health common-lisp:nil
                                    ((timestamp :target-type iso8601timestamp
                                      :member-name "Timestamp")
                                     (source :target-type string :member-name
                                      "Source"))
                                    (:shape-name "TerminationHealth"))

(smithy/sdk/shapes:define-error throttled-client-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ThrottledClientException")
                                (:error-code 429)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-type toll-free-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-client-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnauthorizedClientException")
                                (:error-code 401)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-error unprocessable-entity-exception common-lisp:nil
                                ((code :target-type error-code :member-name
                                  "Code")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnprocessableEntityException")
                                (:error-code 422)
                                (:base-class chime-sdk-voice-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-global-settings-request common-lisp:nil
                                ((voice-connector :target-type
                                  voice-connector-settings :member-name
                                  "VoiceConnector"))
                                (:shape-name "UpdateGlobalSettingsRequest"))

(smithy/sdk/shapes:define-input update-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type
                                  sensitive-non-empty-string :required
                                  common-lisp:t :member-name "PhoneNumberId"
                                  :http-label common-lisp:t)
                                 (product-type :target-type
                                  phone-number-product-type :member-name
                                  "ProductType")
                                 (calling-name :target-type calling-name
                                  :member-name "CallingName")
                                 (name :target-type phone-number-name
                                  :member-name "Name"))
                                (:shape-name "UpdatePhoneNumberRequest"))

(smithy/sdk/shapes:define-structure update-phone-number-request-item
                                    common-lisp:nil
                                    ((phone-number-id :target-type
                                      sensitive-non-empty-string :required
                                      common-lisp:t :member-name
                                      "PhoneNumberId")
                                     (product-type :target-type
                                      phone-number-product-type :member-name
                                      "ProductType")
                                     (calling-name :target-type calling-name
                                      :member-name "CallingName")
                                     (name :target-type phone-number-name
                                      :member-name "Name"))
                                    (:shape-name
                                     "UpdatePhoneNumberRequestItem"))

(smithy/sdk/shapes:define-list update-phone-number-request-item-list :member
                               update-phone-number-request-item)

(smithy/sdk/shapes:define-output update-phone-number-response common-lisp:nil
                                 ((phone-number :target-type phone-number
                                   :member-name "PhoneNumber"))
                                 (:shape-name "UpdatePhoneNumberResponse"))

(smithy/sdk/shapes:define-input update-phone-number-settings-request
                                common-lisp:nil
                                ((calling-name :target-type calling-name
                                  :required common-lisp:t :member-name
                                  "CallingName"))
                                (:shape-name
                                 "UpdatePhoneNumberSettingsRequest"))

(smithy/sdk/shapes:define-input update-proxy-session-request common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (proxy-session-id :target-type
                                  non-empty-string128 :required common-lisp:t
                                  :member-name "ProxySessionId" :http-label
                                  common-lisp:t)
                                 (capabilities :target-type capability-list
                                  :required common-lisp:t :member-name
                                  "Capabilities")
                                 (expiry-minutes :target-type positive-integer
                                  :member-name "ExpiryMinutes"))
                                (:shape-name "UpdateProxySessionRequest"))

(smithy/sdk/shapes:define-output update-proxy-session-response common-lisp:nil
                                 ((proxy-session :target-type proxy-session
                                   :member-name "ProxySession"))
                                 (:shape-name "UpdateProxySessionResponse"))

(smithy/sdk/shapes:define-input update-sip-media-application-call-request
                                common-lisp:nil
                                ((sip-media-application-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "SipMediaApplicationId"
                                  :http-label common-lisp:t)
                                 (transaction-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "TransactionId" :http-label common-lisp:t)
                                 (arguments :target-type
                                  smaupdate-call-arguments-map :required
                                  common-lisp:t :member-name "Arguments"))
                                (:shape-name
                                 "UpdateSipMediaApplicationCallRequest"))

(smithy/sdk/shapes:define-output update-sip-media-application-call-response
                                 common-lisp:nil
                                 ((sip-media-application-call :target-type
                                   sip-media-application-call :member-name
                                   "SipMediaApplicationCall"))
                                 (:shape-name
                                  "UpdateSipMediaApplicationCallResponse"))

(smithy/sdk/shapes:define-input update-sip-media-application-request
                                common-lisp:nil
                                ((sip-media-application-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "SipMediaApplicationId"
                                  :http-label common-lisp:t)
                                 (name :target-type sip-media-application-name
                                  :member-name "Name")
                                 (endpoints :target-type
                                  sip-media-application-endpoint-list
                                  :member-name "Endpoints"))
                                (:shape-name
                                 "UpdateSipMediaApplicationRequest"))

(smithy/sdk/shapes:define-output update-sip-media-application-response
                                 common-lisp:nil
                                 ((sip-media-application :target-type
                                   sip-media-application :member-name
                                   "SipMediaApplication"))
                                 (:shape-name
                                  "UpdateSipMediaApplicationResponse"))

(smithy/sdk/shapes:define-input update-sip-rule-request common-lisp:nil
                                ((sip-rule-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "SipRuleId" :http-label common-lisp:t)
                                 (name :target-type sip-rule-name :required
                                  common-lisp:t :member-name "Name")
                                 (disabled :target-type nullable-boolean
                                  :member-name "Disabled")
                                 (target-applications :target-type
                                  sip-rule-target-application-list :member-name
                                  "TargetApplications"))
                                (:shape-name "UpdateSipRuleRequest"))

(smithy/sdk/shapes:define-output update-sip-rule-response common-lisp:nil
                                 ((sip-rule :target-type sip-rule :member-name
                                   "SipRule"))
                                 (:shape-name "UpdateSipRuleResponse"))

(smithy/sdk/shapes:define-input update-voice-connector-group-request
                                common-lisp:nil
                                ((voice-connector-group-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorGroupId"
                                  :http-label common-lisp:t)
                                 (name :target-type voice-connector-group-name
                                  :required common-lisp:t :member-name "Name")
                                 (voice-connector-items :target-type
                                  voice-connector-item-list :required
                                  common-lisp:t :member-name
                                  "VoiceConnectorItems"))
                                (:shape-name
                                 "UpdateVoiceConnectorGroupRequest"))

(smithy/sdk/shapes:define-output update-voice-connector-group-response
                                 common-lisp:nil
                                 ((voice-connector-group :target-type
                                   voice-connector-group :member-name
                                   "VoiceConnectorGroup"))
                                 (:shape-name
                                  "UpdateVoiceConnectorGroupResponse"))

(smithy/sdk/shapes:define-input update-voice-connector-request common-lisp:nil
                                ((voice-connector-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "VoiceConnectorId" :http-label
                                  common-lisp:t)
                                 (name :target-type voice-connector-name
                                  :required common-lisp:t :member-name "Name")
                                 (require-encryption :target-type boolean
                                  :required common-lisp:t :member-name
                                  "RequireEncryption"))
                                (:shape-name "UpdateVoiceConnectorRequest"))

(smithy/sdk/shapes:define-output update-voice-connector-response
                                 common-lisp:nil
                                 ((voice-connector :target-type voice-connector
                                   :member-name "VoiceConnector"))
                                 (:shape-name "UpdateVoiceConnectorResponse"))

(smithy/sdk/shapes:define-input update-voice-profile-domain-request
                                common-lisp:nil
                                ((voice-profile-domain-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceProfileDomainId"
                                  :http-label common-lisp:t)
                                 (name :target-type voice-profile-domain-name
                                  :member-name "Name")
                                 (description :target-type
                                  voice-profile-domain-description :member-name
                                  "Description"))
                                (:shape-name "UpdateVoiceProfileDomainRequest"))

(smithy/sdk/shapes:define-output update-voice-profile-domain-response
                                 common-lisp:nil
                                 ((voice-profile-domain :target-type
                                   voice-profile-domain :member-name
                                   "VoiceProfileDomain"))
                                 (:shape-name
                                  "UpdateVoiceProfileDomainResponse"))

(smithy/sdk/shapes:define-input update-voice-profile-request common-lisp:nil
                                ((voice-profile-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "VoiceProfileId" :http-label
                                  common-lisp:t)
                                 (speaker-search-task-id :target-type
                                  non-empty-string256 :required common-lisp:t
                                  :member-name "SpeakerSearchTaskId"))
                                (:shape-name "UpdateVoiceProfileRequest"))

(smithy/sdk/shapes:define-output update-voice-profile-response common-lisp:nil
                                 ((voice-profile :target-type voice-profile
                                   :member-name "VoiceProfile"))
                                 (:shape-name "UpdateVoiceProfileResponse"))

(smithy/sdk/shapes:define-input validate-e911address-request common-lisp:nil
                                ((aws-account-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "AwsAccountId")
                                 (street-number :target-type
                                  sensitive-non-empty-string :required
                                  common-lisp:t :member-name "StreetNumber")
                                 (street-info :target-type
                                  sensitive-non-empty-string :required
                                  common-lisp:t :member-name "StreetInfo")
                                 (city :target-type sensitive-non-empty-string
                                  :required common-lisp:t :member-name "City")
                                 (state :target-type sensitive-non-empty-string
                                  :required common-lisp:t :member-name "State")
                                 (country :target-type
                                  sensitive-non-empty-string :required
                                  common-lisp:t :member-name "Country")
                                 (postal-code :target-type
                                  sensitive-non-empty-string :required
                                  common-lisp:t :member-name "PostalCode"))
                                (:shape-name "ValidateE911AddressRequest"))

(smithy/sdk/shapes:define-output validate-e911address-response common-lisp:nil
                                 ((validation-result :target-type
                                   validation-result :member-name
                                   "ValidationResult")
                                  (address-external-id :target-type string
                                   :member-name "AddressExternalId")
                                  (address :target-type address :member-name
                                   "Address")
                                  (candidate-address-list :target-type
                                   candidate-address-list :member-name
                                   "CandidateAddressList"))
                                 (:shape-name "ValidateE911AddressResponse"))

(smithy/sdk/shapes:define-type validation-result
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure voice-connector common-lisp:nil
                                    ((voice-connector-id :target-type
                                      non-empty-string :member-name
                                      "VoiceConnectorId")
                                     (aws-region :target-type
                                      voice-connector-aws-region :member-name
                                      "AwsRegion")
                                     (name :target-type voice-connector-name
                                      :member-name "Name")
                                     (outbound-host-name :target-type string
                                      :member-name "OutboundHostName")
                                     (require-encryption :target-type boolean
                                      :member-name "RequireEncryption")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (voice-connector-arn :target-type
                                      non-empty-string :member-name
                                      "VoiceConnectorArn")
                                     (integration-type :target-type
                                      voice-connector-integration-type
                                      :member-name "IntegrationType"))
                                    (:shape-name "VoiceConnector"))

(smithy/sdk/shapes:define-enum voice-connector-aws-region
    common-lisp:nil
  (:us-east-1 "us-east-1")
  (:us-west-2 "us-west-2")
  (:ca-central-1 "ca-central-1")
  (:eu-central-1 "eu-central-1")
  (:eu-west-1 "eu-west-1")
  (:eu-west-2 "eu-west-2")
  (:ap-northeast-2 "ap-northeast-2")
  (:ap-northeast-1 "ap-northeast-1")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2"))

(smithy/sdk/shapes:define-list voice-connector-aws-region-list :member
                               voice-connector-aws-region)

(smithy/sdk/shapes:define-structure voice-connector-group common-lisp:nil
                                    ((voice-connector-group-id :target-type
                                      non-empty-string :member-name
                                      "VoiceConnectorGroupId")
                                     (name :target-type
                                      voice-connector-group-name :member-name
                                      "Name")
                                     (voice-connector-items :target-type
                                      voice-connector-item-list :member-name
                                      "VoiceConnectorItems")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (voice-connector-group-arn :target-type
                                      non-empty-string :member-name
                                      "VoiceConnectorGroupArn"))
                                    (:shape-name "VoiceConnectorGroup"))

(smithy/sdk/shapes:define-list voice-connector-group-list :member
                               voice-connector-group)

(smithy/sdk/shapes:define-type voice-connector-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum voice-connector-integration-type
    common-lisp:nil
  (:connect-call-transfer-connector "CONNECT_CALL_TRANSFER_CONNECTOR")
  (:connect-analytics-connector "CONNECT_ANALYTICS_CONNECTOR"))

(smithy/sdk/shapes:define-structure voice-connector-item common-lisp:nil
                                    ((voice-connector-id :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "VoiceConnectorId")
                                     (priority :target-type
                                      voice-connector-item-priority :required
                                      common-lisp:t :member-name "Priority"))
                                    (:shape-name "VoiceConnectorItem"))

(smithy/sdk/shapes:define-list voice-connector-item-list :member
                               voice-connector-item)

(smithy/sdk/shapes:define-type voice-connector-item-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list voice-connector-list :member voice-connector)

(smithy/sdk/shapes:define-type voice-connector-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure voice-connector-settings common-lisp:nil
                                    ((cdr-bucket :target-type string
                                      :member-name "CdrBucket"))
                                    (:shape-name "VoiceConnectorSettings"))

(smithy/sdk/shapes:define-structure voice-profile common-lisp:nil
                                    ((voice-profile-id :target-type
                                      non-empty-string256 :member-name
                                      "VoiceProfileId")
                                     (voice-profile-arn :target-type arn
                                      :member-name "VoiceProfileArn")
                                     (voice-profile-domain-id :target-type
                                      non-empty-string256 :member-name
                                      "VoiceProfileDomainId")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (expiration-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "ExpirationTimestamp"))
                                    (:shape-name "VoiceProfile"))

(smithy/sdk/shapes:define-structure voice-profile-domain common-lisp:nil
                                    ((voice-profile-domain-id :target-type
                                      non-empty-string256 :member-name
                                      "VoiceProfileDomainId")
                                     (voice-profile-domain-arn :target-type arn
                                      :member-name "VoiceProfileDomainArn")
                                     (name :target-type
                                      voice-profile-domain-name :member-name
                                      "Name")
                                     (description :target-type
                                      voice-profile-domain-description
                                      :member-name "Description")
                                     (server-side-encryption-configuration
                                      :target-type
                                      server-side-encryption-configuration
                                      :member-name
                                      "ServerSideEncryptionConfiguration")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "VoiceProfileDomain"))

(smithy/sdk/shapes:define-type voice-profile-domain-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type voice-profile-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure voice-profile-domain-summary
                                    common-lisp:nil
                                    ((voice-profile-domain-id :target-type
                                      non-empty-string256 :member-name
                                      "VoiceProfileDomainId")
                                     (voice-profile-domain-arn :target-type arn
                                      :member-name "VoiceProfileDomainArn")
                                     (name :target-type
                                      voice-profile-domain-name :member-name
                                      "Name")
                                     (description :target-type
                                      voice-profile-domain-description
                                      :member-name "Description")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp"))
                                    (:shape-name "VoiceProfileDomainSummary"))

(smithy/sdk/shapes:define-list voice-profile-domain-summary-list :member
                               voice-profile-domain-summary)

(smithy/sdk/shapes:define-structure voice-profile-summary common-lisp:nil
                                    ((voice-profile-id :target-type
                                      non-empty-string256 :member-name
                                      "VoiceProfileId")
                                     (voice-profile-arn :target-type arn
                                      :member-name "VoiceProfileArn")
                                     (voice-profile-domain-id :target-type
                                      non-empty-string256 :member-name
                                      "VoiceProfileDomainId")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (expiration-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "ExpirationTimestamp"))
                                    (:shape-name "VoiceProfileSummary"))

(smithy/sdk/shapes:define-list voice-profile-summary-list :member
                               voice-profile-summary)

(smithy/sdk/shapes:define-structure voice-tone-analysis-task common-lisp:nil
                                    ((voice-tone-analysis-task-id :target-type
                                      non-empty-string256 :member-name
                                      "VoiceToneAnalysisTaskId")
                                     (voice-tone-analysis-task-status
                                      :target-type non-empty-string
                                      :member-name
                                      "VoiceToneAnalysisTaskStatus")
                                     (call-details :target-type call-details
                                      :member-name "CallDetails")
                                     (created-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "CreatedTimestamp")
                                     (updated-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "UpdatedTimestamp")
                                     (started-timestamp :target-type
                                      iso8601timestamp :member-name
                                      "StartedTimestamp")
                                     (status-message :target-type string
                                      :member-name "StatusMessage"))
                                    (:shape-name "VoiceToneAnalysisTask"))

(smithy/sdk/operation:define-operation
 associate-phone-numbers-with-voice-connector :shape-name
 "AssociatePhoneNumbersWithVoiceConnector" :input
 associate-phone-numbers-with-voice-connector-request :output
 associate-phone-numbers-with-voice-connector-response :errors
 (access-denied-exception bad-request-exception forbidden-exception
  not-found-exception service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "POST" :uri
 "/voice-connectors/{VoiceConnectorId}?operation=associate-phone-numbers" :code
 200)

(smithy/sdk/operation:define-operation
 associate-phone-numbers-with-voice-connector-group :shape-name
 "AssociatePhoneNumbersWithVoiceConnectorGroup" :input
 associate-phone-numbers-with-voice-connector-group-request :output
 associate-phone-numbers-with-voice-connector-group-response :errors
 (access-denied-exception bad-request-exception forbidden-exception
  not-found-exception service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "POST" :uri
 "/voice-connector-groups/{VoiceConnectorGroupId}?operation=associate-phone-numbers"
 :code 200)

(smithy/sdk/operation:define-operation batch-delete-phone-number :shape-name
                                       "BatchDeletePhoneNumber" :input
                                       batch-delete-phone-number-request
                                       :output
                                       batch-delete-phone-number-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-numbers?operation=batch-delete"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-update-phone-number :shape-name
                                       "BatchUpdatePhoneNumber" :input
                                       batch-update-phone-number-request
                                       :output
                                       batch-update-phone-number-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-numbers?operation=batch-update"
                                       :code 200)

(smithy/sdk/operation:define-operation create-phone-number-order :shape-name
                                       "CreatePhoneNumberOrder" :input
                                       create-phone-number-order-request
                                       :output
                                       create-phone-number-order-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-number-orders" :code 201)

(smithy/sdk/operation:define-operation create-proxy-session :shape-name
                                       "CreateProxySession" :input
                                       create-proxy-session-request :output
                                       create-proxy-session-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/voice-connectors/{VoiceConnectorId}/proxy-sessions"
                                       :code 201)

(smithy/sdk/operation:define-operation create-sip-media-application :shape-name
                                       "CreateSipMediaApplication" :input
                                       create-sip-media-application-request
                                       :output
                                       create-sip-media-application-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/sip-media-applications" :code 201)

(smithy/sdk/operation:define-operation create-sip-media-application-call
                                       :shape-name
                                       "CreateSipMediaApplicationCall" :input
                                       create-sip-media-application-call-request
                                       :output
                                       create-sip-media-application-call-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/sip-media-applications/{SipMediaApplicationId}/calls"
                                       :code 201)

(smithy/sdk/operation:define-operation create-sip-rule :shape-name
                                       "CreateSipRule" :input
                                       create-sip-rule-request :output
                                       create-sip-rule-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri "/sip-rules" :code
                                       201)

(smithy/sdk/operation:define-operation create-voice-connector :shape-name
                                       "CreateVoiceConnector" :input
                                       create-voice-connector-request :output
                                       create-voice-connector-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri "/voice-connectors"
                                       :code 201)

(smithy/sdk/operation:define-operation create-voice-connector-group :shape-name
                                       "CreateVoiceConnectorGroup" :input
                                       create-voice-connector-group-request
                                       :output
                                       create-voice-connector-group-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/voice-connector-groups" :code 201)

(smithy/sdk/operation:define-operation create-voice-profile :shape-name
                                       "CreateVoiceProfile" :input
                                       create-voice-profile-request :output
                                       create-voice-profile-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gone-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri "/voice-profiles"
                                       :code 201)

(smithy/sdk/operation:define-operation create-voice-profile-domain :shape-name
                                       "CreateVoiceProfileDomain" :input
                                       create-voice-profile-domain-request
                                       :output
                                       create-voice-profile-domain-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/voice-profile-domains" :code 201)

(smithy/sdk/operation:define-operation delete-phone-number :shape-name
                                       "DeletePhoneNumber" :input
                                       delete-phone-number-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/phone-numbers/{PhoneNumberId}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-proxy-session :shape-name
                                       "DeleteProxySession" :input
                                       delete-proxy-session-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-sip-media-application :shape-name
                                       "DeleteSipMediaApplication" :input
                                       delete-sip-media-application-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/sip-media-applications/{SipMediaApplicationId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-sip-rule :shape-name
                                       "DeleteSipRule" :input
                                       delete-sip-rule-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/sip-rules/{SipRuleId}" :code 204)

(smithy/sdk/operation:define-operation delete-voice-connector :shape-name
                                       "DeleteVoiceConnector" :input
                                       delete-voice-connector-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/voice-connectors/{VoiceConnectorId}"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-voice-connector-emergency-calling-configuration :shape-name
 "DeleteVoiceConnectorEmergencyCallingConfiguration" :input
 delete-voice-connector-emergency-calling-configuration-request :output
 common-lisp:null :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "DELETE" :uri
 "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration" :code
 204)

(smithy/sdk/operation:define-operation
 delete-voice-connector-external-systems-configuration :shape-name
 "DeleteVoiceConnectorExternalSystemsConfiguration" :input
 delete-voice-connector-external-systems-configuration-request :output
 common-lisp:null :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "DELETE" :uri
 "/voice-connectors/{VoiceConnectorId}/external-systems-configuration" :code
 204)

(smithy/sdk/operation:define-operation delete-voice-connector-group :shape-name
                                       "DeleteVoiceConnectorGroup" :input
                                       delete-voice-connector-group-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/voice-connector-groups/{VoiceConnectorGroupId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-voice-connector-origination
                                       :shape-name
                                       "DeleteVoiceConnectorOrigination" :input
                                       delete-voice-connector-origination-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/voice-connectors/{VoiceConnectorId}/origination"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-voice-connector-proxy :shape-name
                                       "DeleteVoiceConnectorProxy" :input
                                       delete-voice-connector-proxy-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-voice-connector-streaming-configuration :shape-name
 "DeleteVoiceConnectorStreamingConfiguration" :input
 delete-voice-connector-streaming-configuration-request :output
 common-lisp:null :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "DELETE" :uri
 "/voice-connectors/{VoiceConnectorId}/streaming-configuration" :code 204)

(smithy/sdk/operation:define-operation delete-voice-connector-termination
                                       :shape-name
                                       "DeleteVoiceConnectorTermination" :input
                                       delete-voice-connector-termination-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/voice-connectors/{VoiceConnectorId}/termination"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-voice-connector-termination-credentials :shape-name
 "DeleteVoiceConnectorTerminationCredentials" :input
 delete-voice-connector-termination-credentials-request :output
 common-lisp:null :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "POST" :uri
 "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=delete"
 :code 204)

(smithy/sdk/operation:define-operation delete-voice-profile :shape-name
                                       "DeleteVoiceProfile" :input
                                       delete-voice-profile-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/voice-profiles/{VoiceProfileId}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-voice-profile-domain :shape-name
                                       "DeleteVoiceProfileDomain" :input
                                       delete-voice-profile-domain-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "DELETE" :uri
                                       "/voice-profile-domains/{VoiceProfileDomainId}"
                                       :code 204)

(smithy/sdk/operation:define-operation
 disassociate-phone-numbers-from-voice-connector :shape-name
 "DisassociatePhoneNumbersFromVoiceConnector" :input
 disassociate-phone-numbers-from-voice-connector-request :output
 disassociate-phone-numbers-from-voice-connector-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "POST" :uri
 "/voice-connectors/{VoiceConnectorId}?operation=disassociate-phone-numbers"
 :code 200)

(smithy/sdk/operation:define-operation
 disassociate-phone-numbers-from-voice-connector-group :shape-name
 "DisassociatePhoneNumbersFromVoiceConnectorGroup" :input
 disassociate-phone-numbers-from-voice-connector-group-request :output
 disassociate-phone-numbers-from-voice-connector-group-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "POST" :uri
 "/voice-connector-groups/{VoiceConnectorGroupId}?operation=disassociate-phone-numbers"
 :code 200)

(smithy/sdk/operation:define-operation get-global-settings :shape-name
                                       "GetGlobalSettings" :input
                                       common-lisp:null :output
                                       get-global-settings-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/settings" :code 200)

(smithy/sdk/operation:define-operation get-phone-number :shape-name
                                       "GetPhoneNumber" :input
                                       get-phone-number-request :output
                                       get-phone-number-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/phone-numbers/{PhoneNumberId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-phone-number-order :shape-name
                                       "GetPhoneNumberOrder" :input
                                       get-phone-number-order-request :output
                                       get-phone-number-order-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/phone-number-orders/{PhoneNumberOrderId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-phone-number-settings :shape-name
                                       "GetPhoneNumberSettings" :input
                                       common-lisp:null :output
                                       get-phone-number-settings-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/settings/phone-number" :code 200)

(smithy/sdk/operation:define-operation get-proxy-session :shape-name
                                       "GetProxySession" :input
                                       get-proxy-session-request :output
                                       get-proxy-session-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sip-media-application :shape-name
                                       "GetSipMediaApplication" :input
                                       get-sip-media-application-request
                                       :output
                                       get-sip-media-application-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/sip-media-applications/{SipMediaApplicationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-sip-media-application-alexa-skill-configuration :shape-name
 "GetSipMediaApplicationAlexaSkillConfiguration" :input
 get-sip-media-application-alexa-skill-configuration-request :output
 get-sip-media-application-alexa-skill-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri
 "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration"
 :code 200)

(smithy/sdk/operation:define-operation
 get-sip-media-application-logging-configuration :shape-name
 "GetSipMediaApplicationLoggingConfiguration" :input
 get-sip-media-application-logging-configuration-request :output
 get-sip-media-application-logging-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri
 "/sip-media-applications/{SipMediaApplicationId}/logging-configuration" :code
 200)

(smithy/sdk/operation:define-operation get-sip-rule :shape-name "GetSipRule"
                                       :input get-sip-rule-request :output
                                       get-sip-rule-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/sip-rules/{SipRuleId}" :code 200)

(smithy/sdk/operation:define-operation get-speaker-search-task :shape-name
                                       "GetSpeakerSearchTask" :input
                                       get-speaker-search-task-request :output
                                       get-speaker-search-task-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-voice-connector :shape-name
                                       "GetVoiceConnector" :input
                                       get-voice-connector-request :output
                                       get-voice-connector-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connectors/{VoiceConnectorId}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-voice-connector-emergency-calling-configuration :shape-name
 "GetVoiceConnectorEmergencyCallingConfiguration" :input
 get-voice-connector-emergency-calling-configuration-request :output
 get-voice-connector-emergency-calling-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri
 "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration" :code
 200)

(smithy/sdk/operation:define-operation
 get-voice-connector-external-systems-configuration :shape-name
 "GetVoiceConnectorExternalSystemsConfiguration" :input
 get-voice-connector-external-systems-configuration-request :output
 get-voice-connector-external-systems-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri
 "/voice-connectors/{VoiceConnectorId}/external-systems-configuration" :code
 200)

(smithy/sdk/operation:define-operation get-voice-connector-group :shape-name
                                       "GetVoiceConnectorGroup" :input
                                       get-voice-connector-group-request
                                       :output
                                       get-voice-connector-group-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connector-groups/{VoiceConnectorGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-voice-connector-logging-configuration :shape-name
 "GetVoiceConnectorLoggingConfiguration" :input
 get-voice-connector-logging-configuration-request :output
 get-voice-connector-logging-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri
 "/voice-connectors/{VoiceConnectorId}/logging-configuration" :code 200)

(smithy/sdk/operation:define-operation get-voice-connector-origination
                                       :shape-name
                                       "GetVoiceConnectorOrigination" :input
                                       get-voice-connector-origination-request
                                       :output
                                       get-voice-connector-origination-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connectors/{VoiceConnectorId}/origination"
                                       :code 200)

(smithy/sdk/operation:define-operation get-voice-connector-proxy :shape-name
                                       "GetVoiceConnectorProxy" :input
                                       get-voice-connector-proxy-request
                                       :output
                                       get-voice-connector-proxy-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-voice-connector-streaming-configuration :shape-name
 "GetVoiceConnectorStreamingConfiguration" :input
 get-voice-connector-streaming-configuration-request :output
 get-voice-connector-streaming-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri
 "/voice-connectors/{VoiceConnectorId}/streaming-configuration" :code 200)

(smithy/sdk/operation:define-operation get-voice-connector-termination
                                       :shape-name
                                       "GetVoiceConnectorTermination" :input
                                       get-voice-connector-termination-request
                                       :output
                                       get-voice-connector-termination-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connectors/{VoiceConnectorId}/termination"
                                       :code 200)

(smithy/sdk/operation:define-operation get-voice-connector-termination-health
                                       :shape-name
                                       "GetVoiceConnectorTerminationHealth"
                                       :input
                                       get-voice-connector-termination-health-request
                                       :output
                                       get-voice-connector-termination-health-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connectors/{VoiceConnectorId}/termination/health"
                                       :code 200)

(smithy/sdk/operation:define-operation get-voice-profile :shape-name
                                       "GetVoiceProfile" :input
                                       get-voice-profile-request :output
                                       get-voice-profile-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-profiles/{VoiceProfileId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-voice-profile-domain :shape-name
                                       "GetVoiceProfileDomain" :input
                                       get-voice-profile-domain-request :output
                                       get-voice-profile-domain-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-profile-domains/{VoiceProfileDomainId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-voice-tone-analysis-task :shape-name
                                       "GetVoiceToneAnalysisTask" :input
                                       get-voice-tone-analysis-task-request
                                       :output
                                       get-voice-tone-analysis-task-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-available-voice-connector-regions
                                       :shape-name
                                       "ListAvailableVoiceConnectorRegions"
                                       :input common-lisp:null :output
                                       list-available-voice-connector-regions-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connector-regions" :code 200)

(smithy/sdk/operation:define-operation list-phone-number-orders :shape-name
                                       "ListPhoneNumberOrders" :input
                                       list-phone-number-orders-request :output
                                       list-phone-number-orders-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/phone-number-orders" :code 200)

(smithy/sdk/operation:define-operation list-phone-numbers :shape-name
                                       "ListPhoneNumbers" :input
                                       list-phone-numbers-request :output
                                       list-phone-numbers-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/phone-numbers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-proxy-sessions :shape-name
                                       "ListProxySessions" :input
                                       list-proxy-sessions-request :output
                                       list-proxy-sessions-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connectors/{VoiceConnectorId}/proxy-sessions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-sip-media-applications :shape-name
                                       "ListSipMediaApplications" :input
                                       list-sip-media-applications-request
                                       :output
                                       list-sip-media-applications-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/sip-media-applications" :code 200)

(smithy/sdk/operation:define-operation list-sip-rules :shape-name
                                       "ListSipRules" :input
                                       list-sip-rules-request :output
                                       list-sip-rules-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/sip-rules" :code
                                       200)

(smithy/sdk/operation:define-operation list-supported-phone-number-countries
                                       :shape-name
                                       "ListSupportedPhoneNumberCountries"
                                       :input
                                       list-supported-phone-number-countries-request
                                       :output
                                       list-supported-phone-number-countries-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/phone-number-countries" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation list-voice-connector-groups :shape-name
                                       "ListVoiceConnectorGroups" :input
                                       list-voice-connector-groups-request
                                       :output
                                       list-voice-connector-groups-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-connector-groups" :code 200)

(smithy/sdk/operation:define-operation
 list-voice-connector-termination-credentials :shape-name
 "ListVoiceConnectorTerminationCredentials" :input
 list-voice-connector-termination-credentials-request :output
 list-voice-connector-termination-credentials-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "GET" :uri
 "/voice-connectors/{VoiceConnectorId}/termination/credentials" :code 200)

(smithy/sdk/operation:define-operation list-voice-connectors :shape-name
                                       "ListVoiceConnectors" :input
                                       list-voice-connectors-request :output
                                       list-voice-connectors-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/voice-connectors"
                                       :code 200)

(smithy/sdk/operation:define-operation list-voice-profile-domains :shape-name
                                       "ListVoiceProfileDomains" :input
                                       list-voice-profile-domains-request
                                       :output
                                       list-voice-profile-domains-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/voice-profile-domains" :code 200)

(smithy/sdk/operation:define-operation list-voice-profiles :shape-name
                                       "ListVoiceProfiles" :input
                                       list-voice-profiles-request :output
                                       list-voice-profiles-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri "/voice-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-sip-media-application-alexa-skill-configuration :shape-name
 "PutSipMediaApplicationAlexaSkillConfiguration" :input
 put-sip-media-application-alexa-skill-configuration-request :output
 put-sip-media-application-alexa-skill-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "PUT" :uri
 "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration"
 :code 200)

(smithy/sdk/operation:define-operation
 put-sip-media-application-logging-configuration :shape-name
 "PutSipMediaApplicationLoggingConfiguration" :input
 put-sip-media-application-logging-configuration-request :output
 put-sip-media-application-logging-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "PUT" :uri
 "/sip-media-applications/{SipMediaApplicationId}/logging-configuration" :code
 200)

(smithy/sdk/operation:define-operation
 put-voice-connector-emergency-calling-configuration :shape-name
 "PutVoiceConnectorEmergencyCallingConfiguration" :input
 put-voice-connector-emergency-calling-configuration-request :output
 put-voice-connector-emergency-calling-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "PUT" :uri
 "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration" :code
 200)

(smithy/sdk/operation:define-operation
 put-voice-connector-external-systems-configuration :shape-name
 "PutVoiceConnectorExternalSystemsConfiguration" :input
 put-voice-connector-external-systems-configuration-request :output
 put-voice-connector-external-systems-configuration-response :errors
 (bad-request-exception conflict-exception forbidden-exception
  not-found-exception service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "PUT" :uri
 "/voice-connectors/{VoiceConnectorId}/external-systems-configuration" :code
 200)

(smithy/sdk/operation:define-operation
 put-voice-connector-logging-configuration :shape-name
 "PutVoiceConnectorLoggingConfiguration" :input
 put-voice-connector-logging-configuration-request :output
 put-voice-connector-logging-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "PUT" :uri
 "/voice-connectors/{VoiceConnectorId}/logging-configuration" :code 200)

(smithy/sdk/operation:define-operation put-voice-connector-origination
                                       :shape-name
                                       "PutVoiceConnectorOrigination" :input
                                       put-voice-connector-origination-request
                                       :output
                                       put-voice-connector-origination-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/voice-connectors/{VoiceConnectorId}/origination"
                                       :code 200)

(smithy/sdk/operation:define-operation put-voice-connector-proxy :shape-name
                                       "PutVoiceConnectorProxy" :input
                                       put-voice-connector-proxy-request
                                       :output
                                       put-voice-connector-proxy-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-voice-connector-streaming-configuration :shape-name
 "PutVoiceConnectorStreamingConfiguration" :input
 put-voice-connector-streaming-configuration-request :output
 put-voice-connector-streaming-configuration-response :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "PUT" :uri
 "/voice-connectors/{VoiceConnectorId}/streaming-configuration" :code 200)

(smithy/sdk/operation:define-operation put-voice-connector-termination
                                       :shape-name
                                       "PutVoiceConnectorTermination" :input
                                       put-voice-connector-termination-request
                                       :output
                                       put-voice-connector-termination-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/voice-connectors/{VoiceConnectorId}/termination"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-voice-connector-termination-credentials :shape-name
 "PutVoiceConnectorTerminationCredentials" :input
 put-voice-connector-termination-credentials-request :output common-lisp:null
 :errors
 (bad-request-exception forbidden-exception not-found-exception
  service-failure-exception service-unavailable-exception
  throttled-client-exception unauthorized-client-exception)
 :method "POST" :uri
 "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=put"
 :code 204)

(smithy/sdk/operation:define-operation restore-phone-number :shape-name
                                       "RestorePhoneNumber" :input
                                       restore-phone-number-request :output
                                       restore-phone-number-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-numbers/{PhoneNumberId}?operation=restore"
                                       :code 200)

(smithy/sdk/operation:define-operation search-available-phone-numbers
                                       :shape-name
                                       "SearchAvailablePhoneNumbers" :input
                                       search-available-phone-numbers-request
                                       :output
                                       search-available-phone-numbers-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "GET" :uri
                                       "/search?type=phone-numbers" :code 200)

(smithy/sdk/operation:define-operation start-speaker-search-task :shape-name
                                       "StartSpeakerSearchTask" :input
                                       start-speaker-search-task-request
                                       :output
                                       start-speaker-search-task-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gone-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks"
                                       :code 201)

(smithy/sdk/operation:define-operation start-voice-tone-analysis-task
                                       :shape-name "StartVoiceToneAnalysisTask"
                                       :input
                                       start-voice-tone-analysis-task-request
                                       :output
                                       start-voice-tone-analysis-task-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gone-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks"
                                       :code 201)

(smithy/sdk/operation:define-operation stop-speaker-search-task :shape-name
                                       "StopSpeakerSearchTask" :input
                                       stop-speaker-search-task-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop"
                                       :code 204)

(smithy/sdk/operation:define-operation stop-voice-tone-analysis-task
                                       :shape-name "StopVoiceToneAnalysisTask"
                                       :input
                                       stop-voice-tone-analysis-task-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception
                                        unprocessable-entity-exception)
                                       :method "POST" :uri
                                       "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop"
                                       :code 204)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/tags?operation=tag-resource" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/tags?operation=untag-resource" :code
                                       204)

(smithy/sdk/operation:define-operation update-global-settings :shape-name
                                       "UpdateGlobalSettings" :input
                                       update-global-settings-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri "/settings" :code 204)

(smithy/sdk/operation:define-operation update-phone-number :shape-name
                                       "UpdatePhoneNumber" :input
                                       update-phone-number-request :output
                                       update-phone-number-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/phone-numbers/{PhoneNumberId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-phone-number-settings :shape-name
                                       "UpdatePhoneNumberSettings" :input
                                       update-phone-number-settings-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/settings/phone-number" :code 204)

(smithy/sdk/operation:define-operation update-proxy-session :shape-name
                                       "UpdateProxySession" :input
                                       update-proxy-session-request :output
                                       update-proxy-session-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}"
                                       :code 201)

(smithy/sdk/operation:define-operation update-sip-media-application :shape-name
                                       "UpdateSipMediaApplication" :input
                                       update-sip-media-application-request
                                       :output
                                       update-sip-media-application-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/sip-media-applications/{SipMediaApplicationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-sip-media-application-call
                                       :shape-name
                                       "UpdateSipMediaApplicationCall" :input
                                       update-sip-media-application-call-request
                                       :output
                                       update-sip-media-application-call-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/sip-media-applications/{SipMediaApplicationId}/calls/{TransactionId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-sip-rule :shape-name
                                       "UpdateSipRule" :input
                                       update-sip-rule-request :output
                                       update-sip-rule-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        resource-limit-exceeded-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/sip-rules/{SipRuleId}" :code 202)

(smithy/sdk/operation:define-operation update-voice-connector :shape-name
                                       "UpdateVoiceConnector" :input
                                       update-voice-connector-request :output
                                       update-voice-connector-response :errors
                                       (bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/voice-connectors/{VoiceConnectorId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-voice-connector-group :shape-name
                                       "UpdateVoiceConnectorGroup" :input
                                       update-voice-connector-group-request
                                       :output
                                       update-voice-connector-group-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/voice-connector-groups/{VoiceConnectorGroupId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-voice-profile :shape-name
                                       "UpdateVoiceProfile" :input
                                       update-voice-profile-request :output
                                       update-voice-profile-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception forbidden-exception
                                        gone-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/voice-profiles/{VoiceProfileId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-voice-profile-domain :shape-name
                                       "UpdateVoiceProfileDomain" :input
                                       update-voice-profile-domain-request
                                       :output
                                       update-voice-profile-domain-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "PUT" :uri
                                       "/voice-profile-domains/{VoiceProfileDomainId}"
                                       :code 200)

(smithy/sdk/operation:define-operation validate-e911address :shape-name
                                       "ValidateE911Address" :input
                                       validate-e911address-request :output
                                       validate-e911address-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        forbidden-exception not-found-exception
                                        service-failure-exception
                                        service-unavailable-exception
                                        throttled-client-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/emergency-calling/address" :code 202)
